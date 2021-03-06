/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.model.modules.messages.entity;

import java.io.IOException;
import java.util.ArrayList;

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;

public class PendingMessagesStorage extends BserObject {

    public static PendingMessagesStorage fromBytes(byte[] data) throws IOException {
        return Bser.parse(new PendingMessagesStorage(), data);
    }

    private ArrayList<PendingMessage> pendingMessages = new ArrayList<PendingMessage>();

    public ArrayList<PendingMessage> getPendingMessages() {
        return pendingMessages;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        for (byte[] data : values.getRepeatedBytes(1)) {
            try {
                pendingMessages.add(PendingMessage.fromBytes(data));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeRepeatedObj(1, pendingMessages);
    }
}
