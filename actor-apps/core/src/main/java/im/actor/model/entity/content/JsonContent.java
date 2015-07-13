package im.actor.model.entity.content;

import im.actor.model.api.JsonMessage;
import im.actor.model.droidkit.json.JSONException;
import im.actor.model.droidkit.json.JSONObject;
import im.actor.model.entity.content.internal.ContentRemoteContainer;

public class JsonContent extends AbsContent {

    private String json;

    public JsonContent(ContentRemoteContainer contentContainer) throws JSONException {
        super(contentContainer);

        this.json = ((JsonMessage) contentContainer.getMessage()).getRawJson();

        // Validate json
        new JSONObject(json);
    }

    public String getJson() {
        return json;
    }
}
