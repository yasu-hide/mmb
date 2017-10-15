// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.liveplayer;

import android.app.*;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import android.content.*;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.os.*;
import android.telephony.TelephonyManager;
import android.view.*;
import android.view.animation.AnimationUtils;
import android.widget.*;
import com.samsung.sec.mtv.app.bml.MtvAppBml;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.reciever.MtvBroadcastReceiver;
import com.samsung.sec.mtv.reciever.MtvLiveBroadcastReciever;
import com.samsung.sec.mtv.ui.bml.IMtvUiBmlActivity;
import com.samsung.sec.mtv.ui.bml.MtvUiBmlSurfaceView;
import com.samsung.sec.mtv.ui.channelguide.MtvUiChannelGuide;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.ui.conflict.MtvConflictHandler;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer;
import com.samsung.sec.mtv.ui.minitv.MtvMiniModeService;
import com.samsung.sec.mtv.ui.sviewcover.MtvUiSViewCover;
import com.samsung.sec.mtv.utility.*;
import com.sec.android.emergencymode.EmergencyManager;
import java.util.*;

public class MtvUiLivePlayer extends MtvUiGenericPlayer
    implements com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener, IMtvAppPlaybackStateListener, IMtvAppProgramAttributeListener, IMtvUiBmlActivity
{
    public static class ErrorDialogFragment extends DialogFragment
    {

        public static ErrorDialogFragment newInstance(int i)
        {
            ErrorDialogFragment errordialogfragment = new ErrorDialogFragment();
            errordialogfragment.myStringId = i;
            return errordialogfragment;
        }

        public Dialog onCreateDialog(Bundle bundle)
        {
            if(bundle != null)
                myStringId = bundle.getInt("myStringId");
            bundle = (new Builder(getActivity())).setTitle(0x7f0701ec).setIcon(0x7f020073).setMessage(getString(myStringId)).setPositiveButton(0x7f070298, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

                final ErrorDialogFragment this$0;

            
            {
                this$0 = ErrorDialogFragment.this;
                Object();
            }
            }
).create();
            bundle.setCanceledOnTouchOutside(false);
            bundle.getWindow().addFlags(1024);
            return bundle;
        }

        public void onSaveInstanceState(Bundle bundle)
        {
            bundle.putInt("myStringId", myStringId);
            onSaveInstanceState(bundle);
        }

        public static final String TAG = "ErrorDialogFragment";
        private int myStringId;

        public ErrorDialogFragment()
        {
        }
    }

    public static class MtvAppRecorderInfo
    {

        public static MtvAppRecorderInfo getInstance()
        {
            if(mSingletonInstance == null)
                mSingletonInstance = new MtvAppRecorderInfo();
            return mSingletonInstance;
        }

        public static MtvAppRecorderInfo getInstance(MtvUiFragHandler mtvuifraghandler)
        {
            if(mSingletonInstance == null)
                mSingletonInstance = new MtvAppRecorderInfo(mtvuifraghandler);
            else
                mSingletonInstance.mFragHandler = mtvuifraghandler;
            return mSingletonInstance;
        }

        public static void reset()
        {
            MtvUtilDebug.Low("MtvAppRecorderInfo", "Reset called");
            mSingletonInstance = null;
        }

        public void continueRecordTimer(int i)
        {
            mRecordTime = i;
            if(mRecordTime >= 6)
                isRecordedFileSavable = true;
            StringBuilder stringbuilder = (new StringBuilder()).append("Record Timer continuing from [").append(mRecordTime).append("] seconds. File can ");
            String s;
            if(isRecordedFileSavable)
                s = "be";
            else
                s = "not be";
            MtvUtilDebug.Low("MtvAppRecorderInfo", stringbuilder.append(s).append(" saved now").toString());
            mRecordHandler.removeCallbacks(mRecordTimeCounter);
            mRecordHandler.postDelayed(mRecordTimeCounter, 200L);
        }

        public int getRecordTime()
        {
            return mRecordTime;
        }

        public boolean isRecordTimerStarted()
        {
            return isStarted;
        }

        public boolean isRecordedFileSavable()
        {
            return isRecordedFileSavable;
        }

        public void startRecordTimer()
        {
            mRecordTime = 0;
            isRecordedFileSavable = false;
            isStarted = true;
            MtvUtilDebug.High("MtvAppRecorderInfo", (new StringBuilder()).append("Record Timer started @ [").append(mRecordTime).append("] secs").toString());
            mRecordHandler.removeCallbacks(mRecordTimeCounter);
            mRecordHandler.postDelayed(mRecordTimeCounter, 200L);
        }

        public void stopRecordTimer()
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("Record Timer stopped @ [").append(mRecordTime).append(" ] secs. File can ");
            String s;
            if(isRecordedFileSavable)
                s = "be";
            else
                s = "not be";
            MtvUtilDebug.High("MtvAppRecorderInfo", stringbuilder.append(s).append(" saved").toString());
            mRecordTime = -1;
            isRecordedFileSavable = false;
            isStarted = false;
            mRecordHandler.removeCallbacks(mRecordTimeCounter);
        }

        private static final int MINIMUM_RECORD_TIMER = 6;
        private static final int RECORD_TIMER_INCREMENT_INTERVAL = 1000;
        private static final String TAG = "MtvAppRecorderInfo";
        private static MtvAppRecorderInfo mSingletonInstance = null;
        private boolean isRecordedFileSavable;
        private boolean isStarted;
        private MtvUiFragHandler mFragHandler;
        private Handler mRecordHandler;
        private int mRecordTime;
        private Runnable mRecordTimeCounter = new _cls1();




/*
        static int access$17108(MtvAppRecorderInfo mtvapprecorderinfo)
        {
            int i = mtvapprecorderinfo.mRecordTime;
            mtvapprecorderinfo.mRecordTime = i + 1;
            return i;
        }

*/





/*
        static boolean access$7202(MtvAppRecorderInfo mtvapprecorderinfo, boolean flag)
        {
            mtvapprecorderinfo.isRecordedFileSavable = flag;
            return flag;
        }

*/

        private MtvAppRecorderInfo()
        {
            mRecordHandler = new Handler();
            mRecordTime = 0;
            isRecordedFileSavable = false;
            isStarted = false;
            mFragHandler = null;
            MtvUtilDebug.Low("MtvAppRecorderInfo", "Created newly...");
        }

        private MtvAppRecorderInfo(MtvUiFragHandler mtvuifraghandler)
        {
            mRecordHandler = new Handler();
            mRecordTime = 0;
            isRecordedFileSavable = false;
            isStarted = false;
            mFragHandler = null;
            MtvUtilDebug.Low("MtvAppRecorderInfo", "Created newly with fragHandler");
            mFragHandler = mtvuifraghandler;
        }
    }

    private class RunnableShowSignalAlertDialog
        implements Runnable
    {

        public void run()
        {
            showSignalAlertDialog(mType);
        }

        private final int mType;
        final MtvUiLivePlayer this$0;

        public RunnableShowSignalAlertDialog(int i)
        {
            this$0 = MtvUiLivePlayer.this;
            Object();
            mType = i;
        }
    }


    public MtvUiLivePlayer()
    {
        mExitProgressDialog = null;
        mProgressDialog = null;
        mExitAppDialog = null;
        mNoSignalAlertDialog = null;
        mReservationEndDialog = null;
        mMtvAudMgr = null;
        restrictLaunch = false;
        orientation = -1;
        epgChNo = -1;
        epgServiceId = -1;
        epgAreaId = -1;
        mEpgIntent = null;
        mMinRecTime = null;
        bKeyGuardlock = false;
        mRotationObserver = null;
        shownToastforOperationNA = false;
        mAudioManager = null;
        bIsRecordingFailed = false;
        isStopRecCommandInProcess = false;
        bIsBuffering = false;
        isStartedFromChannelScheduleForRecord = false;
        postHeadsetUpdate = new Runnable() ;
        mRunnableUpdateCaptureToFrag = new Runnable() ;
        mRunnableUpdateRecordComponents = new Runnable() ;
        mRunnableUpdateRecordDuringLock = new Runnable() {

            public void run()
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "mRunnableUpdateRecordDuringLock called");
                updateFragmentsOnLock();
            }

            final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
        }
;
        mLiveUiMsgHandler = new Handler() ;
        runnableVolumeEscalating = new Runnable() ;
        runnableVolumeDecreasing = new Runnable() ;
        runnableMenuKeyPress = new Runnable() ;
        runnableRemoveMainFrag = new Runnable() ;
        runnableShowNotification = new Runnable() {

            public void run()
            {
                updateNotification();
            }

            final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
        }
;
        RunnableRemoveRotateButton = new Runnable() ;
        RunnableRemoveSleepTimerIcon = new Runnable() ;
        RunnableUpdateProgramChannelInfo = new Runnable() ;
        RunnableUpdateSignalInfo = new Runnable() ;
        RunnableRemoveWeakSignalDialogue = new Runnable() {

            public void run()
            {
                if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null && isResumed())
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "RunnableRemoveWeakSignalDialogue... removed");
                    MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                    onFragEvent(258, null);
                }
            }

            final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
        }
;
        RunnableresetComingReservationID = new Runnable() ;
        RunnableCheckIsReservationAndStart = new Runnable() {

            public void run()
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "RunnableCheckIsReservationAndStart...");
                checkIsReservationAndStart();
            }

            final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
        }
;
    }

    private void CheckIsReservationPartialOrNone(int i)
    {
        int j;
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        j = mMtvPreferences.getReservationAlertID();
        if(j == -1) goto _L2; else goto _L1
_L1:
        MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), j);
        if(mtvreservation == null) goto _L2; else goto _L3
_L3:
        i;
        JVM INSTR tableswitch 4 5: default 72
    //                   4 81
    //                   5 132;
           goto _L4 _L5 _L6
_L4:
        MtvUtilDebug.Low("MtvUiLivePlayer", "No Above");
_L2:
        return;
_L5:
        MtvUtilDebug.Low("MtvUiLivePlayer", "CheckIsReservationPartialOrNone    :STATUS_FAIL_SIGNAL_ERROR");
        if(mtvreservation.mPgmStatus == 6)
            if(mtvreservation.mPgmType == 1)
            {
                CheckIsreservationAndUpdatefailureReason(4);
                return;
            } else
            {
                CheckIsreservationAndUpdatefailureReason(8);
                return;
            }
        if(mtvreservation.mPgmStatus == 0)
        {
            CheckIsreservationAndUpdatefailureReason(4);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.Low("MtvUiLivePlayer", "CheckIsReservationPartialOrNone    :STATUS_FAIL_MEMORY_ERROR");
        if(mtvreservation.mPgmStatus == 6)
            if(mtvreservation.mPgmType == 1)
            {
                CheckIsreservationAndUpdatefailureReason(1);
                return;
            } else
            {
                CheckIsreservationAndUpdatefailureReason(9);
                return;
            }
        if(mtvreservation.mPgmStatus == 0)
        {
            CheckIsreservationAndUpdatefailureReason(5);
            return;
        }
        if(true) goto _L2; else goto _L7
_L7:
    }

    private void CheckIsreservationAndUpdatefailureReason(int i)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "CheckIsreservationAndUpdatefailureReason");
        Object obj = MtvReservationManager.find(this, mMtvPreferences.getReservationAlertID());
        if(obj == null)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "CheckIsreservationAndUpdatefailureReason() : invalid reservation");
            return;
        }
        int j;
        boolean flag;
        String s;
        if(mMtvPreferences.getReserveAlertFrom() == 0)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "CheckIsreservationAndUpdatefailureReason() : OUT_OF_APP");
            flag = true;
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "CheckIsreservationAndUpdatefailureReason() : not OUT_OF_APP");
            flag = false;
        }
        if(((MtvReservation) (obj)).mPgmType == 0)
        {
            if(flag && !mMtvPreferences.getIsDtvStartedByFromMiniMode())
                s = getString(0x7f070318);
            else
                s = getString(0x7f07031a);
        } else
        if(flag && !mMtvPreferences.getIsDtvStartedByFromMiniMode())
            s = getString(0x7f070318);
        else
            s = getString(0x7f070317);
        j = ((MtvReservation) (obj)).mPgmType;
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("FailStatusAndreason").append(i).toString());
        checkIsReservationAndEnd(i);
        isInBGRecording = false;
        obj = new Bundle();
        ((Bundle) (obj)).putInt("dialogType", 7);
        ((Bundle) (obj)).putBoolean("reserve_end_exit", flag);
        ((Bundle) (obj)).putString("dialog_msg", s);
        ((Bundle) (obj)).putInt("reserve_type", j);
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
        MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :NoSignal popup closed");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_terminate");
        MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :mNoSignalTerminate popup closed");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "exit_confirmation");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "save_exit_confirmation");
        endFailReservationProgram(((Bundle) (obj)));
    }

    private void LaunchChannelGuideActivity(int i)
    {
        if(fragHandler != null && fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        Intent intent = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide);
        intent.putExtra("initialize", true);
        intent.putExtra("tab", i);
        startActivityForResult(intent, 0);
    }

    private void LaunchFilePLayerActivity(Intent intent)
    {
        Intent intent1 = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer);
        intent1.putExtras(intent.getExtras());
        startActivity(intent1);
        MtvUtilDebug.High("MtvUiLivePlayer", (new StringBuilder()).append("Starting File PLayer from Minimode").append(intent1.getExtras().toString()).toString());
    }

    private boolean blockUiEventsForReservation()
    {
label0:
        {
label1:
            {
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("blockUiEventsForReservation ").append(mMtvPreferences.isReservationProgram()).append("   :::   ").append(mMtvAppPlaybackContext).toString());
                if(mMtvPreferences.isReservationProgram())
                {
                    if(mMtvAppPlaybackContext == null)
                        break label0;
                    MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("blockUiEventsForReservation ").append(mMtvAppPlaybackContext.getType()).append("   :::   ").append(mMtvAppPlaybackContext.getState().getState()).toString());
                    if(mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV || mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
                        break label1;
                }
                return false;
            }
            return true;
        }
        return true;
    }

    private void cancelRecording()
    {
        if(fragHandler != null)
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 0)
            {
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 3000L, false, new int[0]);
                mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
                mLiveUiMsgHandler.post(RunnableUpdateSignalInfo);
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L, false, new int[0]);
            }
        }
        dismissProgressDialog();
        mMtvPlayerOneSeg.cancelRecord(mMtvAppPlaybackContext);
        Toast.makeText(this, 0x7f0702af, 0).show();
    }

    private boolean checkCondition()
    {
        int i = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        boolean flag;
        if(i == 0 || i != 0 && !isPhoneLocked())
            flag = true;
        else
            flag = false;
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("checkCondition ").append(flag).toString());
        return flag;
    }

    private boolean checkIsCalling(boolean flag)
    {
        boolean flag1 = false;
        if(((TelephonyManager)getSystemService("phone")).getCallState() == 2)
        {
            if(flag)
            {
                if(mExitToast == null)
                    mExitToast = Toast.makeText(this, "", 0);
                else
                    mExitToast.cancel();
                mExitToast.setText(0x7f070306);
                mExitToast.setDuration(1000);
                mExitToast.show();
                flag = true;
            } else
            {
                flag = true;
            }
        } else
        {
            mExitToast = null;
            flag = flag1;
        }
        MtvUtilDebug.Mid("MtvUiLivePlayer", (new StringBuilder()).append("checkIsCalling() + result = ").append(flag).toString());
        return flag;
    }

    private boolean checkIsMassStorageUSBEnabled()
    {
        boolean flag1 = false;
        if(Environment.getExternalStorageState().equals("mounted")) goto _L2; else goto _L1
_L1:
        boolean flag;
        if(mExitToast == null)
            mExitToast = Toast.makeText(this, "", 0);
        else
            mExitToast.cancel();
        mExitToast.setText(0x7f07027f);
        mExitToast.setDuration(0);
        mExitToast.show();
        flag = true;
_L4:
        MtvUtilDebug.Mid("MtvUiLivePlayer", (new StringBuilder()).append("checkIsMassStorageUSBEnabled() + result = ").append(flag).toString());
        return flag;
_L2:
        flag = flag1;
        if(mExitToast != null)
        {
            mExitToast.cancel();
            mExitToast = null;
            flag = flag1;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private boolean checkIsRelaunched()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(!isTaskRoot())
        {
            flag = flag1;
            if(mMtvPreferences.getComingReservationID() == -1)
            {
                Intent intent = getIntent();
                String s = intent.getAction();
                flag = flag1;
                if(intent.hasCategory("android.intent.category.LAUNCHER"))
                {
                    flag = flag1;
                    if(s != null)
                    {
                        flag = flag1;
                        if(s.equals("android.intent.action.MAIN"))
                            flag = true;
                    }
                }
            }
        }
        MtvUtilDebug.Mid("MtvUiLivePlayer", (new StringBuilder()).append("checkIsRelaunched() + result = ").append(flag).toString());
        return flag;
    }

    private void checkIsReservationAndEnd(int i)
    {
        shownToastforOperationNA = false;
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        int j = mMtvPreferences.getReservationAlertID();
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("checkIsReservationAndEnd() newstatus:").append(i).append("  reserve_id : ").append(j).toString());
        if(mMtvPreferences.isReservationProgram() && j > -1)
        {
            MtvReservation mtvreservation = MtvReservationManager.find(this, j);
            if(mtvreservation != null)
            {
                if(i == 1 && !MtvReservationManager.isImmediateReservation(this, mtvreservation.mTimeEnd))
                {
                    Intent intent = getIntent();
                    intent.removeExtra("dbId");
                    intent.removeExtra("youNeedToShowAlert");
                }
                if(mMtvPreferences.getComingReservationID() == j)
                    mMtvPreferences.setComingReservationID(-1);
                MtvReservationManager.UpdateStatus(this, mtvreservation, i);
            }
        }
    }

    private boolean checkIsReservationAndStart()
    {
        boolean flag1;
        Bundle bundle;
        MtvUtilDebug.Low("MtvUiLivePlayer", "checkIsReservationAndStart()");
        flag1 = false;
        bundle = getIntent().getExtras();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append(" checkIsReservationAndStart() : ").append(getIntent().toString()).append(" ").append(getIntent().hasExtra("dbId")).toString());
        if(optionsMenu != null)
        {
            optionsMenu.close();
            optionsMenu = null;
        }
        if(bundle == null || isFinishing()) goto _L2; else goto _L1
_L1:
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext == null) goto _L4; else goto _L3
_L3:
        if(mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
        {
            MtvUtilDebug.High("MtvUiLivePlayer", "current context is scan/Local.. will wait until scan is cancelled and then start reservation...");
            return false;
        }
        if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE) goto _L6; else goto _L5
_L5:
        int i;
        boolean flag;
        boolean flag2;
        MtvReservation mtvreservation;
        i = bundle.getInt("dbId", -1);
        mtvreservation = MtvReservationManager.find(this, i);
        flag2 = bundle.getBoolean("youNeedToShowAlert", false);
        flag = flag1;
        if(mtvreservation == null)
            break MISSING_BLOCK_LABEL_365;
        flag = flag1;
        if(mtvreservation.mPgmStatus != 0)
            break MISSING_BLOCK_LABEL_365;
        flag = flag1;
        if(mtvreservation.mTimeEnd <= System.currentTimeMillis())
            break MISSING_BLOCK_LABEL_365;
        if(MtvAreaManager.getCount(this) != 0) goto _L8; else goto _L7
_L7:
        checkIsReservationAndEnd(2);
        i = 0x7f070287;
        if(mtvreservation.mPgmType != 0) goto _L10; else goto _L9
_L9:
        i = 0x7f070286;
_L11:
        if(!mLiveUiMsgHandler.hasMessages(304))
            mLiveUiMsgHandler.sendEmptyMessage(304);
        Toast.makeText(getApplicationContext(), i, 0).show();
        return false;
_L10:
        if(mtvreservation.mPgmType == 1)
            i = 0x7f070287;
        if(true) goto _L11; else goto _L8
_L8:
        if(!flag2)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "checkIsReservation : this may be a valid reservation,lets check it");
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && mMtvAppPlaybackContext.getState().getOp() == 20487)
            {
                if(MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
                {
                    stopRecording();
                } else
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "Recording Cancelled as the recording time is Less than required!");
                    MtvAppRecorderInfo.getInstance().stopRecordTimer();
                    cancelRecording();
                }
            } else
            if(mMtvPreferences.getReservationAlertID() != -1 && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && mMtvAppPlaybackContext.getState().getOp() != 20487 && mMtvPreferences.getReservationAlertID() != i)
            {
                MtvReservation mtvreservation1 = MtvReservationManager.find(getApplicationContext(), mMtvPreferences.getReservationAlertID());
                if(mtvreservation1 != null)
                    if(mtvreservation1.mPgmStatus == 6)
                    {
                        if(mtvreservation1.mPgmType == 1)
                            checkIsReservationAndEnd(1);
                    } else
                    if(mtvreservation1.mPgmStatus == 0)
                        checkIsReservationAndEnd(2);
                mMtvPreferences.setReservationAlertID(i);
                startReservationProgram(mtvreservation);
            } else
            {
                mMtvPreferences.setReservationAlertID(i);
                startReservationProgram(mtvreservation);
            }
        } else
        if(flag2)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "checkIsReservation : showing reservation alert to user");
            showReservationAlert();
        }
        flag = true;
_L13:
        return flag;
_L6:
        MtvUtilDebug.Low("MtvUiLivePlayer", "checkIsReservation() : MW not initilized yet!!! ");
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L4:
        MtvUtilDebug.Low("MtvUiLivePlayer", "checkIsReservation() : MW not initilized yet!!! ");
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.Low("MtvUiLivePlayer", "checkIsReservation() : no current reservation");
        flag = flag1;
        if(true) goto _L13; else goto _L12
_L12:
    }

    private void deleteMtvPlayer()
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "inside deleteMtvPlayer...");
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20495)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "cannot issue delete as already one delete operation is going on...");
            return;
        }
        if(mMtvPlayerOneSeg != null)
        {
            mMtvPlayerOneSeg.delete(mMtvAppPlaybackContext);
            return;
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "mMtvPlayerOneSeg is null ");
            return;
        }
    }

    private void endFailReservationProgram(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram");
        if(bundle != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram -bundle null");
_L4:
        return;
_L2:
        boolean flag;
        int i = bundle.getInt("reserve_type", -1);
        flag = bundle.getBoolean("reserve_end_exit", false);
        if(i != 0)
            continue; /* Loop/switch isn't completed */
        if(flag)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram Exiting App after Stopping Record .... ");
            if(!mLiveUiMsgHandler.hasMessages(304))
            {
                mLiveUiMsgHandler.sendMessageDelayed(mLiveUiMsgHandler.obtainMessage(304), 2000L);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
        if(!flag) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram Exiting App.... ");
        if(!mLiveUiMsgHandler.hasMessages(304))
        {
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304));
            return;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    private void endReservationProgram(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram");
        if(bundle != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram -bundle null");
_L4:
        return;
_L2:
        boolean flag;
        int i = bundle.getInt("reserve_type", -1);
        flag = bundle.getBoolean("reserve_end_exit", false);
        if(i != 0)
            continue; /* Loop/switch isn't completed */
        stopRecording();
        if(!flag || mMtvPreferences.getIsDtvStartedByFromMiniMode()) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram Exiting App after Stopping Record .... ");
        mLiveUiMsgHandler.sendMessageDelayed(mLiveUiMsgHandler.obtainMessage(304), 2000L);
        return;
        if(!flag || mMtvPreferences.getIsDtvStartedByFromMiniMode()) goto _L4; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgram Exiting App.... ");
        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304));
        return;
    }

    private void endReservationProgramAndShowAlert()
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgramAndShowAlert");
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        Object obj = MtvReservationManager.find(this, mMtvPreferences.getReservationAlertID());
        if(obj == null)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgramAndShowAlert() : invalid reservation");
        } else
        {
            int i;
            boolean flag;
            String s;
            if(mMtvPreferences.getReserveAlertFrom() == 0)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgramAndShowAlert() : OUT_OF_APP");
                flag = true;
                if(MtvReservationManager.isImmediateReservation(this, ((MtvReservation) (obj)).mTimeEnd))
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgramAndShowAlert() : OUT_OF_APP BUT CONTINEOUS");
                    flag = false;
                }
            } else
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgramAndShowAlert() : not OUT_OF_APP");
                flag = false;
            }
            if(((MtvReservation) (obj)).mPgmType == 0)
            {
                if(flag && !mMtvPreferences.getIsDtvStartedByFromMiniMode())
                    s = getString(0x7f070319);
                else
                    s = getString(0x7f07031a);
            } else
            if(flag && !mMtvPreferences.getIsDtvStartedByFromMiniMode())
                s = getString(0x7f070318);
            else
                s = getString(0x7f070317);
            i = ((MtvReservation) (obj)).mPgmType;
            if(!MtvReservationManager.isImmediateReservation(this, ((MtvReservation) (obj)).mTimeEnd) || MtvReservationManager.getImmediateReservation(this, ((MtvReservation) (obj)).mTimeEnd) == null || MtvReservationManager.getImmediateReservation(this, ((MtvReservation) (obj)).mTimeEnd).mPgmStatus != 0)
            {
                if(((MtvReservation) (obj)).mPgmStatus == 6)
                {
                    if(((MtvReservation) (obj)).mPgmType == 1)
                        checkIsReservationAndEnd(1);
                } else
                if(((MtvReservation) (obj)).mPgmStatus == 0)
                    checkIsReservationAndEnd(2);
                obj = new Bundle();
                ((Bundle) (obj)).putInt("dialogType", 7);
                ((Bundle) (obj)).putBoolean("reserve_end_exit", flag);
                ((Bundle) (obj)).putString("dialog_msg", s);
                ((Bundle) (obj)).putInt("reserve_type", i);
                if(isResumed())
                {
                    mReservationEndDialog = MtvUiDialogsFrag.newInstance(((Bundle) (obj)));
                    mReservationEndDialog.show(getFragmentManager(), "reserve_end_dialog");
                    mGenericMsgHAndler.postDelayed(RunnableReservationEndPopupExpire, 5000L);
                    return;
                } else
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "endReservationProgramAndShowAlert: isResumed() - false");
                    endReservationProgram(((Bundle) (obj)));
                    return;
                }
            }
        }
    }

    private String getCurrentChannelProgramTitle(boolean flag, boolean flag1)
    {
        Object obj = "";
        String s3 = "";
        MtvOneSegChannel amtvonesegchannel[] = null;
        MtvOneSegProgram amtvonesegprogram[] = null;
        if(!flag)
        {
            amtvonesegchannel = getChannel();
            amtvonesegprogram = getProgram();
        }
        boolean flag2 = false;
        flag = false;
        String s = ((String) (obj));
        if(amtvonesegchannel != null)
        {
            int i = 0;
            do
            {
                s = ((String) (obj));
                flag2 = flag;
                if(i >= amtvonesegchannel[0].getNumberOfPhysicalIDs())
                    break;
                if(getServiceID() == amtvonesegchannel[i].getPhysicalID())
                {
                    obj = amtvonesegchannel[0].getServName();
                    flag = true;
                }
                i++;
            } while(true);
        }
        StringBuilder stringbuilder = new StringBuilder();
        String s2;
        if(amtvonesegchannel != null)
            obj = (new StringBuilder()).append("channelInfo  [").append(amtvonesegchannel.toString()).toString();
        else
            obj = "channelInfo [null";
        MtvUtilDebug.Error("MtvUiLivePlayer", stringbuilder.append(((String) (obj))).append("]channelName -[").append(s).append("]  isChannelNameset-").append(flag2).toString());
        s2 = s;
        if(mMtvPreferences != null)
            s2 = mMtvPreferences.getLatestChannelNameForDisplay(flag1);
        if(amtvonesegprogram != null)
        {
            obj = getCurrentProgramDetails();
            String s1 = s3;
            if(obj != null)
                s1 = ((MtvOneSegProgram) (obj)).getProgName();
            obj = s1;
            if(s1 != null)
            {
                obj = s1;
                if(s1.equalsIgnoreCase("No program name"))
                    obj = "";
            }
        } else
        {
            obj = "";
        }
        return (new StringBuilder()).append("").append(s2).append("\n").append(((String) (obj))).toString();
    }

    private int getNextPreviousChannelNumber(boolean flag)
    {
        int j = mMtvPreferences.getLatestVChannel();
        int i = mMtvPreferences.getLatestPChannelFromVChannel();
        if(MtvChannelManager.getCount(this) < 1)
        {
            j = -1;
            if(i < 13 || i > 52)
                i = 13;
            else
            if(i == 13 && !flag)
                i = 52;
            else
            if(i == 52 && flag)
                i = 13;
            else
            if(flag)
                i++;
            else
                i--;
        } else
        {
            if(MtvChannelManager.getCount(this) == 1)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "getNextPreviousChannelNumber : only one channel on Air ,better to handle this before you reach here.");
                return i;
            }
            MtvChannel mtvchannel;
            if(j > 0)
            {
                if(flag)
                    mtvchannel = MtvChannelManager.getNext(this, j);
                else
                    mtvchannel = MtvChannelManager.getPrevious(this, j);
            } else
            {
                mtvchannel = MtvChannelManager.getFirstOnAir(this);
            }
            if(mtvchannel != null)
            {
                i = mtvchannel.mPhysicalNum;
                j = mtvchannel.mVirtualNum;
            } else
            {
                i = 13;
                j = -1;
            }
        }
        mMtvPreferences.setLatestPChannel(i);
        mMtvPreferences.setLatestVChannel(j);
        mMtvPreferences.setLatestServiceID(0);
        mMtvPreferences.setLatestVChannelMultiChannel(0);
        return i;
    }

    private String getNotificationContent()
    {
        return getCurrentChannelProgramTitle(false, true);
    }

    private int getServiceID()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getCurrentOpenedChannelServiceId();
        else
            return 0;
    }

    private int getSignalLevel()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getSignalLevel();
        else
            return 0;
    }

    private void handleFinish(boolean flag)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "handleFinish() ::");
        boolean flag1;
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 1)
            setRequestedOrientation(0);
        else
        if(MtvUtilAppService.getRotation(getApplicationContext()) == 3)
            setRequestedOrientation(8);
        else
            setRequestedOrientation(1);
        if(mLiveUiMsgHandler.hasMessages(304))
            mLiveUiMsgHandler.removeMessages(304);
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("handleFinish() :: isResumed ").append(isResumed()).toString());
        hideNotification();
        flag1 = false;
        if(mExitProgressDialog == null)
            showExitingAppDialog();
        MtvUtilDebug.Low("MtvUiLivePlayer", "inside304");
        isScheduledReservationProgram();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getState().registerListener(this);
            PendingIntent pendingintent;
            if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
            {
                MtvUtilDebug.Mid("MtvUiLivePlayer", (new StringBuilder()).append("Exiting - OneSeg already initialized so deleting OneSeg and waiting till delete callback  ").append(mMtvAppPlaybackContext.getState().getState()).append("  ").append(mMtvAppPlaybackContext.getState().getOp()).toString());
                MtvUiGenericPlayer.removeOpenChannelMessages();
                deleteMtvPlayer();
                flag1 = true;
            } else
            if(mMtvAppPlaybackContext.getState().getOp() == 20481)
            {
                MtvUtilDebug.Mid("MtvUiLivePlayer", "Exiting - Create in Progress, so will be finish on Create callback");
            } else
            {
                MtvUtilDebug.Mid("MtvUiLivePlayer", "Got finish request during invalid state dont know what to do...So closing finishing the APP");
                releaseTunerAndFinish();
                flag1 = true;
            }
        } else
        {
            MtvUtilDebug.Mid("MtvUiLivePlayer", "Exiting - Not initilized and also create is not in progress so finish");
            releaseTunerAndFinish();
            flag1 = true;
        }
        if(flag1)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "handleFinish() :: isAppCloseDone");
            MtvLiveBroadcastReciever.unregisterRecievers();
            MtvUtilAppService.releaseAndDeletePartialWakeLock();
            requestSystemKeyEvent(3, false);
        }
        if(flag)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Abnormal Exit Happened Stopping RemoteService!!");
            getApplicationContext().stopService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
            pendingintent = PendingIntent.getService(getApplicationContext(), 0, new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"), 0x8000000);
            MtvUtilAppService.setBroadcastAlarmDelayed(getApplicationContext(), pendingintent, 0, 15000L);
            MtvUtilDebug.Low("MtvUiLivePlayer", "Abnormal Exit Happened Stopping RecorderService!!");
        }
        getApplicationContext().stopService(new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE"));
        MtvUtilAppService.setPreferredOrientation(-1);
    }

    private void handleUnlock()
    {
        if(mMtvPreferences.getAutoPowerOffTime() > 0)
        {
            sleepTimer.setVisibility(0);
            mLiveUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
            mLiveUiMsgHandler.postDelayed(RunnableRemoveSleepTimerIcon, 3000L);
        }
        setPhoneLocked(false);
        fragHandler.unhideAllFragments();
        updateFragmentsOnStateChange(226, new int[0]);
        updateFragmentsOnLock();
        android.app.Fragment fragment = getFragmentManager().findFragmentByTag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO.toString());
        if(fragment != null)
        {
            FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
            fragmenttransaction.show(fragment);
            fragmenttransaction.commit();
        }
        requestSystemKeyEvent(3, false);
        requestSystemKeyEvent(187, false);
    }

    private void hideNotification()
    {
        if(mNotificationManager != null)
            mNotificationManager.cancel(0x7f0200c3);
    }

    private void initMtvPlayer()
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "initMtvPlayer...");
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        int j = MtvAreaManager.getCount(getApplicationContext());
        if(mMtvAppPlaybackContext == null)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("setting AutoPowerOff Time after ").append(mMtvPreferences.getAutoPowerOffTime()).toString());
            MtvUiSleepTimerDialogFrag.setAlarm(getApplicationContext(), mMtvPreferences.getAutoPowerOffTime(), true);
            if(j > 0)
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
            if(mMtvAppPlaybackContext != null)
            {
                mMtvAppPlaybackContext.getState().registerListener(this);
                mMtvAppPlaybackContext.getAttribute().registerListener(this);
            }
            getApplicationContext().startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
            MtvAppBml.getInstance(this).enableBMLComponent(mMtvAppPlaybackContext);
            mBmlSurface.create(mMtvAppPlaybackContext, fragHandler);
            boolean flag = mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
            if(bFisrtDTVLaunch && !flag)
            {
                MtvAppPlayerOneSeg.getInstance().screwupCleanup();
                mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
                mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
            }
            bFisrtDTVLaunch = false;
        } else
        {
            mMtvAppPlaybackContext.getState().registerListener(this);
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            if(mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "current context is scanner... waiting for cancel  scan_complete..");
                mMtvPlayerOneSeg.cancelScanChannels(mMtvAppPlaybackContext);
            } else
            if(mMtvAppPlaybackContext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LIVETV)
            {
                mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
                mMtvAppPlaybackContext.getState().registerListener(this);
                mMtvAppPlaybackContext.getAttribute().registerListener(this);
                if(mMtvPlayerOneSeg != null)
                {
                    android.broadcast.helper.MtvURI mtvuri = prepareUri(mMtvPreferences.getLatestPChannelFromVChannel(), mMtvPreferences.getLatestServiceID(), true);
                    mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
                }
            } else
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("already in live mode . state = ").append(mMtvAppPlaybackContext.getState().getState()).toString());
                if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED)
                {
                    isInBGRecording = true;
                    MtvUtilDebug.Low("MtvUiLivePlayer", "Background Recording is going on...");
                    if(mMtvAppPlaybackContext.getState().getOp() != 20482)
                    {
                        android.broadcast.helper.MtvURI mtvuri1 = prepareUri(mMtvAppPlaybackContext.getAttribute().getCurrentOpenedChannel(), mMtvAppPlaybackContext.getAttribute().getCurrentOpenedChannelServiceId(), true);
                        if(mMtvAppPlaybackContext != null && mBmlSurface != null && mMtvPlayerOneSeg != null && mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
                            mBmlSurface.onResume(mMtvAppPlaybackContext);
                        mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri1);
                    }
                } else
                if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && mMtvAppPlaybackContext.getState().getOp() == 20482)
                    MtvUtilDebug.Low("MtvUiLivePlayer", "Background Recording Open ISsued.. Opening Player as well !");
            }
        }
        if(MtvAreaManager.getCount(getApplicationContext()) > 0 && mMtvAppPlaybackContext != null)
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
            {
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, null));
                MtvOneSegSignal mtvonesegsignal = mMtvAppPlaybackContext.getAttribute().getSignalStatistics();
                int i = 0;
                if(mtvonesegsignal != null)
                    i = mtvonesegsignal.getSignalQuality();
                if(i != 0)
                    mLiveUiMsgHandler.post(RunnableRemoveWeakSignalDialogue);
            } else
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
            {
                if(!isBmlFullView())
                    mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            } else
            if(!isBmlFullView())
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
        if(j > 0)
        {
            mVideoSurfaceView.setKeepScreenOn(true);
            if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState().ordinal() >= com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED.ordinal())
                registerVideoSurfaceView(true);
            updateCaptions();
            if(mBmlSurface != null && mBmlSurface.IsBMLFullView())
            {
                setBMLLayoutFullView(true);
                return;
            } else
            {
                requestOrientation(MtvUtilAppService.preferred_orientation);
                return;
            }
        } else
        {
            MtvUtilAudioManager.getInstance(this).setAudioMute(true);
            return;
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

            final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
        }
);
        sleepTimer = (ImageView)findViewById(0x7f0a0030);
        mAnimationlayout = (RelativeLayout)findViewById(0x7f0a0023);
        mAnimationImage = (ImageView)findViewById(0x7f0a0024);
        rotatingAnimation = AnimationUtils.loadAnimation(this, 0x7f040000);
        mTxtAnimation = (TextView)findViewById(0x7f0a0025);
        mVideoSurfaceView = (SurfaceView)findViewById(0x7f0a0020);
        mHiddenSurfaceView = (SurfaceView)findViewById(0x7f0a0021);
        mBmlSurface = (MtvUiBmlSurfaceView)findViewById(0x7f0a000c);
        mCaptionView = (TextView)findViewById(0x7f0a0028);
        mCaptionView.setOnClickListener(null);
        mImgViewNoChannel = (ImageView)findViewById(0x7f0a0022);
        mImgViewNoChannel.setVisibility(4);
        mChannelGestureDetector = new GestureDetector(this, new ChannelGestureListener());
        showStatusNotification = false;
        mRotateButton = (ImageButton)findViewById(0x7f0a002c);
        mRotateButton.setOnClickListener(new android.view.View.OnClickListener() {

            public void onClick(View view)
            {
                if(isPhoneLocked())
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "OnClick will not be served if locked");
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

            final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
        }
);
    }

    private void invalidateLiveViews()
    {
        if(fragHandler != null)
        {
            fragHandler.onUpdate(101, getCurrentChannelProgramTitle(true, true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.onUpdate(100, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.onUpdate(101, getCurrentChannelProgramTitle(true, false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
        }
        if(mBmlSurface.IsBMLFullView())
        {
            return;
        } else
        {
            mLiveUiMsgHandler.sendEmptyMessage(307);
            return;
        }
    }

    private boolean isEmergencyMode(Context context)
    {
        return EmergencyManager.isEmergencyMode(context);
    }

    private void latestChannelValidity()
    {
        if(mMtvPreferences.getLatestPChannel() < 0 && mMtvPreferences.getLatestVChannel() < 0)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Lost Track of last Channel,may be its first time run , reseting to  Default Channel");
            mMtvPreferences.setLatestPChannel(13);
            mMtvPreferences.setLatestVChannel(-1);
            mMtvPreferences.setLatestServiceID(0);
            mMtvPreferences.setLatestVChannelMultiChannel(0);
        }
    }

    private void registerContentObserver()
    {
        if(mRotationObserver == null)
        {
            mRotationObserver = new ContentObserver(new Handler()) {

                public void onChange(boolean flag)
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "registerContentObserver onChange()");
                    if(android.provider.Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1 && !MtvUiLivePlayer.isBMLFullView)
                        setRequestedOrientation(-1);
                    setRotateButtonVisibility(true, new int[0]);
                }

                final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                ContentObserver(handler);
            }
            }
;
            android.net.Uri uri = android.provider.Settings.System.getUriFor("accelerometer_rotation");
            getContentResolver().registerContentObserver(uri, false, mRotationObserver);
            MtvUtilDebug.Low("MtvUiLivePlayer", "registerContentObserver - mRotationObserver is registered");
        }
    }

    private void registerMediaButtonReceiver()
    {
        mAudioManager.registerMediaButtonEventReceiver(new ComponentName(getPackageName(), com/samsung/sec/mtv/reciever/MtvBroadcastReceiver.getName()));
    }

    private void releaseMtvPlayer()
    {
        if(mMtvAppPlaybackContext != null)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "inside releaseMtvPlayer");
            if(mBmlSurface != null)
                mBmlSurface.onDestroy();
            if(!MtvUtilAppService.isMiniModeRunning(this))
                registerVideoSurfaceView(false);
            MtvAppPlaybackContextManager.getInstance().reset();
            mMtvPlayerOneSeg = null;
            mMtvAppPlaybackContext = null;
        }
    }

    private void removeFragments()
    {
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
    }

    private void resetStateOnFreshLaunch()
    {
        MtvUtilAppService.setAppExiting(false);
        getApplicationContext().startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
    }

    private void saveNextPreviousChannelNumberForHover()
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "saveNextPreviousChannelNumberForHover is called....:");
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        int i = mMtvPreferences.getLatestVChannel();
        MtvChannel mtvchannel;
        MtvChannel mtvchannel1;
        if(i > 0)
        {
            mtvchannel = MtvChannelManager.getNext(this, i);
            mtvchannel1 = MtvChannelManager.getPrevious(this, i);
        } else
        {
            mtvchannel = MtvChannelManager.getFirstOnAir(this);
            mtvchannel1 = MtvChannelManager.getFirstOnAir(this);
        }
        if(mtvchannel != null)
            mMtvPreferences.setNextChannelInfo((new StringBuilder()).append(mtvchannel.mVirtualNum).append(" ").append(mtvchannel.mChannelName).toString());
        if(mtvchannel1 != null)
            mMtvPreferences.setPreChannelInfo((new StringBuilder()).append(mtvchannel1.mVirtualNum).append(" ").append(mtvchannel1.mChannelName).toString());
    }

    private void saveTVFileThumbnail()
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "saveTVFileThumbnail: start");
        if(mMtvAppPlaybackContext == null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null)
        {
            Bitmap bitmap = mMtvAppPlaybackContext.getComponents().getVideo().getCaptFrame();
            String s = mMtvAppPlaybackContext.getComponents().getVideo().getCaptFrameName();
            if(bitmap == null || s == null)
            {
                MtvUtilDebug.Error("MtvUiLivePlayer", "saveTVFileThumbnail() : Objects are NULL!!!");
            } else
            {
                int i = bitmap.getWidth();
                int j = bitmap.getHeight() - 12;
                if(j <= 0 || i <= 0)
                {
                    MtvUtilDebug.Error("MtvUiLivePlayer", "saveTVFileThumbnail() parameters are wrong to save file.!!!.");
                    return;
                }
                bitmap = Bitmap.createBitmap(bitmap, 0, 0, i, j);
                if(bitmap != null)
                {
                    MtvFile mtvfile = new MtvFile();
                    mtvfile.setFileFormat(1);
                    mtvfile.setCreationTime(new Date());
                    mtvfile.setFilePath(s);
                    MtvFileManager.saveFile(mMtvPreferences.getSaveToStorage(), bitmap, mtvfile);
                    return;
                }
            }
            return;
        } else
        {
            MtvUtilDebug.Error("MtvUiLivePlayer", "saveTVFileThumbnail() : App Context is NULL!!!");
            return;
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
            mAnimationImage.setVisibility(4);
            return;
        } else
        {
            mVideoSurfaceView.setVisibility(0);
            mImgViewNoChannel.setVisibility(8);
            return;
        }
    }

    private void setLatestChannelsByPChannel(int i, int j)
    {
        int l = -1;
        int k = 0;
        MtvChannel mtvchannel = MtvChannelManager.findByPChannel(this, i, j);
        if(mtvchannel != null)
        {
            l = mtvchannel.mVirtualNum;
            k = mtvchannel.mMultiChannelNo;
        }
        mMtvPreferences.setLatestPChannel(i);
        mMtvPreferences.setLatestVChannel(l);
        mMtvPreferences.setLatestServiceID(j);
        mMtvPreferences.setLatestVChannelMultiChannel(k);
    }

    private transient void setRotateButtonVisibility(boolean flag, int ai[])
    {
        int i;
        char c = '\u0BB8';
        i = c;
        if(ai != null)
        {
            i = c;
            if(ai.length > 0)
                i = ai[0];
        }
        if(!flag || isPhoneLocked())
            break MISSING_BLOCK_LABEL_156;
        if(getApplicationContext() == null) goto _L2; else goto _L1
_L1:
        if(android.provider.Settings.System.getInt(getApplicationContext().getContentResolver(), "accelerometer_rotation", 0) != 1) goto _L4; else goto _L3
_L3:
        mRotateButton.setVisibility(8);
        mLiveUiMsgHandler.removeCallbacks(RunnableRemoveRotateButton);
        if(!isBMLFullView)
            setRequestedOrientation(-1);
_L2:
        return;
_L4:
        if(fragHandler != null && fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isBMLFullView)
            mRotateButton.setVisibility(0);
        mLiveUiMsgHandler.removeCallbacks(RunnableRemoveRotateButton);
        if(i <= 0) goto _L2; else goto _L5
_L5:
        mLiveUiMsgHandler.postDelayed(RunnableRemoveRotateButton, i);
        return;
        mRotateButton.setVisibility(8);
        mLiveUiMsgHandler.removeCallbacks(RunnableRemoveRotateButton);
        return;
    }

    private void setScreenRatio(int i)
    {
        Object obj = getApplicationContext();
        int j;
        int k;
        int l;
        if(MtvUtilAppService.getCurrentOrientation(((Context) (obj))) == 1)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "setScreenRatio landscape");
            j = (int)MtvUtilConfigSetting.convertDpToPixel(360F, ((Context) (obj)));
            k = (int)MtvUtilConfigSetting.convertDpToPixel(640F, ((Context) (obj)));
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "setScreenRatio portrait");
            j = (int)MtvUtilConfigSetting.convertDpToPixel(203F, ((Context) (obj)));
            k = (int)MtvUtilConfigSetting.convertDpToPixel(360F, ((Context) (obj)));
        }
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("setScreenRatio LCD_HEIGHT:").append(j).append("LCD_WIDTH:").append(k).toString());
        if(1.777778F == 1.777778F)
        {
            if(i == 0)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "setScreenRatio 16:9 NORMAL");
                l = k;
                i = (k / 16) * 9;
            } else
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "setScreenRatio 16:9 ENLARGE ");
                l = k;
                i = j;
            }
        } else
        if(i == 0)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "setScreenRatio 4:3 NORMAL ");
            i = j;
            l = (k / 3) * 4;
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "setScreenRatio 4:3 ENLARGE ");
            l = k;
            i = j;
        }
        k = (k - l) / 2;
        j = (j - i) / 2;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("setScreenRatio x = ").append(k).append(" y = ").append(j).append(" w = ").append(l).append(" h = ").append(i).toString());
        obj = new android.widget.AbsoluteLayout.LayoutParams(l, i, k, j);
        if(mVideoSurfaceView == null)
            mVideoSurfaceView = (SurfaceView)findViewById(0x7f0a0020);
        if(mVideoSurfaceView != null)
            mVideoSurfaceView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
    }

    private void showErrorDialog(int i)
    {
        ErrorDialogFragment.newInstance(i).show(getFragmentManager(), "ErrorDialogFragment");
    }

    private void showNotification(boolean flag)
    {
        MtvUtilDebug.High("MtvUiLivePlayer", (new StringBuilder()).append("showNotification() called.. showTicker").append(flag).toString());
        hideNotification();
        if(MtvUtilAppService.isAppExiting())
            return;
        if(mMtvAppPlaybackContext == null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        Object obj;
        Object obj1;
        Object obj2;
        RemoteViews remoteviews;
        if(mMtvAppPlaybackContext != null && 20487 != mMtvAppPlaybackContext.getState().getOp())
            obj = getString(0x7f070294);
        else
            obj = getString(0x7f070295);
        obj1 = new Intent();
        ((Intent) (obj1)).setFlags(0x100000);
        ((Intent) (obj1)).setAction("android.intent.action.MAIN");
        ((Intent) (obj1)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj1)).setComponent(getComponentName());
        obj2 = new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
        ((Intent) (obj2)).putExtra("closing_from_notification", true);
        obj1 = PendingIntent.getActivity(this, 0, ((Intent) (obj1)), 0);
        obj2 = PendingIntent.getBroadcast(getApplicationContext(), 0, ((Intent) (obj2)), 0);
        remoteviews = new RemoteViews(getPackageName(), 0x7f030032);
        remoteviews.setImageViewResource(0x7f0a0121, 0x7f0200c3);
        remoteviews.setTextViewText(0x7f0a0123, ((CharSequence) (obj)));
        remoteviews.setTextViewText(0x7f0a0126, getNotificationContent());
        remoteviews.setOnClickPendingIntent(0x7f0a0129, ((PendingIntent) (obj2)));
        obj = (new android.app.Notification.Builder(this)).setContent(remoteviews).setSmallIcon(0x7f0200c3).setWhen(0L).setOngoing(true).setContentIntent(((PendingIntent) (obj1))).build();
        if(mNotificationManager != null)
        {
            if(flag)
            {
                if(20487 != mMtvAppPlaybackContext.getState().getOp())
                {
                    obj.tickerText = (new StringBuilder()).append(getString(0x7f070294)).append("\n").append(getNotificationContent()).toString();
                    mNotificationManager.notify(0x7f0200c3, ((Notification) (obj)));
                    return;
                } else
                {
                    obj.tickerText = (new StringBuilder()).append(getString(0x7f070295)).append("\n").append(getNotificationContent()).toString();
                    mNotificationManager.notify(0x7f0200c3, ((Notification) (obj)));
                    return;
                }
            } else
            {
                mNotificationManager.notify(0x7f0200c3, ((Notification) (obj)));
                return;
            }
        } else
        {
            MtvUtilDebug.Error("MtvUiLivePlayer", "mNotificationManager is null ");
            return;
        }
    }

    private void showReservationAlert()
    {
        if(!isResumed())
        {
            MtvUtilDebug.High("MtvUiLivePlayer", "Live Player not resumed continuing with recording without showing popup...");
        } else
        {
            Bundle bundle = getIntent().getExtras();
            if(bundle != null)
            {
                Intent intent = new Intent();
                intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
                intent.putExtra("dbId", bundle.getInt("dbId", -1));
                intent.putExtra("popup_type", 2);
                intent.setFlags(0x10000000);
                MtvUtilDebug.High("MtvUiLivePlayer", "Mobile Tv - Reminder -user Alert");
                startActivity(intent);
                return;
            }
        }
    }

    private void showToast(int i)
    {
        if(isResumed())
        {
            gen_toast = Toast.makeText(this, i, 0);
            gen_toast.show();
        } else
        if(!MtvUtilDebug.isReleaseMode())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Activity not in foreground !");
            return;
        }
    }

    private void showToastforNoOperation(int i)
    {
        String s = null;
        if(!shownToastforOperationNA)
        {
            ActivityManager activitymanager = (ActivityManager)getApplicationContext().getSystemService("activity");
            if(activitymanager != null)
                s = ((android.app.ActivityManager.RunningTaskInfo)activitymanager.getRunningTasks(1).get(0)).topActivity.getClassName();
            if(s != null)
                if(s.equalsIgnoreCase("com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"))
                {
                    gen_toast = Toast.makeText(this, i, 1);
                    gen_toast.show();
                    shownToastforOperationNA = true;
                } else
                if(!MtvUtilDebug.isReleaseMode())
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("showToast: Activity on top -> ").append(s).toString());
                    return;
                }
        }
    }

    private int startRecording(MtvReservation mtvreservation)
    {
        if(mMtvPreferences.isSViewCoverClosed())
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH"));
        String s = null;
        String s2 = null;
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        long l;
        if(1 == mMtvPreferences.getSaveToStorage())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("Reached [").append(MtvFileManager.getFileCount(1)).append("] recordings in Phone memory").toString());
            l = MtvUtilMemoryStatus.getAvailableInternalMemorySize();
        } else
        {
            if(99 == MtvFileManager.getFileCount(0))
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "Reached [99] recordings in SD card. Cant proceed further");
                showErrorDialog(0x7f0702ab);
                return 1;
            }
            l = MtvUtilMemoryStatus.getAvailableExternalMemorySize();
        }
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("availMemSize :").append(l).toString());
        if(l < 0x204000L)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "memory already full.. cannot start recording...");
            showErrorDialog(0x7f070307);
            return 1;
        }
        byte byte0;
        int i;
        String s1;
        MtvOneSegChannel amtvonesegchannel[];
        if(mMtvPreferences.getBroadcastSetRecordingMode() == 0)
            byte0 = 2;
        else
            byte0 = 1;
        if(1 == mMtvPreferences.getSaveToStorage())
        {
            s1 = "/sdcard/video/MyTvFiles/";
            i = 1;
        } else
        {
            s1 = "/mnt/extSdCard/video/MyTvFiles/";
            i = 0;
        }
        amtvonesegchannel = getChannel();
        if(amtvonesegchannel != null)
            s = amtvonesegchannel[0].getServName();
        if(mtvreservation == null || mMtvPreferences.getReservationAlertID() == -1)
        {
            MtvOneSegProgram mtvonesegprogram = getCurrentProgramDetails();
            mtvreservation = s2;
            if(mtvonesegprogram != null)
                mtvreservation = mtvonesegprogram.getProgName();
        } else
        if(mtvreservation.mPgmName != null && !mtvreservation.mPgmName.equals(""))
        {
            mtvreservation = mtvreservation.mPgmName;
        } else
        {
            MtvOneSegProgram mtvonesegprogram1 = getCurrentProgramDetails();
            mtvreservation = s2;
            if(mtvonesegprogram1 != null)
                mtvreservation = mtvonesegprogram1.getProgName();
        }
        s2 = s;
        if(s == null)
            s2 = "dummy";
        mtvreservation = (new MtvOneSegPlayer(byte0, s1, i, s2, mtvreservation, new Date(date.getTime() - (long)calendar.get(15) - (long)calendar.get(16)), mMtvPreferences.getLatestServiceID())).getRecordURI();
        if(!mMtvPlayerOneSeg.startRecord(mMtvAppPlaybackContext, mtvreservation, (int)l, false))
        {
            MtvUtilDebug.High("MtvUiLivePlayer", "startRecording() failed");
            showToast(0x7f0702b0);
            return -1;
        } else
        {
            MtvUtilDebug.High("MtvUiLivePlayer", "startRecording() start");
            return 0;
        }
    }

    private void startReservationProgram(MtvReservation mtvreservation)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append(" startReservationProgram() : !!! Starting from ").append(mMtvPreferences.getReserveAlertFrom()).append("Reservation ID ").append(mMtvPreferences.getReservationAlertID()).toString());
        if(mMtvPlayerOneSeg != null && mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() : error - MW not initilized yet!!! ");
_L4:
        return;
_L2:
        Bundle bundle;
        if(mtvreservation == null || mtvreservation.mPgmStatus != 0)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() : error - not a valid reservation");
            return;
        }
        if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() : Low Signal POp-up Showing");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_terminate");
        MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :mNoSignalTerminate popup closed");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "exit_confirmation");
        if(mtvreservation.mPgmType != 0)
            continue; /* Loop/switch isn't completed */
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append(" startReservationProgram() : !!!TYPE_REC    :").append(mMtvAppPlaybackContext.getState().getState()).toString());
        if(mMtvAppPlaybackContext.getState().getOp() == 20487)
            continue; /* Loop/switch isn't completed */
        bundle = new Bundle();
        bundle.putInt("physicalchannelnumber", mtvreservation.mPch);
        bundle.putInt("serviceid", mtvreservation.mPgmServiceID);
        bundle.putInt("liveMode", mtvreservation.mPgmType);
        bundle.putInt("virtualchannelnumber", mtvreservation.mVch);
        int i = mMtvPreferences.getLatestPChannelFromVChannel();
        int l = mMtvPreferences.getLatestServiceID();
        if(i > 0 && (i != mtvreservation.mPch || l != mtvreservation.mPgmServiceID) || mMtvPreferences.getLatestServiceID() != mtvreservation.mPgmServiceID)
        {
            if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            {
                MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :(RR):NoSignal popup closed for Channel Change");
            }
            MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() :(RR):not playing the Reservation Channel  : Issue OPEN for REservation Channel");
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle));
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
        {
            if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            {
                MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :(RR):NoSignal popup closed : State !PLAYING  : Issue OPEN");
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle));
            }
            MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :(RR):State !PLAYING ");
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING) goto _L4; else goto _L3
_L3:
        if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
        {
            MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
            MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram :(RR): State PLAYING : NoSignal popup closed : Issue OPEN");
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle));
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        if(mMtvAppPlaybackContext.getAttribute().getCurrentOpenedChannel() != mtvreservation.mPch)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram : Not Playing Reservation Channel ! Change to Reservation Channel ");
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle));
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        MtvUtilDebug.Low("MtvUiLivePlayer", "startReservationProgram : Playing Reservation Channel ! start Recording !");
        MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() : (RR) : recording : - already playing");
        int j = startRecording(mtvreservation);
        if(j == 0)
            showProgressDialog(0x7f070295, 0x7f0702a6);
        if(j == 1)
        {
            mMtvPreferences.setIsReservationProgram(true);
            CheckIsreservationAndUpdatefailureReason(5);
            return;
        }
        if(j == -1)
        {
            mMtvPreferences.setIsReservationProgram(true);
            CheckIsreservationAndUpdatefailureReason(2);
            return;
        }
        if(mMtvPreferences.getReserveAlertFrom() == 0)
        {
            mVideoSurfaceView.setKeepScreenOn(false);
            mCpuWakeLock = ((PowerManager)getApplicationContext().getSystemService("power")).newWakeLock(0x10000001, "MobileTV");
            mCpuWakeLock.acquire();
        }
        MtvReservationManager.UpdateStatus(this, mtvreservation, 6);
        mLiveUiMsgHandler.postDelayed(RunnableresetComingReservationID, 5000L);
        return;
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING) goto _L4; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() : : recording : - already recording");
        stopRecording();
        mMtvPreferences.setIsReservationProgram(true);
        return;
        if(mtvreservation.mPgmType != 1) goto _L4; else goto _L6
_L6:
        int k;
        int i1;
        if(mMtvAppPlaybackContext.getState().getOp() == 20487)
            continue; /* Loop/switch isn't completed */
        k = mMtvPreferences.getLatestPChannelFromVChannel();
        i1 = mMtvPreferences.getLatestServiceID();
        if(k <= 0 || k == mtvreservation.mPch && i1 == mtvreservation.mPgmServiceID && mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING) goto _L8; else goto _L7
_L7:
        MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() : watch : - not playing same channel");
        Bundle bundle1 = new Bundle();
        bundle1.putInt("physicalchannelnumber", mtvreservation.mPch);
        bundle1.putInt("virtualchannelnumber", mtvreservation.mVch);
        bundle1.putInt("serviceid", mtvreservation.mPgmServiceID);
        bundle1.putInt("multichannelnumber", MtvChannelManager.findMultiChannelNoByServiceId(this, mtvreservation.mPch, mtvreservation.mPgmServiceID));
        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle1));
_L10:
        MtvReservationManager.UpdateStatus(this, mtvreservation, 6);
        return;
_L8:
        if(k > 0 && k == mtvreservation.mPch && isBmlFullView())
            setBMLLayoutFullView(false);
        if(true) goto _L10; else goto _L9
_L9:
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING) goto _L4; else goto _L11
_L11:
        MtvUtilDebug.Low("MtvUiLivePlayer", " startReservationProgram() :: watch : - recording going on");
        stopRecording();
        mMtvPreferences.setIsReservationProgram(true);
        return;
    }

    private void startVolumeControlBar()
    {
        if(fragHandler == null || fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD) || isPhoneLocked()) goto _L2; else goto _L1
_L1:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR)) goto _L4; else goto _L3
_L3:
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiLivePlayer", "onTouchEvent, adding status fragment");
        fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 4000L, false, new int[0]);
        mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
        mLiveUiMsgHandler.post(RunnableUpdateSignalInfo);
_L10:
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
        {
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvUiLivePlayer", "onTouchEvent, adding main fragment");
            if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, 4000L, false, new int[0]);
            else
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L, false, new int[0]);
        } else
        if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, 4000L);
_L2:
        if(fragHandler == null || fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME)) goto _L6; else goto _L5
_L5:
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiLivePlayer", "onTouchEvent, adding main fragment");
        fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L, false, new int[] {
            0x7f0a0032
        });
_L8:
        return;
_L4:
        if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 4000L);
        continue; /* Loop/switch isn't completed */
_L6:
        if(fragHandler == null) goto _L8; else goto _L7
_L7:
        fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L);
        return;
        if(true) goto _L10; else goto _L9
_L9:
    }

    private void stopRecording()
    {
        boolean flag = false;
        int i = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        MtvUtilDebug.Mid("MtvUiLivePlayer", "stopRecording in LivePlayer");
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvPlayerOneSeg == null)
            mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        if(mMtvPlayerOneSeg.stopRecord(mMtvAppPlaybackContext))
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Recording stop invoked successfully !");
            isStopRecCommandInProcess = true;
            if(fragHandler != null)
            {
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                if(i == 0)
                {
                    mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
                    mLiveUiMsgHandler.post(RunnableUpdateSignalInfo);
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L, false, new int[0]);
                }
                StringBuilder stringbuilder = (new StringBuilder()).append("Fragments removed normally? ");
                if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
                    flag = true;
                MtvUtilDebug.Low("MtvUiLivePlayer", stringbuilder.append(flag).toString());
            }
        }
    }

    private void unRegisterMediaButtonReceiver()
    {
        if(mAudioManager != null)
            mAudioManager.unregisterMediaButtonEventReceiver(new ComponentName(getPackageName(), com/samsung/sec/mtv/reciever/MtvBroadcastReceiver.getName()));
    }

    private void unregisterContentObserver()
    {
        if(mRotationObserver != null)
        {
            getContentResolver().unregisterContentObserver(mRotationObserver);
            mRotationObserver = null;
            MtvUtilDebug.Low("MtvUiLivePlayer", "unregisterContentObserver - mRotationObserver is unregistered");
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

    private void updateFragmentsOnLock()
    {
        boolean flag;
        MtvUtilDebug.Low("MtvUiLivePlayer", "inside updateFragmentsOnLock...");
        flag = false;
        if(mMtvAppPlaybackContext != null)
        {
            if(mMtvAppPlaybackContext.getState().getOp() == 20487)
                flag = true;
            else
                flag = false;
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "updateFragmentsOnLock mMtvAppPlaybackContext is null");
        }
        if(orientation != 0) goto _L2; else goto _L1
_L1:
        if(lockImage.getVisibility() == 0)
        {
            if(!flag)
                fragHandler.onUpdate(112, Boolean.valueOf(false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            else
                fragHandler.onUpdate(112, Boolean.valueOf(false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        } else
        if(!flag)
            fragHandler.onUpdate(112, Boolean.valueOf(true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
        else
            fragHandler.onUpdate(112, Boolean.valueOf(true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
_L4:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        return;
_L2:
        if(lockImage.getVisibility() == 0)
        {
            if(!flag)
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            else
                fragHandler.onUpdate(112, Boolean.valueOf(false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
        } else
        if(flag)
            fragHandler.onUpdate(112, Boolean.valueOf(true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
        if(true) goto _L4; else goto _L3
_L3:
    }

    private transient void updateFragmentsOnStateChange(int i, int ai[])
    {
        boolean flag;
        int j;
        int k;
        MtvUtilDebug.Low("MtvUiLivePlayer", "updateFragmentsOnStateChange");
        char c = '\u0BB8';
        flag = false;
        k = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        if(mMtvAppPlaybackContext != null)
            if(mMtvAppPlaybackContext.getState().getOp() == 20487)
                flag = true;
            else
                flag = false;
        j = c;
        if(ai != null)
        {
            j = c;
            if(ai.length > 0)
                j = ai[0];
        }
        if(i != 225) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiLivePlayer", "Adding fragments");
        if(fragHandler == null || fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR)) goto _L4; else goto _L3
_L3:
        fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, j, false, new int[0]);
        if(!flag)
        {
            if(k == 1 && !fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN) && checkCondition())
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, j, false, new int[0]);
            else
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN) && checkCondition())
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L, false, new int[0]);
        } else
        {
            if(k == 1 && !fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD, j, false, new int[0]);
            else
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD, -1L, false, new int[0]);
            fragHandler.onUpdate(134, Integer.valueOf(j), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            fragHandler.onUpdate(111, Boolean.valueOf(true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            mLiveUiMsgHandler.removeCallbacks(mRunnableUpdateRecordComponents);
            if(j > 0)
                mLiveUiMsgHandler.postDelayed(mRunnableUpdateRecordComponents, j);
        }
        setRotateButtonVisibility(true, new int[0]);
        mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
        mLiveUiMsgHandler.post(RunnableUpdateSignalInfo);
        if(!isBmlFullView() && mMtvPreferences.getAutoPowerOffTime() > 0)
        {
            sleepTimer.setVisibility(0);
            mLiveUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
            if(j > 0)
                mLiveUiMsgHandler.postDelayed(RunnableRemoveSleepTimerIcon, j);
        }
_L6:
        return;
_L4:
        if(fragHandler != null)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "removing frgaments");
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            setRotateButtonVisibility(false, new int[0]);
            sleepTimer.setVisibility(8);
            mLiveUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
            if(k == 1 && !flag)
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            else
            if(k == 1 && flag)
                mLiveUiMsgHandler.post(mRunnableUpdateRecordComponents);
            if(flag)
            {
                fragHandler.onUpdate(134, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.Low("MtvUiLivePlayer", "resetting/adding frgaments");
        if(!isBmlFullView() && !isBMLFullView)
        {
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isPhoneLocked())
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, j, false, new int[0]);
            else
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, j);
        } else
        if(isBMLFullView && !fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR) && !isPhoneLocked())
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, -1L, false, new int[0]);
        else
        if(isBMLFullView && fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, -1L);
        mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
        mLiveUiMsgHandler.post(RunnableUpdateSignalInfo);
        if(k == 1)
            i = j;
        else
            i = -1;
        if(!flag)
            break; /* Loop/switch isn't completed */
        if(!isStopRecCommandInProcess)
        {
            mLiveUiMsgHandler.removeCallbacks(mRunnableUpdateRecordComponents);
            if(j > 0)
                mLiveUiMsgHandler.postDelayed(mRunnableUpdateRecordComponents, j);
            fragHandler.onUpdate(135, Integer.valueOf(j), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD, i);
            else
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD, i, false, new int[0]);
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Stop Recording is already issued from UI Side . COmmand Complete not yet recieved from backend !");
        }
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("updateFragmentsOnStateChange() - bIsRecordingFailed - ").append(bIsRecordingFailed).toString());
        if(!bIsRecordingFailed)
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            else
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L);
            else
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L, false, new int[0]);
_L7:
        setRotateButtonVisibility(true, new int[] {
            j
        });
        if(!isBmlFullView() && mMtvPreferences.getAutoPowerOffTime() > 0)
        {
            sleepTimer.setVisibility(0);
            mLiveUiMsgHandler.removeCallbacks(RunnableRemoveSleepTimerIcon);
            if(j > 0)
            {
                mLiveUiMsgHandler.postDelayed(RunnableRemoveSleepTimerIcon, j);
                return;
            }
        }
        if(true) goto _L6; else goto _L5
_L5:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN) && checkCondition())
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, i);
        else
        if(checkCondition())
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, i, false, new int[0]);
        fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
          goto _L7
        if(true) goto _L6; else goto _L8
_L8:
    }

    private void updateKeyguardPolicy(boolean flag)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("updateKeyguardPolicy    :").append(flag).toString());
        if(flag)
        {
            getWindow().addFlags(0x400000);
            getWindow().addFlags(0x80000);
            getWindow().addFlags(0x200000);
            return;
        } else
        {
            getWindow().clearFlags(0x400000);
            getWindow().clearFlags(0x80000);
            getWindow().clearFlags(0x200000);
            return;
        }
    }

    private void updateLiveViews()
    {
        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(308, null));
        if(fragHandler != null)
        {
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                fragHandler.onUpdate(101, getCurrentChannelProgramTitle(false, true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
                fragHandler.onUpdate(101, getCurrentChannelProgramTitle(false, false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
        }
    }

    private void updateNotification()
    {
        if(MtvUtilAppService.isAppExiting())
            return;
        MtvUtilDebug.High("MtvUiLivePlayer", "updatenotification");
        if(mMtvAppPlaybackContext == null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        Object obj;
        Object obj1;
        Object obj2;
        RemoteViews remoteviews;
        if(mMtvAppPlaybackContext != null && 20487 != mMtvAppPlaybackContext.getState().getOp())
            obj = getString(0x7f070294);
        else
            obj = getString(0x7f070295);
        obj1 = new Intent();
        ((Intent) (obj1)).setFlags(0x100000);
        ((Intent) (obj1)).setAction("android.intent.action.MAIN");
        ((Intent) (obj1)).addCategory("android.intent.category.LAUNCHER");
        ((Intent) (obj1)).setComponent(getComponentName());
        obj1 = PendingIntent.getActivity(this, 0, ((Intent) (obj1)), 0);
        obj2 = new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
        ((Intent) (obj2)).putExtra("closing_from_notification", true);
        obj2 = PendingIntent.getBroadcast(getApplicationContext(), 0, ((Intent) (obj2)), 0);
        remoteviews = new RemoteViews(getPackageName(), 0x7f030032);
        remoteviews.setImageViewResource(0x7f0a0121, 0x7f0200c3);
        remoteviews.setTextViewText(0x7f0a0123, ((CharSequence) (obj)));
        remoteviews.setTextViewText(0x7f0a0126, getNotificationContent());
        remoteviews.setOnClickPendingIntent(0x7f0a0129, ((PendingIntent) (obj2)));
        obj = (new android.app.Notification.Builder(this)).setSmallIcon(0x7f0200c3).setWhen(0L).setOngoing(true).setAutoCancel(false).setContent(remoteviews).setContentIntent(((PendingIntent) (obj1))).build();
        if(mNotificationManager != null)
        {
            mNotificationManager.notify(0x7f0200c3, ((Notification) (obj)));
            return;
        } else
        {
            MtvUtilDebug.Error("MtvUiLivePlayer", "mNotificationManager is null");
            return;
        }
    }

    public boolean HomeKeyPresses(Context context)
    {
        Object obj = null;
        ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
        context = obj;
        if(activitymanager != null)
            context = ((android.app.ActivityManager.RunningTaskInfo)activitymanager.getRunningTasks(1).get(0)).topActivity.getClassName();
        if(context != null)
        {
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("HomeKeyPresses :topActivityName = ").append(context).toString());
            if(!context.contains("com.samsung.sec.mtv"))
                return true;
        }
        return false;
    }

    long calculateDelayForStartChannel()
    {
        long l1 = System.currentTimeMillis();
        long l = l1 - mPreviousChannelChangeTime;
        if(l > 2500L)
            l = 0L;
        else
            l = 2500L - l;
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("DelayForStart:").append(l).append(": prev:").append(mPreviousChannelChangeTime).append(": current:").append(mPreviousChannelChangeTime).toString());
        mPreviousChannelChangeTime = l1;
        return l;
    }

    public void dismissProgressDialog()
    {
        if(mProgressDialog != null)
        {
            mProgressDialog.dismiss();
            mProgressDialog = null;
        }
        requestSystemKeyEvent(26, false);
    }

    public MtvOneSegChannel[] getChannel()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getChannel();
        else
            return null;
    }

    public MtvOneSegProgram getCurrentProgramDetails()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getCurrentProgram();
        else
            return null;
    }

    public boolean getIsRecordingFailed()
    {
        return bIsRecordingFailed;
    }

    public MtvOneSegProgram[] getProgram()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getProgram();
        else
            return null;
    }

    public long getStreamTime()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getTot();
        else
            return 0L;
    }

    public boolean isBmlFullView()
    {
        if(mBmlSurface != null)
            return mBmlSurface.IsBMLFullView();
        else
            return false;
    }

    public boolean isFilePlayerActivity()
    {
        List list = ((ActivityManager)getSystemService("activity")).getRunningTasks(0x7fffffff);
        boolean flag = false;
        if(((android.app.ActivityManager.RunningTaskInfo)list.get(0)).topActivity.getClassName().contains("com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer"))
        {
            flag = true;
            MtvUtilDebug.Low("TAG", "MObileTV is running but it is MtvUiFilePlayer");
        }
        return flag;
    }

    protected void isScheduledReservationProgram()
    {
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("isScheduledReservationProgram: mMtvPreferences: ").append(mMtvPreferences).append(" mMtvPreferences.isReservationProgram(): ").append(mMtvPreferences.isReservationProgram()).append(" mMtvPreferences.getReservationAlertID(): ").append(mMtvPreferences.getReservationAlertID()).toString());
        if(mMtvPreferences.isReservationProgram() && mMtvPreferences.getReservationAlertID() > -1)
        {
            MtvReservation mtvreservation = MtvReservationManager.find(getApplicationContext(), mMtvPreferences.getReservationAlertID());
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("isScheduledReservationProgram: CurrentReservation: ").append(mtvreservation).toString());
            if(mtvreservation != null)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("isScheduledReservationProgram: CurrentReservation.mPgmStatus: ").append(mtvreservation.mPgmStatus).append(" CurrentReservation.mPgmType: ").append(mtvreservation.mPgmType).toString());
                if(mtvreservation.mPgmStatus == 6)
                {
                    if(mtvreservation.mPgmType == 1)
                        checkIsReservationAndEnd(1);
                } else
                if(mtvreservation.mPgmStatus == 0)
                {
                    checkIsReservationAndEnd(2);
                    return;
                }
            }
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onActivityResult: requestCode=").append(i).append(", resultCode").append(j).toString());
        if(i == 0 && j == -1)
        {
            if(intent.getBooleanExtra("bIsChannelChanged", false))
                bIsChannelChngd = true;
            if(intent.getBooleanExtra("channelinput", false))
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "onActivityResult for Channel input");
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(316));
            }
            if(intent.getBooleanExtra("noAreaSet", false))
            {
                MtvUtilAppService.setAppExiting(true);
                mLiveUiMsgHandler.sendEmptyMessage(304);
            }
            return;
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    public void onBackPressed()
    {
        if(!isInBGRecording) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.High("MtvUiLivePlayer", "Already Background REcording is  going on ! And Current Player Open is being Processed... Please wait...");
_L4:
        return;
_L2:
        if(!MtvUiFragHandler.removeUnManagedFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO, this))
            break; /* Loop/switch isn't completed */
        if(fragHandler != null)
        {
            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            return;
        }
        if(true) goto _L4; else goto _L3
_L3:
        if(fragHandler != null && fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CHANNELNUM))
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CHANNELNUM);
            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            return;
        }
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
        {
            showExitApplicationDialog();
            return;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public void onCreate(Bundle bundle)
    {
        mExitToast = null;
        MtvUtilDebug.Low("MtvUiLivePlayer", "onCreate...");
        MtvUtilDebug.High("MtvUiLivePlayer", (new StringBuilder()).append("MobileTV APP VERSION : ").append(MtvUtilAppService.mobileTvAppVersion(getApplicationContext())).toString());
        mMtvPreferences = new MtvPreferences(getApplicationContext());
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        if(checkIsRelaunched())
            super.onCreate(bundle);
        else
            super.onCreate(bundle, true);
        if(bundle == null && !mMtvAudMgr.isHeadsetConnected())
            mMtvPreferences.setAudioEffect(0);
        if(bundle == null)
            resetStateOnFreshLaunch();
        orientation = MtvUtilAppService.getCurrentOrientation(getApplicationContext());
        if(!checkIsCalling(true) || bundle != null) goto _L2; else goto _L1
_L1:
        restrictLaunch = true;
        releaseTunerAndFinish();
_L4:
        return;
_L2:
        if(checkIsMassStorageUSBEnabled())
        {
            restrictLaunch = true;
            releaseTunerAndFinish();
            return;
        }
        if(checkIsRelaunched())
        {
            restrictLaunch = true;
            finish();
            return;
        }
        if(MtvUtilAppService.updateBatteryInfo(this) && !MtvUtilAppService.isAppExiting())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Battery Level is low... Enabling restrictLaunch!");
            restrictLaunch = true;
            showLowBatteryPopup();
            return;
        }
        if(MtvUtilMemoryStatus.isLowMemoryToLaunch() && !MtvUtilAppService.isAppExiting())
        {
            MtvUtilDebug.Error("MtvUiLivePlayer", "Memory is low to Launch MobileTV... ");
            restrictLaunch = true;
            showLowMemoryPopup();
            return;
        }
        MtvUtilMemoryStatus.setAppComponents(getApplicationContext());
        if(mAudioManager == null)
            mAudioManager = (AudioManager)getSystemService("audio");
        registerMediaButtonReceiver();
        if(bundle == null)
            bFisrtDTVLaunch = true;
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        mMtvPreferences = new MtvPreferences(getApplicationContext());
        if(bundle == null && !mMtvPreferences.getIsLivePlayMiniMode() && !mMtvPreferences.getIsDtvStartedByFromMiniMode())
            mMtvPreferences.setAutoPowerOffTime(SLEEP_TIMER_NONE);
        latestChannelValidity();
        initViewControl();
        mNotificationManager = (NotificationManager)getSystemService("notification");
        fragHandler = new MtvUiFragHandler(getFragmentManager(), 0, 0x7f0a0031);
        fragHandler.setEnabled(true);
        MtvAppRecorderInfo.getInstance(fragHandler);
        if(bundle != null)
        {
            fragHandler.fillFragHandlerData(bundle);
            lockImage.setVisibility(bundle.getInt("lockVisibility"));
            sleepTimer.setVisibility(bundle.getInt("sleeptimer"));
            mEpgIntent = (Intent)bundle.getParcelable("EPG_INTENT");
            if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20487)
                isStopRecCommandInProcess = bundle.getBoolean("isStopRecCommandInProcess");
            updateFragmentsOnStateChange(226, new int[0]);
            bIsRecordingFailed = bundle.getBoolean("recordingFailed");
            Intent intent;
            if(mMtvAppPlaybackContext != null)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onCreate - savedInstanceState is not null, bIsRecordingFailed - ").append(bIsRecordingFailed).append(" currentOp - ").append(mMtvAppPlaybackContext.getState().getOp()).toString());
                if(bIsRecordingFailed && mMtvAppPlaybackContext.getState().getOp() != 20487)
                    bIsRecordingFailed = false;
            } else
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "mMtvAppPlaybackContext is null");
            }
            updateNotification();
        }
        if(!MtvUtilConfigSetting.EPGAPP_ENABLED)
            continue; /* Loop/switch isn't completed */
        intent = getIntent();
        if(intent.getAction() != null && intent.getAction().equalsIgnoreCase("ACTION_DTV_VIEW"))
        {
            mEpgIntent = intent;
            MtvUtilDebug.Mid("MtvUiLivePlayer", "OnCreate EPG -ACTION_DTV_VIEW received");
            epgChNo = intent.getIntExtra("EXTRA_VIEW_CHANNEL_NO", -1);
            epgServiceId = intent.getIntExtra("EXTRA_VIEW_SERVICE_ID", -1);
            epgAreaId = intent.getIntExtra("EXTRA_AREA_FLAG", -1);
            MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("onCreate() epgServiceId = ").append(epgServiceId).append(" epgChNo = ").append(epgChNo).append(" epgAreaId = ").append(epgAreaId).toString());
            if(epgAreaId > 0)
            {
                MtvUtilDebug.Error("MtvUiLivePlayer", "Directly opening the physical channel with the area_flag !!");
                if(epgChNo != -1)
                    setLatestChannelsByPChannel(epgChNo, epgServiceId);
                else
                    MtvUtilDebug.Error("MtvUiLivePlayer", "pch is -1 ! Cross verify the Area Station info ...");
            } else
            if(MtvAreaManager.getCount(getApplicationContext()) == 0)
            {
                com.samsung.sec.mtv.ui.common.MtvUiDialogsFrag.EPGErrorDialogFragment.newInstance(0x7f070246, 0x7f07021b).show(getFragmentManager(), "EPGErrorDialogFragment");
            } else
            {
                MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("epgServiceId = ").append(epgServiceId).append(" epgChNo = ").append(epgChNo).toString());
                MtvChannel mtvchannel = MtvChannelManager.findPChannelByServiceId(getApplicationContext(), epgServiceId);
                if(mtvchannel != null)
                {
                    MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("Actual pch : [").append(epgChNo).append("] from EPG and pch[").append(mtvchannel.mPhysicalNum).append("] obtained from mapping").toString());
                    if(mtvchannel.mPhysicalNum != -1)
                        setLatestChannelsByPChannel(mtvchannel.mPhysicalNum, mtvchannel.mServiceID);
                    else
                        MtvUtilDebug.Error("MtvUiLivePlayer", "pch is -1 ! Cross verify the Area Station info ...");
                } else
                {
                    MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("onNewIntent EPG -ACTION_DTV_VIEW received channel is not found so directly opening the physical channel  ").append(epgChNo).toString());
                    MtvChannel mtvchannel1 = MtvChannelManager.findByPChannel(this, epgChNo);
                    if(mtvchannel1 != null)
                    {
                        if(mtvchannel1.mPhysicalNum != -1)
                            setLatestChannelsByPChannel(epgChNo, mtvchannel1.mServiceID);
                        else
                            MtvUtilDebug.Error("MtvUiLivePlayer", "pch is -1 ! Cross verify the Area Station info ...");
                    } else
                    {
                        Toast.makeText(this, 0x7f0702f4, 1).show();
                        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304, null));
                    }
                }
            }
        }
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        if(mMtvPreferences.getIsFilePlayMiniMode() && bundle == null)
        {
            mMtvPreferences.setIsFilePlayMiniMode(false);
            updateNotification();
        }
        registerContentObserver();
        overridePendingTransition(0, 0);
        if(MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE) goto _L4; else goto _L3
_L3:
        getWindow().addFlags(8192);
        return;
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if(isFinishing())
            bIsChannelChngd = false;
        MtvUtilDebug.Low("MtvUiLivePlayer", "...onDestroy()");
        if(mLiveUiMsgHandler != null && mLiveUiMsgHandler.hasMessages(304))
            mLiveUiMsgHandler.removeMessages(304);
        if(restrictLaunch)
        {
            restrictLaunch = false;
            return;
        }
        hideNotification();
        if(fragHandler != null)
            fragHandler.setEnabled(false);
        unRegisterMediaButtonReceiver();
        if(isFinishing())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "onDestroy called: isFinishing...");
            MtvAppRecorderInfo.reset();
            if(mMtvPreferences == null)
                mMtvPreferences = new MtvPreferences(getApplicationContext());
            mMtvPreferences.setComingReservationID(-1);
            if(fragHandler != null)
                fragHandler.reset();
            if(mBmlSurface != null)
                mBmlSurface.onDestroy();
            if(!MtvUtilAppService.isMiniModeRunning(this) && !mMtvPreferences.getIsLivePlayMiniMode() && !mMtvPreferences.getIsFilePlayMiniMode() && !mMtvPreferences.isSViewRunning())
            {
                (new MtvPreferences(getApplicationContext())).setLastLivePlayBackDestroyTime(System.currentTimeMillis());
                if(MtvAppPlaybackContextManager.getInstance().getCurrentContext() != null)
                    MtvAppPlayerOneSeg.getInstance().delete(MtvAppPlaybackContextManager.getInstance().getCurrentContext());
                mMtvAudMgr.setAudioMute(true);
                mMtvAudMgr.loseFocus();
                mMtvAudMgr.setAvStreaming(false);
                MtvUtilAudioManager.reset();
                if(mLiveUiMsgHandler != null)
                {
                    MtvUiGenericPlayer.removeOpenChannelMessages();
                    mLiveUiMsgHandler.removeCallbacksAndMessages(null);
                }
                releaseMtvPlayer();
            }
            if(mExitProgressDialog != null)
            {
                mExitProgressDialog.dismiss();
                mExitProgressDialog = null;
            }
            mPendingBackendNotification = null;
            MtvUtilAppService.setAppExiting(false);
            if(mNotificationManager != null)
                mNotificationManager.cancel(0x7f0200c3);
            mNotificationManager = null;
            mChannelGestureDetector = null;
            requestSystemKeyEvent(3, false);
        }
        if(mLiveUiMsgHandler != null)
        {
            mLiveUiMsgHandler.removeCallbacks(RunnableUpdateProgramChannelInfo);
            RunnableUpdateProgramChannelInfo = null;
            mLiveUiMsgHandler.removeCallbacks(RunnableUpdateSignalInfo);
            RunnableUpdateSignalInfo = null;
            mLiveUiMsgHandler.removeCallbacks(runnableVolumeDecreasing);
            runnableVolumeDecreasing = null;
            mLiveUiMsgHandler.removeCallbacks(runnableVolumeEscalating);
            runnableVolumeEscalating = null;
        }
        mMtvPreferences.setIsDtvStartedByFromMiniMode(false);
        unregisterContentObserver();
        MtvUtilAppService.unbindDrawables(findViewById(0x7f0a001a));
        System.gc();
        if(mCpuWakeLock != null && mCpuWakeLock.isHeld())
            mCpuWakeLock.release();
        MtvUtilDebug.Low("MtvUiLivePlayer", "...onDestroy() Completed");
    }

    public void onFragEvent(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onFragEvent: event[").append(i).append("]").toString());
        if(!MtvUtilAppService.isAppExiting()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        boolean flag;
        if(mMtvAppPlaybackContext != null && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == mMtvAppPlaybackContext.getState().getState() && 20487 == mMtvAppPlaybackContext.getState().getOp())
            flag = true;
        else
            flag = false;
        switch(i)
        {
        default:
            return;

        case 209: 
            continue; /* Loop/switch isn't completed */

        case 136: 
            if(optionsMenu != null)
            {
                optionsMenu.close();
                optionsMenu = null;
                return;
            }
            break;

        case 236: 
            StringBuilder stringbuilder = (new StringBuilder()).append(" MTV_UPDATE_FRAG_CMD_MAIN_MINI_MODE_LAUNCH bIsBuffering: ").append(bIsBuffering).append(" isHDMIPlugged: ").append(MtvUtilTvOut.isHDMIPlugged);
            if(mControlAnimationRunnable != null)
                obj = (new StringBuilder()).append(" getIsEnable: ").append(mControlAnimationRunnable.getIsEnable()).toString();
            else
                obj = (new StringBuilder()).append(" mControlAnimationRunnable: ").append(mControlAnimationRunnable).toString();
            MtvUtilDebug.Low("MtvUiLivePlayer", stringbuilder.append(((String) (obj))).toString());
            if(!bIsBuffering && mControlAnimationRunnable != null && !mControlAnimationRunnable.getIsEnable() && !MtvUtilTvOut.isHDMIPlugged)
            {
                startAppinAppMode();
                return;
            } else
            {
                Toast.makeText(this, 0x7f07020e, 0).show();
                return;
            }

        case 212: 
            if(mBmlSurface != null)
            {
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                setBMLLayoutFullView(false);
                return;
            }
            break;

        case 211: 
            if(mBmlSurface != null)
            {
                mBmlSurface.openBMLHomePage();
                return;
            }
            break;

        case 213: 
            MtvUtilAppService.setPreferredOrientation(-1);
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304, null));
            return;

        case 214: 
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(214));
            return;

        case 221: 
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(221));
            return;

        case 217: 
            updateFragmentsOnStateChange(226, new int[] {
                4000
            });
            if(fragHandler != null)
            {
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN, -1L);
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, -1L);
                return;
            }
            break;

        case 218: 
            if(fragHandler != null)
            {
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
                updateFragmentsOnStateChange(226, new int[] {
                    4000
                });
                return;
            }
            break;

        case 219: 
            updateFragmentsOnStateChange(226, new int[] {
                4000
            });
            if(fragHandler != null)
            {
                fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L);
                return;
            }
            break;

        case 223: 
            if(mMtvPreferences.getAutoPowerOffTime() > 0)
            {
                updateFragmentsOnStateChange(225, new int[0]);
                return;
            }
            break;

        case 224: 
            mLiveUiMsgHandler.sendEmptyMessage(304);
            return;

        case 220: 
            if(fragHandler != null)
            {
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                updateFragmentsOnStateChange(226, new int[] {
                    3000
                });
                return;
            }
            break;

        case 201: 
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(305, (Integer)obj));
            return;

        case 202: 
            if(mBmlSurface != null)
                mBmlSurface.updateBMLSurfaceView();
            updateCaptions();
            return;

        case 203: 
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(312));
            return;

        case 232: 
            if(blockUiEventsForReservation() || flag)
            {
                showToastforNoOperation(0x7f07029a);
                return;
            } else
            {
                mLiveUiMsgHandler.handleMessage(mLiveUiMsgHandler.obtainMessage(310));
                return;
            }

        case 233: 
            if(blockUiEventsForReservation() || flag)
            {
                showToastforNoOperation(0x7f07029a);
                return;
            } else
            {
                mLiveUiMsgHandler.handleMessage(mLiveUiMsgHandler.obtainMessage(311));
                return;
            }

        case 235: 
            if(blockUiEventsForReservation() || flag)
            {
                showToastforNoOperation(0x7f07029a);
                return;
            } else
            {
                LaunchChannelGuideActivity(0);
                return;
            }

        case 229: 
            if(fragHandler != null)
            {
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CAPTURE);
                return;
            }
            break;

        case 230: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "MTV_UPDATE_FRAG_CMD_RECORD_DESTROY... enable the audio mute");
            if(MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
            {
                if(fragHandler != null && !fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 3000L, false, new int[0]);
                stopRecording();
                return;
            }
            if(!MtvAppRecorderInfo.getInstance().isRecordTimerStarted())
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "Recording Cancelled as the recording timer never Started !");
                cancelRecording();
                return;
            } else
            {
                Toast.makeText(this, String.format(getString(0x7f07027d), new Object[] {
                    Integer.valueOf(6)
                }), 0).show();
                return;
            }

        case 228: 
            checkIsReservationAndEnd(1);
            Object obj1 = (String)obj;
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("Channel number received= ").append(((String) (obj1))).append(" and length= ").append(((String) (obj1)).length()).toString());
            obj = null;
            i = Integer.parseInt(((String) (obj1)));
            if(((String) (obj1)).length() < 3)
            {
                if(MtvUtilDebug.isReleaseMode() || i < 13)
                    obj = MtvChannelManager.findByVChannel(getApplicationContext(), i);
            } else
            if(((String) (obj1)).length() <= 4)
            {
                int j = i / 10;
                obj = MtvChannelManager.findVChannelByMultiChannelNum(getApplicationContext(), j, j * 10 + i % 10);
            }
            if(obj != null)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("found a virtual channel mapping the channel input given...mChannel.mPhysicalNum: ").append(((MtvChannel) (obj)).mPhysicalNum).append(" mChannel.mServiceID: ").append(((MtvChannel) (obj)).mServiceID).toString());
                obj1 = new Bundle();
                ((Bundle) (obj1)).putInt("physicalchannelnumber", ((MtvChannel) (obj)).mPhysicalNum);
                ((Bundle) (obj1)).putInt("virtualchannelnumber", ((MtvChannel) (obj)).mVirtualNum);
                ((Bundle) (obj1)).putInt("serviceid", ((MtvChannel) (obj)).mServiceID);
                ((Bundle) (obj1)).putInt("multichannelnumber", ((MtvChannel) (obj)).mMultiChannelNo);
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, obj1));
                return;
            } else
            {
                MtvUtilDebug.Error("MtvUiLivePlayer", "Either this is Engineering binary (trying to open PCH) or Logic screwed up sumwhere (Channel is null) !!");
                obj = new Bundle();
                ((Bundle) (obj)).putInt("physicalchannelnumber", i);
                ((Bundle) (obj)).putInt("virtualchannelnumber", -1);
                ((Bundle) (obj)).putInt("serviceid", 0);
                ((Bundle) (obj)).putInt("multichannelnumber", 0);
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, obj));
                return;
            }

        case 254: 
            endReservationProgram((Bundle)obj);
            return;

        case 231: 
            if(fragHandler != null && !fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
            {
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, 3000L, false, new int[0]);
                mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
                mLiveUiMsgHandler.post(RunnableUpdateSignalInfo);
                return;
            }
            break;

        case 257: 
            MtvUtilAppService.setPreferredOrientation(-1);
            stopRecording();
            mLiveUiMsgHandler.sendEmptyMessage(304);
            return;

        case 256: 
            MtvUtilAppService.setPreferredOrientation(-1);
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304, obj));
            return;

        case 258: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_SIGNAL_ALERT_RETRY_OK");
            if(mLiveUiMsgHandler != null)
            {
                i = mMtvPreferences.getLatestPChannelFromVChannel();
                int k = mMtvPreferences.getLatestServiceID();
                if(mMtvPlayerOneSeg != null)
                {
                    obj = prepareUri(i, k, true);
                    mMtvPlayerOneSeg.open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), ((android.broadcast.helper.MtvURI) (obj)));
                    return;
                }
            }
            break;

        case 222: 
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            return;

        case 264: 
            showExitApplicationDialogwithAntenna();
            return;

        case 234: 
            break;
        }
        if(true) goto _L1; else goto _L3
_L3:
        if(!(obj instanceof Boolean)) goto _L1; else goto _L4
_L4:
        if(((Boolean)obj).booleanValue())
        {
            updateFragmentsOnStateChange(226, new int[] {
                -1
            });
            return;
        } else
        {
            updateFragmentsOnStateChange(226, new int[0]);
            return;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag2 = true;
        if(!restrictLaunch) goto _L2; else goto _L1
_L1:
        boolean flag1 = super.onKeyDown(i, keyevent);
_L4:
        return flag1;
_L2:
        flag1 = flag2;
        if(mMtvAppPlaybackContext == null)
            continue; /* Loop/switch isn't completed */
        boolean flag;
        if(mMtvAppPlaybackContext.getState().getState().compareTo(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED) >= 0)
            flag = true;
        else
            flag = false;
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiLivePlayer", "onKeyDown");
        flag1 = flag2;
        if(fragHandler == null)
            continue; /* Loop/switch isn't completed */
        if(isPhoneLocked() && i != 26 && i != 24 && i != 25)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Locked Key not supported");
            return true;
        }
        if(i != 25 && i != 24)
            break; /* Loop/switch isn't completed */
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CHANNELNUM) || !flag)
        {
            if(i == 25)
                mMtvAudMgr.volumeDown();
            else
                mMtvAudMgr.volumeUp();
        } else
        {
            startVolumeControlBar();
            keyevent.startTracking();
        }
        flag1 = flag2;
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CHANNELNUM))
            return false;
        if(true) goto _L4; else goto _L3
_L3:
        flag1 = flag2;
        if(i != 126)
        {
            flag1 = flag2;
            if(i != 127)
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "Super called for key");
                return super.onKeyDown(i, keyevent);
            }
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    public boolean onKeyLongPress(int i, KeyEvent keyevent)
    {
        boolean flag = true;
        if(restrictLaunch)
            flag = super.onKeyLongPress(i, keyevent);
        else
        if(mMtvAppPlaybackContext != null)
        {
            if(i == 24)
            {
                mLiveUiMsgHandler.postDelayed(runnableVolumeEscalating, 10L);
                return true;
            }
            if(i == 25)
            {
                mLiveUiMsgHandler.postDelayed(runnableVolumeDecreasing, 10L);
                return true;
            } else
            {
                return super.onKeyLongPress(i, keyevent);
            }
        }
        return flag;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag2 = true;
        boolean flag1;
        if(restrictLaunch)
        {
            flag1 = super.onKeyUp(i, keyevent);
        } else
        {
            flag1 = flag2;
            if(mMtvAppPlaybackContext != null)
            {
                flag1 = flag2;
                if(fragHandler != null)
                {
                    boolean flag;
                    if(mMtvAppPlaybackContext.getState().getState().compareTo(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED) >= 0)
                        flag = true;
                    else
                        flag = false;
                    if(!MtvUtilDebug.isReleaseMode())
                        MtvUtilDebug.Low("MtvUiLivePlayer", "onKeyUp");
                    if(isPhoneLocked() && i != 26 && i != 24 && i != 25)
                    {
                        MtvUtilDebug.Low("MtvUiLivePlayer", "Locked Key not supported");
                        return true;
                    }
                    if(i == 26 && !keyevent.isLongPress())
                        if(lockImage.getVisibility() != 0)
                        {
                            MtvUtilDebug.Low("MtvUiLivePlayer", "onKeyUp, adding touch lock fragment");
                            setPhoneLocked(true);
                            sleepTimer.setVisibility(8);
                            fragHandler.hideAllFragments();
                            setRotateButtonVisibility(true, new int[0]);
                            updateFragmentsOnLock();
                            keyevent = getFragmentManager().findFragmentByTag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO.toString());
                            if(keyevent != null)
                            {
                                FragmentTransaction fragmenttransaction = getFragmentManager().beginTransaction();
                                fragmenttransaction.hide(keyevent);
                                fragmenttransaction.commit();
                            }
                            requestSystemKeyEvent(3, true);
                            requestSystemKeyEvent(187, true);
                            return true;
                        } else
                        {
                            MtvUtilDebug.Low("MtvUiLivePlayer", "onKeyUp, removing touch lock fragment");
                            handleUnlock();
                            return true;
                        }
                    if(i == 24 || i == 25)
                    {
                        if(mMtvAudMgr != null)
                            mMtvAudMgr.stopOtherSound();
                        if(flag || isPhoneLocked())
                            if(i == 24)
                            {
                                mLiveUiMsgHandler.removeCallbacks(runnableVolumeEscalating);
                                fragHandler.onUpdate(106, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                            } else
                            {
                                mLiveUiMsgHandler.removeCallbacks(runnableVolumeDecreasing);
                                fragHandler.onUpdate(107, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                            }
                        flag1 = flag2;
                        if(!flag)
                        {
                            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                            fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
                            return true;
                        }
                    } else
                    if(i == 82)
                    {
                        updateFragmentsOnStateChange(226, new int[] {
                            -1
                        });
                        mLiveUiMsgHandler.postDelayed(runnableMenuKeyPress, 100L);
                        return true;
                    } else
                    {
                        MtvUtilDebug.Low("MtvUiLivePlayer", "Super called for key");
                        return super.onKeyUp(i, keyevent);
                    }
                }
            }
        }
        return flag1;
    }

    public void onMtvAppFinishNotify(Object obj)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "onMtvAppFinishNotify!");
        Intent intent = (Intent)obj;
        boolean flag1 = false;
        boolean flag = flag1;
        if(mMtvAppPlaybackContext != null)
        {
            flag = flag1;
            if(mMtvAppPlaybackContext.getState() != null)
                if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && mMtvAppPlaybackContext.getState().getOp() == 20487)
                {
                    boolean flag2;
                    boolean flag3;
                    if(MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
                    {
                        stopRecording();
                        checkIsReservationAndEnd(1);
                    } else
                    {
                        MtvUtilDebug.Low("MtvUiLivePlayer", "Recording Cancelled as the recording time is Less than required!");
                        MtvAppRecorderInfo.getInstance().stopRecordTimer();
                        cancelRecording();
                        checkIsReservationAndEnd(7);
                        if("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND".equals(intent.getAction()) && intent.getBooleanExtra("closing_from_notification", false))
                            Toast.makeText(this, 0x7f07024a, 0).show();
                    }
                    flag = true;
                    setIntent(intent);
                } else
                {
                    flag = flag1;
                    if("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND".equals(intent.getAction()))
                    {
                        flag = flag1;
                        if(intent.getBooleanExtra("closing_from_notification", false))
                        {
                            Toast.makeText(getApplicationContext(), 0x7f07024a, 0).show();
                            flag = flag1;
                        }
                    }
                }
        }
        if(!flag)
            checkIsReservationAndEnd(1);
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState() != null)
            mMtvAppPlaybackContext.getState().registerListener(this);
        if(intent.getAction().equals("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"))
        {
            MtvUtilDebug.Mid("MtvUiLivePlayer", "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE");
            MtvUtilDebug.Mid("MtvUiLivePlayer", "looks like something already went wrong in middleware... just finishing liveplayer without doing anything...");
            mExitProgressDialog = new ProgressDialog(this);
            hideNotification();
        } else
        if(intent.getAction().equals("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"))
        {
            if(intent.getBooleanExtra("antenna_close", false))
            {
                MtvUtilDebug.Mid("MtvUiLivePlayer", "FINISH_BACKGROUND sent from antenna_close condition: Showing Progress Dialog");
                mExitProgressDialog = null;
            } else
            {
                mExitProgressDialog = new ProgressDialog(this);
            }
            MtvUtilDebug.Mid("MtvUiLivePlayer", "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND");
            hideNotification();
        } else
        {
            mExitProgressDialog = null;
            MtvUtilDebug.Mid("MtvUiLivePlayer", "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_FOREGROUND");
        }
        flag3 = false;
        flag2 = flag3;
        if(obj instanceof Intent)
        {
            obj = (Intent)obj;
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("notifiedIntent.getAction() ").append(((Intent) (obj)).getAction()).toString());
            flag2 = flag3;
            if(((Intent) (obj)).getAction().equals("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"))
                flag2 = true;
        }
        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304, Boolean.valueOf(flag2)));
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onMtvAppAndroidServiceNotify() :: what - ").append(i).toString());
        i;
        JVM INSTR lookupswitch 10: default 116
    //                   4: 272
    //                   6: 272
    //                   9: 233
    //                   10: 123
    //                   11: 128
    //                   12: 134
    //                   16: 143
    //                   19: 152
    //                   23: 339
    //                   28: 345;
           goto _L1 _L2 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        super.onMtvAppLiveBroadcastNotify(i, obj);
_L12:
        return;
_L4:
        endReservationProgramAndShowAlert();
        return;
_L5:
        handleFinish(false);
        return;
_L6:
        RunnableReservationEndPopupExpire.run();
        return;
_L7:
        runOnUiThread(runnableShowNotification);
        return;
_L8:
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if((mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getOp() != 20485) && !isFilePlayerActivity())
        {
            MtvUtilAppService.setPreferredOrientation(1);
            mMtvPreferences.setSViewRunning(true);
            obj = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover);
            ((Intent) (obj)).addFlags(0x4000000);
            startActivity(((Intent) (obj)));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        if(mMtvAudMgr != null && !mMtvAudMgr.isHeadsetConnected())
        {
            mMtvAudMgr.setAudioEffect(0, true);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        super.onMtvAppLiveBroadcastNotify(i, obj);
        i = 0;
        if(mMtvAppPlaybackContext != null)
            if(mMtvAppPlaybackContext.getState().getOp() == 20487)
                i = 1;
            else
                i = 0;
        if(i != 0 && mMtvPreferences.getSaveToStorage() == 0)
        {
            dismissProgressDialog();
            MtvAppRecorderInfo.getInstance().stopRecordTimer();
            cancelRecording();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        showNotification(true);
        return;
_L10:
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20487)
            if(MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
            {
                stopRecording();
                return;
            } else
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "Recording Cancelled as the recording time is Less than required!");
                MtvAppRecorderInfo.getInstance().stopRecordTimer();
                cancelRecording();
                return;
            }
        if(true) goto _L12; else goto _L11
_L11:
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        MtvUtilDebug.Low("MtvUiLivePlayer", "onNewIntent()...");
        if(!restrictLaunch)
        {
            if(MtvUtilConfigSetting.EPGAPP_ENABLED)
            {
                if(intent != null && intent.getAction() != null && intent.getAction().equalsIgnoreCase("ACTION_DTV_VIEW"))
                {
                    epgChNo = intent.getIntExtra("EXTRA_VIEW_CHANNEL_NO", -1);
                    epgServiceId = intent.getIntExtra("EXTRA_VIEW_SERVICE_ID", -1);
                    MtvUtilDebug.Mid("MtvUiLivePlayer", (new StringBuilder()).append("onNewIntent EPG -ACTION_DTV_VIEW received channel: ").append(epgChNo).toString());
                    epgAreaId = intent.getIntExtra("EXTRA_AREA_FLAG", -1);
                    MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("onNewIntent() epgServiceId = ").append(epgServiceId).append("epgAreaId = ").append(epgAreaId).toString());
                    if(epgAreaId > 0)
                    {
                        MtvUtilDebug.Error("MtvUiLivePlayer", "Directly opening the physical channel with the area_flag !!");
                        Bundle bundle = new Bundle();
                        bundle.putInt("physicalchannelnumber", epgChNo);
                        bundle.putInt("virtualchannelnumber", -1);
                        bundle.putInt("multichannelnumber", 0);
                        bundle.putInt("serviceid", epgServiceId);
                        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle));
                    } else
                    {
                        MtvUtilDebug.Mid("MtvUiLivePlayer", (new StringBuilder()).append("onNewIntent EPG -ACTION_DTV_VIEW received channel: not received area_flag ").append(epgChNo).toString());
                        if(MtvAreaManager.getCount(getApplicationContext()) == 0)
                        {
                            com.samsung.sec.mtv.ui.common.MtvUiDialogsFrag.EPGErrorDialogFragment.newInstance(0x7f070246, 0x7f07021b).show(getFragmentManager(), "EPGErrorDialogFragment");
                        } else
                        {
                            MtvChannel mtvchannel = MtvChannelManager.findPChannelByServiceId(getApplicationContext(), epgServiceId);
                            if(mtvchannel != null)
                            {
                                MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("Actual pch : [").append(epgChNo).append("] from EPG and pch[").append(mtvchannel.mPhysicalNum).append("] obtained from mapping").toString());
                                MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("channel.mServiceID = ").append(mtvchannel.mServiceID).toString());
                                if(mtvchannel.mPhysicalNum != -1)
                                {
                                    setLatestChannelsByPChannel(mtvchannel.mPhysicalNum, mtvchannel.mServiceID);
                                    Bundle bundle1 = new Bundle();
                                    bundle1.putInt("physicalchannelnumber", mtvchannel.mPhysicalNum);
                                    bundle1.putInt("virtualchannelnumber", mtvchannel.mVirtualNum);
                                    bundle1.putInt("serviceid", mtvchannel.mServiceID);
                                    bundle1.putInt("multichannelnumber", mtvchannel.mMultiChannelNo);
                                    mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle1));
                                } else
                                {
                                    MtvUtilDebug.Error("MtvUiLivePlayer", "pch is -1 ! Cross verify the Area Station info ...");
                                }
                            } else
                            {
                                MtvUtilDebug.Error("MtvUiLivePlayer", (new StringBuilder()).append("onNewIntent EPG -ACTION_DTV_VIEW received channel is not found so directly opening the physical channel  ").append(epgChNo).toString());
                                MtvChannel mtvchannel1 = MtvChannelManager.findByPChannel(this, epgChNo);
                                if(mtvchannel1 != null)
                                {
                                    if(mtvchannel1.mPhysicalNum != -1)
                                    {
                                        setLatestChannelsByPChannel(epgChNo, mtvchannel1.mServiceID);
                                        Bundle bundle2 = new Bundle();
                                        bundle2.putInt("physicalchannelnumber", mtvchannel1.mPhysicalNum);
                                        bundle2.putInt("virtualchannelnumber", mtvchannel1.mVirtualNum);
                                        bundle2.putInt("serviceid", mtvchannel1.mServiceID);
                                        bundle2.putInt("multichannelnumber", mtvchannel1.mMultiChannelNo);
                                        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(318, bundle2));
                                    } else
                                    {
                                        MtvUtilDebug.Error("MtvUiLivePlayer", "pch is -1 ! Cross verify the Area Station info ...");
                                    }
                                } else
                                {
                                    Toast.makeText(this, 0x7f0702f4, 1).show();
                                }
                            }
                        }
                    }
                } else
                {
                    setIntent(intent);
                }
            } else
            if(intent != null)
                setIntent(intent);
            if(!isStartedFromChannelScheduleForRecord && intent != null)
            {
                isStartedFromChannelScheduleForRecord = intent.getBooleanExtra("startedFromChannelScheduleForRecord", false);
                return;
            }
        }
    }

    public boolean onOptionsItemSelected(MenuItem menuitem)
    {
        menuitem.getItemId();
        JVM INSTR tableswitch 0 16: default 88
    //                   0 90
    //                   1 115
    //                   2 203
    //                   3 257
    //                   4 338
    //                   5 360
    //                   6 382
    //                   7 404
    //                   8 411
    //                   9 433
    //                   10 516
    //                   11 532
    //                   12 541
    //                   13 88
    //                   14 88
    //                   15 88
    //                   16 550;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L1 _L1 _L1 _L15
_L14:
        break MISSING_BLOCK_LABEL_541;
_L1:
        break; /* Loop/switch isn't completed */
_L15:
        break MISSING_BLOCK_LABEL_550;
_L16:
        return false;
_L2:
        MtvUtilAppService.setPreferredOrientation(-1);
        mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304, null));
        return false;
_L3:
        long l;
        if(1 == mMtvPreferences.getSaveToStorage())
            l = MtvUtilMemoryStatus.getAvailableInternalMemorySize();
        else
            l = MtvUtilMemoryStatus.getAvailableExternalMemorySize();
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("availMemSize :").append(l).toString());
        if(l < 0x204000L)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "memory already full.. cannot start capture...");
            showErrorDialog(0x7f070026);
            return true;
        } else
        {
            mMtvPlayerOneSeg.captFrame(mMtvAppPlaybackContext);
            return false;
        }
_L4:
        checkIsReservationAndEnd(1);
        int i = startRecording(null);
        if(i == 0)
        {
            showProgressDialog(0x7f070295, 0x7f0702a6);
            return false;
        } else
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("startRecording failed...").append(i).toString());
            return false;
        }
_L5:
        if(!MtvUtilConfigSetting.EPGAPP_ENABLED)
            continue; /* Loop/switch isn't completed */
        try
        {
            getPackageManager().getApplicationInfo("com.uievolution.gguide.android", 128);
            menuitem = new Intent();
            menuitem.setAction("ACTION_EPGAPP_VIEW");
            menuitem.putExtra("EXTRA_SERVICE_ID", 0);
            MtvUtilDebug.Low("MtvUiLivePlayer", "G Guide installed");
            if(menuitem.resolveActivity(getPackageManager()) == null)
                continue; /* Loop/switch isn't completed */
            startActivity(menuitem);
        }
        // Misplaced declaration of an exception variable
        catch(MenuItem menuitem)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "G Guide not installed");
            return false;
        }
        return false;
_L6:
        if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
            removeFragments();
        LaunchChannelGuideActivity(2);
        return false;
_L7:
        if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 1)
            removeFragments();
        LaunchChannelGuideActivity(0);
        return false;
_L8:
        LaunchChannelGuideActivity(1);
        if(mNotificationManager != null)
        {
            mNotificationManager.cancel(1001);
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        LaunchChannelGuideActivity(3);
        return false;
_L10:
        MtvUiSettingsDialogFrag.newInstance(new Bundle()).show(getFragmentManager(), "MtvUiSettingsDialogFrag");
        return false;
_L11:
        if(mBmlSurface != null)
            if(!mBmlSurface.IsBMLFullView())
            {
                setBMLLayoutFullView(true);
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR))
                {
                    fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR, -1L, false, new int[0]);
                    mLiveUiMsgHandler.post(RunnableUpdateProgramChannelInfo);
                    return false;
                }
            } else
            {
                setBMLLayoutFullView(false);
                return false;
            }
        if(true) goto _L16; else goto _L12
_L12:
        if(mBmlSurface != null)
        {
            mBmlSurface.openBMLHomePage();
            return false;
        }
        if(true) goto _L16; else goto _L13
_L13:
        mMtvAudMgr.transferToBT();
        return false;
        mMtvAudMgr.transferToPhone();
        return false;
        MtvUtilDebug.Low("MtvUiLivePlayer", "MENU_RECORD_STOP_RECORDING... enable the auiod mute");
        mMtvAudMgr.setAudioMute(false);
        if(MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
        {
            stopRecording();
            return false;
        }
        if(!MtvAppRecorderInfo.getInstance().isRecordTimerStarted())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "Recording Cancelled as the recording timer never Started !");
            cancelRecording();
            return false;
        } else
        {
            Toast.makeText(this, String.format(getString(0x7f07027d), new Object[] {
                Integer.valueOf(6)
            }), 0).show();
            return false;
        }
    }

    public void onOptionsMenuClosed(Menu menu)
    {
        optionsMenu = null;
        super.onOptionsMenuClosed(menu);
    }

    protected void onPause()
    {
        super.onPause();
        bIsChannelChngd = false;
        MtvUtilDebug.Low("MtvUiLivePlayer", "onPause...");
        if(restrictLaunch)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "restrictLaunch mode !");
        } else
        {
            unRegisterMediaButtonReceiver();
            if(mBmlSurface != null)
                mBmlSurface.onPause();
            if(isFinishing())
            {
                mMtvPreferences.setIsLivePlayMode(false);
                mMtvPreferences.setIsDtvStartedByFromMiniMode(false);
                return;
            }
        }
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onPlayerNotification ...:command : ").append(i).append(" status : ").append(j).toString());
        if(mMtvAudMgr == null)
            mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        i;
        JVM INSTR tableswitch 20481 20495: default 152
    //                   20481 153
    //                   20482 464
    //                   20483 1349
    //                   20484 839
    //                   20485 152
    //                   20486 2136
    //                   20487 1589
    //                   20488 2059
    //                   20489 152
    //                   20490 152
    //                   20491 152
    //                   20492 152
    //                   20493 152
    //                   20494 401
    //                   20495 1309;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L6 _L7 _L8 _L1 _L1 _L1 _L1 _L1 _L9 _L10
_L1:
        return;
_L2:
        if(j == 24581)
        {
            if(mExitProgressDialog != null && mExitProgressDialog.isShowing() || MtvUtilAppService.isAppExiting())
            {
                MtvUtilDebug.Mid("MtvUiLivePlayer", "onPlayerNotification - CMD_CREATE - exiting");
                if(!mLiveUiMsgHandler.hasMessages(304))
                {
                    mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(304));
                    return;
                }
                continue; /* Loop/switch isn't completed */
            }
            mExitProgressDialog = null;
            if(mBmlSurface != null)
                runOnUiThread(new Runnable() );
            mMtvAudMgr.setAudioEnable(true);
            runOnUiThread(runnableShowNotification);
            if(MtvAreaManager.getCount(getApplicationContext()) == 0)
            {
                runOnUiThread(new Runnable() {

                    public void run()
                    {
                        Intent intent2 = getIntent();
                        boolean flag;
                        if(intent2.getAction() != null && intent2.getAction().equalsIgnoreCase("ACTION_DTV_VIEW"))
                            flag = true;
                        else
                            flag = false;
                        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "exit_confirmation");
                        if(MtvBatteryInfo.getBatteryLevel() <= 15 && !MtvBatteryInfo.isBatteryCharging())
                        {
                            MtvUtilDebug.Low("MtvUiLivePlayer", "Battery Level is low ! Not Launching ChannelGudie... !");
                            showLowBatteryPopup();
                        } else
                        if(!isFinishing() && !flag)
                        {
                            LaunchChannelGuideActivity(0);
                            return;
                        }
                    }

                    final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
                }
);
                return;
            }
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(isResumed())
                        registerVideoSurfaceView(true);
                }

                final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
            }
);
            android.broadcast.helper.MtvURI mtvuri = prepareUri(mMtvPreferences.getLatestPChannelFromVChannel(), mMtvPreferences.getLatestServiceID(), true);
            runOnUiThread(new Runnable() );
            runOnUiThread(RunnableCheckIsReservationAndStart);
            if(mMtvPlayerOneSeg != null)
            {
                MtvUtilDebug.High("MtvUiLivePlayer", "44444444444444444444444...");
                mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
                return;
            }
            continue; /* Loop/switch isn't completed */
        }
        if(j == 24580)
        {
            MtvUtilDebug.Error("MtvUiLivePlayer", "onPlayerNotification - CMD_CREATE - exiting");
            mMtvPlayerOneSeg.delete(mMtvAppPlaybackContext);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L9:
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onPlayerNotification ...:CMD_CLOSE: Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24581: 
            break;
        }
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getAttribute().registerListener(this);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onPlayerNotification ...:CMD_OPEN: Status-").append(j).toString());
        switch(j)
        {
        case 24578: 
        case 24579: 
        default:
            return;

        case 24577: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_OPEN:STAT_STARTED");
            if(MtvFeatures.isHoverEnabled())
            {
                saveNextPreviousChannelNumberForHover();
                if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
                    fragHandler.onUpdate(237, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            }
            if(!isBmlFullView())
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
            runOnUiThread(runnableShowNotification);
            return;

        case 24581: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "Stopping Recorder Service In case it is Opened !");
            Intent intent = new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE");
            intent.putExtra("COMMAND_KEY", 2);
            getApplicationContext().stopService(intent);
            mEpgIntent = null;
            return;

        case 24582: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_BEGIN");
            if(!isBmlFullView())
            {
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
                return;
            }
            continue; /* Loop/switch isn't completed */

        case 24583: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_PROGRESS");
            if(!isBmlFullView())
            {
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
                return;
            }
            continue; /* Loop/switch isn't completed */

        case 24584: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_END");
            mGenericMsgHAndler.removeMessages(301);
            mGenericMsgHAndler.sendMessageDelayed(mLiveUiMsgHandler.obtainMessage(301, null), 500L);
            return;

        case 24580: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "STATUS_FAIL_SIGNAL_ERROR");
            CheckIsReservationPartialOrNone(4);
            break;
        }
        if(k == mMtvPreferences.getLatestPChannel())
        {
            runOnUiThread(new Runnable() {

                public void run()
                {
                    handleUnlock();
                }

                final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
            }
);
            runOnUiThread(new RunnableShowSignalAlertDialog(170));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onPlayerNotification ...:CMD_PLAY Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24577: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_PLAY:STAT_STARTED");
            if(!isBmlFullView())
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            if(mBmlSurface != null)
            {
                runOnUiThread(new Runnable() );
                return;
            }
            break;

        case 24581: 
            if(isInBGRecording)
                isInBGRecording = false;
            if(mMtvAudMgr != null)
            {
                mMtvAudMgr.stopOtherSound();
                mMtvAudMgr.updateCurrentAudioEffectAndMode();
            }
            runOnUiThread(new Runnable() );
            runOnUiThread(new Runnable() );
            runOnUiThread(RunnableCheckIsReservationAndStart);
            return;

        case 24582: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_BEGIN");
            if(!isBmlFullView())
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            bIsBuffering = true;
            return;

        case 24583: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_PROGRESS");
            if(!isBmlFullView())
                mGenericMsgHAndler.sendMessage(mLiveUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            bIsBuffering = true;
            return;

        case 24584: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_END");
            mGenericMsgHAndler.removeMessages(301);
            mGenericMsgHAndler.sendMessageDelayed(mLiveUiMsgHandler.obtainMessage(301, null), 500L);
            mLiveUiMsgHandler.post(RunnableRemoveWeakSignalDialogue);
            bIsBuffering = false;
            return;

        case 24580: 
            MtvUtilDebug.Error("MtvUiLivePlayer", "CMD_PLAY -- STAT_FAILURE -- Something severely screwed -- Let MW guys debug this issue !!");
            if(!MtvUtilDebug.isReleaseMode())
            {
                Toast toast = Toast.makeText(this, "\n\n\n       [FullSeg]   F A T A L    E R R O R !\n\n\n FullSeg middleware screwed up\n\n  - Use *#9900# to take log after termination - ", 1);
                toast.setGravity(119, 0, 0);
                toast.show();
            }
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"));
            return;

        case 24593: 
            MtvUtilDebug.Error("MtvUiLivePlayer", "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!");
            if(!MtvUtilDebug.isReleaseMode())
            {
                Toast toast1 = Toast.makeText(this, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - ", 1);
                toast1.setGravity(119, 0, 0);
                toast1.show();
            }
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"));
            return;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification ...:CMD_DELETE");
        if(j == 24581)
        {
            mLiveUiMsgHandler.removeCallbacksAndMessages(null);
            mLiveUiMsgHandler.post(new Runnable() {

                public void run()
                {
                    releaseTunerAndFinish();
                }

                final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
            }
);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L4:
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onPlayerNotification ...:CMD_STATUS_UPDT Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24588: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "STAT_LOW_SIGNAL received");
            CheckIsReservationPartialOrNone(4);
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && mMtvAppPlaybackContext.getState().getOp() == 20487)
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(321, 24588, -1));
            if(k == mMtvPreferences.getLatestPChannel())
            {
                runOnUiThread(new Runnable() {

                    public void run()
                    {
                        handleUnlock();
                    }

                    final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
                }
);
                runOnUiThread(new RunnableShowSignalAlertDialog(170));
                return;
            }
            break;

        case 24589: 
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(308, null));
            return;

        case 24602: 
            Intent intent1 = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide);
            intent1.putExtra("initialize", true);
            intent1.putExtra("tab", 0);
            intent1.putExtra("is_areachanged", true);
            startActivityForResult(intent1, 0);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onPlayerNotification ...:CMD_RECORD Status-").append(j).toString());
        switch(j)
        {
        default:
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("Ignore the status[").append(j).append("] in REC command.").toString());
            return;

        case 24577: 
            mGenericMsgHAndler.postDelayed(new Runnable() {

                public void run()
                {
                    MtvUtilDebug.Low("MtvUiLivePlayer", "Safely Closing ProgressDialog in case CAPTURE event not recieved !");
                    if(mProgressDialog != null)
                    {
                        dismissProgressDialog();
                        if(!MtvAppRecorderInfo.getInstance().isRecordTimerStarted())
                        {
                            MtvUtilDebug.Low("MtvUiLivePlayer", "No thumbnail received in OneSeg. Starting Record timer in STAT_STARTED");
                            MtvAppRecorderInfo.getInstance().startRecordTimer();
                        }
                    }
                }

                final MtvUiLivePlayer this$0;

            
            {
                this$0 = MtvUiLivePlayer.this;
                Object();
            }
            }
, 5000L);
            runOnUiThread(new Runnable() );
            bIsRecordingFailed = false;
            updateNotification();
            return;

        case 24581: 
            if(!MtvAppRecorderInfo.getInstance().isRecordTimerStarted())
            {
                MtvUtilDebug.Error("MtvUiLivePlayer", "Record Timer never started !");
                bIsRecordingFailed = true;
            }
            MtvAppRecorderInfo.getInstance().stopRecordTimer();
            isStopRecCommandInProcess = false;
            saveTVFileThumbnail();
            if(bIsRecordingFailed)
                checkIsReservationAndEnd(2);
            else
                checkIsReservationAndEnd(1);
            if(bIsRecordingFailed)
                checkIsReservationAndStart();
            if(!bIsRecordingFailed)
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(315));
            updateNotification();
            return;

        case 24580: 
            dismissProgressDialog();
            isStopRecCommandInProcess = false;
            MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("Got CMD_REC with STAT_FAILURE and extra = [").append(k).append("]").toString());
            i = 321;
            if(k == 24595 || k == 24593)
            {
                MtvAppRecorderInfo.getInstance().stopRecordTimer();
                i = 320;
                bIsRecordingFailed = true;
            } else
            {
                saveTVFileThumbnail();
            }
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(i, k, -1));
            updateNotification();
            return;

        case 24596: 
            dismissProgressDialog();
            MtvAppRecorderInfo.getInstance().startRecordTimer();
            return;

        case 24588: 
            CheckIsReservationPartialOrNone(4);
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED)
                mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(321, 24588, -1));
            else
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("Wrong State [").append(mMtvAppPlaybackContext.getState().getState()).append("] to process Low Signal Event!!").toString());
            runOnUiThread(new RunnableShowSignalAlertDialog(170));
            return;

        case 24578: 
            break;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        switch(j)
        {
        case 24579: 
        default:
            return;

        case 24580: 
            Toast.makeText(this, 0x7f070211, 0).show();
            return;

        case 24581: 
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPlayerNotification: Capture received!!!");
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(314));
            return;

        case 24577: 
        case 24578: 
            break;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        switch(j)
        {
        default:
            return;

        case 24577: 
            continue; /* Loop/switch isn't completed */

        case 24581: 
            runOnUiThread(new Runnable() );
            break;
        }
        break; /* Loop/switch isn't completed */
        if(true) goto _L1; else goto _L11
_L11:
    }

    public boolean onPrepareOptionsMenu(Menu menu)
    {
        boolean flag;
        boolean flag2;
        flag2 = true;
        if(MtvAreaManager.getCount(getApplicationContext()) == 0)
        {
            invalidateOptionsMenu();
            return true;
        }
        menu.clear();
        if(MtvUtilAppService.isAppExiting())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "onPrepareOptionsMenu :Exit Happening... cannot prepare options menu");
            invalidateOptionsMenu();
            return true;
        }
        if(getFragmentManager().findFragmentByTag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_TAG_PROG_INFO.toString()) != null)
        {
            invalidateOptionsMenu();
            return true;
        }
        if(fragHandler != null && fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CHANNELNUM))
        {
            invalidateOptionsMenu();
            return true;
        }
        MenuItem menuitem;
        if(mMtvAppPlaybackContext != null && com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING == mMtvAppPlaybackContext.getState().getState() && 20480 == mMtvAppPlaybackContext.getState().getOp())
            flag = true;
        else
            flag = false;
        optionsMenu = menu;
        if(fragHandler == null || isPhoneLocked()) goto _L2; else goto _L1
_L1:
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getOp() != 20487) goto _L4; else goto _L3
_L3:
        menuitem = menu.add(0, 16, 0, 0x7f0702ed).setIcon(0x7f0200b7);
        if(!MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
            menuitem.setEnabled(false);
        menu.add(0, 8, 0, 0x7f0702dc).setIcon(0x7f0200b6);
_L2:
        return onPrepareOptionsMenu(menu);
_L4:
        if(true)
        {
            menu.add(0, 0, 0, 0x7f070248).setIcon(0x7f0200bc).setEnabled(true);
            menu.add(0, 2, 0, 0x7f0702ad).setIcon(0x7f0200bd).setEnabled(flag);
            menu.add(0, 1, 0, 0x7f070210).setIcon(0x7f0200bb).setEnabled(flag);
            MenuItem menuitem1 = menu.add(0, 3, 0, 0x7f070264).setIcon(0x7f0200b3);
            boolean flag1;
            if(!isEmergencyMode(getApplicationContext()))
                flag1 = true;
            else
                flag1 = false;
            menuitem1.setEnabled(flag1);
            menuitem1 = menu.add(0, 4, 0, 0x7f070300).setIcon(0x7f0200ba);
            if(!blockUiEventsForReservation())
                flag1 = flag2;
            else
                flag1 = false;
            menuitem1.setEnabled(flag1);
            menu.add(0, 8, 0, 0x7f0702dc).setIcon(0x7f0200b6);
            if(!mMtvAudMgr.isHeadsetConnected())
                if(!mMtvAudMgr.isBTConnected())
                    menu.add(0, 11, 0, 0x7f0701d9).setIcon(0x7f0200b9);
                else
                    menu.add(0, 12, 0, 0x7f0702f8).setIcon(0x7f0200b9);
            if(MtvUtilAppService.getCurrentOrientation(getApplicationContext()) == 0)
            {
                menu.add(0, 9, 0, 0x7f07025a).setIcon(0x7f0200ac).setEnabled(flag);
                menu.add(0, 10, 0, 0x7f0701f1).setIcon(0x7f0200b8).setEnabled(flag);
            }
        }
        if(true) goto _L2; else goto _L5
_L5:
    }

    public void onProgramAttributeReset(int i)
    {
    }

    public void onProgramAttributeUpdated(int i)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onProgramAttributeUpdated: ").append(i).toString());
        switch(i)
        {
        default:
            return;

        case 3: // '\003'
            runOnUiThread(RunnableUpdateProgramChannelInfo);
            return;

        case 2: // '\002'
            mLiveUiMsgHandler.sendMessage(mLiveUiMsgHandler.obtainMessage(317));
            runOnUiThread(runnableShowNotification);
            runOnUiThread(RunnableUpdateProgramChannelInfo);
            return;

        case 16: // '\020'
            runOnUiThread(RunnableUpdateSignalInfo);
            break;
        }
    }

    protected void onResume()
    {
        onResume();
        MtvUtilDebug.Low("MtvUiLivePlayer", "onResume...");
        sendBroadcast((new Intent("intent.stop.app-in-app")).putExtra("stopFromDtv", true));
        if(!MtvUtilAppService.isIntentAvailable(getApplicationContext(), new Intent("ACTION_EPGAPP_VIEW")))
            MtvUtilConfigSetting.EPGAPP_ENABLED = false;
        else
            MtvUtilConfigSetting.EPGAPP_ENABLED = true;
        if(MtvUtilAppService.isAppExiting())
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "isExiting...");
            if(fragHandler != null)
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            boolean flag = false;
            if(mMtvAppPlaybackContext != null)
                if(mMtvAppPlaybackContext.getState().getOp() == 20487)
                    flag = true;
                else
                    flag = false;
            if(flag)
                if(MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
                {
                    stopRecording();
                } else
                {
                    dismissProgressDialog();
                    MtvAppRecorderInfo.getInstance().stopRecordTimer();
                    cancelRecording();
                }
            handleFinish(false);
            return;
        }
        if(MtvUiPopUpActivity.type == 8)
            MtvUiPopUpActivity.mtvUiPopUpActivity.finish();
        if(isFinishing() || restrictLaunch)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "restrictLaunch mode !");
            return;
        }
        if(MtvUtilAppService.getCurrentOrientation(this) != MtvUtilAppService.preferred_orientation && (getIntent().getFlags() & 0x100000) == 0 && getIntent().getBooleanExtra("startFilePlayer", false))
        {
            LaunchChannelGuideActivity(2);
            LaunchFilePLayerActivity(getIntent());
        }
        fragHandler.setEnabled(true);
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        mMtvPreferences.setIsLivePlayMode(true);
        if(!mMtvPreferences.getIsFilePlayMiniMode())
        {
            ComponentName componentname = new ComponentName(this, com/samsung/sec/mtv/ui/minitv/MtvMiniModeService);
            stopService((new Intent("com.samsung.action.MINI_MODE_SERVICE")).setComponent(componentname));
        }
        if(mMtvPreferences.getIsFilePlayMiniMode())
        {
            finish();
            return;
        }
        if(mMtvPreferences.getLaunchAntennaAlert())
        {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
            intent.putExtra("popup_type", 3);
            intent.setFlags(0x10000000);
            MtvUtilDebug.High("MtvUiLivePlayer", "Mobile Tv Lanuch antenna");
            startActivity(intent);
            mMtvPreferences.setLaunchAntennaAlert(false);
        }
        int i = MtvAreaManager.getCount(getApplicationContext());
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onResume...areaCount:").append(i).toString());
        if(i > 0)
        {
            MtvUtilDebug.Low("MtvUiLivePlayer", "updateFragmentsOnStateChange called");
            updateFragmentsOnStateChange(226, new int[0]);
            updateFragmentsOnLock();
        }
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CAPTURE))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_CAPTURE);
        MtvReservation mtvreservation;
        if(i == 0)
            setImageViewDuringNoChannel(true);
        else
            setImageViewDuringNoChannel(false);
        if((getIntent().getFlags() & 0x100000) == 0 && getIntent().getBooleanExtra("startFilePlayer", false))
            getIntent().putExtra("startFilePlayer", false);
        else
            initMtvPlayer();
        updateLiveViews();
        if(mPendingBackendNotification != null)
        {
            KeyguardManager keyguardmanager;
            if(mPendingBackendNotification instanceof Message)
                mLiveUiMsgHandler.sendMessage((Message)mPendingBackendNotification);
            else
            if(mPendingBackendNotification instanceof Runnable)
                ((Runnable)mPendingBackendNotification).run();
            mPendingBackendNotification = null;
        }
        if(mMtvAppPlaybackContext != null && mBmlSurface != null && mMtvPlayerOneSeg != null && mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
            mBmlSurface.onResume(mMtvAppPlaybackContext);
        keyguardmanager = (KeyguardManager)getApplicationContext().getSystemService("keyguard");
        bKeyGuardlock = keyguardmanager.isKeyguardLocked();
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("mKeyguardManager ").append(bKeyGuardlock).toString());
        if(mMtvAudMgr != null)
            mMtvAudMgr.stopOtherSound();
        checkIsReservationAndStart();
        mtvreservation = null;
        if(mMtvPreferences.getComingReservationID() != -1)
            mtvreservation = MtvReservationManager.find(this, mMtvPreferences.getComingReservationID());
        else
        if(mMtvPreferences.getReservationAlertID() != -1)
            mtvreservation = MtvReservationManager.find(this, mMtvPreferences.getReservationAlertID());
        if(mtvreservation != null && (mtvreservation.mPgmType == 1 || mtvreservation.mPgmType == 0) || getIntent().hasExtra("isFromAutoantenna") && getIntent().getBooleanExtra("isFromAutoantenna", false))
            updateKeyguardPolicy(true);
        showStatusNotification = false;
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onResume: isScreenOn: ").append(MtvUtilAppService.isScreenOn(getApplicationContext())).append("isKeyguardLocked :").append(keyguardmanager.isKeyguardLocked()).toString());
        if(!MtvUtilAppService.isScreenOn(getApplicationContext()))
            mVideoSurfaceView.setKeepScreenOn(true);
        if(!bKeyGuardlock && hasWindowFocus())
            requestSystemKeyEvent(26, true);
        if(mMtvAudMgr != null)
            mMtvAudMgr.setAvStreaming(true);
        if(mAudioManager == null)
            mAudioManager = (AudioManager)getSystemService("audio");
        registerMediaButtonReceiver();
        if(mMtvPreferences.getIsLivePlayMiniMode())
        {
            if(mMtvPreferences.getIsDtvStartedByReminderAlert())
            {
                mMtvPreferences.setReservAlertFrom(-1);
                checkIsReservationAndStart();
            }
            mMtvPreferences.setIsDtvStartedByFromMiniMode(true);
            mMtvPreferences.setIsLivePlayMiniMode(false);
            updateNotification();
        }
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20487)
        {
            MtvAppRecorderInfo.getInstance(fragHandler);
            MtvAppRecorderInfo.getInstance().continueRecordTimer(MtvAppRecorderInfo.getInstance().getRecordTime());
        }
        if(isStartedFromChannelScheduleForRecord)
        {
            int j = startRecording(null);
            if(j == 0)
                showProgressDialog(0x7f070295, 0x7f0702a6);
            else
                MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("isStartedFromChannelScheduleForRecord startRecording failed...").append(j).toString());
            isStartedFromChannelScheduleForRecord = false;
        }
        if(bIsChannelChngd)
            setBMLLayoutFullView(false);
        overridePendingTransition(0, 0);
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "onSaveInstanceState");
        if(!isFinishing() && !restrictLaunch)
        {
            fragHandler.setEnabled(false);
            fragHandler.putFragHandlerData(bundle);
            bundle.putInt("lockVisibility", lockImage.getVisibility());
            bundle.putBoolean("recordingFailed", bIsRecordingFailed);
            bundle.putInt("sleeptimer", sleepTimer.getVisibility());
            bundle.putBoolean("isStopRecCommandInProcess", isStopRecCommandInProcess);
            bundle.putParcelable("EPG_INTENT", mEpgIntent);
        }
        onSaveInstanceState(bundle);
    }

    protected void onStart()
    {
        onStart();
        MtvUtilDebug.Low("MtvUiLivePlayer", "onStart...");
        while(restrictLaunch || mBmlSurface == null) 
            return;
        mBmlSurface.onStart(fragHandler);
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    protected void onStop()
    {
        MtvReservation mtvreservation;
        MtvUtilDebug.Low("MtvUiLivePlayer", "onStop...");
        if(restrictLaunch)
        {
            onStop();
            return;
        }
        if(MtvUtilAppService.isScreenOn(getApplicationContext()) && !isFinishing())
            if(showStatusNotification && HomeKeyPresses(getApplicationContext()))
                showNotification(true);
            else
                MtvUtilDebug.Mid("MtvUiLivePlayer", "showStatusNotification is false");
        if(mBmlSurface != null)
            mBmlSurface.onStop();
        mtvreservation = null;
        if(mMtvPreferences.getComingReservationID() == -1) goto _L2; else goto _L1
_L1:
        mtvreservation = MtvReservationManager.find(this, mMtvPreferences.getComingReservationID());
_L4:
        if(mtvreservation != null && (mtvreservation.mPgmType == 1 || mtvreservation.mPgmType == 0) || getIntent().hasExtra("isFromAutoantenna") && getIntent().getBooleanExtra("isFromAutoantenna", false))
            updateKeyguardPolicy(false);
        dismissProgressDialog();
        onStop();
        return;
_L2:
        if(mMtvPreferences.getReservationAlertID() != -1)
            mtvreservation = MtvReservationManager.find(this, mMtvPreferences.getReservationAlertID());
        if(true) goto _L4; else goto _L3
_L3:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if(!restrictLaunch)
        {
            if(mBmlSurface.IsBMLFullView())
                return false;
            if(!mChannelGestureDetector.onTouchEvent(motionevent))
                return false;
        }
        return true;
    }

    public void onTrimMemory(int i)
    {
        onTrimMemory(i);
        MtvUtilDebug.Low("MtvUiLivePlayer", (new StringBuilder()).append("onTrimMemory LEVEL: ").append(i).toString());
        if(i >= 20)
        {
            if(optionsMenu != null)
            {
                closeOptionsMenu();
                optionsMenu = null;
            }
            if(mBmlSurface != null)
                mBmlSurface.resetBMLTvView();
            if(fragHandler != null)
            {
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
                fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            } else
            {
                MtvUtilDebug.Low("MtvUiLivePlayer", "null fraghandler, can't remove fragments ");
            }
            if(mMtvAudMgr != null)
                mMtvAudMgr.closeBluetoothProxy();
        }
    }

    protected void onUserLeaveHint()
    {
        MtvUtilDebug.Mid("MtvUiLivePlayer", "onUserLeaveHint");
        showStatusNotification = true;
        onUserLeaveHint();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        if(flag)
        {
            requestSystemKeyEvent(26, true);
            if(fragHandler != null)
            {
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_STATUS_BAR);
                fragHandler.onUpdate(108, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
            }
            return;
        } else
        {
            requestSystemKeyEvent(26, false);
            return;
        }
    }

    protected void registerVideoSurfaceView(boolean flag)
    {
        IMtvOneSegVideoControl imtvonesegvideocontrol;
label0:
        {
            if(mMtvAppPlaybackContext != null)
            {
                mMtvAppPlaybackContext.getComponents().getVideo().enable();
                imtvonesegvideocontrol = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
                if(imtvonesegvideocontrol != null)
                {
                    if(!flag)
                        break label0;
                    imtvonesegvideocontrol.registerSurface(mVideoSurfaceView);
                }
            }
            return;
        }
        imtvonesegvideocontrol.unregisterSurface(mVideoSurfaceView);
    }

    public void releaseTunerAndFinish()
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "releaseTunerAndFinish() :: ");
        if(MtvUtilAppService.isConflictHandlerEnabled(getApplicationContext()))
        {
            MtvConflictHandler.getInstance(getApplicationContext()).closeService();
            MtvConflictHandler.reset();
        }
        MtvBroadcastReceiver.releaseReservationWakeLock();
        finish();
    }

    public void setBMLLayoutFullView(boolean flag)
    {
        View view = findViewById(0x7f0a0026);
        MtvUtilDebug.High("MtvUiLivePlayer", (new StringBuilder()).append("setBMLLayoutFullView : isFull - ").append(flag).toString());
        if(view == null)
            requestOrientation(MtvUtilAppService.preferred_orientation);
        if(view != null && mBmlSurface != null)
            if(flag)
            {
                mCaptionView.setVisibility(8);
                view.setVisibility(8);
                mBmlSurface.setBMLFullView(true);
                setRequestedOrientation(1);
                if(android.provider.Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) != 1)
                    MtvUtilAppService.setPreferredOrientation(1);
                mVideoSurfaceView.setVisibility(8);
                setRotateButtonVisibility(false, new int[0]);
                mBmlSurface.setKeepScreenOn(true);
                isBMLFullView = true;
                if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
                    fragHandler.onUpdate(238, Boolean.valueOf(false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
            } else
            {
                view.setVisibility(0);
                mBmlSurface.setBMLFullView(false);
                requestOrientation(MtvUtilAppService.preferred_orientation);
                mVideoSurfaceView.setVisibility(0);
                mBmlSurface.setKeepScreenOn(false);
                if(mMtvPreferences.isCaptionEnabled())
                {
                    mCaptionView.setVisibility(0);
                    setCaptionText();
                }
                isBMLFullView = false;
                if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN))
                {
                    fragHandler.onUpdate(238, Boolean.valueOf(true), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_UI_MAIN);
                    return;
                }
            }
    }

    public void showExitApplicationDialog()
    {
        Bundle bundle = new Bundle();
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getState().getOp() != 20487) goto _L2; else goto _L1
_L1:
        if(!MtvAppRecorderInfo.getInstance().isRecordedFileSavable) goto _L4; else goto _L3
_L3:
        if(getFragmentManager().findFragmentByTag("save_exit_confirmation") == null)
        {
            bundle.putInt("dialogType", 10);
            mExitAppDialog = MtvUiDialogsFrag.newInstance(bundle);
            mExitAppDialog.show(getFragmentManager(), "save_exit_confirmation");
        }
_L6:
        return;
_L4:
        if(mMinRecTime != null)
            mMinRecTime.cancel();
        mMinRecTime = Toast.makeText(this, String.format(getString(0x7f07027d), new Object[] {
            Integer.valueOf(6)
        }), 0);
        mMinRecTime.show();
        MtvUtilDebug.Low("MtvUiLivePlayer", "Cant exit unless min time recorded");
        return;
_L2:
        MtvUtilDebug.Low("MtvUiLivePlayer", "Not Recording... Showing normal exit dialog...");
        if(getFragmentManager().findFragmentByTag("exit_confirmation") == null)
        {
            bundle.putInt("dialogType", 9);
            mExitAppDialog = MtvUiDialogsFrag.newInstance(bundle);
            mExitAppDialog.show(getFragmentManager(), "exit_confirmation");
            return;
        }
        if(true) goto _L6; else goto _L5
_L5:
    }

    public void showExitApplicationDialogwithAntenna()
    {
        Bundle bundle = new Bundle();
        if(fragHandler != null && !fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
        {
            onFragEvent(256, null);
            return;
        } else
        {
            bundle.putInt("dialogType", 16);
            mExitAppDialog = MtvUiDialogsFrag.newInstance(bundle);
            mExitAppDialog.show(getFragmentManager(), "save_exit_confirmation_antenna");
            return;
        }
    }

    public void showExitingAppDialog()
    {
        mExitProgressDialog = new ProgressDialog(this);
        mExitProgressDialog.setTitle(0x7f070249);
        mExitProgressDialog.setMessage(getString(0x7f07024a));
        mExitProgressDialog.setIndeterminate(true);
        mExitProgressDialog.setCancelable(false);
        mExitProgressDialog.setCanceledOnTouchOutside(false);
        mExitProgressDialog.show();
    }

    public void showProgressDialog(int i, int j)
    {
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "SettingsPopUpDialogFragment");
        mProgressDialog = ProgressDialog.show(this, null, (new StringBuilder()).append("    ").append(getString(j)).append("    ").toString(), true);
        mProgressDialog.setCancelable(false);
        if(!bKeyGuardlock)
            requestSystemKeyEvent(26, true);
    }

    public void showSignalAlertDialog(int i)
    {
        MtvUtilDebug.Low("MtvUiLivePlayer", "showSignalAlertDialog...");
        if(mCurrentGenericPlayer != null && mCurrentGenericPlayer.isResumed())
        {
            if(mCurrentGenericPlayer.getFragmentManager().findFragmentByTag("signal_alert_retry_exit") == null)
            {
                Bundle bundle = new Bundle();
                bundle.putInt("dialogType", 11);
                mNoSignalAlertDialog = MtvUiDialogsFrag.newInstance(bundle);
                mNoSignalAlertDialog.show(mCurrentGenericPlayer.getFragmentManager(), "signal_alert_retry_exit");
            }
            mLiveUiMsgHandler.sendEmptyMessage(307);
            return;
        } else
        {
            MtvUtilDebug.Mid("MtvUiLivePlayer", "Cannot Show SignalAlertDialog after onSaveInstance... Adding to Pending Notifiction !");
            mPendingBackendNotification = new RunnableShowSignalAlertDialog(170);
            return;
        }
    }

    public void startAppinAppMode()
    {
        if(fragHandler != null)
            fragHandler.onUpdate(228, Boolean.valueOf(false), com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_BML_DIALOGUE);
        mMtvPreferences.setIsLivePlayMiniMode(true);
        Object obj = new ComponentName(this, com/samsung/sec/mtv/ui/minitv/MtvMiniModeService);
        obj = (new Intent("com.samsung.action.MINI_MODE_SERVICE")).setComponent(((ComponentName) (obj)));
        ((Intent) (obj)).putExtra("class", "MtvUiLivePlayer");
        ((Intent) (obj)).putExtra("window.pos.x", 60);
        ((Intent) (obj)).putExtra("window.pos.y", 60);
        startService(((Intent) (obj)));
        mBmlSurface.resetBMLTvView();
        finish();
    }

    public static final String ACTION_EPGAPP_VIEW = "ACTION_EPGAPP_VIEW";
    private static final String CLOSE_FROM_NOTI = "closing_from_notification";
    private static final long DELAY_TIMER_FOR_START_CHANNEL = 2500L;
    public static final String EPG_INTENT = "EPG_INTENT";
    public static final int FLING_MAJOR_MOVE = 100;
    private static final int MIN_RECORDING_TIME = 6;
    public static final int MTV_CHANNEL_NO_MAX_VAL_62 = 62;
    public static final int MTV_CHANNEL_NO_MIN_VAL_13 = 13;
    private static final String RECORDING_FAILED = "recordingFailed";
    private static final int RECORDING_INSUFF_MEM = 1;
    private static final int RECORDING_START_FAILURE = -1;
    private static final int RECORDING_START_SUCCESS = 0;
    private static Runnable RunnableReservationEndPopupExpire = new Runnable() ;
    private static int SLEEP_TIMER_NONE = 0;
    private static final String TAG = "MtvUiLivePlayer";
    private static final int TIMEOUT_EXTA_INTERVAL_VALUE = 1000;
    private static final int TIMEOUT_INTERVAL_VALUE = 3000;
    private static boolean bFisrtDTVLaunch = false;
    private static boolean bIsChannelChngd = false;
    private static boolean isBMLFullView = false;
    private static boolean isInBGRecording = false;
    private static Toast mExitToast = null;
    private static NotificationManager mNotificationManager = null;
    private static Object mPendingBackendNotification = null;
    private static boolean showStatusNotification = false;
    private Runnable RunnableCheckIsReservationAndStart;
    private Runnable RunnableRemoveRotateButton;
    private Runnable RunnableRemoveSleepTimerIcon;
    private Runnable RunnableRemoveWeakSignalDialogue;
    private Runnable RunnableUpdateProgramChannelInfo;
    private Runnable RunnableUpdateSignalInfo;
    private Runnable RunnableresetComingReservationID;
    private boolean bIsBuffering;
    private boolean bIsRecordingFailed;
    private boolean bKeyGuardlock;
    private int epgAreaId;
    private int epgChNo;
    private int epgServiceId;
    private Toast gen_toast;
    private boolean isStartedFromChannelScheduleForRecord;
    private boolean isStopRecCommandInProcess;
    private AudioManager mAudioManager;
    private GestureDetector mChannelGestureDetector;
    private android.os.PowerManager.WakeLock mCpuWakeLock;
    private Intent mEpgIntent;
    private DialogFragment mExitAppDialog;
    private ProgressDialog mExitProgressDialog;
    private Handler mLiveUiMsgHandler;
    private Toast mMinRecTime;
    private MtvUtilAudioManager mMtvAudMgr;
    private DialogFragment mNoSignalAlertDialog;
    private long mPreviousChannelChangeTime;
    private ProgressDialog mProgressDialog;
    private DialogFragment mReservationEndDialog;
    private ContentObserver mRotationObserver;
    private Runnable mRunnableUpdateCaptureToFrag;
    private Runnable mRunnableUpdateRecordComponents;
    private Runnable mRunnableUpdateRecordDuringLock;
    private Menu optionsMenu;
    int orientation;
    private boolean restrictLaunch;
    private Runnable runnableMenuKeyPress;
    private Runnable runnableRemoveMainFrag;
    private Runnable runnableShowNotification;
    private Runnable runnableVolumeDecreasing;
    private Runnable runnableVolumeEscalating;
    private boolean shownToastforOperationNA;

    static 
    {
        SLEEP_TIMER_NONE = 0;
    }




















































/*
    static MtvAppPlaybackContext access$14302(MtvUiLivePlayer mtvuiliveplayer, MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mtvuiliveplayer.mMtvAppPlaybackContext = mtvappplaybackcontext;
        return mtvappplaybackcontext;
    }

*/































































/*
    static Menu access$4502(MtvUiLivePlayer mtvuiliveplayer, Menu menu)
    {
        mtvuiliveplayer.optionsMenu = menu;
        return menu;
    }

*/








/*
    static MtvPreferences access$5102(MtvUiLivePlayer mtvuiliveplayer, MtvPreferences mtvpreferences)
    {
        mtvuiliveplayer.mMtvPreferences = mtvpreferences;
        return mtvpreferences;
    }

*/







/*
    static Object access$5702(Object obj)
    {
        mPendingBackendNotification = obj;
        return obj;
    }

*/














































    // Unreferenced inner class com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32$1

/* anonymous class */

    // Unreferenced inner class com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$5$1

/* anonymous class */

    // Unreferenced inner class com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1

/* anonymous class */

    // Unreferenced inner class com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$MtvAppRecorderInfo$1

/* anonymous class */
    class MtvAppRecorderInfo._cls1
        implements Runnable
    {

        public void run()
        {
            if(mRecordTime == -1)
            {
                MtvUtilDebug.Low("MtvAppRecorderInfo", "RecordTimer is reset. Exiting Counter");
                return;
            }
            int i = 
// JavaClassFileOutputException: get_constant: invalid tag

        final MtvAppRecorderInfo this$0;

            
            {
                this$0 = MtvAppRecorderInfo.this;
                Object();
            }
    }

}
