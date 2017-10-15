// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.provider;

import java.io.Serializable;
import java.util.Date;

public class MtvFile
    implements Serializable
{

    public MtvFile()
    {
        index = -1;
        channelName = null;
        programName = null;
        creationTime = null;
        durationOfRecording = -1;
        fileFormat = -1;
        fileSize = -1L;
        filePath = null;
        pidOfVideo = -1;
        pidOfAudio = -1;
        isLATM = 0;
    }

    public boolean equals(Object obj)
    {
        return (obj instanceof MtvFile) && ((MtvFile)obj).filePath.equals(filePath);
    }

    public String getChannelName()
    {
        return channelName;
    }

    public Date getCreationTime()
    {
        return creationTime;
    }

    public int getDurationOfRecording()
    {
        return durationOfRecording;
    }

    public int getFileFormat()
    {
        return fileFormat;
    }

    public String getFilePath()
    {
        return filePath;
    }

    public long getFileSize()
    {
        return fileSize;
    }

    public int getIndex()
    {
        return index;
    }

    public int getIsLATM()
    {
        return isLATM;
    }

    public int getPidOfAudio()
    {
        return pidOfAudio;
    }

    public int getPidOfVideo()
    {
        return pidOfVideo;
    }

    public String getProgramName()
    {
        return programName;
    }

    public int hashCode()
    {
        int i;
        if(filePath == null)
            i = -1;
        else
            i = filePath.hashCode();
        return i + 31;
    }

    public void setChannelName(String s)
    {
        channelName = s;
    }

    public void setCreationTime(Date date)
    {
        creationTime = date;
    }

    public void setFileFormat(int i)
    {
        fileFormat = i;
    }

    public void setFilePath(String s)
    {
        filePath = s;
    }

    public void setProgramName(String s)
    {
        programName = s;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("MtvFile").append("[index=").append(index).toString();
        s = (new StringBuilder()).append(s).append(", fileFormat=").append(fileFormat).toString();
        s = (new StringBuilder()).append(s).append(", fileSize=").append(fileSize).toString();
        s = (new StringBuilder()).append(s).append(", creationTime=").append(creationTime).toString();
        s = (new StringBuilder()).append(s).append(", durationOfRecording=").append(durationOfRecording).toString();
        s = (new StringBuilder()).append(s).append(", filePath=").append(filePath).toString();
        s = (new StringBuilder()).append(s).append(", pidOfVideo=").append(pidOfVideo).toString();
        s = (new StringBuilder()).append(s).append(", pidOfAudio=").append(pidOfAudio).toString();
        s = (new StringBuilder()).append(s).append(", channelName=").append(channelName).toString();
        s = (new StringBuilder()).append(s).append(", programName=").append(programName).toString();
        return (new StringBuilder()).append(s).append(", isLATM=").append(isLATM).append("]").toString();
    }

    public static final int TV_FILE_FORMAT_JPEG = 2;
    public static final int TV_FILE_FORMAT_MP4 = 0;
    public static final int TV_FILE_FORMAT_TS = 1;
    private static final long serialVersionUID = 1L;
    protected String channelName;
    protected Date creationTime;
    protected int durationOfRecording;
    protected int fileFormat;
    protected String filePath;
    protected long fileSize;
    protected int index;
    protected int isLATM;
    protected int pidOfAudio;
    protected int pidOfVideo;
    protected String programName;
}
