package im.actor.model.api;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import java.io.IOException;

public enum MessageState {

    SENT(1),
    RECEIVED(2),
    READ(3),
    UNSUPPORTED_VALUE(-1);

    private int value;

    MessageState(int value) {
        this.value = value;
    }

    public int getValue() {
        return value;
    }

    public static MessageState parse(int value) throws IOException {
        switch(value) {
            case 1: return MessageState.SENT;
            case 2: return MessageState.RECEIVED;
            case 3: return MessageState.READ;
            default: return MessageState.UNSUPPORTED_VALUE;
        }
    }
}
