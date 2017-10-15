// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.bml;

import android.app.Activity;
import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.util.AttributeSet;
import android.view.animation.Animation;
import android.widget.*;
import com.samsung.sec.mtv.app.bml.IMtvAppBmlAnimationListener;
import com.samsung.sec.mtv.app.bml.MtvAppBml;
import com.samsung.sec.mtv.utility.MtvPreferences;

class MtvUiBmlAnimation extends Animation
    implements IMtvAppBmlAnimationListener
{

    public MtvUiBmlAnimation(Context context, AttributeSet attributeset, MtvAppBml mtvappbml)
    {
        super(context, attributeset);
        mMtvPreferences = null;
        mContext = context;
        mMtvPreferences = new MtvPreferences(context);
        init();
        mBmlApp = mtvappbml;
    }

    public void init()
    {
        if(mContext instanceof Activity)
        {
            ImageView imageview = (ImageView)((Activity)mContext).findViewById(0x7f0a000f);
            if(imageview != null)
                mbmlanimation = (AnimationDrawable)imageview.getBackground();
            mbmlAnimTextView = (TextView)((Activity)mContext).findViewById(0x7f0a0010);
            bmlAnimLayout = (RelativeLayout)((Activity)mContext).findViewById(0x7f0a000d);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiBmlAnimation", "mContext is not an Activity or mContext is null...");
            return;
        }
    }

    public boolean isRunning()
    {
        if(mbmlanimation == null)
        {
            return false;
        } else
        {
            MtvUtilDebug.Low("MtvUiBmlAnimation", "isRunning:  BML animation is running ");
            return mbmlanimation.isRunning();
        }
    }

    public void onResume()
    {
        if(mBmlApp != null)
        {
            mBmlApp.registerBmlAnimationListener(this);
            if(mBmlApp.getCurrentUIEvt() == com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_START_ANIMATION)
                startBmlAnimation();
            else
            if(mBmlApp.getCurrentUIEvt() == com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.AppBmlUIEvents.MTV_APP_BML_UI_EVT_STOP_ANIMATION)
            {
                stopBmlAnimation();
                return;
            }
        }
    }

    public void setBmlAnimationText(com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlAppAnimMessages bmlappanimmessages)
    {
        int i = 0x7f070205;
        if(mContext == null) goto _L2; else goto _L1
_L1:
        static class _cls1
        {

            static final int $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$BmlAppAnimMessages[];

            static 
            {
                $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$BmlAppAnimMessages = new int[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlAppAnimMessages.values().length];
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$BmlAppAnimMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlAppAnimMessages.MTV_APP_BML_RECEIVING.ordinal()] = 1;
                }
                catch(NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$BmlAppAnimMessages[com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlAppAnimMessages.MTV_APP_BML_RETREIVING.ordinal()] = 2;
                }
                catch(NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.samsung.sec.mtv.app.bml.MtvAppBmlConstants.BmlAppAnimMessages[bmlappanimmessages.ordinal()];
        JVM INSTR tableswitch 1 2: default 40
    //                   1 51
    //                   2 57;
           goto _L3 _L4 _L5
_L3:
        animText = mContext.getString(i);
_L2:
        return;
_L4:
        i = 0x7f070205;
        continue; /* Loop/switch isn't completed */
_L5:
        i = 0x7f070206;
        if(true) goto _L3; else goto _L6
_L6:
    }

    public void startBmlAnimation()
    {
        if(mContext.getResources().getConfiguration().orientation == 2)
        {
            MtvUtilDebug.Low("MtvUiBmlAnimation", "startBmlAnimation: landscape mode return ");
            stopBmlAnimation();
        } else
        {
            if(mbmlAnimTextView != null)
            {
                mbmlAnimTextView.setText(animText);
                mbmlAnimTextView.setVisibility(0);
            }
            if(mMtvPreferences.isCaptionEnabled())
            {
                if(bmlAnimLayout != null)
                    bmlAnimLayout.setPadding(0, 100, 0, 0);
            } else
            if(bmlAnimLayout != null)
                bmlAnimLayout.setPadding(0, 0, 0, 0);
            if(mbmlanimation != null)
                if(!mbmlanimation.isRunning())
                {
                    MtvUtilDebug.Low("MtvUiBmlAnimation", "startBmlAnimation:  starting BML animation 1 ");
                    mbmlanimation.start();
                    mbmlanimation.invalidateSelf();
                } else
                {
                    MtvUtilDebug.Low("MtvUiBmlAnimation", "startBmlAnimation:  starting BML animation 2 ");
                    mbmlanimation.stop();
                    mbmlanimation.start();
                }
            if(bmlAnimLayout != null)
            {
                bmlAnimLayout.setVisibility(0);
                return;
            }
        }
    }

    public void stopBmlAnimation()
    {
        if(mbmlanimation != null)
        {
            MtvUtilDebug.Low("MtvUiBmlAnimation", "stopBmlAnimation: stopping BML animation ");
            mbmlanimation.stop();
        }
        if(bmlAnimLayout != null)
            bmlAnimLayout.setVisibility(8);
        if(mbmlAnimTextView != null)
            mbmlAnimTextView.setVisibility(8);
    }

    private static final String TAG = "MtvUiBmlAnimation";
    private static String animText = null;
    private static RelativeLayout bmlAnimLayout = null;
    private static MtvAppBml mBmlApp = null;
    private static Context mContext = null;
    private static TextView mbmlAnimTextView = null;
    private static AnimationDrawable mbmlanimation = null;
    private MtvPreferences mMtvPreferences;

}
