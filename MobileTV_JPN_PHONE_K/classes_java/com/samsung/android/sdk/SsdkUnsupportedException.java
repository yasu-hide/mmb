// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.android.sdk;


public class SsdkUnsupportedException extends Exception
{

    public SsdkUnsupportedException(String s, int i)
    {
        super(s);
        mType = 0;
        mVersionCode = 0;
        mPackageName = null;
        mType = i;
    }

    public SsdkUnsupportedException(String s, int i, String s1, int j)
    {
        super(s);
        mType = 0;
        mVersionCode = 0;
        mPackageName = null;
        mType = i;
        mPackageName = s1;
        mVersionCode = j;
    }

    public String getPackageName()
    {
        return mPackageName;
    }

    public int getType()
    {
        return mType;
    }

    public int getVersionCode()
    {
        return mVersionCode;
    }

    public static final int DEVICE_NOT_SUPPORTED = 1;
    public static final int SDK_VERSION_MISMATCH = 2;
    public static final int VENDOR_NOT_SUPPORTED = 0;
    private String mPackageName;
    private int mType;
    private int mVersionCode;
}
