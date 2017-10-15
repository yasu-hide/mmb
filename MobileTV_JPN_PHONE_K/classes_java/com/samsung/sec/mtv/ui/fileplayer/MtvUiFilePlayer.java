// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.fileplayer;

import android.app.DialogFragment;
import android.app.NotificationManager;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.sdtv.SDtvControl;
import android.content.*;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.BitmapFactory;
import android.os.*;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.*;
import android.view.animation.AnimationUtils;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.MtvFile;
import com.samsung.sec.mtv.provider.MtvFileManager;
import com.samsung.sec.mtv.ui.bml.IMtvUiBmlActivity;
import com.samsung.sec.mtv.ui.bml.MtvUiBmlSurfaceView;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.ui.minitv.MtvMiniModeService;
import com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover;
import com.samsung.sec.mtv.utility.*;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.util.Arrays;
import java.util.Date;

public class MtvUiFilePlayer extends MtvUiGenericPlayer
    implements com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener, IMtvAppPlaybackStateListener, IMtvUiBmlActivity
{
    private class CallStateListener extends PhoneStateListener
    {

        public void onCallStateChanged(int i, String s)
        {
            i;
            JVM INSTR tableswitch 0 2: default 28
        //                       0 28
        //                       1 35
        //                       2 28;
               goto _L1 _L1 _L2 _L1
_L1:
            super.onCallStateChanged(i, s);
            return;
_L2:
            onFragEvent(278, null);
            if(true) goto _L1; else goto _L3
_L3:
        }

        final MtvUiFilePlayer this$0;

        private CallStateListener()
        {
            this$0 = MtvUiFilePlayer.this;
            super();
        }

    }

    public static final class MTvAppPlaybackTimer
    {

        public static MTvAppPlaybackTimer getInstance()
        {
            if(mSingletonInstance == null)
                mSingletonInstance = new MTvAppPlaybackTimer();
            return mSingletonInstance;
        }

        public static MTvAppPlaybackTimer getInstance(MtvUiFragHandler mtvuifraghandler)
        {
            if(mSingletonInstance == null)
                mSingletonInstance = new MTvAppPlaybackTimer(mtvuifraghandler);
            else
                mSingletonInstance.mFragHandler = mtvuifraghandler;
            return mSingletonInstance;
        }

        public static void reset()
        {
            MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer reset...");
            mSingletonInstance = null;
        }

        public int getCurrentPlayBackTime()
        {
            return mPlaybackTime;
        }

        public int getCurrentPlayBackTimeInMillis()
        {
            return mPlaybackTime * 1000;
        }

        public void pausePlaybackTimer()
        {
            if(!isStopped)
            {
                MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer:: Playback Timer pause...");
                mPlaybackHandler.removeCallbacks(mPlayBackTimeCounter);
                return;
            } else
            {
                MtvUtilDebug.High("MtvAppPlaybackTimer", "Cannot Pause as Already in Stopped State !");
                return;
            }
        }

        public void resumePlaybackTimer()
        {
            if(!isStopped)
            {
                MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer:: Playback Timer resume...");
                mPlaybackHandler.removeCallbacks(mPlayBackTimeCounter);
                mPlaybackHandler.post(mPlayBackTimeCounter);
                return;
            } else
            {
                MtvUtilDebug.High("MtvAppPlaybackTimer", "Cannot Resume as Already in Stopped State !");
                return;
            }
        }

        public void resumePlaybackTimer(int i)
        {
            if(!isStopped)
            {
                MtvUtilDebug.Low("MtvAppPlaybackTimer", (new StringBuilder()).append("MtvAppPlaybackTimer:: Playback Timer resume at ").append(i).append("...").toString());
                mPlaybackTime = i;
                mPlaybackHandler.removeCallbacks(mPlayBackTimeCounter);
                mPlaybackHandler.postDelayed(mPlayBackTimeCounter, 200L);
                return;
            } else
            {
                MtvUtilDebug.High("MtvAppPlaybackTimer", "Cannot Resume as Already in Stopped State !");
                return;
            }
        }

        public void startPlaybackTimer()
        {
            mPlaybackTime = 0;
            isStopped = false;
            MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer:: Playback Timer started...");
            mPlaybackHandler.removeCallbacks(mPlayBackTimeCounter);
            mPlaybackHandler.postDelayed(mPlayBackTimeCounter, 200L);
        }

        public void stopPlaybackTimer()
        {
            if(!isStopped)
            {
                MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer:: Playback Timer stopped...");
                mPlaybackTime = -1;
                isStopped = true;
                mPlaybackHandler.removeCallbacks(mPlayBackTimeCounter);
                return;
            } else
            {
                MtvUtilDebug.High("MtvAppPlaybackTimer", "Already in Stopped State !");
                return;
            }
        }

        public void updatePlayBackTimeInMillis(long l)
        {
            if(!isStopped)
            {
                MtvUtilDebug.Low("MtvAppPlaybackTimer", "updatePlayBackTimeInMillis:: updating playback time...");
                updatePlaybackTime((int)Math.round((double)l / 1000D));
                return;
            } else
            {
                MtvUtilDebug.High("MtvAppPlaybackTimer", "Cannot update playbck time as Already in Stopped State !");
                return;
            }
        }

        public void updatePlaybackTime(int i)
        {
            if(!isStopped)
            {
                MtvUtilDebug.Low("MtvAppPlaybackTimer", "updatePlaybackTime:: updating playback time...");
                mPlaybackTime = i;
                mPlaybackHandler.sendMessage(mPlaybackHandler.obtainMessage(406));
                return;
            } else
            {
                MtvUtilDebug.High("MtvAppPlaybackTimer", "Cannot update playbck time as Already in Stopped State !");
                return;
            }
        }

        private static final long INVALID_TIME_VALUE = 0x79999999L;
        private static final int PLAYBACK_TIMER_MW_QUERY_INTERVAL = 500;
        private static final int PLAYBCK_TIMER_INCREMENT_INTERVAL = 1000;
        private static final String TAG = "MtvAppPlaybackTimer";
        private static MTvAppPlaybackTimer mSingletonInstance = null;
        private boolean isStopped;
        private MtvUiFragHandler mFragHandler;
        private Runnable mPlayBackTimeCounter = new _cls2();
        private Handler mPlaybackHandler = new _cls1();
        private int mPlaybackTime;





/*
        static int access$7102(MTvAppPlaybackTimer mtvappplaybacktimer, int i)
        {
            mtvappplaybacktimer.mPlaybackTime = i;
            return i;
        }

*/



        private MTvAppPlaybackTimer()
        {
            mPlaybackTime = 0;
            mFragHandler = null;
            isStopped = true;
            MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer created newly...");
        }

        private MTvAppPlaybackTimer(MtvUiFragHandler mtvuifraghandler)
        {
            mPlaybackTime = 0;
            mFragHandler = null;
            isStopped = true;
            MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer created newly...with fragHandler");
            mFragHandler = mtvuifraghandler;
        }
    }

    private class MtvTmpFileManagerRunnable
        implements Runnable
    {

        public void run()
        {
            SDtvControl.getInstance().updateTVFilesDB();
            try
            {
                Thread.sleep(500L);
            }
            catch(InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
            runOnUiThread(new Runnable() {

                public void run()
                {
                    checkIsFileRunning();
                }

                final MtvTmpFileManagerRunnable this$1;

            
            {
                this$1 = MtvTmpFileManagerRunnable.this;
                super();
            }
            }
);
        }

        final MtvUiFilePlayer this$0;

        MtvTmpFileManagerRunnable()
        {
            this$0 = MtvUiFilePlayer.this;
            super();
        }
    }


    public MtvUiFilePlayer()
    {
        mImgViewerScreen = null;
        mVidViewerScreen = null;
        mMtvFileList = null;
        mMtvAudMgr = null;
        IsBMLFullView = false;
        isStartedFromMiniMode = false;
        isPausedInMiniMode = false;
        mRotationObserver = null;
        isPauseTrickMode = false;
        mCallStateListener = null;
        postHeadsetUpdate = new Runnable() ;
        RunnableRemoveSleepTimerIcon = new Runnable() ;
        mRunnableHideProgressBarInPortrait = new Runnable() ;
        RunnableRemoveRotateButton = new Runnable() ;
        mRunnableUpdateFragsBasedOnLockState = new Runnable() {

            public void run()
            {
                updateFragsBasedOnLockState();
            }

            final MtvUiFilePlayer this$0;

            
            {
                this$0 = MtvUiFilePlayer.this;
                super();
            }
        }
;
        mLocalUiMsgHandler = new Handler() ;
        runnableVolumeEscalating = new Runnable() ;
        runnableVolumeDecreasing = new Runnable() ;
        runnableMenuKeyPress = new Runnable() ;
    }

    private transient void addRemoveResetFragments(int i, int ai[])
    {
        int j;
        int k;
        int l;
        MtvUtilDebug.Low("MtvUiFilePlayer", "addRemoveResetFragments");
        char c = '\u1388';
        k = mMtvFile.getFileFormat();
        l = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        j = c;
        if(ai != null)
        {
            j = c;
            if(ai.length > 0)
                j = ai[0];
        }
        if(i != 225) goto _L2; else goto _L1
_L1:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR)) goto _L4; else goto _L3
_L3:
        fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, j, false, new int[0]);
        mLocalUiMsgHandler.sendEmptyMessage(401);
        if(2 == k)
        {
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLBASIC))
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLBASIC);
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, j, false, new int[0]);
        } else
        if(l == 1)
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, j, false, new int[0]);
        } else
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, -1L, false, new int[0]);
            mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
            mLocalUiMsgHandler.postDelayed(mRunnableHideProgressBarInPortrait, j);
        }
        setRotateButtonVisibility(true, new int[0]);
        if(mMtvPreferences.getAutoPowerOffTime() > 0)
        {
            sleepTimer.setVisibility(0);
            mLocalUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
            mLocalUiMsgHandler.postDelayed(RunnableRemoveSleepTimerIcon, j);
        }
_L6:
        return;
_L4:
        MtvUtilDebug.Low("MtvUiFilePlayer", "removing fragments");
        fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG);
        if(l == 1)
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
        } else
        {
            if(!isInTrickMode())
                fragHandler.onUpdate(117, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
            mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
            mLocalUiMsgHandler.post(mRunnableHideProgressBarInPortrait);
        }
        setRotateButtonVisibility(false, new int[0]);
        sleepTimer.setVisibility(8);
        mLocalUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME) && l == 1)
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(!isBmlFullView() && !IsBMLFullView)
        {
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, j);
            else
            if(!isPhoneLocked())
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, j, false, new int[0]);
            mLocalUiMsgHandler.sendEmptyMessage(401);
        }
        if(l == 1)
            i = j;
        else
            i = -1;
        if(2 != k && !isPhoneLocked())
        {
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID))
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, i, false, new int[0]);
            else
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, i);
            if(l == 0)
            {
                mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
                if(j > 0)
                    mLocalUiMsgHandler.postDelayed(mRunnableHideProgressBarInPortrait, j);
            }
        } else
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG) && !isPhoneLocked())
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, i, false, new int[0]);
        else
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, i);
        setRotateButtonVisibility(true, new int[] {
            j
        });
        if(mMtvPreferences.getAutoPowerOffTime() > 0)
        {
            sleepTimer.setVisibility(0);
            mLocalUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
            if(j > 0)
            {
                mLocalUiMsgHandler.postDelayed(RunnableRemoveSleepTimerIcon, j);
                return;
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    private void clearCaptionView()
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "Inside Clear caption");
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        if(mMtvPreferences.isCaptionEnabled() && !isBmlFullView())
        {
            mCaptionView.setText("");
            mCaptionView.invalidate();
        }
    }

    private void clearNotification()
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "clearNotification...");
        mNotificationManager.cancel(0x7f0200c3);
    }

    private void drawImageFile()
    {
        Object obj1;
        Object obj2;
        MtvUtilCrypto mtvutilcrypto;
        obj1 = null;
        mtvutilcrypto = null;
        obj2 = null;
        Object obj = new FileInputStream(mMtvFile.getFilePath());
        mtvutilcrypto = new MtvUtilCrypto(2);
        int i;
        int j;
        i = 0;
        j = 0;
        int k = mtvutilcrypto.getOutputSize(2, (int)((FileInputStream) (obj)).getChannel().size());
        i = k;
_L3:
        long l = ((FileInputStream) (obj)).getChannel().size();
        j = (int)l;
_L6:
        if(i <= 0 || j <= 0) goto _L2; else goto _L1
_L1:
        ByteBuffer bytebuffer = ByteBuffer.allocate(i);
        obj1 = ByteBuffer.allocate((int)((FileInputStream) (obj)).getChannel().size());
_L7:
        i = -1;
        if(obj1 == null)
            break MISSING_BLOCK_LABEL_116;
        i = ((FileInputStream) (obj)).read(((ByteBuffer) (obj1)).array());
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append(" numbrerOfBytesRead ").append(i).toString());
_L8:
        mtvutilcrypto.decryptData(((ByteBuffer) (obj1)), bytebuffer);
        mImage.setImageBitmap(BitmapFactory.decodeByteArray(bytebuffer.array(), 0, bytebuffer.array().length));
        if(mMtvPreferences != null)
            mMtvPreferences.setLatestFileIndex(mMtvFileIndex);
_L2:
        if(obj == null)
            break MISSING_BLOCK_LABEL_200;
        ((FileInputStream) (obj)).close();
_L5:
        return;
        obj1;
        ((IOException) (obj1)).printStackTrace();
          goto _L3
        obj2;
_L10:
        obj1 = obj;
        ((FileNotFoundException) (obj2)).printStackTrace();
        if(obj == null) goto _L5; else goto _L4
_L4:
        try
        {
            ((FileInputStream) (obj)).close();
            return;
        }
        // Misplaced declaration of an exception variable
        catch(Object obj)
        {
            ((IOException) (obj)).printStackTrace();
        }
        return;
        obj1;
        ((IOException) (obj1)).printStackTrace();
          goto _L6
        obj2;
        obj1 = obj;
        obj = obj2;
_L9:
        if(obj1 != null)
            try
            {
                ((FileInputStream) (obj1)).close();
            }
            // Misplaced declaration of an exception variable
            catch(Object obj1)
            {
                ((IOException) (obj1)).printStackTrace();
            }
        throw obj;
        obj1;
        ((IOException) (obj1)).printStackTrace();
        obj1 = obj2;
          goto _L7
        obj2;
        ((IOException) (obj2)).printStackTrace();
          goto _L8
        obj;
        ((IOException) (obj)).printStackTrace();
        return;
        obj;
          goto _L9
        obj2;
        obj1 = obj;
        obj = obj2;
          goto _L9
        obj2;
        obj = mtvutilcrypto;
          goto _L10
        obj2;
          goto _L10
    }

    private SurfaceView getLocalVideoSurfaceView(boolean flag)
    {
        if(!flag)
            mVideoSurfaceView.setVisibility(8);
        else
            mVideoSurfaceView.setVisibility(0);
        if(flag)
            return mVideoSurfaceView;
        else
            return mHiddenSurfaceView;
    }

    private String getStatusBarText()
    {
        String s;
        if(mMtvFile.getProgramName() == null || mMtvFile.getProgramName().isEmpty() || mMtvFile.getProgramName().equals("No Program Name"))
            s = getResources().getString(0x7f07028a);
        else
            s = mMtvFile.getProgramName();
        return (new StringBuilder()).append(mMtvFile.getChannelName()).append("\n").append(s).toString();
    }

    private void handleUnlock()
    {
        setPhoneLocked(false);
        setRotateButtonVisibility(true, new int[] {
            5000
        });
        fragHandler.unhideAllFragments();
        fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        mLocalUiMsgHandler.post(mRunnableUpdateFragsBasedOnLockState);
        requestSystemKeyEvent(3, false);
        requestSystemKeyEvent(187, false);
        showControl();
    }

    private void initMtvFilePlayer()
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "initMtvFilePlayer...");
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(isPausedInMiniMode)
        {
            onFragEvent(279, null);
            isPausedInMiniMode = false;
        }
        boolean flag1 = false;
        boolean flag2 = false;
        boolean flag = flag2;
        if(mMtvAppPlaybackContext != null)
        {
            flag = flag2;
            if(mMtvAppPlaybackContext.getState().getOp() == 20494)
                flag = true;
        }
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
        {
            boolean flag3 = true;
            mGenericMsgHAndler.sendMessage(mLocalUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLocalTV();
            mMtvAppPlaybackContext.getComponents().getBml().enable();
            flag1 = flag3;
            if(mBmlSurface != null)
            {
                mBmlSurface.create(mMtvAppPlaybackContext, fragHandler);
                flag1 = flag3;
            }
        }
        mMtvAppPlaybackContext.getState().registerListener(this);
        mMtvAppPlaybackContext.getComponents().getBml().enable();
        if(!mMtvPreferences.getIsFilePlayMiniMode())
        {
            registerVideoSurfaceView(true);
            mVideoSurfaceView.setKeepScreenOn(true);
        }
        updateCaptions();
        if(mMtvFile.getFileFormat() == 2)
        {
            loadImageFile();
        } else
        {
            if(flag1 || flag)
            {
                loadVideoFile();
                return;
            }
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = mMtvAppPlaybackContext.getState().getState();
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("pbState = ").append(state).toString());
            if(state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED)
            {
                mGenericMsgHAndler.sendMessage(mLocalUiMsgHandler.obtainMessage(301, null));
                return;
            }
            if(state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
            {
                mGenericMsgHAndler.sendMessage(mLocalUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
                return;
            }
            if(state != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED)
            {
                loadVideoFile();
                return;
            }
        }
    }

    private void initViewControl()
    {
        setContentView(0x7f030005);
        lockImage = (ImageView)findViewById(0x7f0a002a);
        lockImage.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                handleUnlock();
            }

            final MtvUiFilePlayer this$0;

            
            {
                this$0 = MtvUiFilePlayer.this;
                super();
            }
        }
);
        sleepTimer = (ImageView)findViewById(0x7f0a0030);
        mAnimationlayout = (RelativeLayout)findViewById(0x7f0a0023);
        mAnimationImage = (ImageView)findViewById(0x7f0a0024);
        rotatingAnimation = AnimationUtils.loadAnimation(this, 0x7f040000);
        mTxtAnimation = (TextView)findViewById(0x7f0a0025);
        mAnimationlayout.setVisibility(8);
        mVideoSurfaceView = (SurfaceView)findViewById(0x7f0a0020);
        mHiddenSurfaceView = (SurfaceView)findViewById(0x7f0a0021);
        mImgViewerScreen = (AbsoluteLayout)findViewById(0x7f0a001d);
        mVidViewerScreen = (AbsoluteLayout)findViewById(0x7f0a001f);
        mBmlSurface = (MtvUiBmlSurfaceView)findViewById(0x7f0a000c);
        mCaptionView = (TextView)findViewById(0x7f0a0028);
        mImgViewNoChannel = (ImageView)findViewById(0x7f0a0022);
        mImage = (ImageView)findViewById(0x7f0a001e);
        mRotateButtonFilePlayer = (ImageButton)findViewById(0x7f0a002e);
        mRotateButtonFilePlayer.setVisibility(0);
        mRotateButtonFilePlayer.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                if(isPhoneLocked())
                {
                    MtvUtilDebug.Low("MtvUiFilePlayer", "OnClick will not be served if locked");
                    return;
                }
                switch(MtvUtilAppService.getCurrentOrientation(getApplicationContext()))
                {
                default:
                    setRequestedOrientation(1);
                    MtvUtilAppService.setPreferredOrientation(1);
                    return;

                case 0: // '\0'
                    setRequestedOrientation(0);
                    MtvUtilAppService.setPreferredOrientation(0);
                    return;

                case 1: // '\001'
                    setRequestedOrientation(1);
                    break;
                }
                MtvUtilAppService.setPreferredOrientation(1);
            }

            final MtvUiFilePlayer this$0;

            
            {
                this$0 = MtvUiFilePlayer.this;
                super();
            }
        }
);
        mChannelGestureDetector = new GestureDetector(this, new ChannelGestureListener());
        mCaptionView.setOnClickListener(null);
        setImageViewDuringNoChannel(false);
        setScreen();
    }

    private void invalidateViews()
    {
        clearCaptionView();
        if(mBmlSurface.IsBMLFullView())
            setBMLLayoutFullView(false);
        closeOptionsMenu();
        fragHandler.onUpdate(137, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
    }

    private boolean isPrevNextEnabled()
    {
        int i;
        boolean flag1;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state;
        flag1 = false;
        state = getPlaybackState();
        i = getPlayerCommand();
        if(20480 != i) goto _L2; else goto _L1
_L1:
        boolean flag;
label0:
        {
            if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED != state && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING != state)
            {
                flag = flag1;
                if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED != state)
                    break label0;
            }
            flag = true;
        }
_L4:
        return flag;
_L2:
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == state && 20489 == i || com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == state && 20490 == i)
            break; /* Loop/switch isn't completed */
        flag = flag1;
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING != state) goto _L4; else goto _L3
_L3:
        flag = flag1;
        if(20491 != i) goto _L4; else goto _L5
_L5:
        return true;
    }

    private boolean isStartOfClip(int i)
    {
        if(mCurrTrickMode != 3) goto _L2; else goto _L1
_L1:
        if(mCurrTrickSpeed != 1) goto _L4; else goto _L3
_L3:
        if(i - 2000 > 0) goto _L6; else goto _L5
_L5:
        return true;
_L6:
        return false;
_L4:
        if(mCurrTrickSpeed == 2)
        {
            if(i - 10000 > 0)
                return false;
        } else
        {
            return false;
        }
        if(true) goto _L5; else goto _L2
_L2:
        return false;
    }

    private void loadCurrentFileUI()
    {
        setScreen();
        showControl();
        updateFragsBasedOnLockState();
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        if(mMtvFile.getFileFormat() == 2)
        {
            loadImageFile();
            return;
        } else
        {
            loadVideoFile();
            return;
        }
    }

    private void loadImageFile()
    {
        if(mMtvPreferences != null)
            mMtvPreferences.setIsFileFormatImage(true);
        if(mBmlSurface != null)
            mBmlSurface.stopBmlContrlFragment();
        if(mMtvFile != null)
        {
            int i = mMtvFile.getIndex();
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLocalTV();
            MtvURI mtvuri = new MtvURI(5, null, i);
            mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
        }
        drawImageFile();
    }

    private void loadNextFile()
    {
        if(mMtvFileIndex == mMtvFileList.length - 1)
            mMtvFileIndex = 0;
        else
            mMtvFileIndex++;
        mMtvFile = mMtvFileList[mMtvFileIndex];
    }

    private void loadNextFileHover()
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "loadNextFileHover is called....:");
        if(mMtvFileList != null)
        {
            MtvFile mtvfile;
            if(mMtvFileIndex == mMtvFileList.length - 1)
                mtvfile = mMtvFileList[0];
            else
                mtvfile = mMtvFileList[mMtvFileIndex + 1];
            mMtvPreferences.setNextFileInfo(mtvfile.getProgramName());
        }
    }

    private void loadPrevFile()
    {
        if(mMtvFileIndex == 0)
            mMtvFileIndex = mMtvFileList.length - 1;
        else
            mMtvFileIndex--;
        mMtvFile = mMtvFileList[mMtvFileIndex];
    }

    private void loadPrevFileHover()
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "loadPrevFileHover is called....:");
        if(mMtvFileList != null)
        {
            MtvFile mtvfile;
            if(mMtvFileIndex == 0)
                mtvfile = mMtvFileList[mMtvFileList.length - 1];
            else
                mtvfile = mMtvFileList[mMtvFileIndex - 1];
            mMtvPreferences.setPreFileInfo(mtvfile.getProgramName());
        }
    }

    private void loadVideoFile()
    {
        if(mMtvPreferences != null)
            mMtvPreferences.setIsFileFormatImage(false);
        mImage.setImageBitmap(null);
        mGenericMsgHAndler.sendMessage(mLocalUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
        if(mMtvFile != null)
        {
            MtvURI mtvuri = new MtvURI(1, null, mMtvFile.getIndex());
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLocalTV();
            mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
        }
        if(mMtvPreferences != null)
            mMtvPreferences.setLatestFileIndex(mMtvFileIndex);
    }

    private void postLockUpdate(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE frag_type)
    {
        mLocalUiMsgHandler.sendMessage(mLocalUiMsgHandler.obtainMessage(112, frag_type));
    }

    private void registerContentObserver()
    {
        if(mRotationObserver == null)
        {
            mRotationObserver = new ContentObserver(new Handler()) {

                public void onChange(boolean flag)
                {
                    MtvUtilDebug.Low("MtvUiFilePlayer", "registerContentObserver onChange()");
                    if(android.provider.Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1 && !IsBMLFullView)
                        setRequestedOrientation(-1);
                    setRotateButtonVisibility(true, new int[0]);
                }

                final MtvUiFilePlayer this$0;

            
            {
                this$0 = MtvUiFilePlayer.this;
                super(handler);
            }
            }
;
            android.net.Uri uri = android.provider.Settings.System.getUriFor("accelerometer_rotation");
            getContentResolver().registerContentObserver(uri, false, mRotationObserver);
            MtvUtilDebug.Low("MtvUiFilePlayer", "registerContentObserver - mRotationObserver is registered");
        }
    }

    private void setCaptionText()
    {
        android.text.SpannableStringBuilder spannablestringbuilder = null;
        if(mMtvAppPlaybackContext != null)
            spannablestringbuilder = mMtvAppPlaybackContext.getComponents().getCaption().getBuffer();
        if(spannablestringbuilder != null)
        {
            mCaptionView.setText(spannablestringbuilder);
            return;
        } else
        {
            mCaptionView.setText("");
            return;
        }
    }

    private void setImageViewDuringNoChannel(boolean flag)
    {
        if(flag)
        {
            mVideoSurfaceView.setVisibility(8);
            mImgViewNoChannel.setVisibility(0);
            return;
        } else
        {
            mVideoSurfaceView.setVisibility(0);
            mImgViewNoChannel.setVisibility(8);
            return;
        }
    }

    private transient void setRotateButtonVisibility(boolean flag, int ai[])
    {
        int i;
        char c = '\u1388';
        i = c;
        if(ai != null)
        {
            i = c;
            if(ai.length > 0)
                i = ai[0];
        }
        if(!flag || isPhoneLocked())
            break MISSING_BLOCK_LABEL_158;
        if(getApplicationContext() == null) goto _L2; else goto _L1
_L1:
        if(android.provider.Settings.System.getInt(getApplicationContext().getContentResolver(), "accelerometer_rotation", 0) != 1) goto _L4; else goto _L3
_L3:
        mRotateButtonFilePlayer.setVisibility(8);
        mLocalUiMsgHandler.removeCallbacks(RunnableRemoveRotateButton);
        if(!IsBMLFullView)
            setRequestedOrientation(-1);
_L2:
        return;
_L4:
        if(fragHandler != null && fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !IsBMLFullView)
            mRotateButtonFilePlayer.setVisibility(0);
        mLocalUiMsgHandler.removeCallbacks(RunnableRemoveRotateButton);
        if(i <= 0) goto _L2; else goto _L5
_L5:
        mLocalUiMsgHandler.postDelayed(RunnableRemoveRotateButton, i);
        return;
        mRotateButtonFilePlayer.setVisibility(8);
        mLocalUiMsgHandler.removeCallbacks(RunnableRemoveRotateButton);
        return;
    }

    private void setScreen()
    {
        if(mMtvFile.getFileFormat() == 2)
        {
            mImgViewerScreen.setVisibility(0);
            mImage.setVisibility(0);
            mVidViewerScreen.setVisibility(8);
            return;
        } else
        {
            mImgViewerScreen.setVisibility(8);
            mImage.setVisibility(8);
            mVidViewerScreen.setVisibility(0);
            return;
        }
    }

    private void setScreenRatio(int i)
    {
        Object obj = getApplicationContext();
        int j;
        int k;
        int l;
        if(MtvUtilAppService.getCurrentOrientation(((Context) (obj))) == 1)
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "setScreenRatio landscape");
            j = (int)MtvUtilConfigSetting.convertDpToPixel(360F, ((Context) (obj)));
            k = (int)MtvUtilConfigSetting.convertDpToPixel(640F, ((Context) (obj)));
        } else
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "setScreenRatio portrait");
            j = (int)MtvUtilConfigSetting.convertDpToPixel(203F, ((Context) (obj)));
            k = (int)MtvUtilConfigSetting.convertDpToPixel(360F, ((Context) (obj)));
        }
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("setScreenRatio LCD_HEIGHT:").append(j).append("LCD_WIDTH:").append(k).toString());
        if(1.777778F == 1.777778F)
        {
            if(i == 0)
            {
                MtvUtilDebug.Low("MtvUiFilePlayer", "setScreenRatio 16:9 NORMAL");
                l = k;
                i = (k / 16) * 9;
            } else
            {
                MtvUtilDebug.Low("MtvUiFilePlayer", "setScreenRatio 16:9 ENLARGE ");
                l = k;
                i = j;
            }
        } else
        if(i == 0)
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "setScreenRatio 4:3 NORMAL ");
            i = j;
            l = (j / 3) * 4;
        } else
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "setScreenRatio 4:3 ENLARGE ");
            l = k;
            i = j;
        }
        k = (k - l) / 2;
        j = (j - i) / 2;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("setScreenRatio x = ").append(k).append(" y = ").append(j).append(" w = ").append(l).append(" h = ").append(i).toString());
        obj = new android.widget.AbsoluteLayout.LayoutParams(l, i, k, j);
        mVideoSurfaceView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
    }

    private void showControl()
    {
        int i;
        long l;
        l = -1L;
        i = mMtvFile.getFileFormat();
        if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
            l = 5000L;
        if(fragHandler == null) goto _L2; else goto _L1
_L1:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        if(2 != i) goto _L4; else goto _L3
_L3:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLBASIC))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BMLBASIC);
        mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
        fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isPhoneLocked())
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L, false, new int[0]);
            mLocalUiMsgHandler.sendEmptyMessage(401);
        } else
        {
            if(mBmlSurface != null && !mBmlSurface.IsBMLFullView())
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L);
            mLocalUiMsgHandler.sendEmptyMessage(401);
        }
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG) && !isPhoneLocked())
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, l, false, new int[0]);
        else
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, l);
_L2:
        setRotateButtonVisibility(true, new int[] {
            5000
        });
        return;
_L4:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG);
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isPhoneLocked())
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L, false, new int[0]);
            mLocalUiMsgHandler.sendEmptyMessage(401);
        } else
        {
            if(mBmlSurface != null && !mBmlSurface.IsBMLFullView())
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L);
            mLocalUiMsgHandler.sendEmptyMessage(401);
        }
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID) && !isPhoneLocked())
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, l, false, new int[0]);
        else
        if(mBmlSurface != null && !mBmlSurface.IsBMLFullView())
        {
            fragHandler.onUpdate(123, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, l);
        }
        if(true) goto _L2; else goto _L5
_L5:
    }

    private void startVolumeControlBar()
    {
        int i = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isPhoneLocked())
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "onTouchEvent, adding status fragment");
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L, false, new int[0]);
            mLocalUiMsgHandler.sendEmptyMessage(401);
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, 5000L, false, new int[0]);
        } else
        if(i == 1 && !isPhoneLocked())
        {
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 6000L);
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, 6000L);
        }
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 5000L, false, new int[] {
                0x7f0a0032
            });
            return;
        } else
        {
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 5000L);
            return;
        }
    }

    private void unregisterContentObserver()
    {
        if(mRotationObserver != null)
        {
            getContentResolver().unregisterContentObserver(mRotationObserver);
            mRotationObserver = null;
            MtvUtilDebug.Low("MtvUiFilePlayer", "unregisterContentObserver - mRotationObserver is unregistered");
        }
    }

    private void updateCaptions()
    {
label0:
        {
            if(mCaptionView != null && mMtvPreferences != null)
            {
                if(!mMtvPreferences.isCaptionEnabled() || isBmlFullView())
                    break label0;
                mCaptionView.setVisibility(0);
                setCaptionText();
            }
            return;
        }
        mCaptionView.setVisibility(8);
    }

    private void updateFragsBasedOnLockState()
    {
        int i;
        com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE frag_type;
        MtvUtilDebug.Low("MtvUiFilePlayer", "updateFragsBasedOnLockState...");
        i = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        frag_type = com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_NONE;
        if(mMtvFile.getFileFormat() == 2)
            frag_type = com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG;
        else
            frag_type = com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID;
        if(fragHandler != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.High("MtvUiFilePlayer", "updateFragsBasedOnLockState: fragHandler is null ");
_L4:
        return;
_L2:
        if(i != 0)
            break; /* Loop/switch isn't completed */
        if(isPhoneLocked())
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "FilePlayer in lock mode...disable all listeners");
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            if(!fragHandler.isFragPresent(frag_type))
                fragHandler.addFrag(frag_type, -1L, false, new int[] {
                    0x7f0a0031, 1
                });
            else
                postLockUpdate(frag_type);
        } else
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("FilePlayer not in lock mode...enable back listeners:: fragHandler.isFragPresent(FRAG_TYPE.TYPE_STATUS_BAR):: ").append(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR)).append("isBmlFullView(): ").append(isBmlFullView()).toString());
            if(isBmlFullView())
            {
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, -1L, false, new int[0]);
                mLocalUiMsgHandler.sendEmptyMessage(401);
            }
            if(!fragHandler.isFragPresent(frag_type))
                fragHandler.addFrag(frag_type, -1L, false, new int[] {
                    0x7f0a0031, 0
                });
            else
                postLockUpdate(frag_type);
            mLocalUiMsgHandler.sendEmptyMessage(404);
        }
_L5:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            return;
        }
        if(true) goto _L4; else goto _L3
_L3:
        if(isPhoneLocked())
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "FilePlayer in lock mode...disable all listeners");
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            if(fragHandler.isFragPresent(frag_type))
                fragHandler.removeFrag(frag_type);
        } else
        {
            mLocalUiMsgHandler.sendEmptyMessage(404);
        }
          goto _L5
        if(true) goto _L4; else goto _L6
_L6:
    }

    private void updateTrickParams(int i)
    {
        if(i != 2) goto _L2; else goto _L1
_L1:
        if(mCurrTrickMode != 3) goto _L4; else goto _L3
_L3:
        mCurrTrickMode = 2;
        mCurrTrickSpeed = 1;
_L6:
        return;
_L4:
        mCurrTrickMode = 2;
        if(mCurrTrickSpeed == 0)
        {
            mCurrTrickSpeed = 1;
            return;
        }
        if(mCurrTrickSpeed == 1)
        {
            mCurrTrickSpeed = 2;
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if(i == 3)
        {
            if(mCurrTrickMode == 2)
            {
                mCurrTrickMode = 3;
                mCurrTrickSpeed = 1;
                return;
            }
            mCurrTrickMode = 3;
            if(mCurrTrickSpeed == 0)
            {
                mCurrTrickSpeed = 1;
                return;
            }
            if(mCurrTrickSpeed == 1)
            {
                mCurrTrickSpeed = 2;
                return;
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void checkIsFileRunning()
    {
        boolean flag1;
        MtvFile amtvfile[];
        amtvfile = MtvFileManager.getAvailableTVRecFilesEx(false);
        flag1 = false;
        MtvUtilDebug.Low("MtvUiFilePlayer", "onMtvAppLiveBroadcastNotify MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT/MTVAPP_ANDROID_SERVICE_MEDIA_EJECT");
        if(amtvfile != null) goto _L2; else goto _L1
_L1:
        finish();
_L4:
        return;
_L2:
        int i = 0;
_L5:
        boolean flag;
        flag = flag1;
        if(i >= amtvfile.length)
            continue; /* Loop/switch isn't completed */
        MtvFile mtvfile = amtvfile[i];
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT for loop").append(i).toString());
        if(!mtvfile.getFilePath().equals(mMtvFile.getFilePath()))
            break MISSING_BLOCK_LABEL_137;
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT: FILE iS THERE").append(mMtvFile.getFilePath().toString()).toString());
        flag = true;
        if(flag) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvUiFilePlayer", "MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT: FILE NOT THERE FINISHING ");
        finish();
        return;
        i++;
          goto _L5
    }

    protected int getCurrentFileIndex()
    {
        return mMtvFile.getIndex();
    }

    public int getFileFormat()
    {
        if(mMtvFile != null)
            return mMtvFile.getFileFormat();
        else
            return -1;
    }

    public int getFileTotalTime()
    {
        if(mMtvFile != null)
            return mMtvFile.getDurationOfRecording();
        else
            return -1;
    }

    public com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State getPlaybackState()
    {
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext == null)
            return com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        else
            return mMtvAppPlaybackContext.getState().getState();
    }

    public int getPlayerCommand()
    {
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext == null)
            return 20480;
        else
            return mMtvAppPlaybackContext.getState().getOp();
    }

    protected int getTrickMode()
    {
        return mCurrTrickMode;
    }

    protected int getTrickModeSpeed()
    {
        return mCurrTrickSpeed;
    }

    public boolean isBmlFullView()
    {
        if(mBmlSurface != null)
            return mBmlSurface.IsBMLFullView();
        else
            return false;
    }

    protected boolean isInTrickMode()
    {
        return mCurrTrickMode != 0;
    }

    public void onBackPressed()
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "onBackPressed");
        if(fragHandler == null)
            return;
        MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mtvappplaybackcontext != null)
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onBackPressed: currentCmd - ").append(mtvappplaybackcontext.getState().getOp()).append(" Type - ").append(mtvappplaybackcontext.getType()).toString());
        else
            MtvUtilDebug.Low("MtvUiFilePlayer", "mMtvAppPlaybackContext is null");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV && mtvappplaybackcontext.getState().getOp() == 20480)
        {
            mtvappplaybackcontext.getState().unregisterListener(this);
            super.onBackPressed();
            return;
        } else
        {
            Toast.makeText(getApplicationContext(), 0x7f07029b, 0).show();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low("MtvUiFilePlayer", "onCreate...");
        fragHandler = new MtvUiFragHandler(getFragmentManager(), 1, 0x7f0a0031);
        MTvAppPlaybackTimer.getInstance(fragHandler);
        mNotificationManager = (NotificationManager)getSystemService("notification");
        clearNotification();
        if(bundle == null) goto _L2; else goto _L1
_L1:
        Object aobj[];
        isStartedFromMiniMode = bundle.getBoolean("isStartedFromMiniMode");
        aobj = (Object[])(Object[])bundle.getSerializable("tvFilesList");
        if(aobj == null) goto _L4; else goto _L3
_L3:
        mMtvFileList = (MtvFile[])Arrays.copyOf(aobj, aobj.length, [Lcom/samsung/sec/mtv/provider/MtvFile;);
        mMtvFile = mMtvFileList[mMtvFileIndex];
_L6:
        if(mMtvFile.getFileFormat() != 2 && MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTime() >= 0 && !isInTrickMode() && getPlayerCommand() != 20492 && getPlaybackState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 0)
        {
            mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
            mLocalUiMsgHandler.postDelayed(mRunnableHideProgressBarInPortrait, 5000L);
        }
        fragHandler.fillFragHandlerData(bundle);
_L9:
        initViewControl();
        if(bundle != null)
        {
            lockImage.setVisibility(bundle.getInt("lockVisibility"));
            sleepTimer.setVisibility(bundle.getInt("sleeptimer"));
        }
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        mCallStateListener = new CallStateListener();
        ((TelephonyManager)getSystemService("phone")).listen(mCallStateListener, 32);
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
        registerContentObserver();
        return;
_L4:
        mMtvFile = (MtvFile)getIntent().getSerializableExtra("MtvFile");
        mMtvFileList = MtvFileManager.getAvailableTVRecFilesEx(false);
        if(mMtvFileList == null || mMtvFileList.length <= 0) goto _L6; else goto _L5
_L5:
        int i = 0;
_L7:
        if(i < mMtvFileList.length)
        {
label0:
            {
                if(mMtvFile.getCreationTime().compareTo(mMtvFileList[i].getCreationTime()) != 0)
                    break label0;
                mMtvFileIndex = i;
            }
        }
          goto _L6
        i++;
          goto _L7
_L2:
        isStartedFromMiniMode = getIntent().getBooleanExtra("isStartedFromMiniMode", false);
        if(isStartedFromMiniMode)
        {
            i = getIntent().getIntExtra("currentSeekTime", 0);
            if(getPlaybackState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED)
            {
                MTvAppPlaybackTimer.getInstance(fragHandler).updatePlaybackTime(i);
                isPausedInMiniMode = true;
            } else
            {
                MTvAppPlaybackTimer.getInstance(fragHandler).resumePlaybackTimer(i);
            }
        }
        mMtvFile = (MtvFile)getIntent().getSerializableExtra("MtvFile");
        mMtvFileList = MtvFileManager.getAvailableTVRecFilesEx(false);
        if(mMtvFileList == null || mMtvFileList.length <= 0) goto _L9; else goto _L8
_L8:
        i = 0;
_L10:
        if(i < mMtvFileList.length)
        {
label1:
            {
                if(mMtvFile.getCreationTime().compareTo(mMtvFileList[i].getCreationTime()) != 0)
                    break label1;
                mMtvFileIndex = i;
            }
        }
          goto _L9
        i++;
          goto _L10
    }

    protected void onDestroy()
    {
        super.onDestroy();
        MtvUtilDebug.Low("MtvUiFilePlayer", "...onDestroy()");
        mLocalUiMsgHandler.removeCallbacksAndMessages(null);
        ((TelephonyManager)getSystemService("phone")).listen(mCallStateListener, 0);
        if(mMtvPreferences != null)
        {
            mMtvPreferences.setIsFileFormatImage(false);
            if(!mMtvPreferences.getIsFilePlayMiniMode() && isFinishing())
                MTvAppPlaybackTimer.getInstance().stopPlaybackTimer();
        }
        if(isFinishing())
        {
            if(mMtvPreferences != null)
                mMtvPreferences.setIsDtvStartedByFromMiniMode(false);
            mCurrTrickMode = 0;
            mCurrTrickSpeed = 0;
        }
        fragHandler.reset();
        mMtvAppPlaybackContext = null;
        mChannelGestureDetector = null;
        MtvUtilAppService.unbindDrawables(findViewById(0x7f0a001a));
        System.gc();
    }

    public void onFragEvent(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onFragEvent: event[").append(i).append("]").toString());
        i;
        JVM INSTR lookupswitch 25: default 244
    //                   201: 1225
    //                   202: 1174
    //                   203: 1287
    //                   208: 1306
    //                   209: 1343
    //                   214: 268
    //                   217: 494
    //                   218: 544
    //                   219: 581
    //                   220: 447
    //                   221: 355
    //                   222: 1193
    //                   223: 1204
    //                   236: 245
    //                   276: 618
    //                   277: 675
    //                   278: 732
    //                   279: 757
    //                   280: 867
    //                   281: 929
    //                   282: 940
    //                   283: 1028
    //                   284: 1116
    //                   285: 1248
    //                   286: 1275;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26
_L1:
        return;
_L15:
        if(!MtvUtilTvOut.isHDMIPlugged)
        {
            startAppinAppMode();
            return;
        } else
        {
            Toast.makeText(this, 0x7f07020e, 0).show();
            return;
        }
_L7:
        if(fragHandler != null)
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            {
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 5000L, false, new int[] {
                    0x7f0a0032
                });
                addRemoveResetFragments(226, new int[] {
                    6000
                });
                return;
            } else
            {
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                addRemoveResetFragments(226, new int[] {
                    5000
                });
                return;
            }
        continue; /* Loop/switch isn't completed */
_L12:
        if(fragHandler != null)
        {
            if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
            {
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, 6000L);
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 6000L);
            }
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            {
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 5000L, false, new int[] {
                    0x7f0a0032
                });
                return;
            } else
            {
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L11:
        if(fragHandler != null)
        {
            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            addRemoveResetFragments(226, new int[] {
                5000
            });
            return;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        if(fragHandler != null)
        {
            addRemoveResetFragments(226, new int[] {
                6000
            });
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, -1L);
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, -1L);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        if(fragHandler != null)
        {
            addRemoveResetFragments(226, new int[] {
                6000
            });
            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if(fragHandler != null)
        {
            addRemoveResetFragments(226, new int[] {
                6000
            });
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 5000L);
            return;
        }
        if(true) goto _L1; else goto _L16
_L16:
        if(mCurrTrickMode != 0)
        {
            mCurrTrickMode = 0;
            mCurrTrickSpeed = 0;
            if(fragHandler != null)
                fragHandler.onUpdate(120, Integer.valueOf(mCurrTrickSpeed), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
        }
        MTvAppPlaybackTimer.getInstance().stopPlaybackTimer();
        mLocalUiMsgHandler.sendEmptyMessage(402);
        return;
_L17:
        if(mCurrTrickMode != 0)
        {
            mCurrTrickMode = 0;
            mCurrTrickSpeed = 0;
            if(fragHandler != null)
                fragHandler.onUpdate(120, Integer.valueOf(mCurrTrickSpeed), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
        }
        MTvAppPlaybackTimer.getInstance().stopPlaybackTimer();
        mLocalUiMsgHandler.sendEmptyMessage(403);
        return;
_L18:
        if(mCurrTrickMode == 0)
        {
            mMtvPlayerOneSeg.pause(mMtvAppPlaybackContext);
            showControl();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L19:
        if(mMtvAudMgr == null || !mMtvAudMgr.checkIsCalling())
        {
            mMtvAudMgr.setVolumeLevel(mMtvAudMgr.getCurrentVolume());
            mMtvPlayerOneSeg.resume(mMtvAppPlaybackContext);
            if(mMtvAudMgr != null && !mMtvAudMgr.checkIsCalling())
                mMtvAudMgr.stopOtherSound();
            showControl();
            if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 0)
            {
                mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
                mLocalUiMsgHandler.postDelayed(mRunnableHideProgressBarInPortrait, 5000L);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L20:
        if(mMtvPlayerOneSeg.reposition(mMtvAppPlaybackContext, ((Integer)obj).intValue() * 1000))
        {
            if(20492 == mMtvAppPlaybackContext.getState().getOp())
                MTvAppPlaybackTimer.getInstance().pausePlaybackTimer();
            MtvUtilDebug.Low("MtvUiFilePlayer", "Clear caption in case seek start");
            clearCaptionView();
            return;
        }
        if(true) goto _L1; else goto _L21
_L21:
        addRemoveResetFragments(226, new int[0]);
        return;
_L22:
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("Starting trick mode FF: ").append(mCurrTrickSpeed).toString());
        updateTrickParams(2);
        addRemoveResetFragments(226, new int[0]);
        clearCaptionView();
        MtvAppPlayerOneSeg.getInstance().trickmode(MtvAppPlaybackContextManager.getInstance().getCurrentContext(), mCurrTrickMode, mCurrTrickSpeed, MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTimeInMillis());
        MTvAppPlaybackTimer.getInstance().pausePlaybackTimer();
        mMtvAudMgr.setAudioMute(true);
        return;
_L23:
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("Starting trick mode REW: ").append(mCurrTrickSpeed).toString());
        updateTrickParams(3);
        addRemoveResetFragments(226, new int[0]);
        clearCaptionView();
        MtvAppPlayerOneSeg.getInstance().trickmode(MtvAppPlaybackContextManager.getInstance().getCurrentContext(), mCurrTrickMode, mCurrTrickSpeed, MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTimeInMillis());
        MTvAppPlaybackTimer.getInstance().pausePlaybackTimer();
        mMtvAudMgr.setAudioMute(true);
        return;
_L24:
        mCurrTrickMode = 0;
        mCurrTrickSpeed = 0;
        fragHandler.onUpdate(120, Integer.valueOf(mCurrTrickSpeed), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
        MtvAppPlayerOneSeg.getInstance().trickmode(MtvAppPlaybackContextManager.getInstance().getCurrentContext(), 0, 0, MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTimeInMillis());
        mMtvAudMgr.setAudioMute(false);
        return;
_L3:
        if(mBmlSurface != null)
            mBmlSurface.updateBMLSurfaceView();
        updateCaptions();
        return;
_L13:
        fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        return;
_L14:
        if(mMtvPreferences.getAutoPowerOffTime() > 0)
        {
            addRemoveResetFragments(225, new int[0]);
            return;
        }
        if(true)
            continue; /* Loop/switch isn't completed */
_L2:
        mLocalUiMsgHandler.sendMessage(mLocalUiMsgHandler.obtainMessage(414, (Integer)obj));
        return;
_L25:
        mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
        mLocalUiMsgHandler.postDelayed(mRunnableHideProgressBarInPortrait, 5000L);
        return;
_L26:
        mLocalUiMsgHandler.removeCallbacks(mRunnableHideProgressBarInPortrait);
        return;
_L4:
        mLocalUiMsgHandler.sendMessage(mLocalUiMsgHandler.obtainMessage(413));
        return;
_L5:
        if(fragHandler != null)
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "sending unupdate for 51ch");
            fragHandler.onUpdate(127, Integer.valueOf(mMtvFile.getFileFormat()), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if(obj instanceof Boolean)
            if(((Boolean)obj).booleanValue())
            {
                addRemoveResetFragments(226, new int[] {
                    -1
                });
                return;
            } else
            {
                addRemoveResetFragments(226, new int[0]);
                return;
            }
        if(true) goto _L1; else goto _L27
_L27:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiFilePlayer", "onKeyDown");
        if(!isPhoneLocked() || i == 26 || i == 24 || i == 25) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiFilePlayer", "Locked Key not supported");
_L4:
        return true;
_L2:
        if(i == 25 || i == 24)
            if(2 == mMtvFile.getFileFormat())
            {
                if(i == 25)
                {
                    mMtvAudMgr.volumeDown();
                    return true;
                } else
                {
                    mMtvAudMgr.volumeUp();
                    return true;
                }
            } else
            {
                startVolumeControlBar();
                keyevent.startTracking();
                return true;
            }
        if(i != 79 && i != 85 && i != 126 && i != 127)
            break; /* Loop/switch isn't completed */
        keyevent = getPlaybackState();
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == keyevent)
        {
            onFragEvent(278, null);
            return true;
        }
        if(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED == keyevent)
        {
            onFragEvent(279, null);
            return true;
        }
        if(true) goto _L4; else goto _L3
_L3:
        if(i != 87 && i != 88)
            break; /* Loop/switch isn't completed */
        if(mMtvPreferences.getAutoPlayNext())
        {
            if(getFileFormat() == 2 || isPrevNextEnabled())
                if(i == 87)
                {
                    onFragEvent(276, null);
                    return true;
                } else
                {
                    onFragEvent(277, null);
                    return true;
                }
        } else
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "AutoPlayNext is FALSE");
            finish();
            return true;
        }
        if(true) goto _L4; else goto _L5
_L5:
        if(i == 89 || i == 90)
        {
            if(getPlaybackState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && fragHandler != null)
            {
                fragHandler.onUpdate(116, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
                if(90 == i)
                {
                    onFragEvent(282, null);
                    return true;
                } else
                {
                    onFragEvent(283, null);
                    return true;
                }
            }
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
        if(true) goto _L4; else goto _L6
_L6:
    }

    public boolean onKeyLongPress(int i, KeyEvent keyevent)
    {
        if(i == 24)
        {
            mLocalUiMsgHandler.postDelayed(runnableVolumeEscalating, 10L);
            return true;
        }
        if(i == 25)
        {
            mLocalUiMsgHandler.postDelayed(runnableVolumeDecreasing, 10L);
            return true;
        } else
        {
            return super.onKeyLongPress(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiFilePlayer", "onKeyUp");
        if(fragHandler == null)
            return true;
        if(isPhoneLocked() && i != 26 && i != 24 && i != 25)
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "Locked Key not supported");
            return true;
        }
        if(i == 26 && !keyevent.isLongPress() && isResumed())
        {
            if(!isPhoneLocked())
            {
                MtvUtilDebug.Low("MtvUiFilePlayer", "onKeyUp, adding touch lock fragment");
                setPhoneLocked(true);
                fragHandler.hideAllFragments();
                mLocalUiMsgHandler.post(mRunnableUpdateFragsBasedOnLockState);
                setRotateButtonVisibility(false, new int[0]);
                requestSystemKeyEvent(3, true);
                requestSystemKeyEvent(187, true);
            } else
            {
                MtvUtilDebug.Low("MtvUiFilePlayer", "onKeyUp, removing touch lock fragment");
                handleUnlock();
            }
            return true;
        }
        if(i == 24 || i == 25)
        {
            if(2 != mMtvFile.getFileFormat())
                if(i == 24)
                {
                    mLocalUiMsgHandler.removeCallbacks(runnableVolumeEscalating);
                    fragHandler.onUpdate(106, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                } else
                {
                    mLocalUiMsgHandler.removeCallbacks(runnableVolumeDecreasing);
                    fragHandler.onUpdate(107, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                }
            return true;
        }
        if(i == 82)
        {
            i = mMtvFile.getFileFormat();
            int j = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
            if(2 == i)
            {
                if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                {
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L, false, new int[0]);
                    mLocalUiMsgHandler.sendEmptyMessage(401);
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, 5000L, false, new int[0]);
                    mLocalUiMsgHandler.postDelayed(runnableMenuKeyPress, 100L);
                } else
                {
                    fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_IMG, 5000L);
                    if(!mBmlSurface.IsBMLFullView())
                        fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L);
                    fragHandler.onUpdate(129, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                }
            } else
            if(j == 1)
            {
                if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                {
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L, false, new int[0]);
                    mLocalUiMsgHandler.sendEmptyMessage(401);
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, 5000L, false, new int[0]);
                    mLocalUiMsgHandler.postDelayed(runnableMenuKeyPress, 100L);
                } else
                {
                    fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID, 5000L);
                    fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L);
                    fragHandler.onUpdate(129, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                }
            } else
            {
                fragHandler.onUpdate(129, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            }
            return true;
        } else
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "Super called for key");
            return super.onKeyUp(i, keyevent);
        }
    }

    public void onMtvAppFinishNotify(Object obj)
    {
        mLocalUiMsgHandler.removeCallbacks(null);
        mLocalUiMsgHandler.removeCallbacksAndMessages(null);
        finish();
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify called: what=").append(i).toString());
        i;
        JVM INSTR lookupswitch 5: default 76
    //                   4: 92
    //                   6: 92
    //                   17: 83
    //                   19: 97
    //                   26: 180;
           goto _L1 _L2 _L2 _L3 _L4 _L5
_L1:
        super.onMtvAppLiveBroadcastNotify(i, obj);
_L7:
        return;
_L3:
        MtvUtilDebug.Low("MtvUiFilePlayer", "onMtvAppLiveBroadcastNotify: MTVAPP_ANDROID_SERVICE_ANTENNA_CLOSED called");
        return;
_L2:
        finish();
        return;
_L4:
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext == null || mMtvFile.getFileFormat() == 2) goto _L7; else goto _L6
_L6:
        MtvUtilAppService.setPreferredOrientation(1);
        if(isInTrickMode())
            onFragEvent(284, null);
        mMtvPreferences.setSViewRunning(true);
        obj = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover);
        ((Intent) (obj)).addFlags(0x4000000);
        startActivity(((Intent) (obj)));
        return;
_L5:
        mMtvAudMgr.setAudioMute(true);
        onFragEvent(278, null);
        return;
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 8 14: default 48
    //                   8 190
    //                   9 84
    //                   10 68
    //                   11 59
    //                   12 50
    //                   13 48
    //                   14 166;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L1 _L7
_L1:
        return true;
_L6:
        mMtvAudMgr.transferToPhone();
        return true;
_L5:
        mMtvAudMgr.transferToBT();
        return true;
_L4:
        if(mBmlSurface != null)
        {
            mBmlSurface.openBMLHomePage();
            return true;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if(mBmlSurface != null)
            if(!mBmlSurface.IsBMLFullView())
            {
                setBMLLayoutFullView(true);
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                {
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, -1L, false, new int[0]);
                    mLocalUiMsgHandler.sendEmptyMessage(401);
                    return true;
                }
            } else
            {
                setBMLLayoutFullView(false);
                return true;
            }
        if(true) goto _L1; else goto _L7
_L7:
        if(mBmlSurface != null)
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            setBMLLayoutFullView(false);
            return true;
        }
        if(true) goto _L1; else goto _L2
_L2:
        MtvUiSettingsDialogFrag.newInstance(new Bundle()).show(getFragmentManager(), "MtvUiSettingsDialogFrag");
        return true;
    }

    public void onOptionsMenuClosed(Menu menu)
    {
        super.onOptionsMenuClosed(menu);
    }

    protected void onPause()
    {
        if(mMtvFile != null)
        {
            if(mBmlSurface != null)
                mBmlSurface.onPause();
            if(!mMtvPreferences.getIsFilePlayMiniMode())
                registerVideoSurfaceView(false);
        }
        if(!MtvUtilAppService.isAppOnForeground(getApplicationContext()))
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onPause() :getPlaybackState = ").append(getPlaybackState()).toString());
            if(!isFinishing() && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == getPlaybackState())
                onFragEvent(278, null);
        }
        if(isFinishing() && MtvUtilAppService.isAppExiting() && mMtvPreferences.getIsDtvStartedByFromMiniMode())
            MtvAppPlayerOneSeg.getInstance().delete(MtvAppPlaybackContextManager.getInstance().getCurrentContext());
        if(isFinishing())
            mMtvPreferences.setIsDtvStartedByFromMiniMode(false);
        super.onPause();
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onPlayerNotification ...:command : ").append(i).append(" status : ").append(j).toString());
        i;
        JVM INSTR tableswitch 20482 20492: default 96
    //                   20482 97
    //                   20483 442
    //                   20484 176
    //                   20485 96
    //                   20486 96
    //                   20487 96
    //                   20488 96
    //                   20489 417
    //                   20490 392
    //                   20491 613
    //                   20492 552;
           goto _L1 _L2 _L3 _L4 _L1 _L1 _L1 _L1 _L5 _L6 _L7 _L8
_L1:
        return;
_L2:
        if(MtvFeatures.isHoverEnabled())
        {
            loadNextFileHover();
            loadPrevFileHover();
            if(fragHandler != null)
                fragHandler.onUpdate(237, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_ALL);
        }
        if(24577 == j)
        {
            mGenericMsgHAndler.sendMessageAtFrontOfQueue(mLocalUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            return;
        }
        if(24580 == j)
        {
            finish();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(24581 != j)
            break; /* Loop/switch isn't completed */
        runOnUiThread(new Runnable() );
        runOnUiThread(new Runnable() );
        mLocalUiMsgHandler.sendEmptyMessage(404);
        MTvAppPlaybackTimer.getInstance().startPlaybackTimer();
        mGenericMsgHAndler.sendMessage(mLocalUiMsgHandler.obtainMessage(301, null));
        runOnUiThread(new Runnable() {

            public void run()
            {
                if(!MtvUtilAppService.isAppOnForeground(getApplicationContext()))
                    onFragEvent(278, null);
            }

            final MtvUiFilePlayer this$0;

            
            {
                this$0 = MtvUiFilePlayer.this;
                super();
            }
        }
);
        if(mMtvAudMgr != null)
        {
            mMtvAudMgr.stopOtherSound();
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
            mMtvAppPlaybackContext.getComponents().getAudio().enable();
            mMtvAudMgr.updateCurrentAudioEffectAndMode();
            return;
        }
        if(true) goto _L1; else goto _L9
_L9:
        if(24592 == j)
        {
            runOnUiThread(new Runnable() );
            return;
        }
        if(24580 == j)
        {
            finish();
            return;
        }
        if(24593 == j)
        {
            MtvUtilDebug.Error("MtvUiFilePlayer", "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!");
            if(!MtvUtilDebug.isReleaseMode())
            {
                Toast toast = Toast.makeText(this, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - ", 1);
                toast.setGravity(119, 0, 0);
                toast.show();
            }
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if(24581 == j)
        {
            MTvAppPlaybackTimer.getInstance().resumePlaybackTimer();
            mLocalUiMsgHandler.sendEmptyMessage(404);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        if(24581 == j)
        {
            MTvAppPlaybackTimer.getInstance().pausePlaybackTimer();
            mLocalUiMsgHandler.sendEmptyMessage(404);
            return;
        }
        if(true) goto _L1; else goto _L3
_L3:
        if(j == 24589)
        {
            mLocalUiMsgHandler.sendMessage(mLocalUiMsgHandler.obtainMessage(409, null));
            return;
        }
        if(j == 24590)
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "IMtvAppPlayerOneSeg.STAT_TIME_UPDT");
            return;
        }
        if(j == 24599)
        {
            Intent intent = new Intent();
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onPlayerNotification: STAT_DEL_FILE -> result: ").append(k).toString());
            intent.putExtra("deleteTVFileConfirmation", true);
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED");
            sendBroadcast(intent);
            return;
        }
        if(true)
            continue; /* Loop/switch isn't completed */
_L8:
        if(j == 24577)
        {
            runOnUiThread(new Runnable() );
            return;
        }
        if(j == 24581)
        {
            if(k >= 0)
                MTvAppPlaybackTimer.getInstance().resumePlaybackTimer(Integer.valueOf(k).intValue() / 1000);
            runOnUiThread(new Runnable() );
            return;
        }
        if(true) goto _L1; else goto _L7
_L7:
        switch(j)
        {
        case 24579: 
        case 24580: 
        default:
            return;

        case 24577: 
            mLocalUiMsgHandler.sendEmptyMessage(404);
            runOnUiThread(new Runnable() );
            return;

        case 24578: 
            if(k >= 0)
            {
                Integer integer = Integer.valueOf(k);
                MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("SEEK_PROGRESS time = ").append(integer).toString());
                MTvAppPlaybackTimer.getInstance().updatePlayBackTimeInMillis(integer.intValue());
                if(isStartOfClip(integer.intValue()))
                {
                    runOnUiThread(new Runnable() {

                        public void run()
                        {
                            onFragEvent(277, null);
                        }

                        final MtvUiFilePlayer this$0;

            
            {
                this$0 = MtvUiFilePlayer.this;
                super();
            }
                    }
);
                    return;
                }
            }
            break;

        case 24581: 
            mLocalUiMsgHandler.sendEmptyMessage(404);
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("SEEK_COMPLETED time = ").append(k).toString());
            if(isPauseTrickMode)
            {
                onFragEvent(278, null);
                return;
            } else
            {
                MTvAppPlaybackTimer.getInstance().resumePlaybackTimer(k / 1000);
                return;
            }
        }
        if(true) goto _L1; else goto _L10
_L10:
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        int i;
        boolean flag;
        boolean flag1;
        if(mMtvAppPlaybackContext != null && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == mMtvAppPlaybackContext.getState().getState() && 20480 == mMtvAppPlaybackContext.getState().getOp())
            flag = true;
        else
            flag = false;
        flag1 = isBmlFullView();
        i = mMtvFile.getFileFormat();
        menu.clear();
        if(i == 2 || i != 2 && !flag1)
            menu.add(0, 8, 0, 0x7f0702dc).setIcon(0x7f0200b6);
        if(i != 2)
        {
            if(!mMtvAudMgr.isHeadsetConnected())
                if(mMtvAudMgr.isBTConnected())
                    menu.add(0, 12, 0, 0x7f0702f8).setIcon(0x7f0200b9);
                else
                    menu.add(0, 11, 0, 0x7f0701d9).setIcon(0x7f0200b9);
            if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 0 || IsBMLFullView)
            {
                if(!IsBMLFullView)
                    menu.add(0, 9, 0, 0x7f07025a).setIcon(0x7f0200ac).setEnabled(flag);
                else
                    menu.add(0, 14, 0, 0x7f070305).setIcon(0x7f0200ad);
                menu.add(0, 10, 0, 0x7f0701f1).setIcon(0x7f0200b8);
            }
        }
        return onPrepareOptionsMenu(menu);
    }

    protected void onResume()
    {
        onResume();
        MtvUtilDebug.Low("MtvUiFilePlayer", "onResume...");
        sendBroadcast((new Intent("intent.stop.app-in-app")).putExtra("stopFromDtv", true));
        fragHandler.setEnabled(true);
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        if(MtvUtilAppService.isAppExiting())
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", "isExiting...");
            finish();
        } else
        {
            if(mMtvPreferences.getIsFilePlayMiniMode())
            {
                ComponentName componentname = new ComponentName(this, com/samsung/sec/mtv/ui/minitv/MtvMiniModeService);
                stopService((new Intent("com.samsung.action.MINI_MODE_SERVICE")).setComponent(componentname));
                mMtvPreferences.setIsFilePlayMiniMode(false);
                mMtvPreferences.setIsDtvStartedByFromMiniMode(true);
            }
            isPauseTrickMode = false;
            initMtvFilePlayer();
            if(mBmlSurface != null && mBmlSurface.IsBMLFullView())
                mVideoSurfaceView.setVisibility(4);
            MTvAppPlaybackTimer.getInstance().resumePlaybackTimer();
            if(mMtvFile != null && mBmlSurface != null)
                mBmlSurface.onResume(mMtvAppPlaybackContext);
            showControl();
            if(mMtvPreferences.getAutoPowerOffTime() > 0)
            {
                sleepTimer.setVisibility(0);
                mLocalUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
                mLocalUiMsgHandler.postDelayed(RunnableRemoveSleepTimerIcon, 5000L);
            }
            mLocalUiMsgHandler.post(mRunnableUpdateFragsBasedOnLockState);
            requestSystemKeyEvent(26, true);
            if(mMtvAudMgr != null)
            {
                mMtvAudMgr.stopOtherSound();
                mMtvAudMgr.setAvStreaming(true);
                return;
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiFilePlayer", "onSaveInstanceState");
        fragHandler.setEnabled(false);
        if(!isFinishing())
        {
            fragHandler.putFragHandlerData(bundle);
            bundle.putInt("lockVisibility", lockImage.getVisibility());
            bundle.putInt("sleeptimer", sleepTimer.getVisibility());
            bundle.putInt("fileIndex", mMtvFileIndex);
            bundle.putSerializable("tvFilesList", mMtvFileList);
            bundle.putBoolean("isStartedFromMiniMode", isStartedFromMiniMode);
        }
        onSaveInstanceState(bundle);
    }

    protected void onStart()
    {
        onStart();
        if(mMtvFile != null && mBmlSurface != null)
            mBmlSurface.onStart(fragHandler);
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    protected void onStop()
    {
        onStop();
        if(mMtvFile != null && mBmlSurface != null)
            mBmlSurface.onStop();
        if(!MtvUtilAppService.isAppOnForeground(getApplicationContext()) || MtvUtilAppService.isActivityOnForeground(getApplicationContext(), "MtvUiSettingsBroadcast"))
        {
            MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("onPause() :getPlaybackState = ").append(getPlaybackState()).toString());
            if(!isFinishing() && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == getPlaybackState() && isInTrickMode())
            {
                mCurrTrickMode = 0;
                mCurrTrickSpeed = 0;
                fragHandler.onUpdate(120, Integer.valueOf(mCurrTrickSpeed), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
                MtvAppPlayerOneSeg.getInstance().trickmode(MtvAppPlaybackContextManager.getInstance().getCurrentContext(), 0, 0, MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTimeInMillis());
                isPauseTrickMode = true;
            } else
            if(!isFinishing() && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == getPlaybackState())
            {
                onFragEvent(278, null);
                return;
            }
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        while(mBmlSurface.IsBMLFullView() || !mChannelGestureDetector.onTouchEvent(motionevent)) 
            return false;
        return true;
    }

    public void onWindowFocusChanged(boolean flag)
    {
        if(flag)
        {
            requestSystemKeyEvent(26, true);
            if(fragHandler != null)
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            return;
        } else
        {
            requestSystemKeyEvent(26, false);
            return;
        }
    }

    protected void registerVideoSurfaceView(boolean flag)
    {
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getComponents().getVideo().enable();
            IMtvOneSegVideoControl imtvonesegvideocontrol = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
            if(imtvonesegvideocontrol != null)
                imtvonesegvideocontrol.registerSurface(getLocalVideoSurfaceView(flag));
        }
    }

    public void setBMLLayoutFullView(boolean flag)
    {
        View view = findViewById(0x7f0a0026);
        if(view != null && mBmlSurface != null)
            if(flag)
            {
                fragHandler.onUpdate(118, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
                view.setVisibility(8);
                mCaptionView.setVisibility(8);
                mBmlSurface.setBMLFullView(true);
                setRequestedOrientation(1);
                mBmlSurface.setKeepScreenOn(true);
                registerVideoSurfaceView(false);
                setRotateButtonVisibility(false, new int[0]);
                IsBMLFullView = true;
                if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID))
                    fragHandler.onUpdate(238, Boolean.valueOf(false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
            } else
            {
                fragHandler.onUpdate(119, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
                if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isPhoneLocked())
                {
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 5000L, false, new int[0]);
                    mLocalUiMsgHandler.sendEmptyMessage(401);
                }
                view.setVisibility(0);
                mBmlSurface.setBMLFullView(false);
                requestOrientation(MtvUtilAppService.preferred_orientation);
                if(!mMtvPreferences.getIsFilePlayMiniMode())
                {
                    mBmlSurface.setKeepScreenOn(false);
                    registerVideoSurfaceView(true);
                }
                if(mMtvPreferences.isCaptionEnabled())
                {
                    mCaptionView.setVisibility(0);
                    setCaptionText();
                }
                setRotateButtonVisibility(true, new int[0]);
                IsBMLFullView = false;
                if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID))
                {
                    fragHandler.onUpdate(238, Boolean.valueOf(true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
                    return;
                }
            }
    }

    public void startAppinAppMode()
    {
        Object obj = new ComponentName(this, com/samsung/sec/mtv/ui/minitv/MtvMiniModeService);
        obj = (new Intent("com.samsung.action.MINI_MODE_SERVICE")).setComponent(((ComponentName) (obj)));
        ((Intent) (obj)).putExtra("class", "MtvUiFilePlayer");
        ((Intent) (obj)).putExtra("currentSeekTime", MTvAppPlaybackTimer.getInstance().getCurrentPlayBackTime());
        ((Intent) (obj)).putExtra("selectedFileIndex", mMtvFileIndex);
        MtvUtilDebug.Low("MtvUiFilePlayer", (new StringBuilder()).append("startAppinAppMode file index:").append(mMtvFileIndex).toString());
        mMtvPreferences.setIsFilePlayMiniMode(true);
        registerVideoSurfaceView(false);
        ((Intent) (obj)).putExtra("window.pos.x", 60);
        ((Intent) (obj)).putExtra("window.pos.y", 60);
        ((Intent) (obj)).addFlags(8192);
        startService(((Intent) (obj)));
        mBmlSurface.resetBMLTvView();
        MTvAppPlaybackTimer.getInstance().pausePlaybackTimer();
        finish();
    }

    public static final String FILE_INDEX = "fileIndex";
    public static final String FILE_UPDATE_TIME = "fileUpdateTime";
    public static final int FLING_MAJOR_MOVE = 100;
    private static final String IS_STARTED_FROM_MINI_MODE = "isStartedFromMiniMode";
    private static final String TAG = "MtvUiFilePlayer";
    private static final int TIMEOUT_EXTRA_INTERVAL_VALUE = 1000;
    private static final int TIMEOUT_INTERVAL_VALUE = 5000;
    public static final String TV_FILES_LIST = "tvFilesList";
    private static int mCurrTrickMode = 0;
    private static int mCurrTrickSpeed = 0;
    public static MtvFile mMtvFile = null;
    private static int mMtvFileIndex = 0;
    private static NotificationManager mNotificationManager = null;
    private boolean IsBMLFullView;
    private Runnable RunnableRemoveRotateButton;
    private Runnable RunnableRemoveSleepTimerIcon;
    private boolean isPauseTrickMode;
    private boolean isPausedInMiniMode;
    private boolean isStartedFromMiniMode;
    private CallStateListener mCallStateListener;
    private GestureDetector mChannelGestureDetector;
    private ImageView mImage;
    private AbsoluteLayout mImgViewerScreen;
    private Handler mLocalUiMsgHandler;
    private MtvUtilAudioManager mMtvAudMgr;
    private MtvFile mMtvFileList[];
    private ContentObserver mRotationObserver;
    private Runnable mRunnableHideProgressBarInPortrait;
    private Runnable mRunnableUpdateFragsBasedOnLockState;
    private AbsoluteLayout mVidViewerScreen;
    RelativeLayout rotateLayout1;
    RelativeLayout rotateLayout2;
    private Runnable runnableMenuKeyPress;
    private Runnable runnableVolumeDecreasing;
    private Runnable runnableVolumeEscalating;








































































    // Unreferenced inner class com/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$1

/* anonymous class */
    class MTvAppPlaybackTimer._cls1 extends Handler
    {

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR tableswitch 406 406: default 24
        //                       406 25;
               goto _L1 _L2
_L1:
            return;
_L2:
            if(mFragHandler != null)
            {
                mFragHandler.onUpdate(406, Integer.valueOf(mPlaybackTime), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_FP_MAIN_VID);
                return;
            }
            if(true) goto _L1; else goto _L3
_L3:
        }

        final MTvAppPlaybackTimer this$0;

            
            {
                this$0 = MTvAppPlaybackTimer.this;
                super();
            }
    }


    // Unreferenced inner class com/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2

/* anonymous class */
    class MTvAppPlaybackTimer._cls2
        implements Runnable
    {

        public void run()
        {
            if(mPlaybackTime == -1)
                MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer:: Playback Timer is reset...Exiting Counter...");
            else
            if(MtvUiFilePlayer.mCurrTrickMode == 0)
            {
                MtvAppPlaybackContext mtvappplaybackcontext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                if(mtvappplaybackcontext != null)
                {
                    long l = MtvAppPlayerOneSeg.getInstance().getPlaybackTime(mtvappplaybackcontext);
                    MtvUtilDebug.High("MtvAppPlaybackTimer", (new StringBuilder()).append(" PlayTIme = ").append(l).toString());
                    if(l != 0x79999999L)
                    {
                        l = Math.round((double)l / 1000D);
                        if(!isStopped)
                        {
                            MtvUtilDebug.Low("MtvAppPlaybackTimer", "MtvAppPlaybackTimer:: updating playback time...");
                            mPlaybackTime = (int)l;
                            mPlaybackHandler.sendMessage(mPlaybackHandler.obtainMessage(406));
                        } else
                        {
                            MtvUtilDebug.High("MtvAppPlaybackTimer", "Cannot update playbck time as Already in Stopped State !");
                        }
                    }
                }
                mPlaybackHandler.postDelayed(this, 500L);
                return;
            }
        }

        final MTvAppPlaybackTimer this$0;

            
            {
                this$0 = MTvAppPlaybackTimer.this;
                super();
            }
    }

}
