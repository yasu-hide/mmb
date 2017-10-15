// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.types.MtvOneSegProgram;
import java.util.Date;

public class MtvProgram
{

    public MtvProgram()
    {
        mUriId = -1;
        mPch = 0;
        mVch = 0;
        mLock = 0;
        mTimeStart = 0L;
        mTimeEnd = 0L;
        mPgmName = null;
        mPgmDetail = null;
    }

    public MtvProgram(int i, int j, int k, long l, long l1, 
            String s, String s1)
    {
        mUriId = -1;
        mPch = i;
        mVch = j;
        mLock = k;
        mTimeStart = l;
        mTimeEnd = l1;
        mPgmName = s;
        mPgmDetail = s1;
    }

    public MtvProgram(int i, int j, int k, long l, long l1, 
            String s, String s1, int i1)
    {
        mUriId = -1;
        mPch = i;
        mVch = j;
        mLock = k;
        mTimeStart = l;
        mTimeEnd = l1;
        mPgmName = s;
        mPgmDetail = s1;
        mUriId = i1;
    }

    public MtvProgram(MtvOneSegProgram mtvonesegprogram, int i)
    {
        mUriId = -1;
        mPch = mtvonesegprogram.getServiceID();
        mVch = i;
        mLock = -1;
        mTimeStart = mtvonesegprogram.getStartTime().getTime();
        mTimeEnd = mtvonesegprogram.getEndTime().getTime();
        mPgmName = mtvonesegprogram.getProgName();
        mPgmDetail = mtvonesegprogram.getProgDesc();
    }

    public boolean equalsProgram(MtvProgram mtvprogram)
    {
        while(mtvprogram == null || mPch != mtvprogram.mPch || mVch != mtvprogram.mVch || mTimeStart != mtvprogram.mTimeStart || mTimeEnd != mtvprogram.mTimeEnd || mPgmName == null && mtvprogram.mPgmName != null || mPgmName != null && mtvprogram.mPgmName == null || mPgmName != null && mtvprogram.mPgmName != null && !mPgmName.equals(mtvprogram.mPgmName)) 
            return false;
        return true;
    }

    public int hashCode()
    {
        int i;
        if(mPgmName == null)
            i = -1;
        else
            i = mPgmName.hashCode();
        return i + 31;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("MtvProgram").append("[virtual=").append(mVch).toString();
        s = (new StringBuilder()).append(s).append(", physical=").append(mPch).toString();
        s = (new StringBuilder()).append(s).append(", pl=").append(mLock).toString();
        s = (new StringBuilder()).append(s).append(", start=").append(mTimeStart).toString();
        s = (new StringBuilder()).append(s).append(", end=").append(mTimeEnd).toString();
        return (new StringBuilder()).append(s).append(", name=").append(mPgmName).append("]").toString();
    }

    public final int mLock;
    public final int mPch;
    public final String mPgmDetail;
    public final String mPgmName;
    public final long mTimeEnd;
    public final long mTimeStart;
    public int mUriId;
    public final int mVch;
}
