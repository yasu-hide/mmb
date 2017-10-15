// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.reciever;

import android.app.*;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.os.*;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContextManager;
import com.samsung.sec.mtv.app.service.MtvOneSegRecorderService;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChannelGuide;
import com.samsung.sec.mtv.ui.common.MtvBaseActivity;
import com.samsung.sec.mtv.ui.common.MtvBaseListActivity;
import com.samsung.sec.mtv.utility.*;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.samsung.sec.mtv.reciever:
//            MtvLiveBroadcastReciever

public class MtvBroadcastReceiver extends BroadcastReceiver
{

    public MtvBroadcastReceiver()
    {
        mNotificationManager = null;
    }

    private void cancelNotification()
    {
        if(mNotificationManager == null)
        {
            return;
        } else
        {
            mNotificationManager.cancel(0x7f0200c3);
            return;
        }
    }

    private boolean checkIsCalling()
    {
        boolean flag = false;
        if(((TelephonyManager)mContext.getSystemService("phone")).getCallState() == 2)
            flag = true;
        MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("checkIsCalling() + result = ").append(flag).toString());
        return flag;
    }

    public static void releaseReservationWakeLock()
    {
        MtvUtilDebug.Low("MtvBroadcastReciever", "releaseReservationWakeLock():: ");
        mRunnableReleaseLock.run();
    }

    private void showNotification()
    {
        MtvUtilDebug.Low("MtvBroadcastReciever", "showNotification called , reservation Failure case during call:: ");
        Object obj1 = new Intent();
        cancelNotification();
        Object obj = new android.app.Notification.Builder(mContext.getApplicationContext());
        ((android.app.Notification.Builder) (obj)).setSmallIcon(0x7f0200c3);
        ((android.app.Notification.Builder) (obj)).setWhen(0L);
        ((Intent) (obj1)).setAction("ACTION_DTV_RESERVATION_LIST");
        ((Intent) (obj1)).addCategory("android.intent.category.DEFAULT");
        ((Intent) (obj1)).setFlags(0x10000000);
        ((Intent) (obj1)).setComponent(new ComponentName(mContext.getPackageName(), com/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide.getName()));
        obj1 = PendingIntent.getActivity(mContext, 0, ((Intent) (obj1)), 0);
        ((android.app.Notification.Builder) (obj)).setContentTitle(mContext.getString(0x7f0701f4));
        ((android.app.Notification.Builder) (obj)).setContentText(mContext.getString(0x7f0702ba));
        ((android.app.Notification.Builder) (obj)).setTicker(mContext.getString(0x7f0701f4));
        ((android.app.Notification.Builder) (obj)).setAutoCancel(true);
        ((android.app.Notification.Builder) (obj)).setContentIntent(((PendingIntent) (obj1)));
        obj = ((android.app.Notification.Builder) (obj)).build();
        if(mNotificationManager != null)
        {
            mNotificationManager.cancel(0x7f0200c3);
            mNotificationManager.notify(0x7f0200c3, ((android.app.Notification) (obj)));
        }
    }

    public boolean isLauncherActivity()
    {
        List list = ((ActivityManager)mContext.getSystemService("activity")).getRunningTasks(0x7fffffff);
        int i = 0;
        do
        {
label0:
            {
                boolean flag = false;
                if(i < list.size())
                {
                    android.app.ActivityManager.RunningTaskInfo runningtaskinfo = (android.app.ActivityManager.RunningTaskInfo)list.get(i);
                    if(!runningtaskinfo.topActivity.getClassName().contains("com.samsung.sec.mtv"))
                        break label0;
                    boolean flag1;
                    if(runningtaskinfo.topActivity.getClassName().contains("com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"))
                    {
                        flag = true;
                        MtvUtilDebug.Low("TAG", "MObileTV is running but it is MtvLuncherActivity");
                    } else
                    {
                        flag = false;
                        MtvUtilDebug.Low("TAG", "MtvTop ");
                    }
                }
                if(!flag)
                    MtvUtilDebug.Low("MtvBroadcastReciever", "isLauncherActivity() :: Launcher Activity not present !!!");
                flag1 = flag;
                if(flag)
                {
                    MtvUtilDebug.High("TAG", "Good to reach here. But Get WF approved from manager!!!");
                    flag1 = MtvUtilAppService.isConflictHandlerEnabled(mContext);
                }
                return flag1;
            }
            i++;
        } while(true);
    }

    public boolean isMobileTvActivityRunning()
    {
        if(MtvUtilAppService.isConflictHandlerEnabled(mContext))
        {
            ArrayList arraylist = new ArrayList();
            List list = ((ActivityManager)mContext.getSystemService("activity")).getRunningTasks(0x7fffffff);
            int i = 0;
            do
            {
label0:
                {
                    boolean flag = false;
                    if(i < list.size())
                    {
                        if(!((android.app.ActivityManager.RunningTaskInfo)list.get(i)).topActivity.getClassName().contains("com.samsung.sec.mtv"))
                            break label0;
                        flag = true;
                        MtvUtilDebug.High("TAG", "MtvTop ");
                    }
                    if(flag)
                    {
                        return true;
                    } else
                    {
                        MtvUtilDebug.High("MtvBroadcastReciever", "Mtv task not there!!!");
                        return false;
                    }
                }
                arraylist.add(0, ((android.app.ActivityManager.RunningTaskInfo)list.get(i)).topActivity.toString());
                i++;
            } while(true);
        } else
        {
            if(MtvAppPlaybackContextManager.getInstance().getCurrentContext() == null)
            {
                MtvUtilDebug.Low("MtvBroadcastReciever", "Current Playback Context is null ! Probably Task Entry is not cleared !");
                return false;
            }
            if(MtvLiveBroadcastReciever.getCurrentInstance() == null || MtvLiveBroadcastReciever.getCurrentInstance().getTopListener() == null)
            {
                MtvUtilDebug.Low("MtvBroadcastReciever", "No LiveBroadcastListener attached  ! Probably App not started yet ");
                return false;
            }
            MtvLiveBroadcastListener mtvlivebroadcastlistener = MtvLiveBroadcastReciever.getCurrentInstance().getTopListener();
            if(mtvlivebroadcastlistener instanceof MtvOneSegRecorderService)
            {
                MtvUtilDebug.Low("MtvBroadcastReciever", "Top Listener is RecorderService  ! Proably Current Context is created by Recorder Service ");
                return false;
            }
            if((mtvlivebroadcastlistener instanceof MtvBaseActivity) || (mtvlivebroadcastlistener instanceof MtvBaseListActivity))
            {
                MtvUtilDebug.Low("MtvBroadcastReciever", "Top Listener is MtvActivity  ! ");
                return true;
            } else
            {
                MtvUtilDebug.Low("MtvBroadcastReciever", "UnRecognized Listener Found   ! ");
                return false;
            }
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        int i;
        boolean flag2;
        boolean flag5;
        boolean flag6;
        boolean flag7;
        Object obj;
        Object obj1;
        Object obj2;
        mContext = context;
        obj2 = null;
        i = -1;
        obj = intent.getAction();
        obj1 = intent.getExtras();
        flag2 = ((String) (obj)).equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_REMINDER");
        flag5 = ((String) (obj)).equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_START");
        flag6 = ((String) (obj)).equals("com.samsung.sec.mtv.DTV_ANTENNA_OPEN");
        mNotificationManager = (NotificationManager)mContext.getSystemService("notification");
        if(obj1 != null)
            i = ((Bundle) (obj1)).getInt("dbId", -1);
        MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("reservationID  ").append(i).toString());
        obj1 = MtvReservationManager.find(mContext, i);
        MtvUtilDebug.Low("MtvBroadcastReciever", (new StringBuilder()).append("onReceive() Action : ").append(((String) (obj))).toString());
        flag7 = MtvUtilAppService.isAllowedBy3LMPolicy();
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(mContext);
        if(!"android.intent.action.MEDIA_BUTTON".equals(intent.getAction())) goto _L2; else goto _L1
_L1:
        if((KeyEvent)intent.getParcelableExtra("android.intent.extra.KEY_EVENT") != null);
_L6:
        return;
_L2:
        if(flag6)
        {
            MtvUtilDebug.High("MtvBroadcastReciever", "AUTO ANTENNA BROADCAST RECEIVER.");
            if(mMtvPreferences.getAntennaOnOff() == 1)
                i = 1;
            else
                i = 0;
            flag2 = MtvUtilAppService.isMiniModeRunning(mContext);
            if(!isMobileTvActivityRunning() && i != 0 && !flag2)
            {
                if(MtvFeatures.isSCoverModeEnabled() && mMtvPreferences.isSViewCoverClosed())
                {
                    MtvUtilDebug.High("MtvBroadcastReciever", "KEYCODE_ISDBT_ANT_OPEN start MtvUiSViewCover");
                    context = new Intent();
                    context.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"));
                    context.setAction("com.samsung.sec.mtv.ACTION_MTV_SVIEW_COVER_VIEW");
                    context.addFlags(0x10000000);
                    context.putExtra("directLaunch", true);
                    mContext.startActivity(context);
                    return;
                } else
                {
                    MtvUtilDebug.High("MtvBroadcastReciever", "KEYCODE_ISDBT_ANT_OPEN start MtvUiPopUpActivity");
                    context = new Intent();
                    context.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
                    context.setAction("com.samsung.sec.mtv.ACTION_MTV_POP_UP");
                    context.addFlags(0x10000000);
                    context.putExtra("popup_type", 8);
                    mContext.startActivity(context);
                    return;
                }
            } else
            {
                MtvUtilDebug.High("MtvBroadcastReciever", "DO NOT start DTV");
                return;
            }
        }
        if(!((String) (obj)).equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_REMINDER") && !((String) (obj)).equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_START"))
            break MISSING_BLOCK_LABEL_3372;
        if(obj1 == null)
        {
            MtvUtilDebug.Low("MtvBroadcastReciever", "onReceive() : invalid reservation ID");
            return;
        }
        if(!flag7 && MtvFeatures.is3LMEnabled())
        {
            MtvUtilDebug.Low("MtvBroadcastReciever", "DTV disabled by 3LM");
            if(((MtvReservation) (obj1)).mPgmStatus == 0 || ((MtvReservation) (obj1)).mPgmStatus == 6)
            {
                MtvReservationManager.UpdateStatus(context, ((MtvReservation) (obj1)), 2);
                return;
            }
            continue; /* Loop/switch isn't completed */
        }
        if(flag2)
        {
            if(((MtvReservation) (obj1)).mTimeStart - 20000L < System.currentTimeMillis() - 5000L || ((MtvReservation) (obj1)).mPgmStatus != 0)
            {
                MtvUtilDebug.Low("MtvBroadcastReciever", "onReceive() : ACTION_MTV_RESERVATION_REMINDER-reservation start times already expired /most probably user changed system time");
                return;
            }
        } else
        if(((MtvReservation) (obj1)).mTimeStart < System.currentTimeMillis() - 5000L || ((MtvReservation) (obj1)).mPgmStatus != 0)
        {
            MtvUtilDebug.Low("MtvBroadcastReciever", "onReceive() : ACTION_MTV_RESERVATION_START-reservation start times already expired /most probably user changed system time");
            if(((MtvReservation) (obj1)).mPgmStatus == 0 || ((MtvReservation) (obj1)).mPgmStatus == 6)
            {
                MtvReservationManager.UpdateStatus(context, ((MtvReservation) (obj1)), 2);
                return;
            }
            continue; /* Loop/switch isn't completed */
        }
        obj = (PowerManager)context.getSystemService("power");
        intent = mHandler;
        intent;
        JVM INSTR monitorenter ;
        if(mCpuWakeLock != null)
            break MISSING_BLOCK_LABEL_742;
        mCpuWakeLock = ((PowerManager) (obj)).newWakeLock(1, "MobileTV");
        mCpuWakeLock.acquire();
        mHandler.postDelayed(mRunnableReleaseLock, 15000L);
        MtvUtilDebug.High("MtvBroadcastReciever", "Acquired PARTIAL_WAKE_LOCK");
_L4:
        if(!flag2)
        {
            obj = obj1;
            if(!flag5)
                break MISSING_BLOCK_LABEL_1209;
        }
        if(checkIsCalling() && ((MtvReservation) (obj1)).mPgmType == 1)
        {
            MtvUtilDebug.Mid("MtvBroadcastReciever", "Reservation watch reminder came during call...so update the status and show the notification..: ");
            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("Reservation  : ").append(((MtvReservation) (obj1)).toString()).toString());
            MtvReservationManager.UpdateStatus(mContext, ((MtvReservation) (obj1)), 11);
            showNotification();
            return;
        }
        break MISSING_BLOCK_LABEL_780;
        MtvUtilDebug.High("MtvBroadcastReciever", "Extend Already Existing PARTIAL_WAKE_LOCK");
        mHandler.removeCallbacks(mRunnableReleaseLock);
        mHandler.postDelayed(mRunnableReleaseLock, 15000L);
        if(true) goto _L4; else goto _L3
_L3:
        context;
        intent;
        JVM INSTR monitorexit ;
        throw context;
        obj = MtvChannelManager.findByPChannel(mContext, ((MtvReservation) (obj1)).mPch);
        intent = ((Intent) (obj1));
        if(obj1 != null)
        {
            intent = ((Intent) (obj1));
            if(((MtvReservation) (obj1)).mPgmServiceID == 0)
            {
                intent = ((Intent) (obj1));
                if(obj != null)
                {
                    intent = ((Intent) (obj1));
                    if(((MtvChannel) (obj)).mServiceID != 0)
                    {
                        intent = new MtvReservation(((MtvReservation) (obj1)).mPch, ((MtvReservation) (obj1)).mVch, ((MtvReservation) (obj1)).mLock, ((MtvReservation) (obj1)).mTimeStart, ((MtvReservation) (obj1)).mTimeEnd, ((MtvReservation) (obj1)).mPgmName, ((MtvReservation) (obj1)).mPgmDetail, ((MtvReservation) (obj1)).mPgmType, ((MtvReservation) (obj1)).mPgmStatus, ((MtvChannel) (obj)).mServiceID);
                        MtvReservationManager.update(mContext, intent, ((MtvReservation) (obj1)).mUriId);
                        intent = MtvReservationManager.find(mContext, ((MtvReservation) (obj1)).mUriId);
                        MtvUtilDebug.Error("MtvBroadcastReciever", (new StringBuilder()).append("After Updation:: ").append(intent.toString()).toString());
                    }
                }
            }
        }
        MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("Reservation after updation : ").append(intent.toString()).toString());
        obj1 = MtvChannelManager.findByPChannel(mContext, ((MtvReservation) (intent)).mPch, ((MtvReservation) (intent)).mPgmServiceID);
        MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("old reserve   id").append(((MtvReservation) (intent)).mPgmServiceID).toString());
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_1406;
        obj = intent;
        if(((MtvChannel) (obj1)).mPhysicalNum != ((MtvReservation) (intent)).mPch)
        {
            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("reservation Channel Need to change from").append(((MtvReservation) (intent)).mPch).append("  to  ").append(((MtvChannel) (obj1)).mPhysicalNum).toString());
            if(((MtvChannel) (obj1)).mPhysicalNum != -1)
            {
                obj = new MtvReservation(((MtvChannel) (obj1)).mPhysicalNum, ((MtvChannel) (obj1)).mVirtualNum, ((MtvReservation) (intent)).mLock, ((MtvReservation) (intent)).mTimeStart, ((MtvReservation) (intent)).mTimeEnd, ((MtvReservation) (intent)).mPgmName, ((MtvReservation) (intent)).mPgmDetail, ((MtvReservation) (intent)).mPgmType, ((MtvReservation) (intent)).mPgmStatus, ((MtvReservation) (intent)).mPgmServiceID);
                MtvReservationManager.update(mContext, ((MtvReservation) (obj)), ((MtvReservation) (intent)).mUriId);
                MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("old reserve   id").append(((MtvReservation) (intent)).mUriId).toString());
                MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("new reserve   id").append(((MtvReservation) (obj)).mUriId).toString());
            } else
            {
                MtvUtilDebug.Error("MtvBroadcastReciever", "reservation Channel cannot change as from Serivce if channel came as -1 !");
                obj = intent;
            }
        }
        MtvUtilDebug.High("MtvBroadcastReciever", "Reservation with new implementation!!!!");
        obj1 = new MtvPreferences(context);
        if(flag2)
        {
            if(isMobileTvActivityRunning())
            {
                if(isLauncherActivity())
                {
                    MtvUtilDebug.Mid("MtvBroadcastReciever", "Receive reminder but conflict pop-up is showing may be due to previous reservation so need to cancel reservation (if any previously) to fail state");
                    intent = new Intent();
                    intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"));
                    intent.setAction("android.intent.action.MAIN");
                    intent.addCategory("android.intent.category.LAUNCHER");
                    intent.setFlags(0x30000004);
                    MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("reminder_dbId   :").append(i).toString());
                    intent.putExtra("reminderDbId", i);
                    ((MtvPreferences) (obj1)).setComingReservationID(i);
                    ((MtvPreferences) (obj1)).setLatestPChannel(((MtvReservation) (obj)).mPch);
                    ((MtvPreferences) (obj1)).setLatestVChannel(((MtvReservation) (obj)).mVch);
                    ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(true);
                    ((MtvPreferences) (obj1)).setLaunchAntennaAlert(true);
                    MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv - Reminder -App Launcher dispatch");
                } else
                if(!((MtvPreferences) (obj1)).getIsLivePlayMode())
                {
                    MtvUtilDebug.High("MtvBroadcastReciever", "OnRecieve: SView is not running");
                    MtvUtilDebug.Mid("MtvBroadcastReciever", "Receive reminder but not in liveplayer activity ");
                    intent = new Intent();
                    intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                    intent.setAction("android.intent.action.MAIN");
                    intent.addCategory("android.intent.category.LAUNCHER");
                    intent.setFlags(0x10000004);
                    ((MtvPreferences) (obj1)).setComingReservationID(i);
                    ((MtvPreferences) (obj1)).setLatestPChannel(((MtvReservation) (obj)).mPch);
                    ((MtvPreferences) (obj1)).setLatestVChannel(((MtvReservation) (obj)).mVch);
                    ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(true);
                    ((MtvPreferences) (obj1)).setLaunchAntennaAlert(true);
                    MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv - Reminder -App Start dispatch");
                } else
                {
                    ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(false);
                    ((MtvPreferences) (obj1)).setLaunchAntennaAlert(false);
                    boolean flag;
                    if(MtvReservationManager.find(mContext, ((MtvReservation) (obj)).mTimeStart, new boolean[] {
    true
}) != null && ((MtvPreferences) (obj1)).getReserveAlertFrom() == 0)
                        flag = true;
                    else
                        flag = false;
                    intent = obj2;
                    if(flag)
                    {
                        ((MtvPreferences) (obj1)).setComingReservationID(i);
                        intent = obj2;
                    }
                }
            } else
            {
                intent = obj2;
                if(!isMobileTvActivityRunning())
                    if(MtvUtilAppService.isMiniModeRunning(mContext))
                    {
                        ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(false);
                        ((MtvPreferences) (obj1)).setLaunchAntennaAlert(false);
                        boolean flag1;
                        if(MtvReservationManager.find(mContext, ((MtvReservation) (obj)).mTimeStart, new boolean[] {
    true
}) != null && ((MtvPreferences) (obj1)).getReserveAlertFrom() == 0)
                            flag1 = true;
                        else
                            flag1 = false;
                        intent = obj2;
                        if(flag1)
                        {
                            ((MtvPreferences) (obj1)).setComingReservationID(i);
                            intent = obj2;
                        }
                    } else
                    if(MtvUtilAppService.isConflictHandlerEnabled(mContext))
                    {
                        intent = new Intent();
                        intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"));
                        intent.setAction("android.intent.action.MAIN");
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.setFlags(0x30000004);
                        MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("reminder_dbId   :").append(i).toString());
                        intent.putExtra("reminderDbId", i);
                        mMtvPreferences.setComingReservationID(i);
                        mMtvPreferences.setLatestPChannel(((MtvReservation) (obj)).mPch);
                        mMtvPreferences.setLatestVChannel(((MtvReservation) (obj)).mVch);
                        mMtvPreferences.setLatestServiceID(((MtvReservation) (obj)).mPgmServiceID);
                        mMtvPreferences.setLatestVChannelMultiChannel(MtvChannelManager.findMultiChannelNoByServiceId(mContext, ((MtvReservation) (obj)).mPch, ((MtvReservation) (obj)).mPgmServiceID));
                        mMtvPreferences.setIsDtvStartedByReminderAlert(true);
                        mMtvPreferences.setLaunchAntennaAlert(true);
                        MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv - Reminder -App Launcher dispatch");
                    } else
                    {
                        if(((MtvReservation) (obj)).mPgmType == 0)
                        {
                            MtvUtilDebug.Low("MtvBroadcastReciever", "BG Recorder already running and obtained a recording reminder alarm !");
                            context = new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE");
                            context.putExtra("reminderDbId", i);
                            context.putExtra("COMMAND_KEY", 1);
                            mContext.startService(context);
                            return;
                        }
                        if(MtvFeatures.isSCoverModeEnabled() && mMtvPreferences.isSViewCoverClosed())
                        {
                            MtvUtilDebug.High("MtvBroadcastReciever", "obtained a watch reminder alarm when SviewCoverClosed and MobileTv is not running");
                            ((MtvPreferences) (obj1)).setComingReservationID(i);
                            ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(true);
                            ((MtvPreferences) (obj1)).setLaunchAntennaAlert(true);
                            intent = new Intent();
                            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"));
                            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_SVIEW_COVER_VIEW");
                            intent.addFlags(0x10000000);
                            intent.putExtra("directLaunch", true);
                            intent.putExtra("reminderDbId", i);
                            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("reminder_dbId   :").append(i).toString());
                            mContext.startActivity(intent);
                            intent = obj2;
                        } else
                        {
                            MtvUtilDebug.Low("MtvBroadcastReciever", "obtained a watch reminder alarm !");
                            ((MtvPreferences) (obj1)).setComingReservationID(i);
                            ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(true);
                            ((MtvPreferences) (obj1)).setLaunchAntennaAlert(true);
                            mMtvPreferences.setLatestPChannel(((MtvReservation) (obj)).mPch);
                            mMtvPreferences.setLatestVChannel(((MtvReservation) (obj)).mVch);
                            mMtvPreferences.setLatestServiceID(((MtvReservation) (obj)).mPgmServiceID);
                            intent = new Intent();
                            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                            intent.setAction("android.intent.action.MAIN");
                            intent.addCategory("android.intent.category.LAUNCHER");
                            intent.setFlags(0x10000004);
                            intent.putExtra("reminderDbId", i);
                            MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv - Reminder -App Launcher dispatch");
                            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("reminder_dbId   :").append(i).toString());
                        }
                    }
            }
        } else
        {
            intent = obj2;
            if(!flag2)
            {
                if(checkIsCalling() && ((MtvReservation) (obj)).mPgmType == 1)
                {
                    MtvUtilDebug.Mid("MtvBroadcastReciever", "Reservation watch is about start during call...so update the status and show the notification..: ");
                    MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("Reservation  : ").append(((MtvReservation) (obj)).toString()).toString());
                    MtvReservationManager.UpdateStatus(mContext, ((MtvReservation) (obj)), 11);
                    showNotification();
                    return;
                }
                if(isMobileTvActivityRunning() && ((MtvPreferences) (obj1)).getIsLivePlayMode() || MtvUtilAppService.isMiniModeRunning(mContext))
                {
                    intent = new Intent();
                    if(MtvUtilAppService.getIsNowOnAirReservation())
                    {
                        MtvUtilAppService.setIsNowOnAirReservation(false);
                        intent.putExtra("dbId", i);
                        intent.putExtra("youNeedToShowAlert", false);
                        intent.putExtra("startingForReservation", true);
                        intent.setFlags(0x14000004);
                        intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                    } else
                    {
                        intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
                        intent.putExtra("dbId", i);
                        intent.putExtra("popup_type", 2);
                        intent.setFlags(0x14000004);
                        boolean flag3;
                        if(MtvReservationManager.find(mContext, ((MtvReservation) (obj)).mTimeStart, new boolean[] {
    true
}) != null && ((MtvPreferences) (obj1)).getReserveAlertFrom() == 0)
                            flag3 = true;
                        else
                            flag3 = false;
                        if(((MtvPreferences) (obj1)).getIsDtvStartedByReminderAlert() || flag3)
                        {
                            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("isBacktoBackOutofAppReserve? :").append(flag3).toString());
                            ((MtvPreferences) (obj1)).setReservAlertFrom(0);
                        } else
                        {
                            ((MtvPreferences) (obj1)).setReservAlertFrom(1);
                        }
                        ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(false);
                        ((MtvPreferences) (obj1)).setLaunchAntennaAlert(false);
                        MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv - Start -user Alert");
                    }
                } else
                if(isMobileTvActivityRunning() && !((MtvPreferences) (obj1)).getIsLivePlayMode())
                {
                    if(isLauncherActivity())
                    {
                        MtvUtilDebug.Mid("MtvBroadcastReciever", "IN Time OF Reminder MobileTV is on But Launcher Activity is running");
                        intent = new Intent();
                        intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"));
                        intent.setAction("android.intent.action.MAIN");
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.setFlags(0x30000004);
                        intent.putExtra("dbId", i);
                        intent.putExtra("youNeedToShowAlert", true);
                        obj1 = new MtvPreferences(context);
                        ((MtvPreferences) (obj1)).setLatestPChannel(((MtvReservation) (obj)).mPch);
                        ((MtvPreferences) (obj1)).setLatestVChannel(((MtvReservation) (obj)).mVch);
                        ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(false);
                        ((MtvPreferences) (obj1)).setLaunchAntennaAlert(false);
                        ((MtvPreferences) (obj1)).setReservAlertFrom(0);
                    } else
                    if(mMtvPreferences.isSViewRunning())
                    {
                        intent = new Intent();
                        intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
                        intent.putExtra("dbId", i);
                        intent.putExtra("popup_type", 2);
                        intent.setFlags(0x10000004);
                        boolean flag4;
                        if(MtvReservationManager.find(mContext, ((MtvReservation) (obj)).mTimeStart, new boolean[] {
    true
}) != null && ((MtvPreferences) (obj1)).getReserveAlertFrom() == 0)
                            flag4 = true;
                        else
                            flag4 = false;
                        if(((MtvPreferences) (obj1)).getIsDtvStartedByReminderAlert() || flag4)
                        {
                            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("isBacktoBackOutofAppReserve? :").append(flag4).toString());
                            ((MtvPreferences) (obj1)).setReservAlertFrom(0);
                        } else
                        {
                            ((MtvPreferences) (obj1)).setReservAlertFrom(1);
                        }
                        ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(false);
                        ((MtvPreferences) (obj1)).setLaunchAntennaAlert(false);
                        MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv - Start -user Alert SRIKANTH");
                    } else
                    {
                        MtvUtilDebug.Low("MtvBroadcastReciever", "MobileTv reservation START but app is not in Live Activity !");
                        intent = new Intent();
                        intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                        intent.setAction("android.intent.action.MAIN");
                        intent.addCategory("android.intent.category.LAUNCHER");
                        intent.setFlags(0x10000004);
                        intent.putExtra("dbId", i);
                        intent.putExtra("youNeedToShowAlert", true);
                        obj1 = new MtvPreferences(context);
                        ((MtvPreferences) (obj1)).setLatestPChannel(((MtvReservation) (obj)).mPch);
                        ((MtvPreferences) (obj1)).setLatestVChannel(((MtvReservation) (obj)).mVch);
                        ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(false);
                        ((MtvPreferences) (obj1)).setLaunchAntennaAlert(false);
                        ((MtvPreferences) (obj1)).setReservAlertFrom(0);
                    }
                } else
                {
                    intent = obj2;
                    if(!isMobileTvActivityRunning())
                        if(MtvUtilAppService.isConflictHandlerEnabled(mContext))
                        {
                            intent = new Intent();
                            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.conflict.MtvUiLauncher"));
                            intent.setAction("android.intent.action.MAIN");
                            intent.addCategory("android.intent.category.LAUNCHER");
                            intent.setFlags(0x30000004);
                            MtvUtilDebug.Mid("MtvBroadcastReciever", (new StringBuilder()).append("dbId :").append(i).toString());
                            intent.putExtra("dbId", i);
                            mMtvPreferences.setComingReservationID(i);
                            mMtvPreferences.setLatestPChannel(((MtvReservation) (obj)).mPch);
                            mMtvPreferences.setLatestVChannel(((MtvReservation) (obj)).mVch);
                            mMtvPreferences.setLatestServiceID(((MtvReservation) (obj)).mPgmServiceID);
                            mMtvPreferences.setLatestVChannelMultiChannel(MtvChannelManager.findMultiChannelNoByServiceId(mContext, ((MtvReservation) (obj)).mPch, ((MtvReservation) (obj)).mPgmServiceID));
                            mMtvPreferences.setIsDtvStartedByReminderAlert(true);
                            mMtvPreferences.setLaunchAntennaAlert(true);
                            MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv -App Start dispatch");
                        } else
                        {
                            if(((MtvReservation) (obj)).mPgmType == 0)
                            {
                                MtvUtilDebug.Low("MtvBroadcastReciever", "BG Recorder already running and obtained a recording start alarm !");
                                intent = new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE");
                                intent.putExtra("dbId", i);
                                intent.putExtra("COMMAND_KEY", 1);
                                context.startService(intent);
                                return;
                            }
                            MtvUtilDebug.Low("MtvBroadcastReciever", "obtained a watch start alarm !");
                            ((MtvPreferences) (obj1)).setComingReservationID(i);
                            ((MtvPreferences) (obj1)).setIsDtvStartedByReminderAlert(true);
                            ((MtvPreferences) (obj1)).setLaunchAntennaAlert(true);
                            ((MtvPreferences) (obj1)).setReservAlertFrom(0);
                            intent = new Intent();
                            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                            intent.setAction("android.intent.action.MAIN");
                            intent.addCategory("android.intent.category.LAUNCHER");
                            intent.setFlags(0x10000004);
                            intent.putExtra("dbId", i);
                            MtvUtilDebug.High("MtvBroadcastReciever", "Mobile Tv -App Start dispatch");
                        }
                }
            }
        }
        if(intent != null)
        {
            context.startActivity(intent);
            return;
        }
        continue; /* Loop/switch isn't completed */
        MtvReservationManager.UpdateStatus(mContext, intent, 10);
        return;
        if(((String) (obj)).equals("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END"))
        {
            MtvUtilDebug.Low("MtvBroadcastReciever", "onReceive() reservation end ,not handling it here- let service reciver service this");
            return;
        }
        if(((String) (obj)).equals("android.intent.action.BOOT_COMPLETED"))
        {
            MtvUtilDebug.Low("MtvBroadcastReciever", "BOOT COMPLETED Update the status for reservation");
            MtvUtilSetReservationAlarm.setReservationOnBoot(mContext);
            MtvUtilDebug.Low("MtvBroadcastReciever", "BOOT COMPLETED Starting the Core MTV services...");
            mContext.startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
            return;
        }
        if(((String) (obj)).equals("android.intent.action.MEDIA_EJECT") || ((String) (obj)).equals("android.intent.action.MEDIA_UNMOUNTED") || ((String) (obj)).equals("android.intent.action.MEDIA_MOUNTED"))
        {
            MtvUtilDebug.Low("MtvBroadcastReciever", "Change in SD Card status detected...Updating DB now");
            mContext.startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE_UPDATE_DB"));
            return;
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public static final int START_TIME_20SEC = 20000;
    public static final int START_TIME_5SEC = 5000;
    private static final String TAG = "MtvBroadcastReciever";
    private static android.os.PowerManager.WakeLock mCpuWakeLock;
    private static Handler mHandler = new Handler();
    private static final Runnable mRunnableReleaseLock = new Runnable() {

        public void run()
        {
            synchronized(MtvBroadcastReceiver.mHandler)
            {
                MtvBroadcastReceiver.mHandler.removeCallbacks(MtvBroadcastReceiver.mRunnableReleaseLock);
                if(MtvBroadcastReceiver.mCpuWakeLock != null && MtvBroadcastReceiver.mCpuWakeLock.isHeld())
                {
                    MtvBroadcastReceiver.mCpuWakeLock.release();
                    MtvBroadcastReceiver.mCpuWakeLock = null;
                    MtvUtilDebug.High("MtvBroadcastReciever", "Released PARTIAL_WAKE_LOCK");
                }
            }
            return;
            exception;
            handler;
            JVM INSTR monitorexit ;
            throw exception;
        }

    }
;
    private Context mContext;
    private MtvPreferences mMtvPreferences;
    private NotificationManager mNotificationManager;






/*
    static android.os.PowerManager.WakeLock access$202(android.os.PowerManager.WakeLock wakelock)
    {
        mCpuWakeLock = wakelock;
        return wakelock;
    }

*/
}
