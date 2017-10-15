// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper.types;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Date;

public class MtvOneSegProgram
    implements Parcelable
{

    public MtvOneSegProgram()
    {
        eventID = -1;
        serviceID = -1;
        progName = null;
        progDesc = null;
        startTime = null;
        endTime = null;
        IsProgValid = 0;
        IsProgDescValid = 0;
    }

    public MtvOneSegProgram(Parcel parcel)
    {
        eventID = -1;
        serviceID = -1;
        progName = null;
        progDesc = null;
        startTime = null;
        endTime = null;
        IsProgValid = 0;
        IsProgDescValid = 0;
        eventID = parcel.readInt();
        serviceID = parcel.readInt();
        IsProgValid = parcel.readInt();
        if(IsProgValid == 1)
            progName = parcel.readString();
        else
            progName = null;
        IsProgDescValid = parcel.readInt();
        if(IsProgDescValid == 1)
            progDesc = parcel.readString();
        else
            progDesc = null;
        startTime = new Date(parcel.readLong());
        endTime = new Date(parcel.readLong());
    }

    public int describeContents()
    {
        return 0;
    }

    public Date getEndTime()
    {
        return endTime;
    }

    public int getEventID()
    {
        return eventID;
    }

    public String getProgDesc()
    {
        return progDesc;
    }

    public String getProgName()
    {
        return progName;
    }

    public int getServiceID()
    {
        return serviceID;
    }

    public Date getStartTime()
    {
        return startTime;
    }

    public void setEndTime(Date date)
    {
        endTime = date;
    }

    public void setEventID(int i)
    {
        eventID = i;
    }

    public void setProgDesc(String s)
    {
        progDesc = s;
    }

    public void setProgramName(String s)
    {
        progName = s;
    }

    public void setServiceID(int i)
    {
        serviceID = i;
    }

    public void setStartTime(Date date)
    {
        startTime = date;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("").append("[startTime] ").append(startTime).toString();
        s = (new StringBuilder()).append(s).append("[end] ").append(endTime).toString();
        s = (new StringBuilder()).append(s).append("[eventID] ").append(eventID).toString();
        s = (new StringBuilder()).append(s).append("[serviceID] ").append(serviceID).toString();
        s = (new StringBuilder()).append(s).append("[progName] ").append(progName).toString();
        return (new StringBuilder()).append(s).append("[progDesc] ").append(progDesc).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(eventID);
        parcel.writeInt(serviceID);
        if(progName != null)
        {
            IsProgValid = 1;
            parcel.writeInt(IsProgValid);
            parcel.writeString(progName);
        } else
        {
            IsProgValid = 0;
            parcel.writeInt(IsProgValid);
        }
        if(progDesc != null)
        {
            IsProgDescValid = 1;
            parcel.writeInt(IsProgDescValid);
            parcel.writeString(progDesc);
        } else
        {
            IsProgDescValid = 1;
            parcel.writeInt(IsProgDescValid);
        }
        parcel.writeLong(startTime.getTime());
        parcel.writeLong(endTime.getTime());
    }

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public MtvOneSegProgram createFromParcel(Parcel parcel)
        {
            return new MtvOneSegProgram(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public MtvOneSegProgram[] newArray(int i)
        {
            return new MtvOneSegProgram[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    private int IsProgDescValid;
    private int IsProgValid;
    private Date endTime;
    private int eventID;
    private String progDesc;
    private String progName;
    private int serviceID;
    private Date startTime;

}
