// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import android.broadcast.helper.types.MtvOneSegChannel;
import android.util.Log;

public class MtvChannel
{

    public MtvChannel(int i, int j, int k, int l, String s, int i1)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        mVirtualNum = i;
        mPhysicalNum = j;
        mFavorite = k;
        mAvailable = l;
        mChannelName = s;
        mSlot = i1;
    }

    public MtvChannel(int i, int j, int k, int l, String s, int i1, int j1)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        mVirtualNum = i;
        mPhysicalNum = j;
        mFavorite = k;
        mAvailable = l;
        mChannelName = s;
        mSlot = i1;
        mUriId = j1;
    }

    public MtvChannel(int i, int j, int k, int l, String s, int i1, int j1, 
            int k1)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        mVirtualNum = i;
        mPhysicalNum = j;
        mFavorite = k;
        mAvailable = l;
        mChannelName = s;
        mSlot = i1;
        mServiceID1 = j1;
        mServiceID2 = k1;
    }

    public MtvChannel(int i, int j, int k, int l, String s, int i1, int j1, 
            int k1, int l1)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        mVirtualNum = i;
        mPhysicalNum = j;
        mFavorite = k;
        mAvailable = l;
        mChannelName = s;
        mSlot = i1;
        mServiceID1 = k1;
        mServiceID2 = l1;
        mUriId = j1;
    }

    public MtvChannel(int i, int j, int k, int l, String s, int i1, int j1, 
            int k1, int l1, int i2, int j2, String s1)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        mVirtualNum = i;
        mPhysicalNum = j;
        mFavorite = k;
        mAvailable = l;
        mChannelName = s;
        mSlot = i1;
        mServiceID1 = k1;
        mServiceID2 = l1;
        mUriId = j1;
        mServiceID = i2;
        mMultiChannelNo = j2;
        mServiceName = s1;
    }

    public MtvChannel(int i, int j, int k, int l, String s, int i1, int j1, 
            int k1, int l1, int i2, String s1)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        mVirtualNum = i;
        mPhysicalNum = j;
        mFavorite = k;
        mAvailable = l;
        mChannelName = s;
        mSlot = i1;
        mServiceID1 = j1;
        mServiceID2 = k1;
        mServiceID = l1;
        mMultiChannelNo = i2;
        mServiceName = s1;
    }

    public MtvChannel(MtvOneSegChannel mtvonesegchannel, int i)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        if(mtvonesegchannel != null)
        {
            mVirtualNum = mtvonesegchannel.getRemoteKeyID();
            mPhysicalNum = mtvonesegchannel.getServID();
            Log.d("Sujay", (new StringBuilder()).append("mPhysicalNum = ").append(mPhysicalNum).toString());
            mFavorite = -1;
            mAvailable = i;
            mChannelName = mtvonesegchannel.getServName();
            mSlot = -1;
            return;
        } else
        {
            mVirtualNum = -1;
            mPhysicalNum = -1;
            mFavorite = -1;
            mAvailable = 0;
            mChannelName = "";
            mSlot = -1;
            return;
        }
    }

    public MtvChannel(MtvOneSegChannel mtvonesegchannel, int i, int j)
    {
        mUriId = -1;
        mServiceID1 = -1;
        mServiceID2 = -1;
        mServiceID = -1;
        mMultiChannelNo = -1;
        if(mtvonesegchannel != null)
        {
            mVirtualNum = mtvonesegchannel.getRemoteKeyID();
            mPhysicalNum = mtvonesegchannel.getServID();
            Log.d("Sujay", (new StringBuilder()).append("mPhysicalNum = ").append(mPhysicalNum).toString());
            mFavorite = -1;
            mAvailable = i;
            mChannelName = mtvonesegchannel.getServName();
            mSlot = -1;
            mServiceID = mtvonesegchannel.getPhysicalID();
            mMultiChannelNo = j;
            mServiceName = mtvonesegchannel.getPhysicalIDName();
            return;
        } else
        {
            mVirtualNum = -1;
            mPhysicalNum = -1;
            mFavorite = -1;
            mAvailable = 0;
            mChannelName = "";
            mSlot = -1;
            mServiceID = -1;
            mMultiChannelNo = 0;
            mServiceName = "";
            return;
        }
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("MtvChannel").append("[virtual=").append(mVirtualNum).toString();
        s = (new StringBuilder()).append(s).append(", physical=").append(mPhysicalNum).toString();
        s = (new StringBuilder()).append(s).append(", favorite=").append(mFavorite).toString();
        s = (new StringBuilder()).append(s).append(", available=").append(mAvailable).toString();
        s = (new StringBuilder()).append(s).append(", name=").append(mChannelName).toString();
        s = (new StringBuilder()).append(s).append(", slot=").append(mSlot).toString();
        s = (new StringBuilder()).append(s).append(", service ID=").append(mServiceID1).append("-").append(mServiceID2).toString();
        s = (new StringBuilder()).append(s).append(", ser_ServiceID=").append(mServiceID).toString();
        s = (new StringBuilder()).append(s).append(", ser_ServiceName=").append(mServiceName).toString();
        return (new StringBuilder()).append(s).append(", multiChannelNo=").append(mMultiChannelNo).append("]").toString();
    }

    public final int mAvailable;
    public final String mChannelName;
    public final int mFavorite;
    public int mMultiChannelNo;
    public final int mPhysicalNum;
    public int mServiceID;
    public int mServiceID1;
    public int mServiceID2;
    public String mServiceName;
    public final int mSlot;
    public int mUriId;
    public final int mVirtualNum;
}
