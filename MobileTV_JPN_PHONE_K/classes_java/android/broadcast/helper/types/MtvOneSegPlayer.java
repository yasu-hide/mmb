// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper.types;

import android.broadcast.helper.MtvUtilDebug;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MtvOneSegPlayer
{

    public MtvOneSegPlayer(int i, String s, int j, String s1, String s2, Date date, int k)
    {
        recType = -1;
        storeType = -1;
        audioPID = -1;
        videoPID = -1;
        captPID = -1;
        mPlayerURI = "MTV";
        memLoc = null;
        chnlName = null;
        progName = null;
        recDate = null;
        servName = null;
        serviceID = 0;
        if(s1 == null || date == null)
            MtvUtilDebug.Error("MtvOneSegPlayer", (new StringBuilder()).append("Invalid Parameters chnlName = [").append(s1).append("] progName = [").append(s2).append("] recDate = [").append(date).append("]").toString());
        recType = i;
        memLoc = s;
        storeType = j;
        chnlName = s1;
        progName = s2;
        recDate = date;
        serviceID = k;
    }

    public MtvOneSegPlayer(String s, int i, int j, int k)
    {
        recType = -1;
        storeType = -1;
        audioPID = -1;
        videoPID = -1;
        captPID = -1;
        mPlayerURI = "MTV";
        memLoc = null;
        chnlName = null;
        progName = null;
        recDate = null;
        servName = null;
        serviceID = 0;
        if(s == null)
            MtvUtilDebug.Error("MtvOneSegPlayer", "Invalid Service Name [null]");
        servName = s;
        videoPID = i;
        audioPID = j;
        captPID = k;
    }

    public String getOpenURI(int i)
    {
        Object obj = null;
        String s1 = null;
        String s;
        if(i == 2 || i == 1)
        {
            if(servName != null)
            {
                if(videoPID > 0)
                    s1 = (new StringBuilder()).append("videoPid=").append(Integer.toString(videoPID)).append(";").toString();
                s = s1;
                if(audioPID > 0)
                    if(s1 != null)
                    {
                        s = s1.concat((new StringBuilder()).append("audioPid=").append(Integer.toString(audioPID)).append(";").toString());
                    } else
                    {
                        MtvUtilDebug.Error("MtvOneSegPlayer", "Video doesnt exist - Looks like A+ CLIP!");
                        s = (new StringBuilder()).append("audioPid=").append(Integer.toString(audioPID)).append(";").toString();
                    }
                s1 = s;
                if(captPID > 0)
                    if(s != null)
                    {
                        s1 = s.concat((new StringBuilder()).append("subtitlePid=").append(Integer.toString(captPID)).append(";").toString());
                    } else
                    {
                        MtvUtilDebug.Error("MtvOneSegPlayer", "Only Caption PID exists - Audio/Video doesnt exist");
                        s1 = (new StringBuilder()).append("subtitlePid=").append(Integer.toString(captPID)).append(";").toString();
                    }
                if(s1 != null)
                {
                    MtvUtilDebug.Error("MtvOneSegPlayer", (new StringBuilder()).append("PBType: [").append(i).append("]").toString());
                    if(i == 1)
                        mPlayerURI = "FILE";
                    s = (new StringBuilder()).append(mPlayerURI).append("://").append(servName).append("/?").append(s1).append("audioMode=1;IsLATMAudio=0;").toString();
                } else
                {
                    MtvUtilDebug.Error("MtvOneSegPlayer", "A/V/C PIDs doesnt exist - Cannot construct URI:: Returning NULL");
                    s = obj;
                }
            } else
            {
                MtvUtilDebug.Error("MtvOneSegPlayer", "servName = [null] Cannot construct Channel URI ");
                s = obj;
            }
        } else
        {
            MtvUtilDebug.Error("MtvOneSegPlayer", (new StringBuilder()).append("Current PBType is [").append(i).append("]. Failure in getChannelURI() ").toString());
            s = obj;
        }
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvOneSegPlayer", (new StringBuilder()).append("returning Open URI as [").append(s).append("]").toString());
        return s;
    }

    public String getRecordURI()
    {
        String s = null;
        if(recType > 0 && chnlName != null && memLoc != null && recDate != null)
        {
            Object obj = new SimpleDateFormat("yyyyMMddHHmmss");
            if(obj != null)
            {
                s = ((SimpleDateFormat) (obj)).format(recDate);
                obj = (new StringBuilder()).append("record").append(s).append(".ts").toString();
                s = (new StringBuilder()).append("File://").append(memLoc).append(((String) (obj))).append("?").append("recType=").append(Integer.toString(recType)).append("; CRPM=0").append("; channelName=").append(chnlName).append("; programName=").append(progName).append("; creationTime=").append(s).append("; storageType=").append(storeType).append("; serviceID=").append(serviceID).append(";").toString();
            }
        } else
        {
            MtvUtilDebug.Error("MtvOneSegPlayer", (new StringBuilder()).append("Invalid input parameters recType [").append(recType).append("] memLoc [").append(memLoc).append("] storeType [").append(storeType).append("] chnlName [").append(chnlName).append("] progName [").append(progName).append("] Date [").append(recDate).append("] serviceID [").append(serviceID).append("]").toString());
        }
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvOneSegPlayer", (new StringBuilder()).append("returning recordURI as [").append(s).append("]").toString());
        return s;
    }

    public static final String TAG = "MtvOneSegPlayer";
    private static final String mPlayerLinker = "/?";
    private static final String mPlayerStringSeperator = ";";
    private static final String mURILinker = "://";
    private int audioPID;
    private int captPID;
    private String chnlName;
    private String mPlayerURI;
    private String memLoc;
    private String progName;
    private Date recDate;
    private int recType;
    private String servName;
    private int serviceID;
    private int storeType;
    private int videoPID;
}
