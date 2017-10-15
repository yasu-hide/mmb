// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.service;

import android.app.*;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import android.content.*;
import android.os.*;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.reciever.*;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChannelGuide;
import com.samsung.sec.mtv.ui.conflict.MtvConflictHandler;
import com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer;
import com.samsung.sec.mtv.utility.*;
import java.util.*;

public class MtvOneSegRecorderService extends Service
    implements IMtvAppPlaybackStateListener, MtvLiveBroadcastListener
{
    private static class BGRecordingNotificationRunnable
        implements Runnable
    {

        public void run()
        {
            if(myOneSegRecorderService != null)
            {
                myOneSegRecorderService.showNotification(isOnGoing);
                return;
            } else
            {
                MtvUtilDebug.Error("MtvOneSegRecorderService", "ReocrderService arguement passed is null !");
                return;
            }
        }

        private boolean isOnGoing;
        private MtvOneSegRecorderService myOneSegRecorderService;

        protected BGRecordingNotificationRunnable(boolean flag, MtvOneSegRecorderService mtvonesegrecorderservice)
        {
            isOnGoing = false;
            myOneSegRecorderService = null;
            isOnGoing = flag;
            myOneSegRecorderService = mtvonesegrecorderservice;
        }
    }


    public MtvOneSegRecorderService()
    {
        mMtvPlayerOneSeg = null;
        mMtvAppPlaybackContext = null;
        mNotificationManager = null;
        mPowerManager = null;
        mCpuWakeLock = null;
        isStopSelfCalled = false;
        isBGExitInvoked = false;
        mMtvPreference = null;
        mBGRecordHandler = new Handler();
        mReserveList = null;
        mCurrentOpenedChannel = -1;
        mCurrentOpenedService = 0;
        mCurrentReservation = null;
        upcomingReservationId = -1;
        mLowSignalRecStopReason = false;
        mRecLocation = -1;
        mOpenChannelRunnable = new Runnable() {

            public void run()
            {
                handleOpenChannel();
            }

            final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
        }
;
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

    private void cancelRecording()
    {
        MtvUtilDebug.Mid("MtvOneSegRecorderService", "cancelRecording():: ");
        mRecLocation = -1;
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        MtvAppPlayerOneSeg.getInstance().cancelRecord(mMtvAppPlaybackContext);
    }

    private boolean closeOneSegPlayer()
    {
label0:
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "closeOneSegPlayer():: ");
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            if(mMtvAppPlaybackContext != null)
            {
                if(mMtvAppPlaybackContext.getState().getState().ordinal() < com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED.ordinal())
                    break label0;
                MtvAppPlayerOneSeg.getInstance().delete(mMtvAppPlaybackContext);
                MtvUtilDebug.Low("MtvOneSegRecorderService", "closeOneSegPlayer():: Successfully called delete...");
            }
            return false;
        }
        if(mMtvAppPlaybackContext.getState().getOp() == 20495)
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "closeOneSegPlayer():: Already delete going on...");
            return false;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "closeOneSegPlayer():: Backend Not Initialized...");
            stopSelf();
            return false;
        }
    }

    private void handleFinishReservation(int i, boolean flag)
    {
        if(mCurrentReservation == null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("handleFinishResevation():: newStatus:").append(i).append(" curStatus:").append(mCurrentReservation.mPgmStatus).toString());
        if(!flag) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvOneSegRecorderService", "Recording Cancelled as the recording time is Less than required!");
        com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().stopRecordTimer();
        cancelRecording();
        Toast.makeText(getApplicationContext(), 0x7f0702af, 0).show();
_L13:
        i;
        JVM INSTR lookupswitch 4: default 124
    //                   1: 301
    //                   4: 244
    //                   5: 273
    //                   12: 352;
           goto _L5 _L6 _L7 _L8 _L9
_L5:
        int j;
        MtvUtilDebug.Low("MtvOneSegRecorderService", "No Change in Status...");
        j = i;
_L14:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("Status During Finish Reservation...").append(j).toString());
        updateReservationStatus(j);
        mCurrentReservation = null;
_L2:
        if(upcomingReservationId != -1) goto _L11; else goto _L10
_L10:
        MtvUtilDebug.Low("MtvOneSegRecorderService", "No upcoming reservations... deleting backend and Stopping BGRecorder Service...");
        closeOneSegPlayer();
_L16:
        return;
_L4:
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED || mMtvAppPlaybackContext.getState().getOp() != 20487) goto _L13; else goto _L12
_L12:
        MtvUtilDebug.Low("MtvOneSegRecorderService", "Recording is going on... Invoke stopRecord and wait for RECORD_COMPLETE callback...");
        stopRecording();
        return;
_L7:
        j = i;
        if(mCurrentReservation != null)
        {
            j = i;
            if(mCurrentReservation.mPgmStatus == 6)
                j = 8;
        }
          goto _L14
_L8:
        j = i;
        if(mCurrentReservation != null)
        {
            j = i;
            if(mCurrentReservation.mPgmStatus == 5)
                j = 9;
        }
          goto _L14
_L6:
        j = i;
        if(mLowSignalRecStopReason)
        {
            j = i;
            if(mCurrentReservation != null)
            {
                j = i;
                if(mCurrentReservation.mPgmStatus == 6)
                {
                    MtvUtilDebug.Low("MtvOneSegRecorderService", "Updating Status as Partially Recorded, since Rec stopped by low signal!");
                    j = 8;
                }
            }
        }
        mLowSignalRecStopReason = false;
          goto _L14
_L9:
        j = i;
        if(mCurrentReservation != null)
        {
            j = i;
            if(mCurrentReservation.mPgmStatus == 12)
                j = 12;
        }
          goto _L14
_L11:
        MtvReservation mtvreservation;
        MtvUtilDebug.Low("MtvOneSegRecorderService", "There is a back-to-back reservation waiting.. Starting that now..");
        mtvreservation = MtvReservationManager.find(getBaseContext(), upcomingReservationId);
        if(mtvreservation == null || mtvreservation.mTimeEnd <= System.currentTimeMillis()) goto _L16; else goto _L15
_L15:
        mCurrentReservation = mtvreservation;
        upcomingReservationId = -1;
        MtvUtilDebug.Low("MtvOneSegRecorderService", "Starting Next Reservation...");
        handleStartReservation();
        return;
          goto _L14
    }

    private boolean handleOpenChannel()
    {
        int k = mMtvPreference.getLatestPChannel();
        int i1 = mMtvPreference.getLatestServiceID();
        int i;
        int j;
        boolean flag;
        if(mCurrentReservation != null)
            i = mCurrentReservation.mPch;
        else
            i = -1;
        if(mCurrentReservation != null)
            j = mCurrentReservation.mPgmServiceID;
        else
            j = 0;
        flag = false;
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("openChannel():: latestP Channel").append(k).toString());
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("openChannel():: latestP Channel ServiceId : ").append(i1).toString());
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("openChannel():: current reservation P Channel").append(i).toString());
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("openChannel():: current opened channel").append(mCurrentOpenedChannel).toString());
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("openChannel():: current opened Service").append(mCurrentOpenedService).toString());
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mCurrentReservation != null && mMtvAppPlaybackContext != null)
        {
            int l = mMtvAppPlaybackContext.getState().getOp();
            if(mMtvAppPlaybackContext.getState().getState().ordinal() >= com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED.ordinal() && mCurrentOpenedChannel == mCurrentReservation.mPch && mCurrentOpenedService == mCurrentReservation.mPgmServiceID)
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "openChannel():: Already Current Reservation's Channel Opened");
                return true;
            }
            if(l == 20482 && mCurrentOpenedChannel == mCurrentReservation.mPch && mCurrentOpenedService == mCurrentReservation.mPgmServiceID)
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "openChannel():: Current Reservation's Open command already issued...");
                return true;
            }
            if(mCurrentOpenedChannel == mCurrentReservation.mPch && mCurrentOpenedService == mCurrentReservation.mPgmServiceID)
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "openChannel():: Already open issued... But command not yet taken up by AppPlayerOneSeg Thread...");
                MtvUtilDebug.Low("MtvOneSegRecorderService", "openChannel():: Previous undispatched open commands would have been removed... Allowing to be issued again.. ");
            }
        }
        MtvUtilDebug.Low("MtvOneSegRecorderService", "openChannel():: Current Reservation's Open Command not issued yet... opening now...");
        if(i != -1)
        {
            MtvURI mtvuri = new MtvURI(6, i, j);
            flag = mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
        }
        if(flag)
        {
            mCurrentOpenedChannel = i;
            mCurrentOpenedService = j;
            mMtvPreference.setLatestPChannel(i);
            mMtvPreference.setLatestServiceID(j);
            mMtvPreference.setLatestVChannel(mCurrentReservation.mVch);
            mMtvPreference.setLatestVChannelMultiChannel(MtvChannelManager.findMultiChannelNoByServiceId(getApplicationContext(), mCurrentReservation.mPch, mCurrentReservation.mPgmServiceID));
        }
        return flag;
    }

    private void handleStartReservation()
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation()::");
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
            break MISSING_BLOCK_LABEL_440;
        if(mCurrentReservation == null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("handleStartReservation():: mCurrentOpenedChannel ").append(mCurrentOpenedChannel).append("mCurrentReservation.mPch  ").append(mCurrentReservation.mPch).append(" mCurrentOpenedService ").append(mCurrentOpenedService).append("mCurrentReservation.mPgmServiceID ").append(mCurrentReservation.mPgmServiceID).toString());
        mCurrentReservation.mPgmStatus;
        JVM INSTR lookupswitch 2: default 144
    //                   0: 153
    //                   6: 316;
           goto _L3 _L4 _L5
_L3:
        MtvUtilDebug.Error("MtvOneSegRecorderService", "handleStartReservation():: Current Reservation is not in a valid state... This cannot happen !");
_L2:
        return;
_L4:
        if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && mCurrentOpenedChannel == mCurrentReservation.mPch && mCurrentOpenedService == mCurrentReservation.mPgmServiceID)
        {
            int i = startRecording(true);
            if(i == 1)
            {
                handleFinishReservation(5, false);
                return;
            }
            if(i == -1)
            {
                handleFinishReservation(2, false);
                return;
            }
            if(i == 2)
            {
                handleFinishReservation(12, false);
                return;
            } else
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("handleStartReservation():: recordStartStatus").append(i).toString());
                return;
            }
        } else
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: Current Reservation start might be going on... safely issueing openChannel again...");
            mMtvPreference.setLatestPChannel(mCurrentReservation.mPch);
            mMtvPreference.setLatestVChannel(mCurrentReservation.mVch);
            openChannel();
            MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: Channel not yet locked... Waiting for it...");
            return;
        }
_L5:
        if(upcomingReservationId == -1) goto _L2; else goto _L6
_L6:
        MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), upcomingReservationId);
        if(mtvreservation == null) goto _L2; else goto _L7
_L7:
        if(mCurrentReservation.mTimeEnd == mtvreservation.mTimeStart)
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: upcomingReservation is a back to back Reservation...");
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && mMtvAppPlaybackContext.getState().getOp() == 20487)
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: invoked finish of current Reservation...");
                handleFinishReservation(1, false);
                return;
            } else
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: current Reservation in invalid state when upcoming Reservation triggered...");
                handleFinishReservation(2, false);
                return;
            }
        } else
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: current Reservation is not valid as , upcoming reservation start time and current reservation end time does not match...");
            handleFinishReservation(2, false);
            return;
        }
        MtvUtilDebug.Low("MtvOneSegRecorderService", "handleStartReservation():: Backend Not Yet Initialized...");
        return;
    }

    private void initMtvPlayer()
    {
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        int i = MtvAreaManager.getCount(getApplicationContext());
        if(mMtvAppPlaybackContext == null && i > 0)
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "initMtvPlayer():: No valid playback context... obtaining live context and performing create of backend...");
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
            if(!mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1))
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "initMtvPlayer():: invoking screwupCleanup...");
                MtvAppPlayerOneSeg.getInstance().screwupCleanup();
                mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
            }
            mMtvAppPlaybackContext.getState().registerListener(this);
        } else
        {
            if(mMtvAppPlaybackContext != null)
            {
                MtvUtilDebug.Error("MtvOneSegRecorderService", "initMtvPlayer():: Valid playback context exists !!!");
                if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
                    if(mMtvAppPlaybackContext.getState().getOp() == 20481)
                    {
                        MtvUtilDebug.Low("MtvOneSegRecorderService", "BAckend Create Going on... Wait for it to complete..");
                    } else
                    {
                        MtvUtilDebug.Low("MtvOneSegRecorderService", "Create did not happen for some reason... issuing create again...");
                        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
                        MtvAppPlayerOneSeg.getInstance().create(mMtvAppPlaybackContext, getApplicationContext(), -1);
                    }
            }
            if(i == 0)
            {
                MtvUtilDebug.High("MtvOneSegRecorderService", "initMtvPlayer()::  No Area is Set... Directly Updating to FAIL");
                updateReservationStatus(2);
                return;
            }
        }
    }

    private boolean openChannel()
    {
        mBGRecordHandler.removeCallbacks(mOpenChannelRunnable);
        mBGRecordHandler.post(mOpenChannelRunnable);
        return false;
    }

    private void resetContextManager()
    {
        MtvAppPlaybackContextManager.getInstance().reset();
    }

    private void saveTVFileThumbnail()
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", "saveTVFileThumbnail() ::");
        if(mMtvAppPlaybackContext == null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        android.graphics.Bitmap bitmap = mMtvAppPlaybackContext.getComponents().getVideo().getCaptFrame();
        String s = mMtvAppPlaybackContext.getComponents().getVideo().getCaptFrameName();
        if(bitmap != null && s != null)
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "saveTVFileThumbnail() :: saving Thumbnail....");
            MtvFile mtvfile = new MtvFile();
            mtvfile.setFileFormat(1);
            mtvfile.setCreationTime(new Date());
            mtvfile.setFilePath(s);
            MtvFileManager.saveFile(mMtvPreference.getSaveToStorage(), bitmap, mtvfile);
        }
    }

    private void showNotification(boolean flag)
    {
        Object obj;
        Object obj1;
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("showNotification called , isOnGoing ? :: ").append(flag).toString());
        obj1 = new Intent();
        cancelNotification();
        obj = new android.app.Notification.Builder(getApplicationContext());
        ((android.app.Notification.Builder) (obj)).setSmallIcon(0x7f0200c3);
        ((android.app.Notification.Builder) (obj)).setWhen(0L);
        if(!flag) goto _L2; else goto _L1
_L1:
        ((Intent) (obj1)).setAction("android.intent.action.MAIN");
        ((Intent) (obj1)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj1)).setFlags(0x100000);
        ((Intent) (obj1)).setComponent(new ComponentName(getPackageName(), com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer.getName()));
        PendingIntent pendingintent = PendingIntent.getActivity(getApplicationContext(), 0, ((Intent) (obj1)), 0);
        obj1 = PendingIntent.getBroadcast(getApplicationContext(), 0, new Intent("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION"), 0);
        RemoteViews remoteviews = new RemoteViews(getPackageName(), 0x7f030032);
        remoteviews.setImageViewResource(0x7f0a0121, 0x7f0200c3);
        remoteviews.setTextViewText(0x7f0a0123, getString(0x7f070295));
        remoteviews.setTextViewText(0x7f0a0126, getString(0x7f0701f2));
        remoteviews.setOnClickPendingIntent(0x7f0a0129, ((PendingIntent) (obj1)));
        ((android.app.Notification.Builder) (obj)).setContent(remoteviews);
        ((android.app.Notification.Builder) (obj)).setOngoing(flag);
        ((android.app.Notification.Builder) (obj)).setAutoCancel(false);
        obj1 = getString(0x7f070295);
        ((android.app.Notification.Builder) (obj)).setContentIntent(pendingintent);
        obj = ((android.app.Notification.Builder) (obj)).build();
_L15:
        obj.tickerText = ((CharSequence) (obj1));
        if(!flag) goto _L4; else goto _L3
_L3:
        startForeground(0x7f0200c3, ((Notification) (obj)));
_L13:
        return;
_L2:
        android.app.Notification.InboxStyle inboxstyle;
        ((Intent) (obj1)).setAction("ACTION_DTV_RESERVATION_LIST");
        ((Intent) (obj1)).addCategory("android.intent.category.DEFAULT");
        ((Intent) (obj1)).setFlags(0x10000000);
        ((Intent) (obj1)).setComponent(new ComponentName(getPackageName(), com/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide.getName()));
        PendingIntent pendingintent1 = PendingIntent.getActivity(this, 0, ((Intent) (obj1)), 0);
        ((android.app.Notification.Builder) (obj)).setContentTitle(getString(0x7f0701f3));
        ((android.app.Notification.Builder) (obj)).setOngoing(flag);
        ((android.app.Notification.Builder) (obj)).setAutoCancel(true);
        obj1 = getString(0x7f0701f3);
        inboxstyle = new android.app.Notification.InboxStyle(((android.app.Notification.Builder) (obj)));
        ((android.app.Notification.Builder) (obj)).setContentIntent(pendingintent1);
        if(mReserveList == null || mReserveList.size() <= 0) goto _L6; else goto _L5
_L5:
        int i;
        boolean flag2;
        ((android.app.Notification.Builder) (obj)).setContentText((CharSequence)mReserveList.get(0));
        flag2 = false;
        i = 0;
_L11:
        boolean flag1 = flag2;
        if(i >= mReserveList.size()) goto _L8; else goto _L7
_L7:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("showNotification() :: program_list index ::").append(i).toString());
        if(i != 3) goto _L10; else goto _L9
_L9:
        flag1 = true;
_L8:
        if(flag1)
            inboxstyle.setSummaryText((new StringBuilder()).append("+ ").append(mReserveList.size() - 3).append("more").toString());
_L6:
        obj = inboxstyle.build();
        continue; /* Loop/switch isn't completed */
_L10:
        inboxstyle.addLine((CharSequence)mReserveList.get(i));
        i++;
        if(true) goto _L11; else goto _L4
_L4:
        MtvUtilDebug.Low("MtvOneSegRecorderService", "Reservation Not Ongoing ! Remove foreground notification !");
        stopForeground(true);
        if(mNotificationManager == null) goto _L13; else goto _L12
_L12:
        mNotificationManager.cancel(0x7f0200c3);
        mNotificationManager.notify(0x7f0200c3, ((Notification) (obj)));
        return;
        if(true) goto _L15; else goto _L14
_L14:
    }

    private int startRecording(boolean flag)
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", "startRecording():: ");
        String s = null;
        String s1 = null;
        Date date = new Date();
        Object obj = Calendar.getInstance();
        long l;
        if(1 == mMtvPreference.getSaveToStorage())
            l = MtvUtilMemoryStatus.getAvailableInternalMemorySize();
        else
            l = MtvUtilMemoryStatus.getAvailableExternalMemorySize();
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("startRecording():: availMemSize :").append(l).toString());
        if(l < 0x204000L)
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "memory already full.. cannot start recording...");
            return 1;
        }
        if(MtvUtilMemoryStatus.isLowMemoryToLaunch())
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "Phone memory is almost full (Insufficient to Launch Mobile TV) .Hence cannot start recording...");
            return 2;
        }
        byte byte0;
        int i;
        String s2;
        MtvOneSegChannel amtvonesegchannel[];
        MtvOneSegProgram mtvonesegprogram;
        if(mMtvPreference.getBroadcastSetRecordingMode() == 0)
            byte0 = 2;
        else
            byte0 = 1;
        mRecLocation = mMtvPreference.getSaveToStorage();
        if(1 == mRecLocation)
        {
            s2 = "/sdcard/video/MyTvFiles/";
            i = 1;
        } else
        {
            s2 = "/mnt/extSdCard/video/MyTvFiles/";
            i = 0;
        }
        amtvonesegchannel = mMtvAppPlaybackContext.getAttribute().getChannel();
        if(amtvonesegchannel != null)
            s = amtvonesegchannel[0].getServName();
        mtvonesegprogram = mMtvAppPlaybackContext.getAttribute().getCurrentProgram();
        if(mtvonesegprogram != null)
            s1 = mtvonesegprogram.getProgName();
        if(flag)
            date = new Date(mCurrentReservation.mTimeStart - (long)((Calendar) (obj)).get(15) - (long)((Calendar) (obj)).get(16));
        else
            date = new Date(date.getTime() - (long)((Calendar) (obj)).get(15) - (long)((Calendar) (obj)).get(16));
        obj = s;
        if(s == null)
            obj = "No Station Name";
        s = s1;
        if(mCurrentReservation.mPgmName != null)
        {
            s = s1;
            if(!mCurrentReservation.mPgmName.trim().equals(""))
                s = mCurrentReservation.mPgmName;
        }
        s1 = s;
        if(s == null)
            s1 = "No Program Name";
        s = (new MtvOneSegPlayer(byte0, s2, i, ((String) (obj)), s1, date, mCurrentReservation.mPgmServiceID)).getRecordURI();
        if(!mMtvPlayerOneSeg.startRecord(mMtvAppPlaybackContext, s, (int)l, false))
        {
            MtvUtilDebug.High("MtvOneSegRecorderService", "startRecording() failed");
            Toast.makeText(getApplicationContext(), 0x7f0702b0, 0).show();
            return -1;
        } else
        {
            MtvUtilDebug.High("MtvOneSegRecorderService", "startRecording() start");
            return 0;
        }
    }

    private void stopRecording()
    {
        MtvUtilDebug.Mid("MtvOneSegRecorderService", "stopRecording():: ");
        mRecLocation = -1;
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvPlayerOneSeg == null)
            mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvPlayerOneSeg.stopRecord(mMtvAppPlaybackContext);
    }

    private void updateReservationInfo(Intent intent)
    {
        if(!intent.hasExtra("dbId")) goto _L2; else goto _L1
_L1:
        int i;
        i = intent.getIntExtra("dbId", -1);
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("updateReservationInfo():: reservation RESERVATION_START DB ID ...").append(i).toString());
        if(i != -1) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.High("MtvOneSegRecorderService", "updateReservationInfo():: reservation Id is not Valid ! ");
_L6:
        return;
_L4:
        intent = MtvReservationManager.find(getApplicationContext(), i);
        if(intent == null)
        {
            MtvUtilDebug.Error("MtvOneSegRecorderService", "updateReservationInfo():: Reservation is not Valid ! Ignoring the Reservation Start trigger !");
            return;
        }
        if(((MtvReservation) (intent)).mTimeEnd > System.currentTimeMillis())
            if(mCurrentReservation != null && mCurrentReservation.mPgmStatus == 6)
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "updateReservationInfo():: previous reservation still going on...");
                upcomingReservationId = i;
                return;
            } else
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "updateReservationInfo():: no current reservation... update the triggered reservation as current");
                upcomingReservationId = -1;
                mCurrentReservation = intent;
                return;
            }
        continue; /* Loop/switch isn't completed */
_L2:
        if(intent.hasExtra("reminderDbId"))
        {
            int j = intent.getIntExtra("reminderDbId", -1);
            MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("updateReservationInfo():: RESERVATION_REMINDER triggered...").append(j).toString());
            intent = MtvReservationManager.find(getApplicationContext(), j);
            if(intent != null && ((MtvReservation) (intent)).mTimeStart > System.currentTimeMillis())
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "updateReservationInfo():: reservation exists and reservation start time is valid!");
                upcomingReservationId = j;
            }
            MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("updateReservationInfo():: upcomingReservationId").append(upcomingReservationId).toString());
            return;
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    private MtvReservation updateReservationStatus(int i)
    {
        MtvReservation mtvreservation = null;
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("updateReservationStatus():: newStatus ").append(i).toString());
        MtvReservation mtvreservation1 = MtvReservationManager.find(getApplicationContext(), mCurrentReservation.mTimeStart, new boolean[0]);
        if(mtvreservation1 != null && (mtvreservation1.mPgmStatus == 0 || mtvreservation1.mPgmStatus == 6))
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "current Reservation either not started or ongoing.. can update the status...");
            MtvReservationManager.UpdateStatus(getApplicationContext(), mCurrentReservation, i);
            if(i == 6)
                mtvreservation = mCurrentReservation;
            return mtvreservation;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "Reservation already ended... and already has valid end STATUS...");
            return null;
        }
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        MtvUtilDebug.Low("MtvOneSegRecorderService", "onCreate...");
        MtvUtilDebug.High("MtvOneSegRecorderService", (new StringBuilder()).append("MobileTV APP VERSION : ").append(MtvUtilAppService.mobileTvAppVersion(getApplicationContext())).toString());
        mMtvPreference = new MtvPreferences(getApplicationContext());
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).registerBaseListener(this);
        mNotificationManager = (NotificationManager)getSystemService("notification");
        mReserveList = new ArrayList();
        mPowerManager = (PowerManager)getApplicationContext().getSystemService("power");
        mCpuWakeLock = mPowerManager.newWakeLock(1, "MobileTV_BGRecorder");
        mCpuWakeLock.acquire();
        com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance();
        MtvUtilMemoryStatus.setAppComponents(getApplicationContext());
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", "OnDestroy Called...");
        if(mCpuWakeLock.isHeld())
            mCpuWakeLock.release();
        MtvLiveBroadcastReciever.getInstance(getApplicationContext()).unregisterListener(this);
        if(isStopSelfCalled)
        {
            mMtvPreference.setIsReservationProgram(false);
            mMtvPreference.setLaunchAntennaAlert(false);
            MtvLiveBroadcastReciever.unregisterRecievers();
            showNotification(false);
            if(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext()))
            {
                MtvConflictHandler.getInstance(getApplicationContext()).closeService();
                MtvConflictHandler.reset();
            }
            MtvBroadcastReceiver.releaseReservationWakeLock();
        } else
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "Not Stopping Itself ; probably Application invoked destruction of recorderService ");
        }
        stopForeground(true);
        mCurrentOpenedChannel = -1;
        mCurrentOpenedService = 0;
        isBGExitInvoked = false;
        mRecLocation = -1;
        super.onDestroy();
    }

    public void onLowMemory()
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", "onLowMemory...");
        super.onLowMemory();
    }

    public void onMtvAppFinishNotify(Object obj)
    {
        String s = null;
        if(obj instanceof Intent)
            s = ((Intent)obj).getAction();
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("onMtvAppFinishNotify() :: ").append(s).toString());
        if(s != null && (s.equals("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE") || s.equals("com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE")))
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "Background Recording closed as a result of Tmm Request !");
            upcomingReservationId = -1;
            handleFinishReservation(1, false);
        }
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify():: ").append(i).toString());
        if(mCurrentReservation != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.High("MtvOneSegRecorderService", "No Current Reservation available!");
_L4:
        return;
_L2:
        int j;
        if(mMtvAppPlaybackContext != null)
            obj = mMtvAppPlaybackContext.getState().getState();
        else
            obj = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        if(mMtvAppPlaybackContext != null)
            j = mMtvAppPlaybackContext.getState().getOp();
        else
            j = -1;
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("Current PlaybackState ").append(obj).toString());
        switch(i)
        {
        default:
            return;

        case 5: // '\005'
            if(mCurrentReservation.mPgmStatus == 6 && mRecLocation == 0 && obj == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && j == 20487)
            {
                handleFinishReservation(7, true);
                return;
            }
            break;

        case 10: // '\n'
            MtvUtilDebug.Low("MtvOneSegRecorderService", "MTVAPP_ANDROID_SERVICE_RESERVATION_END...");
            if(mCurrentReservation.mPgmStatus == 6)
            {
                if(obj == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && j == 20487)
                {
                    handleFinishReservation(1, false);
                    return;
                }
            } else
            if(upcomingReservationId == -1 && mCurrentReservation.mPgmStatus == 0)
            {
                handleFinishReservation(2, false);
                return;
            } else
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "MTVAPP_ANDROID_SERVICE_RESERVATION_END Not a valid state for reservation... ");
                handleFinishReservation(2, false);
                return;
            }
            break;

        case 22: // '\026'
        case 28: // '\034'
            MtvUtilDebug.Low("MtvOneSegRecorderService", "MTVAPP_ANDROID_SERVICE_RESERVATION_CLOSE_FROM_NOTIFICATION...");
            if(isBGExitInvoked)
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", "Already Invoked BGExit ! Not invoking now...");
                return;
            }
            isBGExitInvoked = true;
            break; /* Loop/switch isn't completed */
        }
        if(true) goto _L4; else goto _L3
_L3:
        if(mCurrentReservation.mPgmStatus == 6)
        {
            if(obj == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && j == 20487)
                if(com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
                {
                    handleFinishReservation(1, false);
                    Toast.makeText(getApplicationContext(), 0x7f0702c5, 1).show();
                    return;
                } else
                {
                    handleFinishReservation(7, true);
                    return;
                }
        } else
        if(upcomingReservationId == -1 && mCurrentReservation.mPgmStatus == 0)
        {
            handleFinishReservation(2, false);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegRecorderService", "MTVAPP_ANDROID_SERVICE_RESERVATION_END Not a valid state for reservation...");
            handleFinishReservation(2, false);
            return;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("onPlayerNotification ...:command : ").append(i).append(" status : ").append(j).toString());
        i;
        JVM INSTR lookupswitch 6: default 96
    //                   20481: 97
    //                   20482: 149
    //                   20484: 354
    //                   20487: 386
    //                   20488: 96
    //                   20495: 640;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6
_L1:
        return;
_L2:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("IMtvAppPlayerOneSeg.CMD_CREATE status-").append(j).toString());
        if(j == 24581)
        {
            openChannel();
            return;
        }
        if(j == 24580)
        {
            handleFinishReservation(2, false);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
label0:
        {
            String s;
label1:
            {
                MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("IMtvAppPlayerOneSeg.CMD_OPEN status ").append(j).toString());
                if(j == 24577)
                {
                    MtvUtilDebug.Low("MtvOneSegRecorderService", "Open Command being processed...");
                    return;
                }
                if(j == 24580)
                {
                    MtvUtilDebug.Low("MtvOneSegRecorderService", "openChannel failed...");
                    handleFinishReservation(4, false);
                    return;
                }
                if(j == 24581)
                {
                    mBGRecordHandler.post(new BGRecordingNotificationRunnable(true, this));
                    mBGRecordHandler.post(new Runnable() {

                        public void run()
                        {
                            handleStartReservation();
                        }

                        final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
                    }
);
                    return;
                }
                if(j != 24601 && j != 24600)
                    continue; /* Loop/switch isn't completed */
                if(j != 24600)
                    break label0;
                String s1 = mMtvAppPlaybackContext.getAttribute().getCurrentProgramName();
                if(s1 != null)
                {
                    s = s1;
                    if(!s1.isEmpty())
                        break label1;
                }
                s = getString(0x7f07028a);
            }
            MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("recording progName = ").append(s).toString());
            mReserveList.add(0, s);
        }
        showNotification(true);
        return;
_L4:
        if(j == 24593)
        {
            MtvUtilDebug.Error("MtvOneSegRecorderService", "Abnormal death Happened ! ");
            mBGRecordHandler.post(new Runnable() {

                public void run()
                {
                    handleFinishReservation(2, true);
                }

                final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
            }
);
            return;
        }
        if(true) goto _L1; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("IMtvAppPlayerOneSeg.CMD_RECORD status ").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24577: 
            MtvUtilDebug.Low("MtvOneSegRecorderService", "Current Reservation Recording Started...!");
            mBGRecordHandler.post(new BGRecordingNotificationRunnable(true, this));
            updateReservationStatus(6);
            return;

        case 24581: 
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().stopRecordTimer();
            saveTVFileThumbnail();
            mBGRecordHandler.post(new Runnable() {

                public void run()
                {
                    handleFinishReservation(1, false);
                }

                final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
            }
);
            return;

        case 24580: 
            MtvUtilDebug.Low("MtvOneSegRecorderService", "IMtvAppPlayerOneSeg.CMD_RECORD status  IMtvAppPlayerOneSeg.STAT_FAILURE");
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().stopRecordTimer();
            if(k == 24595 || k == 24593)
            {
                mBGRecordHandler.post(new Runnable() {

                    public void run()
                    {
                        handleFinishReservation(5, true);
                    }

                    final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
                }
);
                return;
            }
            if(k == 24594)
            {
                mBGRecordHandler.post(new Runnable() {

                    public void run()
                    {
                        handleFinishReservation(5, false);
                    }

                    final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
                }
);
                return;
            } else
            {
                mBGRecordHandler.post(new Runnable() {

                    public void run()
                    {
                        handleFinishReservation(2, false);
                    }

                    final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
                }
);
                return;
            }

        case 24596: 
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().startRecordTimer();
            return;

        case 24588: 
            mLowSignalRecStopReason = true;
            mBGRecordHandler.post(new Runnable() {

                public void run()
                {
                    handleFinishReservation(4, false);
                }

                final MtvOneSegRecorderService this$0;

            
            {
                this$0 = MtvOneSegRecorderService.this;
                super();
            }
            }
);
            return;
        }
_L6:
        MtvUtilDebug.Low("MtvOneSegRecorderService", (new StringBuilder()).append("IMtvAppPlayerOneSeg.CMD_DELETE status ").append(j).toString());
        if(j == 24581)
        {
            resetContextManager();
            isStopSelfCalled = true;
            stopSelf();
            return;
        }
        if(true) goto _L1; else goto _L7
_L7:
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        MtvUtilDebug.Low("MtvOneSegRecorderService", "onStartCommand...");
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(intent.hasExtra("COMMAND_KEY"))
            if(intent.getIntExtra("COMMAND_KEY", -1) == 1)
            {
                updateReservationInfo(intent);
                initMtvPlayer();
                if(intent.hasExtra("dbId"))
                    handleStartReservation();
            } else
            if(intent.getIntExtra("COMMAND_KEY", -1) == 2)
            {
                getApplicationContext().stopService(new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"));
                return 2;
            }
        return 2;
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    public static final int CMD_MTV_RECORDER_SERVICE_START = 1;
    public static final int CMD_MTV_RECORDER_SERVICE_STOP = 2;
    public static final String COMMAND_KEY = "COMMAND_KEY";
    private static final int RECORDING_INSUFF_MEM = 1;
    private static final int RECORDING_INSUFF_PHONE_MEM = 2;
    private static final int RECORDING_START_FAILURE = -1;
    private static final int RECORDING_START_SUCCESS = 0;
    private static final String TAG = "MtvOneSegRecorderService";
    private boolean isBGExitInvoked;
    private boolean isStopSelfCalled;
    private Handler mBGRecordHandler;
    private android.os.PowerManager.WakeLock mCpuWakeLock;
    private int mCurrentOpenedChannel;
    private int mCurrentOpenedService;
    private MtvReservation mCurrentReservation;
    private boolean mLowSignalRecStopReason;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    private MtvPreferences mMtvPreference;
    private NotificationManager mNotificationManager;
    private Runnable mOpenChannelRunnable;
    private PowerManager mPowerManager;
    private int mRecLocation;
    private ArrayList mReserveList;
    private int upcomingReservationId;




}
