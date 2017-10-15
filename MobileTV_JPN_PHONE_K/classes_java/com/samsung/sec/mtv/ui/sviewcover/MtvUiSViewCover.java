// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.ui.sviewcover;

import android.app.DialogFragment;
import android.app.FragmentManager;
import android.broadcast.IMtvOneSegVideoControl;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import android.content.*;
import android.content.res.Resources;
import android.os.*;
import android.view.*;
import android.view.animation.AnimationUtils;
import android.widget.*;
import com.samsung.sec.mtv.app.bml.MtvAppBml;
import com.samsung.sec.mtv.app.context.*;
import com.samsung.sec.mtv.app.player.IMtvAppPlayerOneSeg;
import com.samsung.sec.mtv.app.player.MtvAppPlayerOneSeg;
import com.samsung.sec.mtv.provider.*;
import com.samsung.sec.mtv.ui.bml.MtvUiBmlSurfaceView;
import com.samsung.sec.mtv.ui.common.*;
import com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer;
import com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer;
import com.samsung.sec.mtv.utility.*;
import java.util.Calendar;
import java.util.Date;

public class MtvUiSViewCover extends MtvUiGenericPlayer
    implements IMtvAppPlaybackStateListener, IMtvAppProgramAttributeListener, com.samsung.sec.mtv.ui.common.MtvUiFrag.IMtvFragEventListener
{
    class sViewCoverSurfaceOnTouchListener
        implements android.view.View.OnTouchListener
    {

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("OnTouchListener event: ").append(motionevent).toString());
            if(MtvUtilAppService.isAppExiting())
                return true;
            else
                return mGestureDetector.onTouchEvent(motionevent);
        }

        final MtvUiSViewCover this$0;

        sViewCoverSurfaceOnTouchListener()
        {
            this$0 = MtvUiSViewCover.this;
            super();
        }
    }


    public MtvUiSViewCover()
    {
        mMtvAppPlaybackContext = null;
        mMtvPlayerOneSeg = null;
        mGestureDetector = null;
        mMtvAudMgr = null;
        isDirectLaunch = false;
        isLocalPlayback = false;
        bIsRecordingFailed = false;
        isStopRecCommandInProcess = false;
        mReservationEndDialog = null;
        shownToastforOperationNA = false;
        isStartedFromMiniMode = false;
        volumeLongClickListener = new android.view.View.OnLongClickListener() ;
        runnableVolumeEscalating = new Runnable() ;
        runnableVolumeDecreasing = new Runnable() ;
        RunnableNextPreviousChannel = new Runnable() ;
        mSViewUiMsgHandler = new Handler() ;
        RunnableresetComingReservationID = new Runnable() ;
        RunnableCheckIsReservationAndStart = new Runnable() {

            public void run()
            {
                MtvUtilDebug.Low("MtvUiSViewCover", "RunnableCheckIsReservationAndStart...");
                checkIsReservationAndStart();
            }

            final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
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
    //                   4 80
    //                   5 130;
           goto _L4 _L5 _L6
_L4:
        MtvUtilDebug.Low("MtvUiSViewCover", "No Above");
_L2:
        return;
_L5:
        MtvUtilDebug.Low("MtvUiSViewCover", "CheckIsReservationPartialOrNone    :STATUS_FAIL_SIGNAL_ERROR");
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
        MtvUtilDebug.Low("MtvUiSViewCover", "CheckIsReservationPartialOrNone    :STATUS_FAIL_MEMORY_ERROR");
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
        MtvUtilDebug.Low("MtvUiSViewCover", "CheckIsreservationAndUpdatefailureReason");
        Object obj = MtvReservationManager.find(this, mMtvPreferences.getReservationAlertID());
        if(obj == null)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "CheckIsreservationAndUpdatefailureReason() : invalid reservation");
            return;
        }
        int j;
        boolean flag;
        String s;
        if(mMtvPreferences.getReserveAlertFrom() == 0)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "CheckIsreservationAndUpdatefailureReason() : OUT_OF_APP");
            flag = true;
        } else
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "CheckIsreservationAndUpdatefailureReason() : not OUT_OF_APP");
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
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("FailStatusAndreason").append(i).toString());
        checkIsReservationAndEnd(i);
        obj = new Bundle();
        ((Bundle) (obj)).putInt("dialogType", 7);
        ((Bundle) (obj)).putBoolean("reserve_end_exit", flag);
        ((Bundle) (obj)).putString("dialog_msg", s);
        ((Bundle) (obj)).putInt("reserve_type", j);
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
        MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :NoSignal popup closed");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_terminate");
        MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :mNoSignalTerminate popup closed");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "exit_confirmation");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "save_exit_confirmation");
        endFailReservationProgram(((Bundle) (obj)));
    }

    private long calculateDelayForStartChannel()
    {
        long l1 = System.currentTimeMillis();
        long l = l1 - mPreviousChannelChangeTime;
        if(l > 2500L)
            l = 0L;
        else
            l = 2500L - l;
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("DelayForStart:").append(l).append(": prev:").append(mPreviousChannelChangeTime).append(": current:").append(mPreviousChannelChangeTime).toString());
        mPreviousChannelChangeTime = l1;
        return l;
    }

    private void cancelRecording()
    {
        if(mMtvPlayerOneSeg == null)
            mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvPlayerOneSeg.cancelRecord(mMtvAppPlaybackContext);
    }

    private void changePlayBackMode()
    {
        if(isPaused())
        {
            mMtvPlayerOneSeg.resume(mMtvAppPlaybackContext);
            return;
        } else
        {
            mMtvPlayerOneSeg.pause(mMtvAppPlaybackContext);
            return;
        }
    }

    private void checkIsReservationAndEnd(int i)
    {
        shownToastforOperationNA = false;
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        int j = mMtvPreferences.getReservationAlertID();
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("checkIsReservationAndEnd() newstatus:").append(i).append("  reserve_id : ").append(j).toString());
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
        MtvUtilDebug.Low("MtvUiSViewCover", "checkIsReservationAndStart()");
        flag1 = false;
        bundle = getIntent().getExtras();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append(" checkIsReservationAndStart() : ").append(getIntent().toString()).append(" ").append(getIntent().hasExtra("dbId")).toString());
        if(bundle == null || isFinishing()) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("checkIsReservationAndStart()   res_bundle:: ").append(bundle).append("isFinishing::  ").append(isFinishing()).toString());
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.SCANNER || mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
        {
            MtvUtilDebug.High("MtvUiSViewCover", "current context is scan/Local.. will wait until scan is cancelled and then start reservation...");
            return false;
        }
        if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE) goto _L4; else goto _L3
_L3:
        int i;
        boolean flag;
        boolean flag2;
        MtvReservation mtvreservation;
        i = bundle.getInt("dbId", -1);
        mtvreservation = MtvReservationManager.find(this, i);
        flag2 = bundle.getBoolean("youNeedToShowAlert", false);
        flag = flag1;
        if(mtvreservation == null)
            break MISSING_BLOCK_LABEL_382;
        flag = flag1;
        if(mtvreservation.mPgmStatus != 0)
            break MISSING_BLOCK_LABEL_382;
        flag = flag1;
        if(mtvreservation.mTimeEnd <= System.currentTimeMillis())
            break MISSING_BLOCK_LABEL_382;
        if(MtvAreaManager.getCount(this) != 0) goto _L6; else goto _L5
_L5:
        checkIsReservationAndEnd(2);
        i = 0x7f070287;
        if(mtvreservation.mPgmType != 0) goto _L8; else goto _L7
_L7:
        i = 0x7f070286;
_L9:
        if(!mSViewUiMsgHandler.hasMessages(457))
            mSViewUiMsgHandler.sendEmptyMessage(457);
        Toast.makeText(getApplicationContext(), i, 2000).show();
        return false;
_L8:
        if(mtvreservation.mPgmType == 1)
            i = 0x7f070287;
        if(true) goto _L9; else goto _L6
_L6:
        if(!flag2)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "checkIsReservation : this may be a valid reservation,lets check it");
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && mMtvAppPlaybackContext.getState().getOp() == 20487)
                stopRecording();
            else
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
            MtvUtilDebug.Low("MtvUiSViewCover", "checkIsReservation : showing reservation alert to user");
            showReservationAlert();
        }
        flag = true;
_L11:
        return flag;
_L4:
        MtvUtilDebug.Low("MtvUiSViewCover", "checkIsReservation() : MW not initilized yet!!! ");
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.Low("MtvUiSViewCover", "checkIsReservation() : no current reservation");
        flag = flag1;
        if(true) goto _L11; else goto _L10
_L10:
    }

    private void endFailReservationProgram(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram");
        if(bundle != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram -bundle null");
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
            MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram Exiting App after Stopping Record .... ");
            if(!mSViewUiMsgHandler.hasMessages(457))
            {
                mSViewUiMsgHandler.sendMessageDelayed(mSViewUiMsgHandler.obtainMessage(457), 2000L);
                return;
            }
        }
        continue; /* Loop/switch isn't completed */
        if(!flag) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram Exiting App.... ");
        if(!mSViewUiMsgHandler.hasMessages(457))
        {
            mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(457));
            return;
        }
        if(true) goto _L4; else goto _L5
_L5:
    }

    private void endReservationProgram(Bundle bundle)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram");
        if(bundle != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram -bundle null");
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
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram Exiting App after Stopping Record .... ");
        mSViewUiMsgHandler.sendMessageDelayed(mSViewUiMsgHandler.obtainMessage(457), 2000L);
        return;
        if(!flag || mMtvPreferences.getIsDtvStartedByFromMiniMode()) goto _L4; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgram Exiting App.... ");
        mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(457));
        return;
    }

    private void endReservationProgramAndShowAlert()
    {
        Object obj;
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgramAndShowAlert");
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        obj = MtvReservationManager.find(this, mMtvPreferences.getReservationAlertID());
        if(obj != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgramAndShowAlert() : invalid reservation");
_L4:
        return;
_L2:
        int i;
        boolean flag;
        String s;
        if(mMtvPreferences.getReserveAlertFrom() == 0)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgramAndShowAlert() : OUT_OF_APP");
            flag = true;
            if(MtvReservationManager.isImmediateReservation(this, ((MtvReservation) (obj)).mTimeEnd))
            {
                MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgramAndShowAlert() : OUT_OF_APP BUT CONTINEOUS");
                flag = false;
            }
        } else
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "endReservationProgramAndShowAlert() : not OUT_OF_APP");
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
        if(MtvReservationManager.isImmediateReservation(this, ((MtvReservation) (obj)).mTimeEnd)) goto _L4; else goto _L3
_L3:
        if(((MtvReservation) (obj)).mPgmStatus != 6) goto _L6; else goto _L5
_L5:
        if(((MtvReservation) (obj)).mPgmType == 1)
            checkIsReservationAndEnd(1);
_L8:
        obj = new Bundle();
        ((Bundle) (obj)).putInt("dialogType", 7);
        ((Bundle) (obj)).putBoolean("reserve_end_exit", flag);
        ((Bundle) (obj)).putString("dialog_msg", s);
        ((Bundle) (obj)).putInt("reserve_type", i);
        mReservationEndDialog = MtvUiDialogsFrag.newInstance(((Bundle) (obj)));
        mReservationEndDialog.show(getFragmentManager(), "reserve_end_dialog");
        mGenericMsgHAndler.postDelayed(RunnableReservationEndPopupExpire, 5000L);
        return;
_L6:
        if(((MtvReservation) (obj)).mPgmStatus == 0)
            checkIsReservationAndEnd(2);
        if(true) goto _L8; else goto _L7
_L7:
    }

    private String getCurrentProgramName()
    {
        String s = "";
        MtvOneSegProgram amtvonesegprogram[] = getProgram();
        if(amtvonesegprogram != null)
        {
            MtvOneSegProgram mtvonesegprogram = getCurrentProgramDetails(amtvonesegprogram);
            if(mtvonesegprogram != null)
                s = mtvonesegprogram.getProgName();
            return s;
        } else
        {
            return "";
        }
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
        if(MtvChannelManager.getCount(this) == 1)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "getNextPreviousChannelNumber : only one channel on Air ,better to handle this before you reach here.");
            i = 13;
            j = -1;
        } else
        {
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
        return i;
    }

    private void initMtvPlayer()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "initMtvPlayer...");
        mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        mMtvPreferences = new MtvPreferences(this);
        mMtvPreferences.setSViewRunning(true);
        mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        if(mMtvAppPlaybackContext == null || mMtvAppPlaybackContext.getType() != com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV) goto _L2; else goto _L1
_L1:
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state;
        isLocalPlayback = true;
        mMtvAppPlaybackContext.getState().registerListener(this);
        mMtvAppPlaybackContext.getAttribute().registerListener(this);
        state = mMtvAppPlaybackContext.getState().getState();
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("pbState = ").append(state).toString());
        if(state != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && state != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED) goto _L4; else goto _L3
_L3:
        mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, null));
_L9:
        dummySurface.setVisibility(4);
_L6:
        registerVideoSurfaceView(true);
        suppressCoverUI(true);
        requestSystemKeyEvent(3, true);
        return;
_L4:
        if(state == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
        continue; /* Loop/switch isn't completed */
_L2:
        int i = MtvAreaManager.getCount(getApplicationContext());
        if(i > 0 && mMtvAppPlaybackContext != null)
        {
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
                mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, null));
            else
            if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
                mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            else
                mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
        } else
        if(i == 0)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onCreate area not set exiting... validAreaCount: ").append(i).toString());
            finish();
            return;
        }
        if(mMtvAppPlaybackContext == null)
        {
            if(i > 0)
                mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
            if(mMtvAppPlaybackContext != null)
            {
                mMtvAppPlaybackContext.getState().registerListener(this);
                mMtvAppPlaybackContext.getAttribute().registerListener(this);
            }
            getApplicationContext().startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
            MtvAppBml.getInstance(this).enableBMLComponent(mMtvAppPlaybackContext);
            mBmlSurface.create(mMtvAppPlaybackContext, fragHandler);
            if(!mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1))
            {
                MtvAppPlayerOneSeg.getInstance().screwupCleanup();
                mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
                mMtvPlayerOneSeg.create(mMtvAppPlaybackContext, getApplicationContext(), -1);
            }
            continue; /* Loop/switch isn't completed */
        }
        mMtvAppPlaybackContext.getState().registerListener(this);
        mMtvAppPlaybackContext.getAttribute().registerListener(this);
        if(mMtvAppPlaybackContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LIVETV)
            break; /* Loop/switch isn't completed */
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getLiveTV();
        if(mMtvPlayerOneSeg != null)
        {
            MtvURI mtvuri = new MtvURI(2, mMtvPreferences.getLatestPChannelFromVChannel());
            mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
        }
        if(true) goto _L6; else goto _L5
_L5:
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("already in live mode . state = ").append(mMtvAppPlaybackContext.getState().getState()).toString());
        if(mMtvAppPlaybackContext.getState().getState().compareTo(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING) >= 0 && (mMtvAppPlaybackContext.getState().getOp() == 20480 || mMtvAppPlaybackContext.getState().getOp() == 20487))
            dummySurface.setVisibility(4);
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED) goto _L6; else goto _L7
_L7:
        MtvUtilDebug.Low("MtvUiSViewCover", "Background Recording is going on...");
        finish();
        return;
        if(true) goto _L9; else goto _L8
_L8:
    }

    private void initViewControl()
    {
        setContentView(0x7f030008);
        coverSurfaceView = (SurfaceView)findViewById(0x7f0a003d);
        coverSurfaceView.setOnTouchListener(new sViewCoverSurfaceOnTouchListener());
        dummySurface = (ImageView)findViewById(0x7f0a003e);
        mProgramNameTextView = (TextView)findViewById(0x7f0a0040);
        mPgmVlmlayout = (LinearLayout)findViewById(0x7f0a003f);
        mBmlSurface = (MtvUiBmlSurfaceView)findViewById(0x7f0a000c);
        mVolumeButton = (ImageButton)findViewById(0x7f0a0041);
        mVolumeButton.setOnLongClickListener(volumeLongClickListener);
        mChannelNameButton = (Button)findViewById(0x7f0a0044);
        mPlayPauseButton = (ImageButton)findViewById(0x7f0a0046);
        mAnimationlayout = (RelativeLayout)findViewById(0x7f0a0023);
        mAnimationImage = (ImageView)findViewById(0x7f0a0024);
        rotatingAnimation = AnimationUtils.loadAnimation(this, 0x7f040000);
        mTxtAnimation = (TextView)findViewById(0x7f0a0025);
        mGestureDetector = new GestureDetector(getApplicationContext(), new SimpleGestureListener());
        setWindowParameters();
        fragHandler = new MtvUiFragHandler(getFragmentManager(), 0, 0x7f0a0031);
        com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance(fragHandler);
        fragHandler.setEnabled(true);
    }

    private boolean isPaused()
    {
        return mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED;
    }

    private void saveTVFileThumbnail()
    {
        if(mMtvAppPlaybackContext == null)
            mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        android.graphics.Bitmap bitmap = mMtvAppPlaybackContext.getComponents().getVideo().getCaptFrame();
        String s = mMtvAppPlaybackContext.getComponents().getVideo().getCaptFrameName();
        MtvUtilDebug.Low("MtvUiSViewCover", "saveTVFileThumbnail");
        if(bitmap != null && s != null)
        {
            MtvFile mtvfile = new MtvFile();
            mtvfile.setFileFormat(1);
            mtvfile.setCreationTime(new Date());
            mtvfile.setFilePath(s);
            MtvFileManager.saveFile(mMtvPreferences.getSaveToStorage(), bitmap, mtvfile);
        }
    }

    private void setLatestChannelsByPChannel(int i)
    {
        int j = -1;
        MtvChannel mtvchannel = MtvChannelManager.findByPChannel(this, i);
        if(mtvchannel != null)
            j = mtvchannel.mVirtualNum;
        mMtvPreferences.setLatestPChannel(i);
        mMtvPreferences.setLatestVChannel(j);
    }

    private void setVolumeTextandButton()
    {
        if(mMtvAudMgr.getVolumeLevel() == 0)
        {
            mVolumeButton.setBackground(getResources().getDrawable(0x7f02002c));
            return;
        } else
        {
            mVolumeButton.setBackground(getResources().getDrawable(0x7f02002b));
            return;
        }
    }

    private void setWindowParameters()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "setWindowParameters");
        lp = getWindow().getAttributes();
        lp.gravity = 48;
        int i = (int)MtvUtilConfigSetting.convertDpToPixel(228F, getApplicationContext());
        int j = (int)MtvUtilConfigSetting.convertDpToPixel(318F, getApplicationContext());
        lp.width = j;
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("lp.width, lp.height :").append(lp.width).append(" ").append(lp.height).toString());
        android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(j, i);
        coverSurfaceView.setLayoutParams(layoutparams);
    }

    private void showErrorDialog(int i)
    {
        com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.ErrorDialogFragment.newInstance(i).show(getFragmentManager(), "ErrorDialogFragment");
    }

    private void showProgramName()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "showProgramName");
        mProgramNameTextView.setText(getCurrentProgramName());
        mPgmVlmlayout.setVisibility(0);
        mSViewUiMsgHandler.removeMessages(453);
        mSViewUiMsgHandler.sendEmptyMessageDelayed(453, 3000L);
    }

    private void showReservationAlert()
    {
        if(!isResumed())
        {
            MtvUtilDebug.High("MtvUiSViewCover", "Live Player not resumed continuing with recording without showing popup...");
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
                MtvUtilDebug.High("MtvUiSViewCover", "Mobile Tv - Reminder -user Alert");
                startActivity(intent);
                return;
            }
        }
    }

    private void showToast(int i)
    {
        MtvUtilDebug.High("MtvUiSViewCover", (new StringBuilder()).append("showToast, String = ").append(getResources().getString(i)).toString());
        if(generalToast == null)
        {
            generalToast = Toast.makeText(this, i, 0);
            generalToast.setGravity(48, 0, 600);
        } else
        {
            generalToast.setText(i);
        }
        generalToast.show();
    }

    private int startRecording(MtvReservation mtvreservation)
    {
        String s = null;
        String s2 = null;
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        long l;
        if(1 == mMtvPreferences.getSaveToStorage())
            l = MtvUtilMemoryStatus.getAvailableInternalMemorySize();
        else
            l = MtvUtilMemoryStatus.getAvailableExternalMemorySize();
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("availMemSize :").append(l).toString());
        if(l < 0x204000L)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "memory already full.. cannot start recording...");
            showErrorDialog(0x7f070307);
            return 1;
        }
        byte byte0;
        int i;
        String s1;
        MtvOneSegChannel mtvonesegchannel;
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
        mtvonesegchannel = getChannel();
        if(mtvonesegchannel != null)
            s = mtvonesegchannel.getServName();
        if(mtvreservation == null || mMtvPreferences.getReservationAlertID() == -1)
        {
            MtvOneSegProgram amtvonesegprogram[] = getProgram();
            mtvreservation = s2;
            if(amtvonesegprogram != null)
            {
                MtvOneSegProgram mtvonesegprogram = getCurrentProgramDetails(amtvonesegprogram);
                mtvreservation = s2;
                if(mtvonesegprogram != null)
                    mtvreservation = mtvonesegprogram.getProgName();
            }
        } else
        if(mtvreservation.mPgmName != null && !mtvreservation.mPgmName.equals(""))
        {
            mtvreservation = mtvreservation.mPgmName;
        } else
        {
            MtvOneSegProgram amtvonesegprogram1[] = getProgram();
            mtvreservation = s2;
            if(amtvonesegprogram1 != null)
            {
                MtvOneSegProgram mtvonesegprogram1 = getCurrentProgramDetails(amtvonesegprogram1);
                mtvreservation = s2;
                if(mtvonesegprogram1 != null)
                    mtvreservation = mtvonesegprogram1.getProgName();
            }
        }
        s2 = s;
        if(s == null)
            s2 = "dummy";
        mtvreservation = (new MtvOneSegPlayer(byte0, s1, i, s2, mtvreservation, new Date(date.getTime() - (long)calendar.get(15) - (long)calendar.get(16)), mMtvPreferences.getLatestServiceID())).getRecordURI();
        if(!mMtvPlayerOneSeg.startRecord(mMtvAppPlaybackContext, mtvreservation, (int)l, false))
        {
            MtvUtilDebug.High("MtvUiSViewCover", "startRecording() failed");
            showToast(0x7f0702b0);
            return -1;
        } else
        {
            MtvUtilDebug.High("MtvUiSViewCover", "startRecording() start");
            return 0;
        }
    }

    private void startReservationProgram(MtvReservation mtvreservation)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append(" startReservationProgram() : !!! Starting from ").append(mMtvPreferences.getReserveAlertFrom()).append("Reservation ID ").append(mMtvPreferences.getReservationAlertID()).toString());
        if(mMtvPlayerOneSeg != null && mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : error - MW not initilized yet!!! ");
_L4:
        return;
_L2:
        if(mtvreservation == null || mtvreservation.mPgmStatus != 0)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : error - not a valid reservation");
            return;
        }
        if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : Low Signal POp-up Showing");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_terminate");
        MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :mNoSignalTerminate popup closed");
        MtvUiDialogsFrag.removeDialog(getFragmentManager(), "exit_confirmation");
        if(mtvreservation.mPgmType != 0)
            continue; /* Loop/switch isn't completed */
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append(" startReservationProgram() : !!!TYPE_REC    :").append(mMtvAppPlaybackContext.getState().getState()).toString());
        if(mMtvAppPlaybackContext.getState().getOp() == 20487)
            continue; /* Loop/switch isn't completed */
        int i = mMtvPreferences.getLatestPChannelFromVChannel();
        if(i > 0 && i != mtvreservation.mPch)
        {
            if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            {
                MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :(RR):NoSignal popup closed for Channel Change");
            }
            MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() :(RR):not playing the Reservation Channel  : Issue OPEN for REservation Channel");
            mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(458, Integer.valueOf(mtvreservation.mPch)));
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
        {
            if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            {
                MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :(RR):NoSignal popup closed : State !PLAYING  : Issue OPEN");
                mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(458, Integer.valueOf(mtvreservation.mPch)));
            }
            MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :(RR):State !PLAYING ");
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
        {
            if(getFragmentManager().findFragmentByTag("signal_alert_retry_exit") != null)
            {
                MtvUiDialogsFrag.removeDialog(getFragmentManager(), "signal_alert_retry_exit");
                MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram :(RR): State PLAYING : NoSignal popup closed : Issue OPEN");
                mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(458, Integer.valueOf(mtvreservation.mPch)));
                mMtvPreferences.setIsReservationProgram(true);
                return;
            }
            if(mMtvAppPlaybackContext.getAttribute().getCurrentOpenedChannel() != mtvreservation.mPch)
            {
                MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram : Not Playing Reservation Channel ! Change to Reservation Channel ");
                mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(458, Integer.valueOf(mtvreservation.mPch)));
                mMtvPreferences.setIsReservationProgram(true);
                return;
            }
            MtvUtilDebug.Low("MtvUiSViewCover", "startReservationProgram : Playing Reservation Channel ! start Recording !");
            MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : (RR) : recording : - already playing");
            int j = startRecording(mtvreservation);
            if(j == 0)
                MtvUiProgressDialog.showProgressDialog(this, 0x7f070295, 0x7f0702a6);
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
                MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : (RR) : recording : - already playing SRIKANTH WAKELOCK");
                mVideoSurfaceView.setKeepScreenOn(false);
                mCpuWakeLock = ((PowerManager)getApplicationContext().getSystemService("power")).newWakeLock(0x10000001, "MobileTV");
                mCpuWakeLock.acquire();
            }
            MtvReservationManager.UpdateStatus(this, mtvreservation, 6);
            mSViewUiMsgHandler.postDelayed(RunnableresetComingReservationID, 5000L);
            return;
        }
        continue; /* Loop/switch isn't completed */
        if(mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING) goto _L4; else goto _L3
_L3:
        MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : : recording : - already recording");
        stopRecording();
        mMtvPreferences.setIsReservationProgram(true);
        return;
        if(mtvreservation.mPgmType != 1) goto _L4; else goto _L5
_L5:
        if(mMtvAppPlaybackContext.getState().getOp() != 20487)
        {
            int k = mMtvPreferences.getLatestPChannelFromVChannel();
            if(k > 0 && (k != mtvreservation.mPch || mMtvAppPlaybackContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING))
            {
                MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() : watch : - not playing same channel");
                mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(458, Integer.valueOf(mtvreservation.mPch)));
            }
            MtvReservationManager.UpdateStatus(this, mtvreservation, 6);
            return;
        }
        if(mMtvAppPlaybackContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING)
        {
            MtvUtilDebug.Low("MtvUiSViewCover", " startReservationProgram() :: watch : - recording going on");
            stopRecording();
            mMtvPreferences.setIsReservationProgram(true);
            return;
        }
        if(true) goto _L4; else goto _L6
_L6:
    }

    private void stopRecording()
    {
        MtvUtilDebug.Mid("MtvUiSViewCover", "stopRecording in SViewCover");
        mMtvAppPlaybackContext = MtvAppPlaybackContextManager.getInstance().getCurrentContext();
        if(mMtvPlayerOneSeg == null)
            mMtvPlayerOneSeg = MtvAppPlayerOneSeg.getInstance();
        if(mMtvPlayerOneSeg.stopRecord(mMtvAppPlaybackContext))
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "Recording stop invoked successfully !");
            isStopRecCommandInProcess = true;
        }
    }

    private void suppressCoverUI(boolean flag)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("sending broadcast s cover state change, mSuppress = ").append(flag).toString());
        Intent intent = new Intent();
        intent.setAction("com.samsung.cover.STATE_CHANGE");
        intent.putExtra("suppressCoverUI", flag);
        intent.putExtra("sender", getPackageName());
        sendBroadcast(intent);
    }

    private void updateMainControlBar()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "updateMainControlBar");
        if(isLocalPlayback)
        {
            updatePlayBackButton();
            mChannelNameButton.setText("");
            mPlayPauseButton.setVisibility(0);
            mPlayPauseButton.setOnClickListener(new android.view.View.OnClickListener() {

                public void onClick(View view)
                {
                    changePlayBackMode();
                }

                final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
            }
);
            return;
        }
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20487)
        {
            mChannelNameButton.setText(0x7f0702ed);
            mChannelNameButton.setOnClickListener(new android.view.View.OnClickListener() {

                public void onClick(View view)
                {
                    if(!isStopRecCommandInProcess && com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().isRecordedFileSavable())
                        stopRecording();
                }

                final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
            }
);
            return;
        }
        int i = mMtvPreferences.getLatestChannelNumberForDisplay();
        String s;
        if(i < 0)
            s = "";
        else
            s = Integer.toString(i);
        s = (new StringBuilder()).append(s).append(" ").append(mMtvPreferences.getLatestChannelNameForDisplay(false)).toString();
        mChannelNameButton.setText(s);
    }

    private void updatePlayBackButton()
    {
        if(isPaused())
        {
            mPlayPauseButton.setBackgroundResource(0x7f02009a);
            return;
        } else
        {
            mPlayPauseButton.setBackgroundResource(0x7f020097);
            return;
        }
    }

    public void closeOneseg(int i)
    {
        MtvUtilAppService.setAppExiting(true);
        mMtvAudMgr.loseFocus();
        mSViewUiMsgHandler.postDelayed(new Runnable() {

            public void run()
            {
                MtvUtilDebug.Low("MtvUiSViewCover", "closeOneSeg");
                MtvAppPlayerOneSeg.getInstance().delete(MtvAppPlaybackContextManager.getInstance().getCurrentContext());
            }

            final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
        }
, i);
    }

    public MtvOneSegChannel getChannel()
    {
        if(mMtvAppPlaybackContext != null)
            return mMtvAppPlaybackContext.getAttribute().getChannel()[0];
        else
            return null;
    }

    public MtvOneSegProgram getCurrentProgramDetails(MtvOneSegProgram amtvonesegprogram[])
    {
        Object obj = null;
        long l = getStreamTime();
        int j = amtvonesegprogram.length;
        int i = 0;
        do
        {
label0:
            {
                MtvOneSegProgram mtvonesegprogram = obj;
                if(i < j)
                {
                    mtvonesegprogram = amtvonesegprogram[i];
                    if(mtvonesegprogram == null || l <= mtvonesegprogram.getStartTime().getTime() || l >= mtvonesegprogram.getEndTime().getTime())
                        break label0;
                }
                return mtvonesegprogram;
            }
            i++;
        } while(true);
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

    public void onBackPressed()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "onBackPressed");
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        MtvUtilDebug.Low("MtvUiSViewCover", "onCreate");
        isDirectLaunch = getIntent().getBooleanExtra("directLaunch", false);
        isStartedFromMiniMode = getIntent().getBooleanExtra("isStartedFromMiniMode", false);
        selectedFileIndex = getIntent().getIntExtra("selectedFileIndex", 0);
        if(!MtvUtilAppService.isAllowedBy3LMPolicy() && MtvFeatures.is3LMEnabled())
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "DTV disabled by 3LM");
            finish();
            return;
        }
        initViewControl();
        initMtvPlayer();
        if(!MtvUtilConfigSetting.ENABLE_SCREEN_CAPTURE)
            getWindow().addFlags(8192);
        getWindow().addFlags(0x80000);
    }

    protected void onDestroy()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "onDestroy");
        mMtvPreferences.setSViewRunning(false);
        suppressCoverUI(false);
        requestSystemKeyEvent(3, false);
        MtvUtilAppService.setAppExiting(false);
        super.onDestroy();
    }

    public void onFragEvent(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onFragEvent event: ").append(i).toString());
        if(!MtvUtilAppService.isAppExiting()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        switch(i)
        {
        default:
            return;

        case 217: 
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, -1L);
            return;

        case 218: 
            setVolumeTextandButton();
            return;

        case 219: 
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L);
            return;

        case 258: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onFragEvent MTV_UPDATE_FRAG_CMD_DIALOGS_SIGNAL_ALERT_RETRY_OK");
            if(mSViewUiMsgHandler != null)
            {
                i = mMtvPreferences.getLatestPChannelFromVChannel();
                if(mMtvPlayerOneSeg != null)
                {
                    obj = new MtvURI(2, i);
                    mMtvPlayerOneSeg.open(MtvAppPlaybackContextManager.getInstance().getLiveTV(), ((MtvURI) (obj)));
                    return;
                }
            }
            break;

        case 254: 
            endReservationProgram((Bundle)obj);
            return;
        }
        if(true) goto _L1; else goto _L3
_L3:
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if(mMtvAppPlaybackContext == null)
            return true;
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onKeyDown keyCode: ").append(i).toString());
        if(fragHandler == null)
            return true;
        if(i == 25 || i == 24)
        {
            if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
                fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L, false, new int[] {
                    0x7f0a0042
                });
            fragHandler.resetTimer(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L);
            keyevent.startTracking();
            return true;
        } else
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "Super called for key");
            return super.onKeyDown(i, keyevent);
        }
    }

    public boolean onKeyLongPress(int i, KeyEvent keyevent)
    {
        if(mMtvAppPlaybackContext == null)
            return true;
        if(i == 24)
        {
            mSViewUiMsgHandler.postDelayed(runnableVolumeEscalating, 10L);
            return true;
        }
        if(i == 25)
        {
            mSViewUiMsgHandler.postDelayed(runnableVolumeDecreasing, 10L);
            return true;
        } else
        {
            return super.onKeyLongPress(i, keyevent);
        }
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        if(mMtvAppPlaybackContext != null && fragHandler != null)
        {
            boolean flag;
            if(mMtvAppPlaybackContext.getState().getState().compareTo(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED) >= 0)
                flag = true;
            else
                flag = false;
            MtvUtilDebug.Low("MtvUiSViewCover", "onKeyUp");
            if(i == 24 || i == 25)
            {
                if(flag)
                    if(i == 24)
                    {
                        mSViewUiMsgHandler.removeCallbacks(runnableVolumeEscalating);
                        fragHandler.onUpdate(106, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                        return true;
                    } else
                    {
                        mSViewUiMsgHandler.removeCallbacks(runnableVolumeDecreasing);
                        fragHandler.onUpdate(107, null, com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
                        return true;
                    }
            } else
            {
                MtvUtilDebug.Low("MtvUiSViewCover", "Super called for key");
                return super.onKeyUp(i, keyevent);
            }
        }
        return true;
    }

    public void onMtvAppLiveBroadcastNotify(int i, Object obj)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onMtvAppAndroidServiceNotify() :: what - ").append(i).toString());
        if(MtvUtilAppService.isAppExiting())
            return;
        switch(i)
        {
        case 4: // '\004'
        case 5: // '\005'
        case 6: // '\006'
        case 8: // '\b'
        case 9: // '\t'
        case 11: // '\013'
        case 13: // '\r'
        case 14: // '\016'
        case 16: // '\020'
        case 19: // '\023'
        default:
            super.onMtvAppLiveBroadcastNotify(i, obj);
            return;

        case 18: // '\022'
            if(isDirectLaunch && !isLocalPlayback)
            {
                obj = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer);
                ((Intent) (obj)).addFlags(0x4000000);
                startActivity(((Intent) (obj)));
            } else
            if(isStartedFromMiniMode && isLocalPlayback)
            {
                obj = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer);
                ((Intent) (obj)).putExtra("isStartedFromMiniMode", isStartedFromMiniMode);
                ((Intent) (obj)).putExtra("MtvFile", MtvFileManager.getAvailableTVRecFilesEx(false)[selectedFileIndex]);
                ((Intent) (obj)).addFlags(0x4000000);
                startActivity(((Intent) (obj)));
            }
            finish();
            return;

        case 17: // '\021'
            showToast(0x7f0701e3);
            closeOneseg(2000);
            return;

        case 3: // '\003'
            showToast(0x7f07026b);
            closeOneseg(2000);
            return;

        case 15: // '\017'
            showToast(0x7f070299);
            closeOneseg(2000);
            return;

        case 7: // '\007'
            showToast(0x7f0701f0);
            closeOneseg(2000);
            return;

        case 21: // '\025'
            finish();
            return;

        case 20: // '\024'
            showToast(0x7f0702b8);
            if(isDirectLaunch)
            {
                obj = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer);
                ((Intent) (obj)).addFlags(0x4000000);
                startActivity(((Intent) (obj)));
            }
            finish();
            return;

        case 10: // '\n'
            endReservationProgramAndShowAlert();
            return;

        case 12: // '\f'
            RunnableReservationEndPopupExpire.run();
            return;
        }
    }

    protected void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        MtvUtilDebug.Low("MtvUiSViewCover", "onNewIntent");
        if(intent != null)
            setIntent(intent);
    }

    protected void onPause()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "onPause");
        coverSurfaceView.setKeepScreenOn(false);
        suppressCoverUI(false);
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
        if(fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD))
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD);
        super.onPause();
    }

    public void onPlayerNotification(int i, int j, int k)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onPlayerNotification ...:command : ").append(i).append(" status : ").append(j).toString());
        if(mMtvAudMgr == null)
            mMtvAudMgr = MtvUtilAudioManager.getInstance(getApplicationContext());
        if(mMtvPreferences == null)
            mMtvPreferences = new MtvPreferences(getApplicationContext());
        i;
        JVM INSTR tableswitch 20481 20495: default 152
    //                   20481 153
    //                   20482 274
    //                   20483 980
    //                   20484 548
    //                   20485 152
    //                   20486 152
    //                   20487 1048
    //                   20488 152
    //                   20489 967
    //                   20490 967
    //                   20491 152
    //                   20492 152
    //                   20493 152
    //                   20494 152
    //                   20495 939;
           goto _L1 _L2 _L3 _L4 _L5 _L1 _L1 _L6 _L1 _L7 _L7 _L1 _L1 _L1 _L1 _L8
_L1:
        return;
_L2:
        if(j == 24581)
        {
            if(MtvUtilAppService.isAppExiting())
            {
                MtvUtilDebug.Mid("MtvUiSViewCover", "onPlayerNotification - CMD_CREATE - exiting");
                return;
            }
            mMtvAudMgr.setAudioEnable(true);
            runOnUiThread(new Runnable() {

                public void run()
                {
                    if(isResumed())
                        registerVideoSurfaceView(true);
                }

                final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
            }
);
            MtvURI mtvuri = new MtvURI(2, mMtvPreferences.getLatestPChannelFromVChannel());
            runOnUiThread(RunnableCheckIsReservationAndStart);
            if(mMtvPlayerOneSeg != null)
            {
                mMtvPlayerOneSeg.open(mMtvAppPlaybackContext, mtvuri);
                return;
            }
        } else
        if(j == 24580)
        {
            MtvUtilDebug.Error("MtvUiSViewCover", "onPlayerNotification - CMD_CREATE - exiting");
            mMtvPlayerOneSeg.delete(mMtvAppPlaybackContext);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L3:
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onPlayerNotification ...:CMD_OPEN: Status-").append(j).toString());
        switch(j)
        {
        case 24578: 
        case 24579: 
        default:
            return;

        case 24577: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_OPEN:STAT_STARTED");
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f07021d)));
            return;

        case 24581: 
            Intent intent = new Intent("com.samsung.sec.mtv.ACTION_MTV_RECORDER_SERVICE");
            intent.putExtra("COMMAND_KEY", 2);
            getApplicationContext().stopService(intent);
            return;

        case 24582: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_BEGIN");
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            return;

        case 24583: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_PROGRESS");
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            return;

        case 24584: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_OPEN:STAT_BUFFERING_END");
            mGenericMsgHAndler.removeMessages(301);
            mGenericMsgHAndler.sendMessageDelayed(mSViewUiMsgHandler.obtainMessage(301, null), 500L);
            return;

        case 24580: 
            MtvUtilDebug.Low("MtvUiSViewCover", "STATUS_FAIL_SIGNAL_ERROR");
            showToast(0x7f0702e4);
            CheckIsReservationPartialOrNone(4);
            closeOneseg(2000);
            return;
        }
_L5:
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onPlayerNotification ...:CMD_PLAY Status-").append(j).toString());
        switch(j)
        {
        case 24578: 
        case 24579: 
        case 24585: 
        case 24586: 
        case 24587: 
        case 24588: 
        case 24589: 
        case 24590: 
        case 24591: 
        default:
            return;

        case 24577: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_PLAY:STAT_STARTED");
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            return;

        case 24581: 
            if(mMtvAudMgr != null)
            {
                mMtvAudMgr.stopOtherSound();
                mMtvAudMgr.updateCurrentAudioEffectAndMode();
            }
            runOnUiThread(RunnableCheckIsReservationAndStart);
            return;

        case 24582: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_BEGIN");
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            return;

        case 24583: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_PROGRESS");
            mGenericMsgHAndler.sendMessage(mSViewUiMsgHandler.obtainMessage(301, getString(0x7f070268)));
            return;

        case 24584: 
            MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...CMD_PLAY:STAT_BUFFERING_END");
            mGenericMsgHAndler.removeMessages(301);
            mGenericMsgHAndler.sendMessageDelayed(mSViewUiMsgHandler.obtainMessage(301, null), 500L);
            runOnUiThread(new Runnable() {

                public void run()
                {
                    dummySurface.setVisibility(4);
                }

                final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
            }
);
            return;

        case 24580: 
            MtvUtilDebug.Low("MtvUiSViewCover", "STATUS_FAIL_SIGNAL_ERROR");
            showToast(0x7f0702e4);
            closeOneseg(2000);
            return;

        case 24593: 
            MtvUtilDebug.Error("MtvUiSViewCover", "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!");
            if(!MtvUtilDebug.isReleaseMode())
            {
                Toast toast = Toast.makeText(this, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - ", 1);
                toast.setGravity(119, 0, 0);
                toast.show();
            }
            sendBroadcast(new Intent("com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"));
            return;

        case 24592: 
            MtvUtilAppService.setPreferredOrientation(-1);
            com.samsung.sec.mtv.ui.fileplayer.MtvUiFilePlayer.MTvAppPlaybackTimer.getInstance().stopPlaybackTimer();
            showToast(0x7f070243);
            closeOneseg(1500);
            return;
        }
_L8:
        MtvUtilDebug.Low("MtvUiSViewCover", "onPlayerNotification ...:CMD_DELETE");
        if(j == 24581)
        {
            mMtvAudMgr.setAvStreaming(false);
            resetAndFinish();
            return;
        }
        if(true) goto _L1; else goto _L7
_L7:
        runOnUiThread(new Runnable() {

            public void run()
            {
                updatePlayBackButton();
            }

            final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
        }
);
        return;
_L4:
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onPlayerNotification ...:CMD_STATUS_UPDT Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24588: 
            MtvUtilDebug.Low("MtvUiSViewCover", "STATUS_FAIL_SIGNAL_ERROR");
            break;
        }
        showToast(0x7f0702e4);
        closeOneseg(2000);
        return;
_L6:
        MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("onPlayerNotification ...:CMD_RECORD Status-").append(j).toString());
        switch(j)
        {
        default:
            return;

        case 24580: 
            isStopRecCommandInProcess = false;
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().stopRecordTimer();
            MtvUiProgressDialog.dismissProgressDialog();
            MtvUtilDebug.Low("MtvUiSViewCover", (new StringBuilder()).append("Got CMD_REC with STAT_FAILURE and extra = [").append(k).append("]").toString());
            i = 455;
            if(k == 24595 || k == 24593)
            {
                i = 456;
                bIsRecordingFailed = true;
            } else
            {
                saveTVFileThumbnail();
            }
            mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(i, k, -1));
            return;

        case 24581: 
            if(!com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().isRecordTimerStarted())
            {
                MtvUtilDebug.Error("MtvUiSViewCover", "Record Timer never started !");
                bIsRecordingFailed = true;
            }
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().stopRecordTimer();
            isStopRecCommandInProcess = false;
            saveTVFileThumbnail();
            checkIsReservationAndEnd(1);
            if(!bIsRecordingFailed)
            {
                mSViewUiMsgHandler.sendMessage(mSViewUiMsgHandler.obtainMessage(454));
                return;
            }
            break;

        case 24596: 
            MtvUiProgressDialog.dismissProgressDialog();
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().startRecordTimer();
            return;

        case 24577: 
        case 24578: 
            break;
        }
        if(true) goto _L1; else goto _L9
_L9:
    }

    public void onProgramAttributeReset(int i)
    {
    }

    public void onProgramAttributeUpdated(int i)
    {
    }

    protected void onResume()
    {
        super.onResume();
        MtvUtilDebug.Low("MtvUiSViewCover", "onResume");
        if(MtvUtilAppService.isAppExiting())
            return;
        if(!mMtvPreferences.isSViewCoverClosed())
        {
            if(isDirectLaunch)
            {
                Intent intent = new Intent(getApplicationContext(), com/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer);
                intent.addFlags(0x4000000);
                startActivity(intent);
            }
            finish();
            return;
        }
        coverSurfaceView.setKeepScreenOn(true);
        suppressCoverUI(true);
        setVolumeTextandButton();
        if(mMtvAppPlaybackContext != null && mMtvAppPlaybackContext.getState().getOp() == 20487)
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_RECORD, -1L, true, new int[] {
                0x7f0a0043
            });
            com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().continueRecordTimer(com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer.MtvAppRecorderInfo.getInstance().getRecordTime());
            mSViewUiMsgHandler.removeMessages(453);
            mSViewUiMsgHandler.sendEmptyMessageDelayed(453, 3000L);
        }
        if(mMtvPreferences.getLaunchAntennaAlert())
        {
            Intent intent1 = new Intent();
            intent1.setComponent(new ComponentName("com.samsung.sec.mtv", "com.samsung.sec.mtv.ui.common.MtvUiPopUpActivity"));
            intent1.putExtra("popup_type", 3);
            intent1.setFlags(0x10000000);
            MtvUtilDebug.High("MtvUiSViewCover", "Mobile Tv Lanuch antenna");
            startActivity(intent1);
            mMtvPreferences.setLaunchAntennaAlert(false);
        }
        checkIsReservationAndStart();
        updateMainControlBar();
    }

    public void onStateChanged(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1)
    {
    }

    public void onVolumeButtonPressed(View view)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "onVolumeButtonPressed");
        if(!fragHandler.isFragPresent(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME))
        {
            fragHandler.addFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME, 3000L, false, new int[] {
                0x7f0a0042
            });
            return;
        } else
        {
            fragHandler.removeFrag(com.samsung.sec.mtv.ui.common.MtvUiFragHandler.FRAG_TYPE.TYPE_VOLUME);
            return;
        }
    }

    protected void registerVideoSurfaceView(boolean flag)
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "registerSurfaceView");
        if(mMtvAppPlaybackContext != null)
        {
            mMtvAppPlaybackContext.getComponents().getVideo().enable();
            IMtvOneSegVideoControl imtvonesegvideocontrol = mMtvAppPlaybackContext.getComponents().getVideo().getControlInterface();
            if(imtvonesegvideocontrol != null)
            {
                if(flag)
                {
                    imtvonesegvideocontrol.registerSurface(coverSurfaceView);
                    return;
                } else
                {
                    imtvonesegvideocontrol.unregisterSurface(coverSurfaceView);
                    return;
                }
            } else
            {
                MtvUtilDebug.Error("MtvUiSViewCover", "Control Interface is null ! ");
                return;
            }
        } else
        {
            MtvUtilDebug.Low("MtvUiSViewCover", "mMtvAppPlaybackContext is null, can't register");
            return;
        }
    }

    public void resetAndFinish()
    {
        MtvUtilDebug.Low("MtvUiSViewCover", "resetAndFinish");
        MtvUtilAppService.setAppExiting(true);
        mSViewUiMsgHandler.removeCallbacksAndMessages(null);
        MtvAppPlaybackContextManager.getInstance().reset();
        mSViewUiMsgHandler.post(new Runnable() {

            public void run()
            {
                finish();
            }

            final MtvUiSViewCover this$0;

            
            {
                this$0 = MtvUiSViewCover.this;
                super();
            }
        }
);
    }

    private static final long DELAY_TIMER_FOR_START_CHANNEL = 2500L;
    public static final int FLING_MAJOR_MOVE = 100;
    private static final int RECORDING_INSUFF_MEM = 1;
    private static final int RECORDING_START_FAILURE = -1;
    private static final int RECORDING_START_SUCCESS = 0;
    private static Runnable RunnableReservationEndPopupExpire = new Runnable() ;
    private static final String TAG = "MtvUiSViewCover";
    private static final int TIMEOUT_INTERVAL_VALUE = 3000;
    private static Object mPendingBackendNotification = null;
    private Runnable RunnableCheckIsReservationAndStart;
    private Runnable RunnableNextPreviousChannel;
    private Runnable RunnableresetComingReservationID;
    private boolean bIsRecordingFailed;
    private SurfaceView coverSurfaceView;
    private ImageView dummySurface;
    private Toast generalToast;
    private boolean isDirectLaunch;
    private boolean isLocalPlayback;
    private boolean isStartedFromMiniMode;
    private boolean isStopRecCommandInProcess;
    private android.view.WindowManager.LayoutParams lp;
    private Button mChannelNameButton;
    private android.os.PowerManager.WakeLock mCpuWakeLock;
    private GestureDetector mGestureDetector;
    private MtvAppPlaybackContext mMtvAppPlaybackContext;
    private MtvUtilAudioManager mMtvAudMgr;
    private IMtvAppPlayerOneSeg mMtvPlayerOneSeg;
    private LinearLayout mPgmVlmlayout;
    private ImageButton mPlayPauseButton;
    private long mPreviousChannelChangeTime;
    private TextView mProgramNameTextView;
    private DialogFragment mReservationEndDialog;
    private Handler mSViewUiMsgHandler;
    private ImageButton mVolumeButton;
    private Runnable runnableVolumeDecreasing;
    private Runnable runnableVolumeEscalating;
    private int selectedFileIndex;
    private boolean shownToastforOperationNA;
    private android.view.View.OnLongClickListener volumeLongClickListener;























































/*
    static Object access$5702(Object obj)
    {
        mPendingBackendNotification = obj;
        return obj;
    }

*/






    // Unreferenced inner class com/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$14$1

/* anonymous class */
}
