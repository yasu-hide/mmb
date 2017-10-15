// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import java.io.Serializable;

// Referenced classes of package com.samsung.sec.mtv.provider:
//            MtvProgram

public class MtvReservation extends MtvProgram
    implements Comparable, Serializable
{

    public MtvReservation(int i, int j, int k, long l, long l1, 
            String s, String s1, int i1, int j1, int k1)
    {
        super(i, j, k, l, l1, s, s1);
        mPgmType = i1;
        mPgmStatus = j1;
        mPgmServiceID = k1;
    }

    public MtvReservation(int i, int j, int k, long l, long l1, 
            String s, String s1, int i1, int j1, int k1, int i2)
    {
        super(i, j, k, l, l1, s, s1, i2);
        mPgmType = i1;
        mPgmStatus = j1;
        mPgmServiceID = k1;
    }

    public MtvReservation(MtvProgram mtvprogram, int i, int j, int k)
    {
        super(mtvprogram.mPch, mtvprogram.mVch, mtvprogram.mLock, mtvprogram.mTimeStart, mtvprogram.mTimeEnd, mtvprogram.mPgmName, mtvprogram.mPgmDetail);
        mPgmType = i;
        mPgmStatus = j;
        mPgmServiceID = k;
    }

    public int compareTo(MtvReservation mtvreservation)
    {
        if(mTimeStart < mtvreservation.mTimeStart)
            return -1;
        return mTimeStart <= mtvreservation.mTimeStart ? 0 : 1;
    }

    public volatile int compareTo(Object obj)
    {
        return compareTo((MtvReservation)obj);
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("MtvReservation").append("[uriId=").append(mUriId).toString();
        s = (new StringBuilder()).append(s).append(", virtual=").append(mVch).toString();
        s = (new StringBuilder()).append(s).append(", physical=").append(mPch).toString();
        s = (new StringBuilder()).append(s).append(", pl=").append(mLock).toString();
        s = (new StringBuilder()).append(s).append(", start=").append(mTimeStart).toString();
        s = (new StringBuilder()).append(s).append(", end=").append(mTimeEnd).toString();
        s = (new StringBuilder()).append(s).append(", name=").append(mPgmName).toString();
        s = (new StringBuilder()).append(s).append(", pgmType=").append(mPgmType).toString();
        s = (new StringBuilder()).append(s).append(", mPgmStatus=").append(mPgmStatus).toString();
        return (new StringBuilder()).append(s).append(", mPgmServiceID=").append(mPgmServiceID).append("]").toString();
    }

    public static final String RESERVATION_EXTRA_DB_ID = "dbId";
    public static final String RESERVATION_EXTRA_REMINDER_DB_ID = "reminderDbId";
    public static final int STATUS_CANCELLED = 7;
    public static final int STATUS_DONE = 1;
    public static final int STATUS_FAIL = 2;
    public static final int STATUS_FAIL_DUE_TO_LOW_MEMORY_TO_LAUNCH = 12;
    public static final int STATUS_FAIL_DUE_TO_MISMATCH_OF_SERVICEID = 10;
    public static final int STATUS_FAIL_MEMORY_ERROR = 5;
    public static final int STATUS_FAIL_MEMORY_PARTIALLY_RECORDED = 9;
    public static final int STATUS_FAIL_OFF = 3;
    public static final int STATUS_FAIL_SIGNAL_ERROR = 4;
    public static final int STATUS_FAIL_SIGNAL_PARTIALLY_RECORDED = 8;
    public static final int STATUS_FAIL_WATCH_DUE_TO_CALL = 11;
    public static final int STATUS_NONE = 0;
    public static final int STATUS_ON_GOING = 6;
    public static final int TYPE_PLAY = 1;
    public static final int TYPE_REC = 0;
    public static final int TYPE_REC_FULLSEG = 0;
    public static final int TYPE_REC_ONESEG = 1;
    private static final long serialVersionUID = 0x87bcd6cd88c021f8L;
    public int mPgmServiceID;
    public int mPgmStatus;
    public int mPgmType;
}
