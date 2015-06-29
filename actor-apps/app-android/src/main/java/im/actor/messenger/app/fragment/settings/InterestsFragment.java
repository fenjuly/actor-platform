package im.actor.messenger.app.fragment.settings;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import im.actor.messenger.R;
import im.actor.messenger.app.fragment.BaseFragment;
import im.actor.messenger.app.view.HolderAdapter;
import im.actor.messenger.app.view.ViewHolder;
import im.actor.model.api.Interest;
import im.actor.model.api.rpc.RequestDisableInterests;
import im.actor.model.api.rpc.RequestEnableInterests;
import im.actor.model.api.rpc.RequestGetAvailableInterests;
import im.actor.model.api.rpc.ResponseGetAvailableInterests;
import im.actor.model.api.rpc.ResponseVoid;
import im.actor.model.concurrency.Command;
import im.actor.model.concurrency.CommandCallback;

import static im.actor.messenger.app.Core.messenger;

/**
 * Created by korka on 04.06.15.
 */
public class InterestsFragment extends BaseFragment {
    ListView listView;
    ArrayList<Interest> interests;
    HashSet<Integer> disableInterests = new HashSet<Integer>();
    HashSet<Integer> enableInterests = new HashSet<Integer>();

    @Nullable
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        super.onCreateView(inflater, container, savedInstanceState);
        listView = new ListView(getActivity());
        List<Interest> availableInterests = messenger().loadAvailableInterests();
        if (availableInterests != null) {
            interests = new ArrayList<Interest>(availableInterests);
        } else {
            interests = new ArrayList<Interest>();
        }
        HolderAdapter adapter = new InterestsAdapter(getActivity());
        listView.setSelector(R.drawable.selector);
        listView.setAdapter(adapter);
        listView.setBackgroundColor(getResources().getColor(R.color.bg_main));
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                view.findViewById(R.id.interestEnabled).performClick();
            }
        });
        return listView;

    }

    class InterestsAdapter extends HolderAdapter<Interest> {

        protected InterestsAdapter(Context context) {
            super(context);
        }

        @Override
        public int getCount() {
            return interests.size();
        }

        @Override
        public Interest getItem(int position) {
            return interests.get(position);
        }

        @Override
        public long getItemId(int position) {
            return interests.get(position).getId();
        }

        @Override
        protected ViewHolder<Interest> createHolder(Interest obj) {
            return new InterestViewHolder();
        }
    }

    class InterestViewHolder extends ViewHolder<Interest> {
        TextView interestTitle;
        TextView enabledText;
        CheckBox chb;
        Interest interest;

        @Override
        public View init(Interest data, ViewGroup viewGroup, Context context) {
            View res = ((Activity) context).getLayoutInflater().inflate(R.layout.fragment_interests_item, viewGroup, false);
            interestTitle = (TextView) res.findViewById(R.id.interestTitle);
            enabledText = (TextView) res.findViewById(R.id.interestEnabledText);
            chb = (CheckBox) res.findViewById(R.id.interestEnabled);


            chb.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    messenger().changeInterestEnabled(interest.getId(), chb.isChecked());
                    boolean isChecked = messenger().isInterestEnabled(interest.getId());
                    chb.setChecked(isChecked);
                    if (isChecked) {
                        enableInterests.add(interest.getId());
                        disableInterests.remove(interest.getId());
                    } else {
                        enableInterests.remove(interest.getId());
                        disableInterests.add(interest.getId());
                    }
                    enabledText.setText(isChecked ? "Active" : "Inactive");
                }
            });
            return res;
        }

        @Override
        public void bind(Interest data, int position, Context context) {
            this.interest = data;
            interestTitle.setText(data.getTitle());
            boolean checked = messenger().isInterestEnabled(data.getId());
            enabledText.setText(checked ? "Active" : "Inactive");
            chb.setChecked(checked);


        }

    }

    @Override
    public void onStop() {
        if (disableInterests.size() > 0) {
            disableInterests();
        }
        if (enableInterests.size() > 0) {
            enableInterests();
        }

        super.onStop();
    }

    private void disableInterests() {
        Command<ResponseVoid> cmd = messenger().executeExternalCommand(new RequestDisableInterests(new ArrayList<Integer>(disableInterests)));
        cmd.start(new CommandCallback<ResponseVoid>() {
            @Override
            public void onResult(ResponseVoid res) {
            }

            @Override
            public void onError(Exception e) {
            }
        });
    }

    private void enableInterests() {
        Command<ResponseVoid> cmd = messenger().executeExternalCommand(new RequestEnableInterests(new ArrayList<Integer>(enableInterests)));
        cmd.start(new CommandCallback<ResponseVoid>() {
            @Override
            public void onResult(ResponseVoid res) {
            }

            @Override
            public void onError(Exception e) {
            }
        });
    }


}
