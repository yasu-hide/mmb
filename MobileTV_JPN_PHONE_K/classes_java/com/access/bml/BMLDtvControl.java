// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;


public class BMLDtvControl
{

    public BMLDtvControl(int i)
    {
        mProfile = i;
    }

    public long getmServiceStart()
    {
        return mServiceStart;
    }

    public void setmServiceStart(long l)
    {
        mServiceStart = l;
    }

    private int mProfile;
    private long mServiceStart;
}
