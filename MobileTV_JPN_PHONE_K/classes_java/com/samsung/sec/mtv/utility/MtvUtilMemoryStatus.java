// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.content.res.Resources;
import android.os.Environment;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.os.storage.StorageVolume;
import java.io.File;
import java.text.DecimalFormat;

public class MtvUtilMemoryStatus
{

    public MtvUtilMemoryStatus()
    {
    }

    public static long ConvertByteToTime(long l)
    {
        if(l < 0x204000L)
        {
            MtvUtilDebug.Low("MtvUtilMemoryStatus", (new StringBuilder()).append("ConvertByteToTime: avail_byte is less :").append(l).toString());
            return 0L;
        } else
        {
            long l1 = (l - 0x204000L) / 53248L;
            MtvUtilDebug.Low("MtvUtilMemoryStatus", (new StringBuilder()).append("ConvertByteToTime: avail_byte : ").append(l).append("  recordable_time: ").append(l1).toString());
            return l1;
        }
    }

    public static String formatSize(long l, Context context)
    {
        double d = l;
        if((double)l >= 1024D)
        {
            String s = context.getResources().getString(0x7f070263);
            double d1 = d / 1024D;
            d = d1;
            if((double)l >= 1024D)
            {
                s = context.getResources().getString(0x7f070274);
                d1 /= 1024D;
                d = d1;
                if((double)l >= 1024D)
                {
                    s = context.getResources().getString(0x7f07025b);
                    d = d1 / 1024D;
                }
            }
            return (new StringBuilder()).append((new DecimalFormat("###,###.##")).format(d)).append(s).toString();
        } else
        {
            return new String((new StringBuilder()).append("0.0").append(context.getResources().getString(0x7f070263)).toString());
        }
    }

    public static long getAvailableExternalMemorySize()
    {
        if(isExternalMemoryAvailable())
        {
            StatFs statfs = new StatFs((new File(mExternalStorageSdPath)).getPath());
            long l = statfs.getBlockSizeLong();
            return statfs.getAvailableBlocksLong() * l;
        } else
        {
            return -1L;
        }
    }

    public static long getAvailableInternalMemorySize()
    {
        StatFs statfs = new StatFs(Environment.getDataDirectory().getPath().toString());
        long l = statfs.getBlockSizeLong();
        return statfs.getAvailableBlocksLong() * l;
    }

    public static long getTotalInternalMemorySize()
    {
        StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l = statfs.getBlockSizeLong();
        return statfs.getBlockCountLong() * l;
    }

    public static boolean isExternalMemoryAvailable()
    {
        if(mContext == null)
        {
            MtvUtilDebug.High("MtvUtilMemoryStatus", "isExternalMemoryAvailable: mContext null returning false");
        } else
        {
            StorageManager storagemanager = (StorageManager)mContext.getSystemService("storage");
            StorageVolume astoragevolume[] = storagemanager.getVolumeList();
            int i = 0;
            while(i < astoragevolume.length) 
            {
                StorageVolume storagevolume = astoragevolume[i];
                if("sd".equals(storagevolume.getSubSystem()) && storagevolume.isRemovable())
                {
                    mExternalStorageSdPath = new String(storagevolume.getPath());
                    return storagemanager.getVolumeState(mExternalStorageSdPath).equals("mounted");
                }
                i++;
            }
        }
        return false;
    }

    public static boolean isInternalMemoryAvailable()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean isLowMemoryToLaunch()
    {
        long l = getAvailableInternalMemorySize();
        boolean flag = false;
        if(l < 0x3200000L)
        {
            flag = true;
            MtvUtilDebug.Error("MtvUtilMemoryStatus", (new StringBuilder()).append("isLowMemoryToLaunch: memory_available: ").append(l).append(" return:").append(true).toString());
        }
        return flag;
    }

    public static void setAppComponents(Context context)
    {
        mContext = context;
    }

    static final int ERROR = -1;
    public static final int MTV_LOW_MEMORY_LEVEL = 0x3200000;
    public static final long MTV_MAX_BYTE_RATE = 53248L;
    public static final long MTV_MIN_SIZE_OF_RECORD = 0x204000L;
    private static final String TAG = "MtvUtilMemoryStatus";
    private static Context mContext;
    private static String mExternalStorageSdPath;
}
