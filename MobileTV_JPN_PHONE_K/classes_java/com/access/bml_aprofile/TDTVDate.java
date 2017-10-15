// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;


public class TDTVDate
{

    public TDTVDate()
    {
    }

    public TDTVDate(short word0, byte byte0, byte byte1, byte byte2, byte byte3, byte byte4, byte byte5, 
            short word1)
    {
        mYear = word0;
        mMonth = byte0;
        mDay = byte1;
        mDayOfWeek = byte2;
        mHour = byte3;
        mMinute = byte4;
        mSecond = byte5;
        mMillisecond = word1;
    }

    public byte mDay;
    public byte mDayOfWeek;
    public byte mHour;
    public short mMillisecond;
    public byte mMinute;
    public byte mMonth;
    public byte mSecond;
    public short mYear;
}
