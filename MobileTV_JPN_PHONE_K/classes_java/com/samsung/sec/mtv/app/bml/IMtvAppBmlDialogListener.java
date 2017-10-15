// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.bml;


public interface IMtvAppBmlDialogListener
{

    public abstract void IMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j);

    public abstract void destroyBMLDialog();

    public abstract void halt();

    public abstract void setDialogBtnNum(int i);

    public abstract void setDialogMessege(MtvAppBmlConstants.AppBmlDialogMessages appbmldialogmessages);

    public abstract boolean showBMLDialog(int i);
}
