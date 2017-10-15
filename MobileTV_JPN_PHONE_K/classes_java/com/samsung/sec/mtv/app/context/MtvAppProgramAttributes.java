// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.context;

import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import java.util.Date;

// Referenced classes of package com.samsung.sec.mtv.app.context:
//            IMtvAppProgramAttributeListener

public class MtvAppProgramAttributes
{

    MtvAppProgramAttributes()
    {
        init();
    }

    private void init()
    {
        cb = null;
        prgNumber = 0;
        programList = null;
        currentProgram = null;
        channel = null;
        currProgramName = null;
        currChannelName = null;
        tot = 0L;
        signalLevel = 0;
        lastScannedChannel = 0;
    }

    private boolean updateProgramList()
    {
        long l = tot;
        Date date = new Date(l);
        boolean flag1 = false;
        if(programList == null)
        {
            MtvUtilDebug.Low("MtvAppProgramAttributes", (new StringBuilder()).append("updateProgramList: ProgramList is NULL.! streamTime:").append(date).toString());
            return false;
        }
        if(programList.length <= 1)
        {
            MtvUtilDebug.Low("MtvAppProgramAttributes", (new StringBuilder()).append("updateProgramList: There is only One Program in the List.!!! streamTime:").append(date).toString());
            return false;
        }
        boolean flag = flag1;
        if(programList[0] != null)
        {
            flag = flag1;
            if(l > programList[0].getEndTime().getTime())
            {
                MtvOneSegProgram amtvonesegprogram[] = new MtvOneSegProgram[programList.length - 1];
                for(int i = 1; i < programList.length; i++)
                    amtvonesegprogram[i - 1] = programList[i];

                programList = amtvonesegprogram;
                setCurrentProgram(programList[0]);
                flag = true;
                MtvUtilDebug.Low("MtvAppProgramAttributes", (new StringBuilder()).append("Hope You see the New List Now[").append(date).append("] programList Len[").append(programList.length).append("]").toString());
            }
        }
        return flag;
    }

    public MtvOneSegChannel[] getChannel()
    {
        return channel;
    }

    public String getCurrentChannelName()
    {
        return currChannelName;
    }

    public int getCurrentOpenedChannel()
    {
        return currentOpenedChannel;
    }

    public int getCurrentOpenedChannelServiceId()
    {
        return currentOpenedChannelServiceId;
    }

    public MtvOneSegProgram getCurrentProgram()
    {
        return currentProgram;
    }

    public String getCurrentProgramName()
    {
        return currProgramName;
    }

    public int getLastScannedChannel()
    {
        return lastScannedChannel;
    }

    public int getPrgNumber()
    {
        return prgNumber;
    }

    public MtvOneSegProgram[] getProgram()
    {
        return programList;
    }

    public int getSignalLevel()
    {
        return signalLevel;
    }

    public MtvOneSegSignal getSignalStatistics()
    {
        return signal;
    }

    public long getTot()
    {
        return tot;
    }

    public void registerListener(IMtvAppProgramAttributeListener imtvappprogramattributelistener)
    {
        this;
        JVM INSTR monitorenter ;
        cb = imtvappprogramattributelistener;
        this;
        JVM INSTR monitorexit ;
        return;
        imtvappprogramattributelistener;
        throw imtvappprogramattributelistener;
    }

    public void reset()
    {
        this;
        JVM INSTR monitorenter ;
        init();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setChannel(MtvOneSegChannel amtvonesegchannel[])
    {
        if(amtvonesegchannel != null)
            channel = amtvonesegchannel;
        if(cb != null && amtvonesegchannel != null)
            cb.onProgramAttributeUpdated(3);
    }

    public void setCurrentChannelName(String s)
    {
        currChannelName = s;
    }

    public void setCurrentOpenedChannel(int i)
    {
        MtvUtilDebug.Low("MtvAppProgramAttributes", (new StringBuilder()).append("setCurrentOpenedChannel ").append(i).toString());
        currentOpenedChannel = i;
    }

    public void setCurrentOpenedChannelServiceId(int i)
    {
        MtvUtilDebug.Low("MtvAppProgramAttributes", (new StringBuilder()).append("setCurrentOpenedChannelServiceId ").append(i).toString());
        currentOpenedChannelServiceId = i;
    }

    public void setCurrentProgram(MtvOneSegProgram mtvonesegprogram)
    {
        currentProgram = mtvonesegprogram;
    }

    public void setCurrentProgramName(String s)
    {
        currProgramName = s;
    }

    public void setLastScannedChannel(int i)
    {
        lastScannedChannel = i;
    }

    public void setPrgNumber(int i)
    {
        prgNumber = i;
    }

    public void setProgram(MtvOneSegProgram amtvonesegprogram[])
    {
        programList = amtvonesegprogram;
        if(programList != null)
        {
            setCurrentProgram(programList[0]);
            if(cb != null)
                cb.onProgramAttributeUpdated(2);
        }
    }

    public void setSignalLevel(int i)
    {
        signalLevel = i;
        if(cb != null)
            cb.onProgramAttributeUpdated(16);
    }

    public void setSignalStatistics(MtvOneSegSignal mtvonesegsignal)
    {
        signal = mtvonesegsignal;
    }

    public void setTot(long l)
    {
        tot = l;
        if(cb != null && programList != null && updateProgramList())
            cb.onProgramAttributeUpdated(2);
    }

    public void unregisterListener(IMtvAppProgramAttributeListener imtvappprogramattributelistener)
    {
        this;
        JVM INSTR monitorenter ;
        if(cb != null && cb.equals(imtvappprogramattributelistener))
            cb = null;
        this;
        JVM INSTR monitorexit ;
        return;
        imtvappprogramattributelistener;
        throw imtvappprogramattributelistener;
    }

    public static final int ATTRIB_ALL = 65535;
    public static final int ATTRIB_CHANNEL = 3;
    public static final int ATTRIB_NONE = 0;
    public static final int ATTRIB_PRG_NUMBER = 1;
    public static final int ATTRIB_PROGRAM = 2;
    public static final int ATTRIB_SIGNAL_LEVEL = 16;
    private static final String TAG = "MtvAppProgramAttributes";
    private IMtvAppProgramAttributeListener cb;
    private MtvOneSegChannel channel[];
    private String currChannelName;
    private String currProgramName;
    private int currentOpenedChannel;
    private int currentOpenedChannelServiceId;
    private MtvOneSegProgram currentProgram;
    private int lastScannedChannel;
    private int prgNumber;
    private MtvOneSegProgram programList[];
    private MtvOneSegSignal signal;
    private int signalLevel;
    private long tot;
}
