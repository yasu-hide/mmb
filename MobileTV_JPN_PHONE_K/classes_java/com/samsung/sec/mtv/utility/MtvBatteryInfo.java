// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.broadcast.helper.MtvUtilDebug;

public class MtvBatteryInfo
{

    public MtvBatteryInfo()
    {
    }

    public static int getBatteryLevel()
    {
        MtvUtilDebug.Low("MtvBatteryInfo", (new StringBuilder()).append("getmBatteryLevel:").append(mBatteryLevel).toString());
        return mBatteryLevel;
    }

    public static MtvBatteryInfo getLatestBatteryInfo()
    {
        return latestBatteryInfo;
    }

    public static boolean isBatteryCharging()
    {
        return mBatteryChargeStatus;
    }

    public static void setBatteryCharging(boolean flag)
    {
        MtvUtilDebug.Low("MtvBatteryInfo", (new StringBuilder()).append("setmBatteryChargeStatus:").append(flag).toString());
        mBatteryChargeStatus = flag;
    }

    private static void setBatteryLevel(int i)
    {
        mBatteryLevel = i;
    }

    public static void setLatestBatteryInfo(MtvBatteryInfo mtvbatteryinfo)
    {
        latestBatteryInfo = mtvbatteryinfo;
    }

    public static void updateBatteryLevel(int i, int j)
    {
        MtvUtilDebug.Low("MtvBatteryInfo", (new StringBuilder()).append("updateBatteryLevel: Level:").append(i).append("Scale: ").append(j).toString());
        setBatteryLevel((i * 100) / j);
    }

    private static final String TAG = "MtvBatteryInfo";
    private static MtvBatteryInfo latestBatteryInfo = null;
    private static boolean mBatteryChargeStatus = false;
    private static int mBatteryLevel = 0;

}
