// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.helper.types;

import android.os.Parcel;
import android.os.Parcelable;

public class MtvOneSegChannel
    implements Parcelable
{

    public MtvOneSegChannel()
    {
        serviceID = -1;
        remoteKeyID = -1;
        serviceName = null;
        numberOfPhysicalIDs = -1;
        physicalID = -1;
        physicalIDType = -1;
        physicalIDName = null;
        physicalIDProviderName = null;
    }

    public MtvOneSegChannel(Parcel parcel)
    {
        serviceID = -1;
        remoteKeyID = -1;
        serviceName = null;
        numberOfPhysicalIDs = -1;
        physicalID = -1;
        physicalIDType = -1;
        physicalIDName = null;
        physicalIDProviderName = null;
        serviceID = parcel.readInt();
        remoteKeyID = parcel.readInt();
        serviceName = parcel.readString();
        numberOfPhysicalIDs = parcel.readInt();
        physicalID = parcel.readInt();
        physicalIDType = parcel.readInt();
        physicalIDName = parcel.readString();
        physicalIDProviderName = parcel.readString();
    }

    public int describeContents()
    {
        return 0;
    }

    public int getNumberOfPhysicalIDs()
    {
        return numberOfPhysicalIDs;
    }

    public int getPhysicalID()
    {
        return physicalID;
    }

    public String getPhysicalIDName()
    {
        return physicalIDName;
    }

    public String getPhysicalIDProviderName()
    {
        return physicalIDProviderName;
    }

    public int getPhysicalIDType()
    {
        return physicalIDType;
    }

    public int getRemoteKeyID()
    {
        return remoteKeyID;
    }

    public int getServID()
    {
        return serviceID;
    }

    public String getServName()
    {
        return serviceName;
    }

    public void setNumberOfPhysicalIDs(int i)
    {
        numberOfPhysicalIDs = i;
    }

    public void setPhysicalID(int i)
    {
        physicalID = i;
    }

    public void setPhysicalIDName(String s)
    {
        physicalIDName = s;
    }

    public void setPhysicalIDProviderName(String s)
    {
        physicalIDProviderName = s;
    }

    public void setPhysicalIDType(int i)
    {
        physicalIDType = i;
    }

    public void setRemoteKeyID(int i)
    {
        remoteKeyID = i;
    }

    public void setServID(int i)
    {
        serviceID = i;
    }

    public void setServiceName(String s)
    {
        serviceName = s;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(serviceID);
        parcel.writeInt(remoteKeyID);
        if(serviceName != null)
            parcel.writeString(serviceName);
        else
            parcel.writeString("");
        parcel.writeInt(numberOfPhysicalIDs);
        parcel.writeInt(physicalID);
        parcel.writeInt(physicalIDType);
        if(physicalIDName != null)
            parcel.writeString(physicalIDName);
        else
            parcel.writeString("");
        if(physicalIDProviderName != null)
        {
            parcel.writeString(physicalIDProviderName);
            return;
        } else
        {
            parcel.writeString("");
            return;
        }
    }

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public MtvOneSegChannel createFromParcel(Parcel parcel)
        {
            return new MtvOneSegChannel(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public MtvOneSegChannel[] newArray(int i)
        {
            return new MtvOneSegChannel[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    private int numberOfPhysicalIDs;
    private int physicalID;
    private String physicalIDName;
    private String physicalIDProviderName;
    private int physicalIDType;
    private int remoteKeyID;
    private int serviceID;
    private String serviceName;

}
