// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Intent;
import android.database.ContentObserver;
import android.os.*;
import android.view.*;
import android.view.animation.Animation;
import android.widget.*;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContext;
import com.samsung.sec.mtv.app.context.MtvAppPlaybackContextManager;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.ui.bml.MtvUiBmlSurfaceView;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity, MtvUiFragHandler

public abstract class MtvUiGenericPlayer extends MtvBaseActivity
{
    protected class ControlAnimationRunnable
        implements Runnable
    {

        private void controlAnimation()
        {
            MtvUtilDebug.Low("MtvUiGenericPlayer", (new StringBuilder()).append("controlAnimation: called :").append(isEnable).toString());
            if(isEnable)
            {
                mAnimationlayout.setVisibility(0);
                mAnimationImage.setVisibility(0);
                if(!isRotating)
                {
                    isRotating = true;
                    mAnimationImage.startAnimation(rotatingAnimation);
                }
                if(mStrAnimation != null)
                    mTxtAnimation.setText(mStrAnimation);
                return;
            } else
            {
                mTxtAnimation.setText("");
                mAnimationlayout.setVisibility(4);
                isRotating = false;
                mAnimationImage.clearAnimation();
                mAnimationImage.setVisibility(4);
                mAnimationImage.invalidate();
                mAnimationlayout.invalidate();
                return;
            }
        }

        private void postAnimationToRunInUIThread()
        {
            if(mAnimationImage != null)
            {
                mAnimationImage.removeCallbacks(this);
                mAnimationImage.post(this);
            }
        }

        private void setAnimationEnable(boolean flag)
        {
            MtvUtilDebug.Low("MtvUiGenericPlayer", (new StringBuilder()).append("ControlAnimationRunnable: setAnimationEnable :").append(flag).toString());
            isEnable = flag;
        }

        private void setAnimationText(String s)
        {
            MtvUtilDebug.Low("MtvUiGenericPlayer", (new StringBuilder()).append("ControlAnimationRunnable: setAnimationText :").append(s).toString());
            mStrAnimation = s;
        }

        public boolean getIsEnable()
        {
            return isEnable;
        }

        public void run()
        {
            controlAnimation();
        }

        private boolean isEnable;
        private boolean isRotating;
        private String mStrAnimation;
        final MtvUiGenericPlayer this$0;




        protected ControlAnimationRunnable()
        {
            this$0 = MtvUiGenericPlayer.this;
            super();
            isRotating = false;
            isEnable = false;
            mStrAnimation = null;
            MtvUtilDebug.Low("MtvUiGenericPlayer", "ControlAnimationRunnable...");
        }
    }


    public MtvUiGenericPlayer()
    {
        postHeadsetUpdate = null;
        rotatingAnimation = null;
        mControlAnimationRunnable = new ControlAnimationRunnable();
        mBmlSurface = null;
        mCaptionView = null;
        mRotateButton = null;
        mRotateButtonFilePlayer = null;
        mMtvPlayerOneSeg = null;
        mMtvAppPlaybackContext = null;
        mRotationObserver = null;
    }

    public static boolean postOpenChannel(MtvURI mtvuri, int i)
    {
        boolean flag = false;
        if(mGenericMsgHAndler != null)
        {
            if(mtvuri == null)
            {
                MtvUtilDebug.Error("MtvUiGenericPlayer", "postOpen():: Null Arguement Passed !");
                return false;
            }
            mtvuri = mGenericMsgHAndler.obtainMessage(323, mtvuri);
            if(i <= 0)
                flag = mGenericMsgHAndler.sendMessage(mtvuri);
            else
                flag = mGenericMsgHAndler.sendMessageDelayed(mtvuri, i);
        }
        return flag;
    }

    public static void removeOpenChannelMessages()
    {
        mGenericMsgHAndler.removeMessages(323);
    }

    public boolean isPhoneLocked()
    {
        return lockImage != null && lockImage.getVisibility() == 0;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCurrentGenericPlayer = this;
        mMtvPreferences = new MtvPreferences(getApplicationContext());
        setActivityProperty();
    }

    protected void onCreate(Bundle bundle, boolean flag)
    {
        super.onCreate(bundle, flag);
        mCurrentGenericPlayer = this;
        mMtvPreferences = new MtvPreferences(getApplicationContext());
        setActivityProperty();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if(isFinishing() && mCurrentGenericPlayer == this)
        {
            mGenericMsgHAndler.removeMessages(301);
            mCurrentGenericPlayer = null;
        }
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiGenericPlayer", (new StringBuilder()).append("onMtvAppLiveBroadcastNotify()  :: ").append(i).toString());
        i;
        JVM INSTR lookupswitch 3: default 60
    //                   1: 207
    //                   2: 228
    //                   9: 67;
           goto _L1 _L2 _L3 _L4
_L1:
        super.onMtvAppLiveBroadcastNotify(i, obj);
_L6:
        return;
_L4:
        closeOptionsMenu();
        if(obj != null)
        {
            i = ((Intent)obj).getIntExtra("state", 0);
            if(i == 0)
            {
                if(mMtvPreferences == null)
                    mMtvPreferences = new MtvPreferences(getApplicationContext());
                mMtvPreferences.setAudio51Enabled(false);
                if(fragHandler != null)
                    fragHandler.removeFrag(MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                if(fragHandler != null && fragHandler.isFragPresent(MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                    fragHandler.onUpdate(104, Integer.valueOf(i), MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            }
        }
        MtvUtilAudioManager.getInstance(getApplicationContext()).setAudioEffect(mMtvPreferences.getAudioEffect(), false);
        mGenericMsgHAndler.postDelayed(postHeadsetUpdate, 300L);
        return;
_L2:
        if(fragHandler == null) goto _L6; else goto _L5
_L5:
        fragHandler.onUpdate(103, null, MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        return;
_L3:
        if(fragHandler != null)
            fragHandler.onUpdate(102, null, MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        super.onMtvAppLiveBroadcastNotify(i, obj);
        return;
    }

    protected void onResume()
    {
        super.onResume();
        mCurrentGenericPlayer = this;
    }

    protected abstract void registerVideoSurfaceView(boolean flag);

    protected boolean requestSystemKeyEvent(int i, boolean flag)
    {
        IWindowManager iwindowmanager = android.view.IWindowManager.Stub.asInterface(ServiceManager.getService("window"));
        MtvUtilDebug.Low("MtvUiGenericPlayer", "requestSystemKeyEvent");
        try
        {
            flag = iwindowmanager.requestSystemKeyEvent(i, getComponentName(), flag);
        }
        catch(RemoteException remoteexception)
        {
            remoteexception.printStackTrace();
            return false;
        }
        return flag;
    }

    protected void setActivityProperty()
    {
        requestWindowFeature(1);
        if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 0)
            getWindow().clearFlags(1024);
        else
            getWindow().addFlags(1024);
        setVolumeControlStream(3);
    }

    protected void setPhoneLocked(boolean flag)
    {
        if(lockImage == null || sleepTimer == null)
            return;
        int i;
        if(flag)
            i = 0;
        else
            i = 8;
        lockImage.setVisibility(i);
    }

    protected static final String CHANNEL5_1_VISIBILITY = "5_1channel";
    protected static final String LOCK_VISIBILITY = "lockVisibility";
    protected static final String SLEEPTIMER_VISIBILITY = "sleeptimer";
    private static final String TAG = "MtvUiGenericPlayer";
    protected static MtvUiGenericPlayer mCurrentGenericPlayer = null;
    protected static Handler mGenericMsgHAndler = new Handler() {

        public void handleMessage(Message message)
        {
            message.what;
            JVM INSTR lookupswitch 2: default 32
        //                       301: 33
        //                       323: 98;
               goto _L1 _L2 _L3
_L1:
            return;
_L2:
            if(MtvUiGenericPlayer.mCurrentGenericPlayer == null)
            {
                MtvUtilDebug.Low("MtvUiGenericPlayer", "mCurrentGenericPlayer is null... Ignoring control Animation Runnable !");
                return;
            }
            String s = null;
            ControlAnimationRunnable controlanimationrunnable = MtvUiGenericPlayer.mCurrentGenericPlayer.mControlAnimationRunnable;
            if(message.obj != null)
                s = (String)message.obj;
            if(s != null)
            {
                controlanimationrunnable.setAnimationEnable(true);
                controlanimationrunnable.setAnimationText(s);
            } else
            {
                controlanimationrunnable.setAnimationEnable(false);
            }
            controlanimationrunnable.postAnimationToRunInUIThread();
            return;
_L3:
            MtvURI mtvuri = null;
            if(message.obj instanceof MtvURI)
                mtvuri = (MtvURI)message.obj;
            if(mtvuri != null && MtvAppPlaybackContextManager.getInstance().getCurrentContext() != null)
            {
                MtvUtilDebug.Low("MtvUiGenericPlayer", (new StringBuilder()).append("Dispatching Open of ch = ").append(mtvuri.chnlNum()).append(" fileInde = ").append(mtvuri.fileIndex()).toString());
                MtvAppPlayerOneSeg.getInstance().open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), mtvuri);
                return;
            }
            if(true) goto _L1; else goto _L4
_L4:
        }

    }
;
    protected MtvUiFragHandler fragHandler;
    protected ImageView lockImage;
    protected ImageView mAnimationImage;
    protected RelativeLayout mAnimationlayout;
    protected MtvUiBmlSurfaceView mBmlSurface;
    protected RelativeLayout mBottomBackground;
    protected TextView mCaptionView;
    protected ControlAnimationRunnable mControlAnimationRunnable;
    protected SurfaceView mHiddenSurfaceView;
    protected ImageView mImgViewNoChannel;
    protected MtvAppPlaybackContext mMtvAppPlaybackContext;
    protected IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    protected MtvPreferences mMtvPreferences;
    protected ImageButton mRotateButton;
    protected ImageButton mRotateButtonFilePlayer;
    private ContentObserver mRotationObserver;
    protected TextView mTxtAnimation;
    protected SurfaceView mVideoSurfaceView;
    protected Runnable postHeadsetUpdate;
    protected Animation rotatingAnimation;
    protected ImageView sleepTimer;

}
