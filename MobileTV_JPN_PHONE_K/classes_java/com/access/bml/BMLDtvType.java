// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;


public class BMLDtvType
{
    public static class APPExIMEParam
    {

        public int fCharset;
        public int fEchoChar;
        public String fFormat;
        public int fMaxLength;
        public int fSelectedRangeDirection;
        public int fSelectedRangeEnd;
        public int fSelectedRangeStart;
        public String fTemplate;
        public int fTextBoxCompoType;
        public int fTextBoxCompoUsage;

        public APPExIMEParam()
        {
        }
    }

    public static class DTVDate
    {

        public byte mDay;
        public byte mDayOfWeek;
        public byte mHour;
        public short mMillisecond;
        public byte mMinute;
        public byte mMonth;
        public byte mSecond;
        public short mYear;

        public DTVDate()
        {
        }

        public DTVDate(short word0, byte byte0, byte byte1, byte byte2, byte byte3, byte byte4, byte byte5, 
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
    }

    public static class IntPtr
    {

        public static IntPtr valueOf(int i)
        {
            return new IntPtr(i);
        }

        public int intValue()
        {
            return mVal;
        }

        public void setValue(int i)
        {
            mVal = i;
        }

        protected int mVal;

        public IntPtr(int i)
        {
            mVal = i;
        }
    }

    public static class TDSMCCFirstView
    {

        public int fCurrentComponent;
        public int fDIITimeout;

        public TDSMCCFirstView()
        {
        }
    }

    public static class TDSMCCPMTData
    {

        public byte fPMTData[];
        public int fPMTLen;

        public TDSMCCPMTData()
        {
        }
    }

    public static class TDSMCCTransmissionLine
    {

        public long fContentID;
        public int fContentIDIndicator;
        public int fEventID;
        public int fOriginalNetworkID;
        public int fServiceID;
        public int fTransportStreamID;

        public TDSMCCTransmissionLine()
        {
        }
    }

    public static class TDTVCurPosInfo
    {

        public int fErrorRange;
        public int fGeodeticSystem;
        public String fLatitude;
        public String fLongitude;

        public TDTVCurPosInfo()
        {
        }
    }


    public BMLDtvType()
    {
    }
}
