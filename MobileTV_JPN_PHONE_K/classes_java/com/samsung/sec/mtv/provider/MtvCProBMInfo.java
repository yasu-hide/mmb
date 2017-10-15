// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import java.util.Date;

public class MtvCProBMInfo
{

    public MtvCProBMInfo()
    {
        id = -1;
        CproBMType = -1;
        title = null;
        dstURI = null;
        originalNetworkID = -1;
        transportStreamID = -1;
        serviceID = -1;
        affiliationID = new int[6];
        outline = null;
        reserved = null;
    }

    public int[] getAffiliationID()
    {
        return affiliationID;
    }

    public int getCproBMType()
    {
        return CproBMType;
    }

    public String getDstURI()
    {
        return dstURI;
    }

    public int getID()
    {
        return id;
    }

    public int getOriginalNetworkID()
    {
        return originalNetworkID;
    }

    public String getOutline()
    {
        return outline;
    }

    public String getReserved()
    {
        return reserved;
    }

    public int getServiceID()
    {
        return serviceID;
    }

    public String getTitle()
    {
        return title;
    }

    public int getTransportStreamID()
    {
        return transportStreamID;
    }

    public Date getValidDate()
    {
        return validdate;
    }

    public static final int CPROBMTYPE_HTML_CONTENTS = 3;
    public static final int CPROBMTYPE_LINK_CONTENTS = 1;
    public static final int CPROBMTYPE_MEMO = 0;
    public static final int CPROBMTYPE_NO_LINK_CONTENTS = 2;
    public static final int CPROBMTYPE_SPECIAL_NETWORK_CONTENTS = 4;
    public int CproBMType;
    public int affiliationID[];
    public String dstURI;
    public int id;
    public int index;
    public int originalNetworkID;
    public String outline;
    public String reserved;
    public int serviceID;
    public String title;
    public int transportStreamID;
    public Date validdate;
}
