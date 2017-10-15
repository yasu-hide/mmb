// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.minitv;

import android.app.*;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.content.res.Configuration;
import android.graphics.Point;
import android.media.MediaRouter;
import android.os.*;
import android.view.*;
import android.widget.*;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.MtvFile;
import com.samsung.sec.mtv.provider.MtvFileManager;
import com.samsung.sec.mtv.reciever.MtvBroadcastReceiver;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastReciever;
import com.samsung.sec.mtv.ui.conflict.MtvConflictHandler;
import com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer;
import com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover;
import com.samsung.sec.mtv.utility.*;
import com.sec.android.app.minimode.MiniModeService;
import com.sec.android.hardware.SecHardwareInterface;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;

// Referenced classes of package com.samsung.sec.mtv.ui.minitv:
//            MtvUiMiniModeSurface

public class MtvMiniModeService extends MiniModeService
    implements IMtvAppPlaybackStateListener
{
    class OnExitTouchListener extends com.sec.android.app.minimode.MiniModeService.TouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            onTouch(view, motionevent);
            motionevent.getAction();
            JVM INSTR tableswitch 0 1: default 32
        //                       0 34
        //                       1 44;
               goto _L1 _L2 _L3
_L1:
            return true;
_L2:
            MtvUtilDebug.Low("MtvMiniModeService", "EXIT BUTTON : ACTION_DOWN");
            continue; /* Loop/switch isn't completed */
_L3:
            MtvUtilDebug.Low("MtvMiniModeService", "EXIT BUTTON : ACTION_UP");
            if(mExitLayout != null)
                mExitLayout.setVisibility(8);
            closeOneseg(0x7f07027e);
            if(true) goto _L1; else goto _L4
_L4:
        }

        final MtvMiniModeService this$0;

        OnExitTouchListener()
        {
            this$0 = MtvMiniModeService.this;
            TouchListener(MtvMiniModeService.this);
        }
    }

    private class ScaleListener extends android.view.ScaleGestureDetector.SimpleOnScaleGestureListener
    {

        private void resizeSurface(float f)
        {
            f = currentScale * f;
            float f1 = Math.max(MtvMiniModeService.minScale, Math.min(f, MtvMiniModeService.maxScale));
            MtvMiniModeService.scaledWidth = (int)((float)MtvMiniModeService.defaultSurfaceWidth * f1);
            MtvMiniModeService.scaledHeight = (int)((float)MtvMiniModeService.defaultSurfaceHeight * f1);
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("tempScale:").append(f1).append(" tempScaleFactor:").append(f).toString());
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("surface width:").append(mMiniTvSurface.getWidth()).append(" surfaceHeight:").append(mMiniTvSurface.getHeight()).toString());
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("Default width:").append(MtvMiniModeService.defaultSurfaceWidth).append(" surfaceHeight:").append(MtvMiniModeService.defaultSurfaceHeight).toString());
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("scaledWidth").append(MtvMiniModeService.scaledWidth).append(" scaledHeight:").append(MtvMiniModeService.scaledHeight).toString());
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("pivotX:").append(mMiniTvSurface.getPivotX()).append("pivotY").append(mMiniTvSurface.getPivotY()).toString());
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("After Resize width:").append(MtvMiniModeService.scaledWidth).append(" surfaceHeight:").append(MtvMiniModeService.scaledHeight).toString());
            android.view.WindowManager.LayoutParams layoutparams;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            if(MtvMiniModeService.scaledWidth < MtvMiniModeService.defaultSurfaceWidth || MtvMiniModeService.scaledHeight < MtvMiniModeService.defaultSurfaceHeight)
            {
                MtvUtilDebug.Low("MtvMiniModeService", "Can't Decrease size below default values, So resetting to deafult again.!");
                MtvMiniModeService.scaledWidth = MtvMiniModeService.defaultSurfaceWidth;
                MtvMiniModeService.scaledHeight = MtvMiniModeService.defaultSurfaceHeight;
            } else
            {
                MtvUtilDebug.Low("MtvMiniModeService", "Good with new size. You can render!");
            }
            layoutparams = getAttributes();
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("Before changing attributes lp.x[").append(layoutparams.x).append("] lp.y[").append(layoutparams.y).append("] lp.width[").append(layoutparams.width).append("] lp.height[").append(layoutparams.height).append("]").toString());
            layoutparams.x = MtvMiniModeService.pivotX;
            layoutparams.y = MtvMiniModeService.pivotY;
            layoutparams.width = MtvMiniModeService.scaledWidth;
            layoutparams.height = MtvMiniModeService.scaledHeight;
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("new attributes for surface lp.x[").append(layoutparams.x).append("] lp.y[").append(layoutparams.y).append("] lp.width[").append(layoutparams.width).append("] lp.height[").append(layoutparams.height).append("]").toString());
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(MtvMiniModeService.scaledWidth, MtvMiniModeService.scaledHeight);
            mMiniTvSurface.setLayoutParams(layoutparams1);
            setAttributes(layoutparams);
        }

        public boolean onScale(ScaleGestureDetector scalegesturedetector)
        {
            mScaleFactor = scalegesturedetector.getScaleFactor();
            if(mScaleFactor > 1.0F)
                scalegesturedetector = ((resizeSurface) (this)).resizeSurface * scalegesturedetector;
            else
                scalegesturedetector = ((resizeSurface) (this)).resizeSurface / scalegesturedetector;
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onScale() getScaleFactor ").append(mScaleFactor).toString());
            resizeSurface(mScaleFactor);
            return super.onScale(scalegesturedetector);
        }

        public boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
        {
            isScaling = true;
            if(mExitLayout.getVisibility() == 0)
            {
                prevExitVisible = true;
                mHandler.removeMessages(12);
                mExitLayout.setVisibility(8);
            }
            android.view.WindowManager.LayoutParams layoutparams = getAttributes();
            MtvMiniModeService.pivotX = layoutparams.x;
            MtvMiniModeService.pivotY = layoutparams.y;
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onScaleBegin pivotX:").append(MtvMiniModeService.pivotX).append(" pivotY:").append(MtvMiniModeService.pivotY).toString());
            return super.onScaleBegin(scalegesturedetector);
        }

        public void onScaleEnd(ScaleGestureDetector scalegesturedetector)
        {
            float f = scalegesturedetector.getScaleFactor();
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onScaleEnd endScaleFactor:").append(f).toString());
            f = currentScale * f;
            currentScale = Math.max(MtvMiniModeService.minScale, Math.min(f, MtvMiniModeService.maxScale));
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onScaleEnd tempScaleFactor:").append(f).append(" currentScale:").append(currentScale).toString());
            if(prevExitVisible)
            {
                prevExitVisible = false;
                mExitLayout.setVisibility(0);
                mHandler.sendMessageDelayed(mHandler.obtainMessage(12), 3000L);
            }
            super.onScaleEnd(scalegesturedetector);
        }

        final MtvMiniModeService this$0;

        private ScaleListener()
        {
            this$0 = MtvMiniModeService.this;
            SimpleOnScaleGestureListener();
        }

    }

    private final class SimpleGestureListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        public boolean onDoubleTap(MotionEvent motionevent)
        {
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append(" onDoubleTap isAppExiting ").append(isAppExiting).append(" ignoreDoubleTap ").append(ignoreDoubleTap).toString());
            if(isAppExiting || ignoreDoubleTap)
            {
                Toast.makeText(mContext, 0x7f07029a, 0).show();
            } else
            {
                motionevent = mMtvAppPlaybackContext.getState().getState();
                if(checkIsCalling(mContext))
                {
                    Toast.makeText(mContext, 0x7f070306, 0).show();
                    return true;
                }
                if(motionevent == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || motionevent == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED)
                {
                    mHandler.removeMessages(11);
                    if(mExitLayout != null)
                        mExitLayout.setVisibility(8);
                    switchToNormalMode();
                    return true;
                }
            }
            return true;
        }

        public boolean onDown(MotionEvent motionevent)
        {
            MtvUtilDebug.Low("MtvMiniModeService", "onDown");
            return true;
        }

        public boolean onSingleTapConfirmed(MotionEvent motionevent)
        {
            MtvUtilDebug.Low("MtvMiniModeService", "onSingleTapConfirmed");
            if(isAppExiting)
            {
                return true;
            } else
            {
                mHandler.sendEmptyMessage(11);
                return true;
            }
        }

        final MtvMiniModeService this$0;

        private SimpleGestureListener()
        {
            this$0 = MtvMiniModeService.this;
            SimpleOnGestureListener();
        }

    }

    class miniModeSurfaceOnTouchListener extends com.sec.android.app.minimode.MiniModeService.TouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            if(!isAppExiting) goto _L2; else goto _L1
_L1:
            boolean flag = false;
_L8:
            return flag;
_L2:
            if(MtvUtilAppService.isAppOnForeground(mContext))
                return false;
            super.onTouch(view, motionevent);
            flag = mScaleDetector.onTouchEvent(motionevent);
            if(!mScaleDetector.isInProgress())
            {
                flag = mGestureDetector.onTouchEvent(motionevent);
                MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onTouch consumed by gestureDetector:").append(flag).toString());
            }
            motionevent.getAction();
            JVM INSTR tableswitch 0 1: default 124
        //                       0 136
        //                       1 146;
               goto _L3 _L4 _L5
_L3:
            if(isScaling)
                return true;
            break; /* Loop/switch isn't completed */
_L4:
            MtvUtilDebug.Low("MtvMiniModeService", "ACTION_DOWN");
            continue; /* Loop/switch isn't completed */
_L5:
            MtvUtilDebug.Low("MtvMiniModeService", "ACTION_UP");
            isScaling = false;
            if(true) goto _L3; else goto _L6
_L6:
            if(!isOutsideOfScreenLimit(motionevent)) goto _L8; else goto _L7
_L7:
            return true;
        }

        final MtvMiniModeService this$0;

        miniModeSurfaceOnTouchListener()
        {
            this$0 = MtvMiniModeService.this;
            TouchListener(MtvMiniModeService.this);
        }
    }


    public MtvMiniModeService()
    {
        miniMainView = null;
        mContext = null;
        mMtvAppPlaybackContext = null;
        mMiniTvSurface = null;
        mMtvPreferences = null;
        mMtvAudMgr = null;
        mExitLayout = null;
        toast = null;
        mGestureDetector = null;
        mMtvPlayerOneSeg = null;
        isAppExiting = false;
        ignoreDoubleTap = true;
        mStatusText = null;
        mMtvFileList = null;
        mScaleDetector = null;
        mScaleFactor = 1.0F;
        currentScale = 1.0F;
        isScaling = false;
        prevExitVisible = false;
        presentationDisplay = null;
        mDownNextX = 0;
        mDownNextY = 0;
        mXpos = -9999;
        mYpos = -9999;
        mReceiver = new BroadcastReceiver() {

            public void onReceive(Context context, Intent intent)
            {
                boolean flag;
                flag = true;
                MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onReceive action: ").append(intent.getAction()).toString());
                if(!isAppExiting) goto _L2; else goto _L1
_L1:
                return;
_L2:
                if("android.intent.action.SCREEN_ON".equals(intent.getAction()))
                {
                    MtvUtilDebug.Low("MtvMiniModeService", "ACTION_SCREEN_ON");
                    return;
                }
                if(!"android.intent.action.SCREEN_OFF".equals(intent.getAction()))
                    break; /* Loop/switch isn't completed */
                MtvUtilDebug.Low("MtvMiniModeService", "ACTION_SCREEN_OFF");
                if(MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer"))
                {
                    pauseMinimode();
                    return;
                }
                if(true) goto _L1; else goto _L3
_L3:
                if(!"android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction()))
                    break; /* Loop/switch isn't completed */
                MtvUtilDebug.Low("MtvMiniModeService", "mReceiver - receive ACTION_AUDIO_BECOMING_NOISY");
                if(!mMtvAudMgr.isBTConnected() && MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer"))
                {
                    pauseMinimode();
                    return;
                }
                if(true) goto _L1; else goto _L4
_L4:
                if(intent.getAction().equals("android.intent.action.BATTERY_LOW"))
                {
                    Toast.makeText(mContext, 0x7f07026a, 0).show();
                    closeOneseg(0x7f07027e);
                    return;
                }
                if(!"intent.stop.app-in-app".equals(intent.getAction()))
                    break; /* Loop/switch isn't completed */
                boolean flag1 = intent.getBooleanExtra("stopFromDtv", false);
                MtvUtilDebug.High("MtvMiniModeService", (new StringBuilder()).append("bIsStopFromDtv: ").append(flag1).toString());
                if(!flag1)
                {
                    context = null;
                    intent = (ActivityManager)getApplicationContext().getSystemService("activity");
                    if(intent != null)
                        context = ((android.app.ActivityManager.RunningTaskInfo)intent.getRunningTasks(1).get(0)).topActivity.getClassName();
                    if(context != null)
                        MtvUtilDebug.High("MtvMiniModeService", (new StringBuilder()).append("topActivityName: ").append(context).toString());
                    if(context != null && !context.startsWith("com.samsung.sec.mtv.ui"))
                    {
                        closeOneseg(0x7f07027e);
                        return;
                    }
                }
                if(true) goto _L1; else goto _L5
_L5:
                if(!intent.getAction().equals("MTV_MINIMODE_AUDIO_FOCUS_LOSS"))
                    break; /* Loop/switch isn't completed */
                if(MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer"))
                {
                    pauseMinimode();
                    return;
                }
                if(true) goto _L1; else goto _L6
_L6:
                if(intent.getAction().equals("com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"))
                {
                    closeOneseg(0x7f0701f0);
                    return;
                }
                if(!intent.getAction().equals("com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"))
                    break; /* Loop/switch isn't completed */
                MtvUtilDebug.High("MtvMiniModeService", "Minimode ::Antenna close event received");
                if(mMtvPreferences == null)
                    mMtvPreferences = new MtvPreferences(getApplicationContext());
                if(mMtvPreferences.getAntennaOnOff() != 1)
                    flag = false;
                if(flag)
                {
                    closeOneseg(0x7f07027e);
                    return;
                }
                if(true) goto _L1; else goto _L7
_L7:
                if(!intent.getAction().equals("android.intent.action.MEDIA_UNMOUNTED") && !intent.getAction().equals("android.intent.action.MEDIA_EJECT") && !intent.getAction().equals("android.intent.action.MEDIA_MOUNTED"))
                    break; /* Loop/switch isn't completed */
                if(intent.getDataString() != null && intent.getDataString().contains("extSdCard") && MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer"))
                {
                    closeOneseg(0x7f07027e);
                    return;
                }
                if(true) goto _L1; else goto _L8
_L8:
                if(MtvUtilAppService.isConflictHandlerEnabled(mContext) && (intent.getAction().equals("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE") || intent.getAction().equals("com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE")))
                {
                    MtvUtilDebug.High("MtvMiniModeService", "Minimode :: Tuner release Request from Tmm obtained... Closing OneSeg... ");
                    closeOneseg(0x7f07027e);
                    return;
                }
                if(!intent.getAction().equals("com.samsung.cover.OPEN"))
                    continue; /* Loop/switch isn't completed */
                if(!MtvFeatures.isSCoverModeEnabled() || intent.getBooleanExtra("coverOpen", false)) goto _L1; else goto _L9
_L9:
                MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("classname : ").append(MtvMiniModeService.classname).toString());
                if(!MtvMiniModeService.classname.equalsIgnoreCase("MtvUiLivePlayer") && !MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer")) goto _L1; else goto _L10
_L10:
                MtvUtilDebug.High("MtvMiniModeService", "Minimode :: S Cover closed... Closing minimode... ");
                context = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover);
                context.setFlags(0x10000000);
                context.putExtra("directLaunch", true);
                if(MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer"))
                {
                    context.putExtra("isStartedFromMiniMode", true);
                    context.putExtra("selectedFileIndex", selectedFileIndex);
                }
                startActivity(context);
                stopSelf();
                return;
                if(!intent.getAction().equals("android.action.emergencylockenabled")) goto _L1; else goto _L11
_L11:
                closeOneseg(0x7f070299);
                return;
            }

            final MtvMiniModeService this$0;

            
            {
                this$0 = MtvMiniModeService.this;
                BroadcastReceiver();
            }
        }
;
        mHandler = new Handler() {

            public void handleMessage(Message message)
            {
                MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("handleMessage :").append(message.what).toString());
                message.what;
                JVM INSTR tableswitch 11 14: default 60
            //                           11 100
            //                           12 228
            //                           13 241
            //                           14 61;
                   goto _L1 _L2 _L3 _L4 _L5
_L1:
                return;
_L5:
                if(-1 == ((Integer)message.obj).intValue())
                {
                    mStatusText.setText(null);
                    return;
                } else
                {
                    mStatusText.setText(0x7f070268);
                    return;
                }
_L2:
                removeMessages(11);
                removeMessages(12);
                if(mExitLayout.getVisibility() == 0)
                {
                    mExitLayout.setVisibility(8);
                } else
                {
                    mExitLayout.setVisibility(0);
                    sendMessageDelayed(obtainMessage(12), 3000L);
                }
                if(mMtvAudMgr != null && !mMtvAudMgr.isRecordActive())
                {
                    mMtvAudMgr.stopOtherSound();
                    mMtvAudMgr.setAvStreaming(true);
                }
                if(MtvMiniModeService.classname.equalsIgnoreCase("MtvUiFilePlayer"))
                {
                    changeFilePlayMode();
                    return;
                }
                  goto _L1
_L3:
                mExitLayout.setVisibility(8);
                return;
_L4:
                if(mHandler.hasMessages(13))
                    mHandler.removeMessages(13);
                mXpos = getAttributes().x;
                mYpos = getAttributes().y;
                return;
            }

            final MtvMiniModeService this$0;

            
            {
                this$0 = MtvMiniModeService.this;
                Handler();
            }
        }
;
        RunnableCallUpdatePresentation = new Runnable() {

            public void run()
            {
                updatePresentation();
            }

            final MtvMiniModeService this$0;

            
            {
                this$0 = MtvMiniModeService.this;
                Object();
            }
        }
;
        runnableEnableDoubleTap = new Runnable() {

            public void run()
            {
                ignoreDoubleTap = false;
            }

            final MtvMiniModeService this$0;

            
            {
                this$0 = MtvMiniModeService.this;
                Object();
            }
        }
;
    }

    private void changeFilePlayMode()
    {
        if(isPaused())
        {
            resumeMinimode();
            return;
        } else
        {
            pauseMinimode();
            return;
        }
    }

    private boolean checkIsCalling(Context context)
    {
        return mMtvAudMgr.checkIsCalling();
    }

    private void closeOneseg(int i)
    {
        MtvUtilDebug.Low("MtvMiniModeService", "closeOneSeg");
        if(isAppExiting)
        {
            return;
        } else
        {
            isAppExiting = true;
            showToast(i);
            mMtvPreferences.setIsLivePlayMiniMode(false);
            mMtvPreferences.setIsFilePlayMiniMode(false);
            mMtvAudMgr.setAudioMute(true);
            mMtvAudMgr.loseFocus();
            MtvUtilAppService.forceresetMtvVisibiltySettings(getApplicationContext());
            MtvUtilAppService.releaseAndDeletePartialWakeLock();
            MtvLiveBroadcastReciever.unregisterRecievers();
            MtvAppPlayerOneSeg.getInstance().delete(MtvAppPlaybackContextManager.getInstance().getCurrentContext());
            return;
        }
    }

    private boolean isPaused()
    {
        return mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED;
    }

    private void pauseMinimode()
    {
        mMtvPlayerOneSeg.pause(mMtvAppPlaybackContext);
        endMiniModeTime = System.currentTimeMillis();
        currentSeekTime = currentSeekTime + (int)(endMiniModeTime - beginMiniModeTime) / 1000;
        if(mMtvAudMgr != null)
            mMtvAudMgr.loseFocus();
    }

    private void registerIntents()
    {
        MtvUtilDebug.Low("MtvMiniModeService", "registerIntents: entered ");
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.BATTERY_LOW");
        intentfilter.addAction("intent.stop.app-in-app");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        intentfilter.addAction("com.samsung.android.motion.PALM_DOWN");
        intentfilter.addAction("android.media.AUDIO_BECOMING_NOISY");
        intentfilter.addAction("android.intent.action.WIFI_DISPLAY");
        intentfilter.addAction("intent.finished.app-in-app");
        intentfilter.addAction("android.media.IMediaPlayer.videoexist");
        intentfilter.addAction("MTV_MINIMODE_AUDIO_FOCUS_LOSS");
        intentfilter.addAction("com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM");
        intentfilter.addAction("com.samsung.sec.mtv.DTV_ANTENNA_CLOSE");
        intentfilter.addAction("com.samsung.cover.OPEN");
        if(MtvFeatures.is3LMEnabled())
            intentfilter.addAction("android.action.emergencylockenabled");
        registerReceiver(mReceiver, intentfilter);
        intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentfilter.addAction("android.intent.action.MEDIA_EJECT");
        intentfilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentfilter.addDataScheme("file");
        registerReceiver(mReceiver, intentfilter);
        if(MtvUtilAppService.isConflictHandlerEnabled(mContext))
        {
            IntentFilter intentfilter1 = new IntentFilter();
            intentfilter1.addAction("com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE");
            intentfilter1.addAction("com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE");
            registerReceiver(mReceiver, intentfilter1);
        }
    }

    private void resumeMinimode()
    {
        if(mMtvAudMgr != null && !mMtvAudMgr.isRecordActive())
        {
            mMtvPlayerOneSeg.resume(mMtvAppPlaybackContext);
            beginMiniModeTime = System.currentTimeMillis();
        }
    }

    private void setScreenRatio()
    {
        float f = (float)defaultSurfaceWidth / (float)defaultSurfaceHeight;
        MtvUtilDebug.Low("MtvMiniModeService", "setScreenRatio landscape");
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("setScreenRatio LCD_HEIGHT:").append(defaultSurfaceHeight).append("LCD_WIDTH:").append(defaultSurfaceWidth).toString());
        int i;
        int j;
        int k;
        int l;
        Object obj;
        if(Float.compare(f, 1.777778F) == 0)
        {
            MtvUtilDebug.Low("MtvMiniModeService", "setScreenRatio 16:9 NORMAL");
            j = defaultSurfaceWidth;
            i = (defaultSurfaceWidth / 16) * 9;
        } else
        {
            MtvUtilDebug.Low("MtvMiniModeService", "setScreenRatio 4:3 NORMAL ");
            i = defaultSurfaceHeight;
            j = (defaultSurfaceWidth / 3) * 4;
        }
        k = (defaultSurfaceWidth - j) / 2;
        l = (defaultSurfaceHeight - i) / 2;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("setScreenRatio x = ").append(k).append(" y = ").append(l).append(" w = ").append(j).append(" h = ").append(i).toString());
        obj = new android.widget.RelativeLayout.LayoutParams(j, i);
        mMiniTvSurface.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        obj = getAttributes();
        obj.x = 60;
        obj.y = 60;
        obj.gravity = 51;
        obj.flags = ((android.view.WindowManager.LayoutParams) (obj)).flags | 8;
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            obj.flags = ((android.view.WindowManager.LayoutParams) (obj)).flags | 0x2000;
        setAttributes(((android.view.WindowManager.LayoutParams) (obj)));
    }

    private void setStatusText(int i)
    {
        mHandler.sendMessage(mHandler.obtainMessage(14, Integer.valueOf(i)));
    }

    private void setWithinBounds(int i, int j, int k, int l)
    {
        int k1 = k;
        int j1 = l;
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("setWithinBounds :").append(i).append(" ").append(j).append(" ").append(k).append(" ").append(l).toString());
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("setWithinBounds : ").append(pivotX).append(" ").append(pivotY).append(" ").append(screenHeight).append(" ").append(screenWidth).toString());
        int i1 = k1;
        if(pivotX >= 0)
        {
            i1 = k1;
            if(pivotX + i <= screenHeight)
                if(k < 0)
                {
                    i1 = 0;
                } else
                {
                    i1 = k1;
                    if(scaledWidth + k > screenWidth)
                        i1 = screenWidth - scaledWidth;
                }
        }
        i = j1;
        if(pivotY >= 0)
        {
            i = j1;
            if(pivotY + j <= screenWidth)
                if(l < 0)
                {
                    i = 0;
                } else
                {
                    i = j1;
                    if(scaledHeight + l > screenHeight)
                        i = screenHeight - scaledHeight;
                }
        }
        pivotX = i1;
        pivotY = i;
    }

    private void unRegisterIntents()
    {
        MtvUtilDebug.Low("MtvMiniModeService", "unregister()");
        unregisterReceiver(mReceiver);
    }

    public void adjustSizeOnOrientationChange()
    {
        MtvUtilDebug.Low("MtvMiniModeService", "adjustSizeOnOrientationChange");
        android.view.WindowManager.LayoutParams layoutparams = getAttributes();
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("lp.x").append(layoutparams.x).append("lp.y:").append(layoutparams.y).toString());
        int i = scaledWidth;
        int j = scaledHeight;
        if(currentScale > maxScale)
        {
            currentScale = maxScale;
            scaledWidth = (int)((float)defaultSurfaceWidth * currentScale);
            scaledHeight = (int)((float)defaultSurfaceHeight * currentScale);
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("lp.width").append(layoutparams.width).append("lp.height:").append(layoutparams.height).toString());
            layoutparams.width = scaledWidth;
            layoutparams.height = scaledHeight;
            android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(scaledWidth, scaledHeight);
            mMiniTvSurface.setLayoutParams(layoutparams1);
        }
        setWithinBounds(i, j, layoutparams.x, layoutparams.y);
        layoutparams.x = pivotX;
        layoutparams.y = pivotY;
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("pivotX:").append(pivotX).append("pivotY:").append(pivotY).toString());
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("lp.x").append(layoutparams.x).append("lp.y:").append(layoutparams.y).toString());
        setAttributes(layoutparams);
    }

    public void hide()
    {
        MtvUtilDebug.High("MtvMiniModeService", "hide() :: calling MtvMinimode specific implementation...");
        mMtvAudMgr.setAudioMute(true);
        super.hide();
        Method method = Class.forName("com.sec.android.app.minimode.MiniModeService").getMethod("isFirstShow", new Class[0]);
        if(method == null)
            break MISSING_BLOCK_LABEL_85;
        boolean flag = ((Boolean)method.invoke(this, new Object[0])).booleanValue();
        if(!flag)
            break MISSING_BLOCK_LABEL_85;
        ActivityManagerNative.getDefault().setProcessForeground(mForegroundToken, Process.myPid(), false);
        MtvUtilDebug.Low("MtvMiniModeService", "setProcessForeground : false");
        return;
        Exception exception;
        exception;
        try
        {
            exception.printStackTrace();
            return;
        }
        catch(ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        catch(NoSuchMethodException nosuchmethodexception)
        {
            nosuchmethodexception.printStackTrace();
            return;
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            return;
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
            return;
        }
        catch(InvocationTargetException invocationtargetexception)
        {
            invocationtargetexception.printStackTrace();
        }
        return;
    }

    public void initScaleDetection()
    {
        Display display = ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        display.getSize(point);
        screenWidth = point.x;
        screenHeight = point.y;
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("initScaleDetection screenWidth:").append(screenWidth).append(" screenHeight").append(screenHeight).toString());
        maxScale = Math.min((float)screenWidth / (float)defaultSurfaceWidth, (float)screenHeight / (float)defaultSurfaceHeight);
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("initScaleDetection maxScale:").append(maxScale).toString());
    }

    public boolean isOutsideOfScreenLimit(MotionEvent motionevent)
    {
        int l1;
        int k2;
        boolean flag4 = false;
        int k = mMiniTvSurface.getWidth();
        int i = mMiniTvSurface.getHeight();
        Point point = new Point();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getSize(point);
        int l = point.x;
        int j = point.y;
        int i2 = (int)(0.0D - (double)k * 0.40000000000000002D);
        int j2 = (int)((double)l - (double)k * 0.59999999999999998D);
        int j1 = (int)(0.0D - (double)i * 0.0D);
        int k1 = (int)((double)j - (double)i * 1.02D);
        k2 = getAttributes().x;
        l1 = getAttributes().y;
        boolean flag;
        boolean flag1;
        boolean flag2;
        int i1;
        boolean flag3;
        if(k2 <= i2)
            j = 1;
        else
            j = 0;
        if(k2 >= j2)
            flag = true;
        else
            flag = false;
        if(l1 <= j1)
            flag1 = true;
        else
            flag1 = false;
        if(l1 >= k1)
            flag2 = true;
        else
            flag2 = false;
        if(j == 0 && !flag && !flag1 && !flag2) goto _L2; else goto _L1
_L1:
        flag4 = true;
        motionevent.getAction();
        JVM INSTR tableswitch 0 0: default 212
    //                   0 413;
           goto _L3 _L4
_L3:
        flag3 = flag4;
        if(k2 == mDownNextX)
        {
            flag3 = flag4;
            if(l1 == mDownNextY)
                flag3 = false;
        }
        i = k2;
        i1 = l1;
        flag4 = flag3;
        if(j != 0)
        {
            if(k2 > i2)
                flag3 = false;
            i = i2;
            flag4 = flag3;
        }
        flag3 = flag4;
        j = i;
        if(flag)
        {
            flag3 = flag4;
            if(k2 < j2)
                flag3 = false;
            j = j2;
        }
        flag4 = flag3;
        i = i1;
        if(flag1)
        {
            if(l1 > j1)
                flag3 = false;
            i = j1;
            flag4 = flag3;
        }
        flag3 = flag4;
        if(flag2)
        {
            flag3 = flag4;
            if(l1 < k1)
                flag3 = false;
            i = k1;
        }
        setXY(j, i);
        flag4 = flag3;
        if(flag3)
        {
            move(mXpos, mYpos);
            flag4 = flag3;
        }
_L2:
        return flag4;
_L4:
        mDownNextX = k2;
        mDownNextY = l1;
        if(true) goto _L3; else goto _L5
_L5:
    }

    protected boolean onClose(int i)
    {
        MtvUtilDebug.Low("MtvMiniModeService", "onClose");
        return i == 1 || i == 6 || i == 5;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        MtvUtilDebug.Low("MtvMiniModeService", "onConfigurationChanged");
        super.onConfigurationChanged(configuration);
        initScaleDetection();
        adjustSizeOnOrientationChange();
    }

    public void onCreate()
    {
        MtvUtilDebug.Low("MtvMiniModeService", "onCreate: entered ");
        super.onCreate();
        mContext = getApplicationContext();
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        miniMainView = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f030031, null);
        setContentView(miniMainView, 0x7f0a011e, 0x7f0a011b);
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        mMiniTvSurface = (MtvUiMiniModeSurface)miniMainView.findViewById(0x7f0a011c);
        mMiniTvSurface.setOnTouchListener(new miniModeSurfaceOnTouchListener());
        mMiniTvSurface.setKeepScreenOn(true);
        mExitLayout = (RelativeLayout)miniMainView.findViewById(0x7f0a011e);
        mExitLayout.setVisibility(8);
        mExitLayout.setOnTouchListener(new OnExitTouchListener());
        mStatusText = (TextView)miniMainView.findViewById(0x7f0a011d);
        mGestureDetector = new GestureDetector(mContext, new SimpleGestureListener());
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        mScaleDetector = new ScaleGestureDetector(mContext, new ScaleListener());
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        enableDragRestriction(false);
        defaultSurfaceWidth = (int)MtvUtilConfigSetting.convertDpToPixel(260F, getApplicationContext());
        defaultSurfaceHeight = (int)MtvUtilConfigSetting.convertDpToPixel(146F, getApplicationContext());
        ignoreDoubleTap = true;
        mHandler.postDelayed(runnableEnableDoubleTap, 1000L);
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvMiniModeService", "onDestroy: entered ");
        SecHardwareInterface.setmDNIeUIMode(0);
        MtvUtilAppService.setPreferredOrientation(-1);
        if(mMiniTvSurface != null)
            mMiniTvSurface.setKeepScreenOn(false);
        if(isAppExiting)
            unRegisterIntents();
        super.onDestroy();
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("onPlayerNotification command:").append(i).append(" status:").append(j).toString());
        i;
        JVM INSTR lookupswitch 3: default 72
    //                   20483: 396
    //                   20484: 81
    //                   20495: 441;
           goto _L1 _L2 _L3 _L4
_L1:
        MtvUtilDebug.Low("MtvMiniModeService", "Invalid CMD ignored..!!!");
_L6:
        return;
_L3:
        if(24592 == j)
            if(mMtvPreferences.getAutoPlayNext())
            {
                setStatusText(0x7f070268);
                if(mMtvFileIndex == mMtvFileList.length - 1)
                    mMtvFileIndex = 0;
                else
                    mMtvFileIndex++;
                mMtvFile = mMtvFileList[mMtvFileIndex];
                while(mMtvFile.getFileFormat() == 2) 
                {
                    if(mMtvFileIndex == mMtvFileList.length - 1)
                        mMtvFileIndex = 0;
                    else
                        mMtvFileIndex++;
                    mMtvFile = mMtvFileList[mMtvFileIndex];
                }
                if(mMtvFile != null)
                {
                    MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("Next File Index to Play: [").append(mMtvFile.getIndex()).append("] mMtvFileIndex[").append(mMtvFileIndex).append("]").toString());
                    MtvURI mtvuri = new MtvURI(1, null, mMtvFile.getIndex());
                    mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLocalTV();
                    mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
                }
                selectedFileIndex = mMtvFileIndex;
                mMtvPreferences.setLatestFileIndex(mMtvFileIndex);
                return;
            } else
            {
                MtvUtilAppService.setPreferredOrientation(-1);
                com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer.MTvAppPlaybackTimer.getInstance().stopPlaybackTimer();
                closeOneseg(0x7f07027e);
                return;
            }
        if(24581 == j)
        {
            setStatusText(-1);
            if(mMtvAudMgr != null)
            {
                mMtvAudMgr.stopOtherSound();
                mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
                mMtvAppPlaybackContext.getComponents().getAudio().enable();
                mMtvAudMgr.updateCurrentAudioEffectAndMode();
                return;
            }
        } else
        {
            MtvUtilDebug.Low("MtvMiniModeService", "Status ignored in PLAY CMD..!!!");
            return;
        }
        if(true)
            continue; /* Loop/switch isn't completed */
_L2:
        switch(j)
        {
        default:
            MtvUtilDebug.Low("MtvMiniModeService", "Status ignored in STATUS_UPDT CMD..!!!");
            return;

        case 24588: 
            MtvUtilDebug.Low("MtvMiniModeService", "closeOneSeg from STAT_SIGNAL_LOW");
            break;
        }
        closeOneseg(0x7f07027e);
        return;
_L4:
        if(j == 24581)
        {
            mMtvAudMgr.setAvStreaming(false);
            MtvUtilAudioManager.reset();
            MtvAppPlaybackContextManager.getInstance().reset();
            isAppExiting = false;
            if(MtvUtilAppService.isConflictHandlerEnabled(mContext))
            {
                MtvConflictHandler.getInstance(getApplicationContext()).closeService();
                MtvConflictHandler.reset();
            }
            MtvBroadcastReceiver.releaseReservationWakeLock();
            stopSelf();
            return;
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        MtvUtilDebug.Low("MtvMiniModeService", "onStartCommand: entered ");
        if(intent != null)
        {
            currentSeekTime = intent.getIntExtra("currentSeekTime", 0);
            if(!isPaused())
                beginMiniModeTime = System.currentTimeMillis();
            classname = intent.getStringExtra("class");
            if(classname.equalsIgnoreCase("MtvUiFilePlayer"))
            {
                int k = intent.getIntExtra("selectedFileIndex", 0);
                selectedFileIndex = k;
                mMtvFileIndex = k;
                mMtvFileList = MtvFileManager.getAvailableTVRecFilesEx(false);
                MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("Start File Index to Play: [").append(mMtvFileList[mMtvFileIndex].getIndex()).append("] mMtvFileIndex[").append(mMtvFileIndex).append("]").toString());
            }
            SecHardwareInterface.setmDNIeUIMode(1);
            playMiniMode();
            initScaleDetection();
            if(isPaused())
                resumeMinimode();
            mMediaRouter = (MediaRouter)getSystemService("media_router");
            mMediaRouter.addCallback(2, mMediaRouterCallback);
        }
        return super.onStartCommand(intent, i, j);
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    public void playMiniMode()
    {
        MtvUtilDebug.Low("MtvMiniModeService", "playMiniMode");
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getComponents().getVideo().enable();
            Object obj = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
            if(obj != null)
                ((IMtvOneSegVideoControl) (obj)).registerSurface(mMiniTvSurface);
            obj = getAttributes();
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("lp.width").append(((android.view.WindowManager.LayoutParams) (obj)).width).append("lp.height:").append(((android.view.WindowManager.LayoutParams) (obj)).height).toString());
            obj.width = defaultSurfaceWidth;
            obj.height = defaultSurfaceHeight;
            setAttributes(((android.view.WindowManager.LayoutParams) (obj)));
            mMtvAppPlaybackContext.getState().registerListener(this);
        }
        setScreenRatio();
        registerIntents();
        if(mMtvAudMgr != null)
            mMtvAudMgr.setAvStreaming(true);
    }

    public void setXY(int i, int j)
    {
        if(mHandler.hasMessages(13))
            mHandler.removeMessages(13);
        mXpos = i;
        mYpos = j;
        Point point = new Point();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getSize(point);
        i = point.x;
        j = point.y;
        if(mXpos < 0 || mYpos < 0 || mXpos + getAttributes().width > i || mYpos + getAttributes().height > j)
            mHandler.sendEmptyMessageDelayed(13, 300L);
    }

    public void show()
    {
        MtvUtilDebug.High("MtvMiniModeService", "show() :: calling MtvMinimode specific implementation...");
        mMtvAudMgr.stopOtherSound();
        mMiniTvSurface.setVisibility(0);
        mMtvAppPlaybackContext.getComponents().getVideo().enable();
        Object obj = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
        boolean flag;
        if(obj != null)
            ((IMtvOneSegVideoControl) (obj)).registerSurface(mMiniTvSurface);
        else
            MtvUtilDebug.Error("MtvMiniModeService", "Control Interface is null ! ");
        super.show();
        obj = Class.forName("com.sec.android.app.minimode.MiniModeService").getMethod("isFirstShow", new Class[0]);
        if(obj == null)
            break MISSING_BLOCK_LABEL_134;
        flag = ((Boolean)((Method) (obj)).invoke(this, new Object[0])).booleanValue();
        if(!flag)
            break MISSING_BLOCK_LABEL_134;
        ActivityManagerNative.getDefault().setProcessForeground(mForegroundToken, Process.myPid(), true);
        MtvUtilDebug.Low("MtvMiniModeService", "setProcessForeground : true");
        return;
        RemoteException remoteexception;
        remoteexception;
        try
        {
            remoteexception.printStackTrace();
            return;
        }
        catch(ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            return;
        }
        catch(NoSuchMethodException nosuchmethodexception)
        {
            nosuchmethodexception.printStackTrace();
            return;
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            return;
        }
        catch(IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
            return;
        }
        catch(InvocationTargetException invocationtargetexception)
        {
            invocationtargetexception.printStackTrace();
        }
        return;
    }

    public void showToast(int i)
    {
        if(toast == null)
            toast = Toast.makeText(mContext, i, 0);
        else
            toast.setText(i);
        toast.show();
    }

    public void switchToNormalMode()
    {
        MtvUtilAppService.setPreferredOrientation(-1);
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("classname:").append(classname).toString());
        if(classname.equalsIgnoreCase("MtvUiLivePlayer"))
        {
            Intent intent = new Intent(mContext, com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer);
            intent.setFlags(0x14000000);
            mContext.startActivity(intent);
        } else
        {
            Intent intent1 = new Intent(mContext, com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer);
            endMiniModeTime = System.currentTimeMillis();
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("old currentSeekTime:").append(currentSeekTime).toString());
            if(!isPaused())
                currentSeekTime = currentSeekTime + ((int)(endMiniModeTime - beginMiniModeTime) / 1000 + 1);
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("updated currentSeekTime:").append(currentSeekTime).toString());
            intent1.putExtra("currentSeekTime", currentSeekTime);
            intent1.putExtra("isStartedFromMiniMode", true);
            intent1.putExtra("startFilePlayer", true);
            intent1.setFlags(0x14000000);
            MtvUtilDebug.Low("MtvMiniModeService", "startFilePlayer MTV_UPDATE_FRAG_CMD_DIALOGS_LAUNCH_FILE_PLAYER");
            MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append("selected file index: ").append(selectedFileIndex).toString());
            intent1.putExtra("MtvFile", mMtvFileList[selectedFileIndex]);
            mContext.startActivity(intent1);
            MtvUtilDebug.High("MtvMiniModeService", "Starting Fileplayer via Liveplayer");
        }
        MtvUtilDebug.Low("MtvMiniModeService", "Start Activity");
        stopSelf();
    }

    public void updatePresentation()
    {
        android.media.MediaRouter.RouteInfo routeinfo = mMediaRouter.getSelectedRoute(2);
        presentationDisplay = null;
        if(routeinfo != null)
            presentationDisplay = routeinfo.getPresentationDisplay();
        MtvUtilDebug.Low("MtvMiniModeService", (new StringBuilder()).append(" updatePresentation :: presentationDisplay =").append(presentationDisplay).append(" mPresentation =").append(mPresentation).toString());
        if(mPresentation == null && presentationDisplay != null)
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = mMtvAppPlaybackContext.getState().getState();
            if(state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED)
            {
                mHandler.removeMessages(11);
                if(mExitLayout != null)
                    mExitLayout.setVisibility(8);
                mMediaRouter.removeCallback(mMediaRouterCallback);
                if(mPresentation != null)
                {
                    mPresentation.dismiss();
                    mPresentation = null;
                }
                switchToNormalMode();
            }
        }
    }

    private static final double BOTTOM_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN = 1.02D;
    private static final int DNIe_UI_MODE = 0;
    private static final int DNIe_VIDEO_MODE = 1;
    private static final int HANDLE_ADJUST_X_Y_POSITION = 13;
    private static final int HANDLE_CANCEL_EXIT = 12;
    private static final int HANDLE_SINGLE_TOUCH = 11;
    private static final int HANDLE_UPDATE_STATUS_TEXT = 14;
    private static final int INIT_POS = -9999;
    private static final double LEFT_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN = 0.40000000000000002D;
    private static final double RIGHT_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN = 0.59999999999999998D;
    private static final float SMOOTHING_FACTOR = 1.3F;
    private static final String TAG = "MtvMiniModeService";
    private static final double TOP_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN = 0D;
    public static String classname = null;
    private static int defaultSurfaceHeight;
    private static int defaultSurfaceWidth;
    public static MtvFile mMtvFile = null;
    private static int mMtvFileIndex = 0;
    private static float maxScale = 3F;
    private static float minScale = 0.5F;
    private static int pivotX;
    private static int pivotY;
    private static int scaledHeight;
    private static int scaledWidth;
    private final String MTV_UI_FILE_PLAYER = "MtvUiFilePlayer";
    private final String MTV_UI_LIVE_PLAYER = "MtvUiLivePlayer";
    private Runnable RunnableCallUpdatePresentation;
    private long beginMiniModeTime;
    private float currentScale;
    private int currentSeekTime;
    private long endMiniModeTime;
    private boolean ignoreDoubleTap;
    private boolean isAppExiting;
    private boolean isScaling;
    private Context mContext;
    int mDownNextX;
    int mDownNextY;
    private RelativeLayout mExitLayout;
    final IBinder mForegroundToken = new Binder();
    private GestureDetector mGestureDetector;
    private Handler mHandler;
    public MediaRouter mMediaRouter;
    public final android.media.MediaRouter.SimpleCallback mMediaRouterCallback = new android.media.MediaRouter.SimpleCallback() {

        public void onRoutePresentationDisplayChanged(MediaRouter mediarouter, android.media.MediaRouter.RouteInfo routeinfo)
        {
            MtvUtilDebug.Low("MtvMiniModeService", " onRoutePresentationDisplayChanged ");
            updatePresentation();
        }

        public void onRouteSelected(MediaRouter mediarouter, int i, android.media.MediaRouter.RouteInfo routeinfo)
        {
            MtvUtilDebug.Low("MtvMiniModeService", " onRouteSelected ");
            updatePresentation();
        }

        public void onRouteUnselected(MediaRouter mediarouter, int i, android.media.MediaRouter.RouteInfo routeinfo)
        {
            MtvUtilDebug.Low("MtvMiniModeService", " onRouteUnselected ");
            updatePresentation();
        }

        final MtvMiniModeService this$0;

            
            {
                this$0 = MtvMiniModeService.this;
                SimpleCallback();
            }
    }
;
    private MtvUiMiniModeSurface mMiniTvSurface;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvUtilAudioManager mMtvAudMgr;
    private MtvFile mMtvFileList[];
    private IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    private MtvPreferences mMtvPreferences;
    public final android.content.DialogInterface.OnDismissListener mOnDismissListener = new android.content.DialogInterface.OnDismissListener() {

        public void onDismiss(DialogInterface dialoginterface)
        {
            if(dialoginterface != null && dialoginterface.equals(mPresentation))
                mPresentation = null;
        }

        final MtvMiniModeService this$0;

            
            {
                this$0 = MtvMiniModeService.this;
                Object();
            }
    }
;
    public Presentation mPresentation;
    private BroadcastReceiver mReceiver;
    private ScaleGestureDetector mScaleDetector;
    private float mScaleFactor;
    private TextView mStatusText;
    private int mXpos;
    private int mYpos;
    private View miniMainView;
    Display presentationDisplay;
    private boolean prevExitVisible;
    private Runnable runnableEnableDoubleTap;
    private int screenHeight;
    private int screenWidth;
    private int selectedFileIndex;
    private Toast toast;




/*
    static float access$002(MtvMiniModeService mtvminimodeservice, float f)
    {
        mtvminimodeservice.mScaleFactor = f;
        return f;
    }

*/


/*
    static float access$032(MtvMiniModeService mtvminimodeservice, float f)
    {
        f = mtvminimodeservice.mScaleFactor * f;
        mtvminimodeservice.mScaleFactor = f;
        return f;
    }

*/


/*
    static float access$040(MtvMiniModeService mtvminimodeservice, float f)
    {
        f = mtvminimodeservice.mScaleFactor / f;
        mtvminimodeservice.mScaleFactor = f;
        return f;
    }

*/




/*
    static int access$1002(int i)
    {
        scaledWidth = i;
        return i;
    }

*/


/*
    static boolean access$102(MtvMiniModeService mtvminimodeservice, boolean flag)
    {
        mtvminimodeservice.isScaling = flag;
        return flag;
    }

*/




/*
    static int access$1202(int i)
    {
        scaledHeight = i;
        return i;
    }

*/











/*
    static MtvPreferences access$2202(MtvMiniModeService mtvminimodeservice, MtvPreferences mtvpreferences)
    {
        mtvminimodeservice.mMtvPreferences = mtvpreferences;
        return mtvpreferences;
    }

*/




/*
    static boolean access$2402(MtvMiniModeService mtvminimodeservice, boolean flag)
    {
        mtvminimodeservice.ignoreDoubleTap = flag;
        return flag;
    }

*/









/*
    static boolean access$302(MtvMiniModeService mtvminimodeservice, boolean flag)
    {
        mtvminimodeservice.prevExitVisible = flag;
        return flag;
    }

*/


/*
    static int access$3102(MtvMiniModeService mtvminimodeservice, int i)
    {
        mtvminimodeservice.mXpos = i;
        return i;
    }

*/


/*
    static int access$3202(MtvMiniModeService mtvminimodeservice, int i)
    {
        mtvminimodeservice.mYpos = i;
        return i;
    }

*/




/*
    static int access$502(int i)
    {
        pivotX = i;
        return i;
    }

*/



/*
    static int access$602(int i)
    {
        pivotY = i;
        return i;
    }

*/



/*
    static float access$702(MtvMiniModeService mtvminimodeservice, float f)
    {
        mtvminimodeservice.currentScale = f;
        return f;
    }

*/


}
