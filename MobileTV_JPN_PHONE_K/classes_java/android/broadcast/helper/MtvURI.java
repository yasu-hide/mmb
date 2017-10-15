// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper;

import android.broadcast.helper.types.MtvOneSegTVLink;

// Referenced classes of package android.broadcast.helper:
//            MtvUtilDebug

public class MtvURI
{

    private MtvURI()
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
    }

    public MtvURI(int i, int j)
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
        pbType = i;
        chnlNum = j;
    }

    public MtvURI(int i, int j, int k)
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
        pbType = i;
        chnlNum = j;
        serviceID = k;
    }

    public MtvURI(int i, int j, int k, int l, int i1, String s, int ai[])
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
        pbType = i;
        tvLink = new MtvOneSegTVLink();
        if(tvLink != null)
        {
            tvLink.origNWID = j;
            tvLink.transStreamID = k;
            tvLink.servID = l;
            tvLink.compTag = i1;
            tvLink.destURI = s;
            tvLink.affilID = ai;
            return;
        } else
        {
            MtvUtilDebug.Error("MtvURI", "Failure in creating object for tvLinkURI!");
            return;
        }
    }

    public MtvURI(int i, int j, int k, boolean flag)
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
        pbType = i;
        chnlNum = j;
        serviceID = k;
        isSwitchService = flag;
    }

    public MtvURI(int i, String s, int j)
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
        pbType = i;
        filePath = s;
        fileIndex = j;
    }

    public MtvURI(int i, String s, int j, int k)
    {
        pbType = -1;
        chnlNum = -1;
        fileIndex = -1;
        filePath = null;
        tvLink = null;
        serviceID = 0;
        isSwitchService = false;
        pbType = i;
        filePath = s;
        fileIndex = j;
        serviceID = k;
    }

    public int chnlNum()
    {
        return chnlNum;
    }

    public int fileIndex()
    {
        return fileIndex;
    }

    public String filePath()
    {
        return filePath;
    }

    public boolean isSwitchService()
    {
        return isSwitchService;
    }

    public int pbType()
    {
        return pbType;
    }

    public int serviceID()
    {
        return serviceID;
    }

    public String toString()
    {
        return (new StringBuilder()).append("pbType : ").append(pbType).append(" chnlNum : ").append(chnlNum).append(" fileIndex ").append(fileIndex).append(" filePath ").append(filePath).append(" tvLink ").append(tvLink).toString();
    }

    public MtvOneSegTVLink tvLink()
    {
        return tvLink;
    }

    private static final String TAG = "MtvURI";
    private int chnlNum;
    private int fileIndex;
    private String filePath;
    boolean isSwitchService;
    private int pbType;
    private int serviceID;
    private MtvOneSegTVLink tvLink;
}
