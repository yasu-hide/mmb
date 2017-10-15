// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast;

import android.content.Context;
import android.view.KeyEvent;
import com.access.bml.BMLNativeView;

// Referenced classes of package android.broadcast:
//            IMtvOneSegBmlViewListener

public interface IMtvOneSegBmlViewControl
{

    public abstract boolean allowConnection(int i);

    public abstract boolean allowLocation(int i);

    public abstract void appExIMEEndPeer(boolean flag, byte abyte0[]);

    public abstract void attachViewListener(IMtvOneSegBmlViewListener imtvonesegbmlviewlistener);

    public abstract void dettachViewListener(IMtvOneSegBmlViewListener imtvonesegbmlviewlistener);

    public abstract void disableBml();

    public abstract void enableBml();

    public abstract int getUserKeyPadType();

    public abstract boolean getfAuth_KeepPassword();

    public abstract boolean getfAuth_KeepUserName();

    public abstract String getfAuth_Password();

    public abstract byte[] getfAuth_UserName();

    public abstract boolean isDailogNeed();

    public abstract boolean onKeyEvent(KeyEvent keyevent);

    public abstract void openBMLHomePage();

    public abstract void processMouseEvent(int i, int j, android.broadcast.oneseg.MtvOneSegBmlParams.action action);

    public abstract void registerSurface(Context context, BMLNativeView bmlnativeview);

    public abstract void replyToCommand();

    public abstract void replyToCommand(android.broadcast.oneseg.MtvOneSegBmlParams.onesegBmlDialogReply onesegbmldialogreply, int i);

    public abstract void setDailogNeed(boolean flag);

    public abstract int setDialogReply(int i, boolean flag);

    public abstract boolean setDisplaySize(int i, int j, int k, int l);

    public abstract void setReplyToEngine(boolean flag);

    public abstract void setfKeepPassword_Reply(boolean flag);

    public abstract void setfKeepUserName_Reply(boolean flag);

    public abstract void setfPassword_Reply(String s);

    public abstract void setfUserName_Reply(byte abyte0[]);
}
