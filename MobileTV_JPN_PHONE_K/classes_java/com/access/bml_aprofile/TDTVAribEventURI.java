// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;


public class TDTVAribEventURI
{

    public TDTVAribEventURI(int i, int j, int k, int l)
    {
        mOriginalNetworkID = i;
        mTransportStreamID = j;
        mServiceID = k;
        mEventID = l;
    }

    public int mEventID;
    public int mOriginalNetworkID;
    public int mServiceID;
    public int mTransportStreamID;
}
