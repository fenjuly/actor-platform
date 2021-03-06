package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateGroupOnline extends Update {

    public static final int HEADER = 0x21;
    public static UpdateGroupOnline fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateGroupOnline(), data);
    }

    private int groupId;
    private int count;

    public UpdateGroupOnline(int groupId, int count) {
        this.groupId = groupId;
        this.count = count;
    }

    public UpdateGroupOnline() {

    }

    public int getGroupId() {
        return this.groupId;
    }

    public int getCount() {
        return this.count;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupId = values.getInt(1);
        this.count = values.getInt(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.groupId);
        writer.writeInt(2, this.count);
    }

    @Override
    public String toString() {
        String res = "update GroupOnline{";
        res += "groupId=" + this.groupId;
        res += ", count=" + this.count;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}
