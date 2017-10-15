// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.common;

import android.app.AlertDialog;
import android.app.KeyguardManager;
import android.broadcast.helper.MtvUtilDebug;
import android.content.*;
import android.os.*;
import android.view.Window;
import android.widget.Toast;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.provider.MtvReservation;
import com.samsung.sec.mtv.provider.MtvReservationManager;
import com.samsung.sec.mtv.utility.*;

// Referenced classes of package com.samsung.sec.mtv.ui.common:
//            MtvBaseActivity

public class MtvUiPopUpActivity extends MtvBaseActivity
{
    private class MtvReservationAlertControl
    {

        private void cheakAndReEnableScreenLock()
        {
            MtvUtilDebug.Low("MtvUiPopUpActivity", (new StringBuilder()).append("Enable  Key Guard     :").append(mKeyguardManager.inKeyguardRestrictedInputMode()).toString());
            if(mKeyguardManager.inKeyguardRestrictedInputMode())
                mKeyguardLock.reenableKeyguard();
        }

        private void checkAndDisableScreenLock()
        {
            mKeyguardManager = (KeyguardManager)mContext.getSystemService("keyguard");
            mKeyguardLock = mKeyguardManager.newKeyguardLock("keyguard");
            MtvUtilDebug.Low("MtvUiPopUpActivity", (new StringBuilder()).append("Disable Key Guard     :").append(mKeyguardManager.inKeyguardRestrictedInputMode()).toString());
            if(mKeyguardManager.inKeyguardRestrictedInputMode())
                mKeyguardLock.disableKeyguard();
        }

        private android.app.KeyguardManager.KeyguardLock mKeyguardLock;
        private KeyguardManager mKeyguardManager;
        private final Runnable runnableReenterKeyguard;
        final MtvUiPopUpActivity this$0;




        private MtvReservationAlertControl()
        {
            this$0 = MtvUiPopUpActivity.this;
            super();
            runnableReenterKeyguard = new _cls1();
        }

    }


    public MtvUiPopUpActivity()
    {
        mDialog = null;
        mDialogBuilder = null;
        mContext = null;
        AfetrreservationOk = false;
        AnatenaAlertfrom = false;
        mMtvReservationAlertControl = null;
        dialogGravity = 17;
        RunnablePopupExpire = new Runnable() {

            public void run()
            {
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                switch(MtvUiPopUpActivity.type)
                {
                case 6: // '\006'
                default:
                    return;

                case 0: // '\0'
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "RunnablePopupExpire POPUP_TYPE_LOW_BATTERY ");
                    handleLowBatteryOK();
                    return;

                case 7: // '\007'
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "RunnablePopupExpire POPUP_TYPE_LOW_MEMORY ");
                    handleLowMemoryOK();
                    return;

                case 1: // '\001'
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "RunnablePopupExpire POPUP_TYPE_SLEEP_TIMER_EXIT ");
                    handleSleepTimerOK();
                    return;

                case 2: // '\002'
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "RunnablePopupExpire POPUP_TYPE_RESERVATION_ALERT ");
                    handleReservationOK();
                    return;

                case 3: // '\003'
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "RunnablePopupExpire POPUP_TYPE_LAUNCH_ANTENNA_ALERT ");
                    handleLaunchAntennaOK();
                    return;

                case 8: // '\b'
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "RunnablePopupExpire POPUP_TYPE_LAUNCH_ANTENNA_ALERT_DIALOG ");
                    handleLaunchAntennaEnable();
                    return;

                case 4: // '\004'
                case 5: // '\005'
                    handleExternalMedia();
                    return;
                }
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
;
    }

    private void createPopup(int i)
    {
        i;
        JVM INSTR tableswitch 0 9: default 56
    //                   0 64
    //                   1 208
    //                   2 310
    //                   3 590
    //                   4 849
    //                   5 891
    //                   6 838
    //                   7 136
    //                   8 744
    //                   9 933;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11
_L1:
        MtvUtilDebug.Low("MtvUiPopUpActivity", "INVALID POPUP TYPE");
_L13:
        return;
_L2:
        if(!isBatteryLowPopupAvailable)
        {
            isBatteryLowPopupAvailable = true;
            mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f07026a).setMessage(0x7f070249).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "POPUP_TYPE_LOW_BATTERY onClick OK ");
                    MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                    handleLowBatteryOK();
                }

                final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
            }
).setCancelable(false).create();
            mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
            return;
        } else
        {
            finish();
            return;
        }
_L9:
        if(!isMemoryLowPopupAvailable)
        {
            isMemoryLowPopupAvailable = true;
            mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f07026c).setMessage(0x7f07026d).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int j)
                {
                    MtvUtilDebug.Low("MtvUiPopUpActivity", "POPUP_TYPE_LOW_MEMORY onClick OK ");
                    MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                    handleLowMemoryOK();
                }

                final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
            }
).setCancelable(false).create();
            mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
            return;
        } else
        {
            finish();
            return;
        }
_L3:
        String s;
        if(MtvAppPlaybackContextManager.getInstance().getCurrentContext().getState().getOp() == 20487)
            s = getString(0x7f0702e6);
        else
            s = getString(0x7f0702e5);
        mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f0701ef).setMessage(s).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUtilDebug.Low("MtvUiPopUpActivity", "POPUP_TYPE_SLEEP_TIMER_EXIT onClick OK ");
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                handleSleepTimerOK();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                (new MtvPreferences(getApplicationContext())).setAutoPowerOffTime(MtvUiPopUpActivity.SLEEP_TIMER_NONE);
                finish();
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).create();
        mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
        return;
_L4:
        final MtvReservation reserve = getIntent().getExtras();
        if(reserve == null) goto _L13; else goto _L12
_L12:
        mReservationId = reserve.getInt("dbId");
        mPreferences = new MtvPreferences(getApplicationContext());
        reserve = MtvReservationManager.find(getApplicationContext(), mReservationId);
        if(!mPreferences.isSViewCoverClosed() && reserve != null)
        {
            boolean flag;
            if(reserve.mPgmType == 0)
                i = 1;
            else
                i = 0;
            if(reserve.mPgmType == 1)
                flag = true;
            else
                flag = false;
            if((i | flag) != 0)
            {
                if(mMtvReservationAlertControl == null)
                    mMtvReservationAlertControl = new MtvReservationAlertControl();
                mMtvReservationAlertControl.checkAndDisableScreenLock();
            }
        }
        mDialogBuilder = new android.app.AlertDialog.Builder(this);
        mDialogBuilder.setTitle(0x7f0702bd);
        mDialogBuilder.setMessage(0x7f07031b);
        mDialogBuilder.setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                handleReservationOK();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
);
        mDialogBuilder.setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                if(reserve != null && reserve.mPgmStatus == 0)
                    MtvReservationManager.UpdateStatus(getApplicationContext(), reserve, 7);
                if(mPreferences.getReserveAlertFrom() == 0)
                {
                    dialoginterface = new Intent();
                    dialoginterface.setAction("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CANCEL_EXIT");
                    sendBroadcast(dialoginterface);
                }
                mReservationId = -1;
                finish();
            }

            final MtvUiPopUpActivity this$0;
            final MtvReservation val$reserve;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                reserve = mtvreservation;
                super();
            }
        }
);
        mDialogBuilder.setCancelable(false);
        reserve = new Intent();
        reserve.setAction("com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END_DIALOG_CLOSE");
        sendBroadcast(reserve);
        mDialog = mDialogBuilder.create();
        if(mPreferences.getReservationAlertID() != -1)
        {
            mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
            return;
        } else
        {
            mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 4000L);
            return;
        }
_L5:
        Object obj;
        if(AnatenaAlertfrom)
            obj = getString(0x7f0701e0);
        else
            obj = getString(0x7f0702bd);
        obj = (new android.app.AlertDialog.Builder(this)).setTitle(((CharSequence) (obj))).setIcon(0x7f020073);
        if(MtvFeatures.hasExternalAntenna())
            i = 0x7f0701e2;
        else
            i = 0x7f0701e1;
        mDialog = ((android.app.AlertDialog.Builder) (obj)).setMessage(i).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUtilDebug.Low("MtvUiPopUpActivity", "POPUP_TYPE_LAUNCH_ANTENNA_ALERT onClick OK ");
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                handleLaunchAntennaOK();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).create();
        mPreferences = new MtvPreferences(getApplicationContext());
        if(!mPreferences.isSViewCoverClosed())
        {
            if(mMtvReservationAlertControl == null)
                mMtvReservationAlertControl = new MtvReservationAlertControl();
            mMtvReservationAlertControl.checkAndDisableScreenLock();
        }
        mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
        return;
_L10:
        String s1 = getString(0x7f070265);
        mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(s1).setIcon(0x7f020073).setMessage(0x7f07024b).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUtilDebug.Low("MtvUiPopUpActivity", "POPUP_TYPE_LAUNCH_ANTENNA_ALERT_DIALOG onClick OK ");
                MtvUiPopUpActivity.mPopupUiMsgHandler.removeCallbacks(RunnablePopupExpire);
                handleLaunchAntennaEnable();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                dialoginterface = new Intent();
                dialoginterface.putExtra("youNeedToShowAlert", false);
                dialoginterface.setFlags(0x4000000);
                dialoginterface.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
                startActivity(dialoginterface);
                MtvUiPopUpActivity.mPopupUiMsgHandler.postDelayed(mMtvReservationAlertControl.runnableReenterKeyguard, 5000L);
                finish();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).create();
        if(mMtvReservationAlertControl == null)
            mMtvReservationAlertControl = new MtvReservationAlertControl();
        mMtvReservationAlertControl.checkAndDisableScreenLock();
        return;
_L8:
        if(!MtvFeatures.is3LMEnabled()) goto _L13; else goto _L14
_L14:
        handle3LMBlocking();
        return;
_L6:
        mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f07024c).setMessage(0x7f070278).create();
        mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
        return;
_L7:
        mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f07024c).setMessage(0x7f07027a).create();
        mPopupUiMsgHandler.postDelayed(RunnablePopupExpire, 5000L);
        return;
_L11:
        mDialog = (new android.app.AlertDialog.Builder(this)).setTitle(0x7f070249).setMessage(0x7f0702c3).setIcon(0x7f020073).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                MtvUtilAppService.setAppExiting(true);
                finish();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).setNegativeButton(0x7f07020b, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int j)
            {
                dialoginterface = (new android.app.AlertDialog.Builder(MtvUiPopUpActivity.this)).setTitle(0x7f0701e0);
                if(MtvFeatures.hasExternalAntenna())
                    j = 0x7f0701e2;
                else
                    j = 0x7f0701e1;
                dialoginterface = dialoginterface.setMessage(j).setIcon(0x7f020073).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        finish();
                    }

                    final _cls11 this$1;

            
            {
                this$1 = _cls11.this;
                super();
            }
                }
).create();
                dialoginterface.setCanceledOnTouchOutside(false);
                dialoginterface.show();
            }

            final MtvUiPopUpActivity this$0;

            
            {
                this$0 = MtvUiPopUpActivity.this;
                super();
            }
        }
).create();
        return;
    }

    private void handle3LMBlocking()
    {
        if(MtvFeatures.is3LMEnabled())
        {
            Toast.makeText(this, 0x7f070299, 0).show();
            MtvUtilAppService.setAppExiting(true);
            finish();
        }
    }

    private void handleExternalMedia()
    {
        MtvUtilAppService.setAppExiting(true);
        finish();
    }

    private void handleLaunchAntennaEnable()
    {
        MtvUtilDebug.High("MtvUiPopUpActivity", "handleLaunchAntennaEnable...");
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        mPreferences.setAntennaOnOff(mPreferences.getAntennaOnOff());
        finish();
        mPopupUiMsgHandler.post(mMtvReservationAlertControl.runnableReenterKeyguard);
    }

    private void handleLaunchAntennaOK()
    {
        MtvUtilDebug.High("MtvUiPopUpActivity", "handleLaunchAntennaOK...");
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        MtvUtilDebug.High("MtvUiPopUpActivity", (new StringBuilder()).append("mPreferences.getComingReservationID()---").append(mPreferences.getComingReservationID()).toString());
        if(mPreferences.getComingReservationID() != -1 && MtvReservationManager.find(getApplicationContext(), mPreferences.getComingReservationID()) != null && mMtvReservationAlertControl != null)
            mPopupUiMsgHandler.postDelayed(mMtvReservationAlertControl.runnableReenterKeyguard, 2000L);
        mPreferences.setLaunchAntennaAlert(false);
        finish();
    }

    private void handleLowBatteryOK()
    {
        isBatteryLowPopupAvailable = false;
        MtvUtilAppService.setAppExiting(true);
        finish();
    }

    private void handleLowMemoryOK()
    {
        isMemoryLowPopupAvailable = false;
        MtvUtilAppService.setAppExiting(true);
        finish();
    }

    private void handleReservationOK()
    {
        boolean flag1 = true;
        MtvUtilDebug.High("MtvUiPopUpActivity", "handleReservationOK...");
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        AfetrreservationOk = true;
        Intent intent = new Intent();
        if(mPreferences.isSViewCoverClosed())
        {
            MtvUtilDebug.High("MtvUiPopUpActivity", "handleReservationOK... SCOVER");
            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"));
            intent.setAction("com.samsung.sec.mtv.ACTION_MTV_SVIEW_COVER_VIEW");
            intent.setFlags(0x4000000);
            intent.putExtra("directLaunch", true);
            intent.putExtra("dbId", mReservationId);
            intent.putExtra("youNeedToShowAlert", false);
        } else
        {
            MtvUtilDebug.High("MtvUiPopUpActivity", "handleReservationOK... LIVEPLAYER");
            intent.putExtra("dbId", mReservationId);
            intent.putExtra("youNeedToShowAlert", false);
            intent.setFlags(0x4000000);
            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
        }
        if(!mPreferences.isSViewCoverClosed())
        {
            MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), mReservationId);
            if(mtvreservation != null)
            {
                boolean flag;
                if(mtvreservation.mPgmType == 0)
                    flag = true;
                else
                    flag = false;
                if(mtvreservation.mPgmType != 1)
                    flag1 = false;
                if(flag | flag1 && mMtvReservationAlertControl != null)
                    mPopupUiMsgHandler.postDelayed(mMtvReservationAlertControl.runnableReenterKeyguard, 5000L);
            }
        }
        startActivity(intent);
        finish();
    }

    private void handleSleepTimerOK()
    {
        MtvUtilDebug.High("MtvUiPopUpActivity", "handleSleepTimerOK");
        MtvUtilAppService.setAppExiting(true);
        MtvUtilAppService.setPreferredOrientation(-1);
        finish();
    }

    public static boolean isBatteryLowPopupAvailable()
    {
        return isBatteryLowPopupAvailable;
    }

    public static boolean isMemoryLowPopupAvailable()
    {
        return isMemoryLowPopupAvailable;
    }

    private void suppressCoverUI(boolean flag)
    {
        MtvUtilDebug.Low("MtvUiPopUpActivity", (new StringBuilder()).append("sending broadcast s cover state change, mSuppress = ").append(flag).toString());
        Intent intent = new Intent();
        intent.setAction("com.samsung.cover.STATE_CHANGE");
        intent.putExtra("suppressCoverUI", flag);
        intent.putExtra("sender", getPackageName());
        sendBroadcast(intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low("MtvUiPopUpActivity", "OnCreate");
        mtvUiPopUpActivity = this;
        requestWindowFeature(1);
        getWindow().addFlags(0x680400);
        mContext = getApplicationContext();
        setContentView(0x7f030006);
        bundle = getIntent();
        type = bundle.getIntExtra("popup_type", -1);
        AnatenaAlertfrom = bundle.getBooleanExtra("Alert_title", false);
        MtvUtilDebug.Low("MtvUiPopUpActivity", (new StringBuilder()).append("OnCreate -type").append(type).toString());
        createPopup(type);
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
    }

    protected void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiPopUpActivity", "OnDestroy");
        isBatteryLowPopupAvailable = false;
        mContext = null;
        if(mDialog != null && mDialog.isShowing())
        {
            mDialog.dismiss();
            mDialog = null;
        }
        super.onDestroy();
    }

    public void onPause()
    {
        MtvUtilDebug.Low("MtvUiPopUpActivity", "OnPause");
        if(mPreferences == null)
            mPreferences = new MtvPreferences(getApplicationContext());
        MtvUtilDebug.High("MtvUiPopUpActivity", (new StringBuilder()).append("mPreferences.getReservationAlertID()").append(mReservationId).toString());
        if(mReservationId != -1 && AfetrreservationOk)
        {
            MtvUtilDebug.High("MtvUiPopUpActivity", (new StringBuilder()).append("mPreferences.getReservationAlertID()").append(mPreferences.getReservationAlertID()).toString());
            AfetrreservationOk = false;
            Intent intent = new Intent();
            intent.putExtra("dbId", mReservationId);
            intent.putExtra("youNeedToShowAlert", false);
            intent.setFlags(0x4000000);
            if(mPreferences.isSViewCoverClosed())
                intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover"));
            else
                intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"));
            startActivity(intent);
        }
        MtvUtilDebug.High("MtvUiPopUpActivity", " onpause startActivity");
        super.onPause();
        if(!isFinishing());
    }

    public void onResume()
    {
        MtvUtilDebug.Low("MtvUiPopUpActivity", "OnResume");
        super.onResume();
        sendBroadcast(new Intent("intent.stop.app-in-app"));
        if(MtvUtilAppService.isAppExiting())
        {
            if(!isFinishing())
                finish();
        } else
        {
            if(mPreferences == null)
                mPreferences = new MtvPreferences(getApplicationContext());
            if(!mDialog.isShowing())
            {
                if(mPreferences.isSViewCoverClosed())
                {
                    suppressCoverUI(true);
                    dialogGravity = 48;
                    MtvUtilDebug.High("MtvUiPopUpActivity", (new StringBuilder()).append("dialogGravity TOP ").append(dialogGravity).toString());
                } else
                {
                    suppressCoverUI(false);
                    dialogGravity = 17;
                    MtvUtilDebug.High("MtvUiPopUpActivity", (new StringBuilder()).append("dialogGravity CENTER ").append(dialogGravity).toString());
                }
                mDialog.getWindow().setGravity(dialogGravity);
                mDialog.setCanceledOnTouchOutside(false);
                mDialog.show();
                return;
            }
        }
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("Alert_title", AnatenaAlertfrom);
    }

    public static final int MTV_UI_POPUP_TYPE_SAVE_AND_EXIT_CONFIRMATION_ANTENNA = 9;
    public static final String POPUP_TYPE = "popup_type";
    public static final int POPUP_TYPE_3LM_BLOCKING = 6;
    public static final int POPUP_TYPE_LAUNCH_ANTENNA_ALERT = 3;
    public static final int POPUP_TYPE_LAUNCH_ANTENNA_ALERT_DIALOG = 8;
    public static final int POPUP_TYPE_LOW_BATTERY = 0;
    public static final int POPUP_TYPE_LOW_MEMORY = 7;
    public static final int POPUP_TYPE_MEDIA_MOUNTED = 4;
    public static final int POPUP_TYPE_MEDIA_UNMOUNTED = 5;
    public static final int POPUP_TYPE_RESERVATION_ALERT = 2;
    public static final int POPUP_TYPE_SLEEP_TIMER_EXIT = 1;
    private static int SLEEP_TIMER_NONE = 0;
    private static final String TAG = "MtvUiPopUpActivity";
    private static boolean isBatteryLowPopupAvailable = false;
    private static boolean isMemoryLowPopupAvailable = false;
    private static Handler mPopupUiMsgHandler = new Handler() {

        public void handleMessage(Message message)
        {
            int i = message.what;
        }

    }
;
    public static MtvUiPopUpActivity mtvUiPopUpActivity;
    public static int type = -1;
    private boolean AfetrreservationOk;
    private boolean AnatenaAlertfrom;
    private Runnable RunnablePopupExpire;
    private int dialogGravity;
    private Context mContext;
    private AlertDialog mDialog;
    private android.app.AlertDialog.Builder mDialogBuilder;
    private MtvReservationAlertControl mMtvReservationAlertControl;
    private MtvPreferences mPreferences;
    private int mReservationId;

    static 
    {
        SLEEP_TIMER_NONE = 0;
    }




/*
    static int access$1002(MtvUiPopUpActivity mtvuipopupactivity, int i)
    {
        mtvuipopupactivity.mReservationId = i;
        return i;
    }

*/












    // Unreferenced inner class com/samsung/sec/mtv/ui/common/MtvUiPopUpActivity$MtvReservationAlertControl$1

/* anonymous class */
    class MtvReservationAlertControl._cls1
        implements Runnable
    {

        public void run()
        {
            MtvUtilDebug.Low("MtvUiPopUpActivity", "runnableReenterKeyguard     :");
            cheakAndReEnableScreenLock();
        }

        final MtvReservationAlertControl this$1;

            
            {
                this$1 = MtvReservationAlertControl.this;
                super();
            }
    }

}
