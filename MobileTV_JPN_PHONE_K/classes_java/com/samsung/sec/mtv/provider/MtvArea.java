// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;


public class MtvArea
{

    public MtvArea(int i, String s)
    {
        mUriId = -1;
        mAreaId = i;
        if(s == null)
        {
            mAreaName = "";
            return;
        } else
        {
            mAreaName = s;
            return;
        }
    }

    public MtvArea(int i, String s, int j)
    {
        mUriId = -1;
        mAreaId = i;
        mUriId = j;
        if(s == null)
        {
            mAreaName = "";
            return;
        } else
        {
            mAreaName = s;
            return;
        }
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("MtvArea").append("[mUriId=").append(mUriId).toString();
        s = (new StringBuilder()).append(s).append("[areaId=").append(mAreaId).toString();
        return (new StringBuilder()).append(s).append(", area=").append(mAreaName).append("]").toString();
    }

    public final int mAreaId;
    public final String mAreaName;
    public int mUriId;
}
