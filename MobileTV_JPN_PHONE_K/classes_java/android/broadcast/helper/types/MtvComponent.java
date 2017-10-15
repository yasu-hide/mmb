// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper.types;


public class MtvComponent
{

    public MtvComponent()
    {
        audioPID = -1;
        videoPID = -1;
        captPID = -1;
    }

    public int getAudio()
    {
        return audioPID;
    }

    public int getCaption()
    {
        return captPID;
    }

    public int getVideo()
    {
        return videoPID;
    }

    private int audioPID;
    private int captPID;
    private int videoPID;
}
