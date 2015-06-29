package im.actor.messenger.app.fragment.chat.adapter;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.view.View;
import android.widget.FrameLayout;

import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.backends.pipeline.PipelineDraweeController;
import com.facebook.drawee.generic.GenericDraweeHierarchy;
import com.facebook.drawee.generic.GenericDraweeHierarchyBuilder;
import com.facebook.drawee.generic.RoundingParams;
import com.facebook.drawee.view.SimpleDraweeView;
import com.facebook.imagepipeline.common.ResizeOptions;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.imagepipeline.request.ImageRequestBuilder;

import java.io.File;

import im.actor.messenger.R;
import im.actor.messenger.app.fragment.chat.MessagesAdapter;
import im.actor.messenger.app.fragment.chat.view.FastThumbLoader;
import im.actor.messenger.app.util.Screen;
import im.actor.model.entity.Message;
import im.actor.model.entity.content.BannerContent;
import im.actor.model.files.FileSystemReference;
import im.actor.model.viewmodel.FileVM;
import im.actor.model.viewmodel.FileVMCallback;

import static im.actor.messenger.app.Core.messenger;

/**
 * Created by ex3ndr on 27.02.15.
 */
public class BannerHolder extends MessageHolder {

    private Context context;

    // Basic bubble
    private FrameLayout messageBubble;
    private View overlay;

    // Content Views
    private SimpleDraweeView previewView;
    private FastThumbLoader fastThumbLoader;


    // Progress


    // Binded model
    private FileVM downloadFileVM;

    BannerContent currentContent;

    public BannerHolder(MessagesAdapter fragment, View itemView) {
        super(fragment, itemView, true);
        this.context = fragment.getMessagesFragment().getActivity();

        getContainer().setOnClickListener((View.OnClickListener) this);

        messageBubble = (FrameLayout) itemView.findViewById(R.id.bubbleContainer);
        overlay = itemView.findViewById(R.id.photoOverlay);

        // Content
        previewView = (SimpleDraweeView) itemView.findViewById(R.id.image);
        GenericDraweeHierarchyBuilder builder =
                new GenericDraweeHierarchyBuilder(context.getResources());

        GenericDraweeHierarchy hierarchy = builder
                .setFadeDuration(200)
                .setRoundingParams(new RoundingParams()
                        .setCornersRadius(Screen.dp(2))
                        .setRoundingMethod(RoundingParams.RoundingMethod.BITMAP_ONLY))
                .build();
        previewView.setHierarchy(hierarchy);

        fastThumbLoader = new FastThumbLoader(previewView);

    }

    @Override
    protected void bindData(Message message, boolean isNewMessage) {
        BannerContent bannerFileMessage = (BannerContent) message.getContent();
        boolean needRebind = !bannerFileMessage.equals(currentContent);
        if (needRebind) {
            currentContent = bannerFileMessage;
            messageBubble.setLayoutParams(new FrameLayout.LayoutParams(0, 0));

            if (downloadFileVM != null) {
                downloadFileVM.detach();
                downloadFileVM = null;
            }
            previewView.setImageURI(null);
            downloadFileVM = messenger().bindFile(bannerFileMessage.getReference(),
                    true, new DownloadVMCallback());

        }
    }

    @Override
    public void onClick(final Message currentMessage) {
        context.startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(currentContent.getAdUrl())));
    }

    @Override
    public void unbind() {
        super.unbind();

        // Unbinding model
        if (downloadFileVM != null) {
            downloadFileVM.detach();
            downloadFileVM = null;
        }


        // Releasing images
        fastThumbLoader.cancel();
        previewView.setImageURI(null);
    }


    private class DownloadVMCallback implements FileVMCallback {

        @Override
        public void onNotDownloaded() {

        }

        @Override
        public void onDownloading(float progress) {

        }

        @Override
        public void onDownloaded(FileSystemReference reference) {

            int w, h;

            Drawable d = Drawable.createFromPath(new File(reference.getDescriptor()).getPath());

            w = d.getIntrinsicWidth();
            h = d.getIntrinsicHeight();

            int maxHeight = context.getResources().getDisplayMetrics().heightPixels;
            maxHeight = Math.min(Screen.dp(360), maxHeight);
            int maxWidth = context.getResources().getDisplayMetrics().widthPixels;
            maxWidth = Math.min(Screen.dp(360), maxWidth);

            float scale = Math.min(maxWidth / (float) w, maxHeight / (float) h);

            int bubbleW = (int) (scale * w);
            int bubbleH = (int) (scale * h);
            previewView.setLayoutParams(new FrameLayout.LayoutParams(bubbleW, bubbleH));
            overlay.setLayoutParams(new FrameLayout.LayoutParams(bubbleW, bubbleH));

            messageBubble.setLayoutParams(new FrameLayout.LayoutParams(bubbleW, bubbleH));

            ImageRequest request = ImageRequestBuilder.newBuilderWithSource(Uri.fromFile(new File(reference.getDescriptor())))
                    .setResizeOptions(new ResizeOptions(previewView.getLayoutParams().width,
                            previewView.getLayoutParams().height))
                    .build();
            PipelineDraweeController controller = (PipelineDraweeController) Fresco.newDraweeControllerBuilder()
                    .setOldController(previewView.getController())
                    .setImageRequest(request)
                    .build();
            previewView.setController(controller);
            // previewView.setImageURI(Uri.fromFile(new File(reference.getDescriptor())));


        }
    }
}
