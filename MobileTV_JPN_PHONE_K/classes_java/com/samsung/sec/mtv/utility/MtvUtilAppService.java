// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.utility;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.*;
import android.view.*;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.samsung.sec.mtv.utility:
//            MtvFeatures, MtvBatteryInfo

public class MtvUtilAppService
{

    private MtvUtilAppService()
    {
    }

    public static void Reset()
    {
        isSwitchModeOngoing = false;
        bIsNowOnAirReservation = false;
    }

    public static void ShowSwitchToast(Context context)
    {
        MtvUtilDebug.Low("MtvUtilAppService", "ShowSwitchToast called as Currently one mode switching is onGoing so can not call another mode switch");
    }

    public static void aquireCPUPartialWakeLock(Context context)
    {
        MtvUtilDebug.High("MtvUtilAppService", "aquireCPUPartialWakeLock :: ");
        MtvUtilDebug.High("MtvUtilAppService", "aquireCPUPartialWakeLock :: acquiring...");
    }

    public static boolean forceresetMtvVisibiltySettings(Context context)
    {
        return true;
    }

    public static int getCurrentOrientation(Context context)
    {
        int i = ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
        if(i == 1 || i == 3)
        {
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvUtilAppService", "Lanscape...");
            return 1;
        }
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUtilAppService", "Portrait...");
        return 0;
    }

    public static boolean getIsNowOnAirReservation()
    {
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("isNowOnAirReservation: ").append(bIsNowOnAirReservation).toString());
        return bIsNowOnAirReservation;
    }

    public static int getRotation(Context context)
    {
        return ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    public static boolean isActivityOnForeground(Context context, String s)
    {
        context = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getClassName();
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("isAppOnForeground() : topActivityName = ").append(context).toString());
        return context.contains(s);
    }

    public static boolean isActivityPresent()
    {
        return false;
    }

    public static boolean isAllowedBy3LMPolicy()
    {
        MtvUtilDebug.Low("MtvUtilAppService", "isAllowedBy3LMPolicy");
        if(!MtvFeatures.is3LMEnabled())
            break MISSING_BLOCK_LABEL_38;
        int i;
        IOemExtendedApi3LM ioemextendedapi3lm;
        try
        {
            ioemextendedapi3lm = android.os.IOemExtendedApi3LM.Stub.asInterface(ServiceManager.getService("OemExtendedApi3LM"));
        }
        catch(RemoteException remoteexception)
        {
            MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("IsAllowedBy3LMPolicy").append(remoteexception).toString());
            return true;
        }
        if(ioemextendedapi3lm == null)
            break MISSING_BLOCK_LABEL_38;
        i = ioemextendedapi3lm.getOneSegState();
        if(i != 1)
            break MISSING_BLOCK_LABEL_40;
        return true;
        return false;
    }

    public static boolean isAppExiting()
    {
        return isAppExiting;
    }

    public static boolean isAppOnForeground(Context context)
    {
        if(context == null)
            throw new IllegalArgumentException("context cannot be null !");
        String s = ((android.app.ActivityManager.RunningTaskInfo)((ActivityManager)context.getSystemService("activity")).getRunningTasks(1).get(0)).topActivity.getPackageName();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("isAppOnForeground() : topPackageName = ").append(s).toString());
        return context.getPackageName().equals(s);
    }

    public static boolean isBGRecorderRunning()
    {
        return false;
    }

    public static boolean isConflictHandlerEnabled(Context context)
    {
        boolean flag = false;
        if(MtvFeatures.isConflicttHandlerEnabled())
            flag = isPackageInstalled(context, "com.nttdocomo.mmb.android.mmbsv.process");
        MtvUtilDebug.High("MtvUtilAppService", (new StringBuilder()).append("MMB Package installation check : ").append(flag).toString());
        return flag;
    }

    public static boolean isDialogTypeShowModeOn()
    {
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("isDialogTypeShowModeOn   :").append(isDialogTypeShowModeOn).toString());
        return isDialogTypeShowModeOn;
    }

    public static boolean isIntentAvailable(Context context, Intent intent)
    {
        return context.getPackageManager().queryIntentActivities(intent, 0x10000).size() > 0;
    }

    public static boolean isMiniModeRunning(Context context)
    {
label0:
        {
            context = (ActivityManager)context.getSystemService("activity");
            if(context == null)
                break label0;
            context = context.getRunningServices(0x7fffffff);
            if(context == null)
                break label0;
            context = context.iterator();
            do
                if(!context.hasNext())
                    break label0;
            while(!((android.app.ActivityManager.RunningServiceInfo)context.next()).service.getClassName().equals("com.samsung.sec.mtv.ui.minitv.MtvMiniModeService"));
            return true;
        }
        return false;
    }

    private static boolean isPackageInstalled(Context context, String s)
    {
        if(context == null)
        {
            MtvUtilDebug.Error("MtvUtilAppService", "context is null! Please set context when create instance");
            return false;
        }
        context = context.getPackageManager();
        if(context == null)
        {
            MtvUtilDebug.Error("MtvUtilAppService", "pm is null!");
            return false;
        }
        try
        {
            context.getPackageInfo(s, 1);
        }
        // Misplaced declaration of an exception variable
        catch(Context context)
        {
            return false;
        }
        return true;
    }

    public static boolean isScreenOn(Context context)
    {
        return ((PowerManager)context.getSystemService("power")).isScreenOn();
    }

    public static boolean isSwitchModeOngoing()
    {
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("isSwitchModeOngoing   :").append(isSwitchModeOngoing).toString());
        return isSwitchModeOngoing;
    }

    public static boolean isTaskPresent()
    {
        return false;
    }

    public static String mobileTvAppVersion(Context context)
    {
        int i;
        String s;
        s = "";
        i = 0;
        String s1 = (new StringBuilder()).append("[").append(0).append("][").append("").append("]").toString();
        if(context == null)
            return s1;
        String s2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        s = s2;
_L1:
        int j = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        i = j;
_L2:
        return (new StringBuilder()).append("[").append(i).append("][").append(s).append("]").toString();
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        namenotfoundexception.printStackTrace();
          goto _L1
        context;
        context.printStackTrace();
          goto _L2
    }

    public static void releaseAndDeletePartialWakeLock()
    {
        MtvUtilDebug.High("MtvUtilAppService", "releaseAndDeletePartialWakeLock :: ");
        if(mCpuWakeLock != null && mCpuWakeLock.isHeld())
        {
            MtvUtilDebug.High("MtvUtilAppService", "releaseAndDeletePartialWakeLock :: releasing...");
            mCpuWakeLock.release();
        }
        mCpuWakeLock = null;
    }

    public static void releaseCPUPartialWakeLock()
    {
        MtvUtilDebug.High("MtvUtilAppService", "releaseCPUPartialWakeLock :: ");
    }

    public static boolean resetMtvVisibiltySettings(Context context)
    {
        Object obj = null;
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        context = obj;
        if(activitymanager != null)
            context = ((android.app.ActivityManager.RunningTaskInfo)activitymanager.getRunningTasks(1).get(0)).topActivity.getClassName();
        if(context != null)
        {
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("resetMtvVisibiltySettings() :topActivityName = ").append(context).toString());
            if(!context.contains("com.samsung.sec.mtv"))
            {
                MtvUtilDebug.Low("MtvUtilAppService", "resetMtvVisibiltySettings: Not Top Activity.. resetting ");
                return true;
            }
        }
        return false;
    }

    public static void setAppExiting(boolean flag)
    {
        isAppExiting = flag;
    }

    public static boolean setBroadcastAlarmDelayed(Context context, PendingIntent pendingintent, int i, long l)
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(context != null)
        {
            flag = flag1;
            if(i >= 0)
            {
                flag = flag1;
                if(i <= 3)
                {
                    context = (AlarmManager)context.getSystemService("alarm");
                    flag = flag1;
                    if(context != null)
                    {
                        context.set(i, System.currentTimeMillis() + l, pendingintent);
                        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("setBroadcastAlarmDelayed after : ").append(l).toString());
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    public static void setDialogTypeShowModeOn(boolean flag)
    {
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("setDialogTypeShowModeOn setting to   :").append(flag).toString());
        isDialogTypeShowModeOn = flag;
    }

    public static void setIsNowOnAirReservation(boolean flag)
    {
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("setIsNowOnAirReservation setting to   :").append(flag).toString());
        bIsNowOnAirReservation = flag;
    }

    public static boolean setMtvVisibiltySettings(Context context)
    {
        MtvUtilDebug.Low("MtvUtilAppService", "setMtvVisibiltySettings()");
        return true;
    }

    public static void setPreferredOrientation(int i)
    {
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("setPreferredOrientation for DTV: ").append(i).toString());
        preferred_orientation = i;
    }

    public static void unbindDrawables(View view)
    {
        if(view != null && view.getBackground() != null)
            view.getBackground().setCallback(null);
        if(view instanceof ViewGroup)
        {
            for(int i = 0; i < ((ViewGroup)view).getChildCount(); i++)
                unbindDrawables(((ViewGroup)view).getChildAt(i));

            ((ViewGroup)view).removeAllViews();
        }
    }

    public static boolean updateBatteryInfo(Context context)
    {
        boolean flag1 = true;
        if(context == null)
            throw new IllegalArgumentException("context cannot be null !");
        boolean flag = false;
        boolean flag2 = false;
        context = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if(context != null)
        {
            int i;
            int j;
            if(context.getIntExtra("status", 1) != 2)
                flag1 = false;
            MtvBatteryInfo.setBatteryCharging(flag1);
            i = context.getIntExtra("scale", 100);
            j = context.getIntExtra("level", i);
            MtvBatteryInfo.updateBatteryLevel(j, i);
            flag = flag2;
            if(j <= 15)
            {
                flag = flag2;
                if(!flag1)
                    flag = true;
            }
            flag2 = flag;
            if(!MtvUtilDebug.isReleaseMode())
            {
                MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("updateBatteryInfo() ::  level ").append(j).append("isCharging ").append(flag1).toString());
                flag2 = flag;
            }
        } else
        {
            MtvUtilDebug.Error("MtvUtilAppService", "battery_change_intent not broadcasted not able to update :(");
            flag2 = flag;
        }
        MtvUtilDebug.Low("MtvUtilAppService", (new StringBuilder()).append("updateBatteryInfo() :: ").append(flag2).toString());
        return flag2;
    }

    public static final int MTV_ROTATION_LANDSCAPE = 1;
    public static final int MTV_ROTATION_PORTRAIT = 0;
    public static final int MTV_ROTATION_REVERSE_LANDSCAPE = 3;
    static final String TAG = "MtvUtilAppService";
    public static boolean bIsNowOnAirReservation = false;
    private static boolean isAppExiting = false;
    private static boolean isDialogTypeShowModeOn = false;
    private static boolean isSwitchModeOngoing = false;
    private static android.os.PowerManager.WakeLock mCpuWakeLock;
    public static int preferred_orientation = -1;

}
