// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.UnsupportedEncodingException;

public class BMLBookmarkEntry
    implements Parcelable
{

    public BMLBookmarkEntry()
    {
    }

    public BMLBookmarkEntry(Parcel parcel)
    {
        mTitle = parcel.readString();
        mDstURI = parcel.readString();
        mOutline = parcel.readString();
        mExpire = parcel.readString();
        mBmType = parcel.readInt();
        mBlockNo = parcel.readInt();
    }

    public BMLBookmarkEntry(byte abyte0[], byte abyte1[], byte abyte2[], byte abyte3[], int i, int j)
    {
        try
        {
            mTitle = new String(abyte0, "SJIS");
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        mDstURI = new String(abyte1);
        try
        {
            mOutline = new String(abyte2, "SJIS");
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        mExpire = new String(abyte3);
        mBmType = i;
        mBlockNo = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getBlockNo()
    {
        return mBlockNo;
    }

    public int getBmType()
    {
        return mBmType;
    }

    public String getBmTypeString()
    {
        switch(mBmType)
        {
        default:
            return "Reserved";

        case 0: // '\0'
            return "Memo";

        case 1: // '\001'
            return "Link";

        case 2: // '\002'
            return "C Profile";

        case 3: // '\003'
            return "HTML";

        case 4: // '\004'
            return "Network";
        }
    }

    public String getDstURI()
    {
        return mDstURI;
    }

    public String getExpire()
    {
        return mExpire;
    }

    public String getOutline()
    {
        return mOutline;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public void setBlockNo(int i)
    {
        mBlockNo = i;
    }

    public void setBmType(int i)
    {
        mBmType = i;
    }

    public void setTitle(String s)
    {
        mTitle = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(mTitle);
        parcel.writeString(mDstURI);
        parcel.writeString(mOutline);
        parcel.writeString(mExpire);
        parcel.writeInt(mBmType);
        parcel.writeInt(mBlockNo);
    }

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public BMLBookmarkEntry createFromParcel(Parcel parcel)
        {
            return new BMLBookmarkEntry(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public BMLBookmarkEntry[] newArray(int i)
        {
            return new BMLBookmarkEntry[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    private int mBlockNo;
    private int mBmType;
    private String mDstURI;
    private String mExpire;
    private String mOutline;
    private String mTitle;

}
