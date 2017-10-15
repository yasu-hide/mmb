// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.player;

import android.broadcast.IMtvOneSegServiceListener;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.MtvOneSegSignal;
import android.broadcast.helper.types.MtvOneSegTVLink;
import android.broadcast.oneseg.MtvOneSegFactory;
import android.broadcast.oneseg.MtvOneSegService;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.*;
import android.text.SpannableStringBuilder;
import com.samsung.sec.mtv.app.context.*;

// Referenced classes of package com.samsung.sec.mtv.app.player:
//            IMtvAppPlayerOneSeg

public class MtvAppPlayerOneSeg
    implements IMtvOneSegServiceListener, IMtvAppPlayerOneSeg
{
    private static class MtvAppPlayerPendingParams
    {

        public String toString()
        {
            return (new StringBuilder()).append("mcmdServiced : ").append(mcmdServiced).append(" mPendingCmd : ").append(mPendingCmd).append(" mCmdStatus ").append(mCmdStatus).append(" mNewURI ").append(mNewURI).toString();
        }

        private Context mAppContext;
        private int mCmdExtraInfo;
        private int mCmdStatus;
        private MtvAppPlaybackContext mNewContext;
        private MtvURI mNewURI;
        private int mPendingCmd;
        private boolean mcmdServiced;



/*
        static Context access$102(MtvAppPlayerPendingParams mtvappplayerpendingparams, Context context)
        {
            mtvappplayerpendingparams.mAppContext = context;
            return context;
        }

*/



/*
        static MtvURI access$1102(MtvAppPlayerPendingParams mtvappplayerpendingparams, MtvURI mtvuri)
        {
            mtvappplayerpendingparams.mNewURI = mtvuri;
            return mtvuri;
        }

*/



/*
        static int access$202(MtvAppPlayerPendingParams mtvappplayerpendingparams, int i)
        {
            mtvappplayerpendingparams.mPendingCmd = i;
            return i;
        }

*/



/*
        static boolean access$3002(MtvAppPlayerPendingParams mtvappplayerpendingparams, boolean flag)
        {
            mtvappplayerpendingparams.mcmdServiced = flag;
            return flag;
        }

*/



/*
        static int access$3102(MtvAppPlayerPendingParams mtvappplayerpendingparams, int i)
        {
            mtvappplayerpendingparams.mCmdExtraInfo = i;
            return i;
        }

*/



/*
        static int access$402(MtvAppPlayerPendingParams mtvappplayerpendingparams, int i)
        {
            mtvappplayerpendingparams.mCmdStatus = i;
            return i;
        }

*/



/*
        static MtvAppPlaybackContext access$602(MtvAppPlayerPendingParams mtvappplayerpendingparams, MtvAppPlaybackContext mtvappplaybackcontext)
        {
            mtvappplayerpendingparams.mNewContext = mtvappplaybackcontext;
            return mtvappplaybackcontext;
        }

*/

        private MtvAppPlayerPendingParams()
        {
            mcmdServiced = false;
            mPendingCmd = 0;
            mCmdStatus = 0;
            mCmdExtraInfo = 0;
            mAppContext = null;
            mNewURI = null;
            mNewContext = null;
        }

    }

    private static class MtvAppPlayerSeekParams
    {

        private int mCurTimeStamp;
        private boolean mSeekFail;
        private int mSeekStatus;
        private int mSeekedTimeStamp;
        private int mTrickMode;
        private int mTrickSpeed;



/*
        static int access$1602(MtvAppPlayerSeekParams mtvappplayerseekparams, int i)
        {
            mtvappplayerseekparams.mTrickMode = i;
            return i;
        }

*/



/*
        static int access$1702(MtvAppPlayerSeekParams mtvappplayerseekparams, int i)
        {
            mtvappplayerseekparams.mTrickSpeed = i;
            return i;
        }

*/



/*
        static int access$1802(MtvAppPlayerSeekParams mtvappplayerseekparams, int i)
        {
            mtvappplayerseekparams.mCurTimeStamp = i;
            return i;
        }

*/



/*
        static int access$2802(MtvAppPlayerSeekParams mtvappplayerseekparams, int i)
        {
            mtvappplayerseekparams.mSeekedTimeStamp = i;
            return i;
        }

*/



/*
        static boolean access$2902(MtvAppPlayerSeekParams mtvappplayerseekparams, boolean flag)
        {
            mtvappplayerseekparams.mSeekFail = flag;
            return flag;
        }

*/



/*
        static int access$3202(MtvAppPlayerSeekParams mtvappplayerseekparams, int i)
        {
            mtvappplayerseekparams.mSeekStatus = i;
            return i;
        }

*/

        private MtvAppPlayerSeekParams()
        {
            mCurTimeStamp = 0;
            mTrickMode = 0;
            mTrickSpeed = 0;
            mSeekFail = false;
            mSeekStatus = 0;
            mSeekedTimeStamp = 0;
        }

    }


    private MtvAppPlayerOneSeg()
    {
        mPlayerHdlr = null;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Constructor Called");
        HandlerThread handlerthread = new HandlerThread("MtvAppPlayerOneSeg");
        handlerthread.start();
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Starting the thread");
        mPendingParam = new MtvAppPlayerPendingParams();
        mPlayerHdlr = new Handler(handlerthread.getLooper(), mPlayerHdlrCB);
        MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully Instantiated Constrcutor");
    }

    private void flushPlayerThreadMsg()
    {
        if(mPlayerHdlr != null)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Flushing all the messages from  Signal Thread");
            mPlayerHdlr.removeCallbacks(null);
        }
        if(mPlayerHdlr != null)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Flushing all the messages from PlayerOneSeg ThreadQ ");
            mPlayerHdlr.removeCallbacksAndMessages(null);
            return;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Thread Handler. No point of flushing the messages from PlayerOneSeg ThreadQ!");
            return;
        }
    }

    public static IMtvAppPlayerOneSeg getInstance()
    {
        if(mPlayer == null)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "PlayerOneSeg Instance is null, Instantiating the constructor");
            mPlayer = new MtvAppPlayerOneSeg();
        }
        return mPlayer;
    }

    private boolean getPendingOpStatus()
    {
        return mOpStatus;
    }

    private void handleBuffering(int i, int j, int k)
    {
        if(mCurContext == null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Buffering Status [").append(j).append("]").toString());
        j;
        JVM INSTR tableswitch 204 206: default 64
    //                   204 77
    //                   205 84
    //                   206 91;
           goto _L3 _L4 _L5 _L6
_L3:
        mCurContext.getState().triggerNotification(i, j, k);
        return;
_L4:
        j = 24582;
        continue; /* Loop/switch isn't completed */
_L5:
        j = 24583;
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Got Buffering End from OneSegService ");
        j = 24584;
        if(true) goto _L3; else goto _L2
_L2:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "App is still running - Dnt Crash Yet?!?!?!");
        return;
    }

    private boolean handleClose(boolean flag)
    {
        boolean flag2 = false;
        if(mCurContext != null && mPendingParam != null)
        {
            boolean flag1 = flag2;
            if(flag)
            {
                handleLowSignal(false);
                handleSignalUpdate(false);
                handleRetryChnlSearch(false);
                flag1 = flag2;
                if(mOneSegServ != null)
                    flag1 = mOneSegServ.close();
            }
            flag = flag1;
            if(!flag1)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully closed the playback session ");
                mPendingParam.mcmdServiced = false;
                mCurContext.getAttribute().reset();
                setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED, 20494, 24581, 0, true);
                handlePendingCommand(mCurContext.getState().getOp());
                flag = true;
            }
            return flag;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters mCurContext [").append(mCurContext).append(" ] mPendingParam [").append(mPendingParam).append("] Cannot close the session!").toString());
            return false;
        }
    }

    private boolean handleLocalPlayback(int i, int j, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, int k)
    {
        int l = mCurContext.getState().getOp();
        switch(l)
        {
        default:
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Command [").append(l).append("]. Failure in handling commands in local playback").toString());
            return false;

        case 20489: 
        case 20490: 
            if(j == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Success in [").append(l).append("] session").toString());
                mCurContext.getState().setOp(20480);
                setContextState(state, l, 24581, k, true);
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Failure in [").append(l).append("] session").toString());
                setContextParams(20480, l, 24580, k, true);
            }
            handlePendingCommand(mCurContext.getState().getOp());
            return false;

        case 20491: 
        case 20492: 
            handleSeek(l, j, mSeekParam.mTrickMode, mSeekParam.mCurTimeStamp, i, k);
            return false;
        }
    }

    private void handleLowSignal(boolean flag)
    {
        if(mPlayerHdlr != null)
        {
            if(flag)
            {
                mPlayerHdlr.removeCallbacks(mRunnableUpdateSignal);
                mPlayerHdlr.postDelayed(mRunnableUpdateSignal, 10000L);
                mPlayerHdlr.postDelayed(mRunnableLowSignal, 10000L);
                return;
            } else
            {
                mPlayerHdlr.removeCallbacks(mRunnableLowSignal);
                return;
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Player Handler -- Error in handleSignalUpdate()");
            return;
        }
    }

    private boolean handleNewCommand(int i, int j, int k, MtvAppPlaybackContext mtvappplaybackcontext, MtvURI mtvuri, Context context)
    {
        boolean flag;
        boolean flag2;
        flag = false;
        flag2 = false;
        if(mCurContext == null) goto _L2; else goto _L1
_L1:
        if(mCurContext.getState().getOp() != 20480) goto _L4; else goto _L3
_L3:
        if(mPendingParam.mNewURI != null)
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session [URI: ").append(mPendingParam.mNewURI).append("] [chnl Num: ").append(mPendingParam.mNewURI.chnlNum()).append("] [fileIndex: ").append(mPendingParam.mNewURI.fileIndex()).append("] is going on, Got a request for session change:: Posting CLOSE_CMD to end the current session").toString());
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Setting the pending operation as cmd [").append(i).append("] ").toString());
        flag = setPendingOperation(false, i, 0, 0, mtvappplaybackcontext, context, mtvuri);
        if(!flag) goto _L6; else goto _L5
_L5:
        if(mPendingParam.mNewURI != null)
            i = mPendingParam.mNewURI.pbType();
        else
            i = -1;
        if(mCurContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && i == 2)
            i = 1;
        else
            i = 0;
        if(mCurContext.getState().getState() != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && i == 0) goto _L8; else goto _L7
_L7:
        handlePendingCommand(20480);
_L2:
        return flag;
_L8:
        flag2 = sendPlayerThreadMsg(20494, 0, 0, null);
        flag = flag2;
        if(!flag2)
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Reverting the pending parameters!");
            setPendingOperation(false, 20480, 0, 0, mCurContext, null, null);
            flag = flag2;
        }
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Reverting the pending parameters");
        setPendingOperation(false, 20480, 0, 0, mCurContext, null, null);
        continue; /* Loop/switch isn't completed */
_L4:
        if(mCurContext.getState().getOp() == 20485)
        {
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Current operation is Scan ! Need to cancel Scan before proceeding with any session !");
            if(i == 20486)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "dispatching cancel Scan immediately and ignoring further updates!");
                flag = sendPlayerThreadMsg(20486, 0, 0, null);
            } else
            if(i == 20495)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Command to close Mobile TV, so cancelling scan first");
                flag = sendPlayerThreadMsg(20486, 0, 0, null);
                setPendingOperation(false, 20495, 0, 0, mCurContext, null, null);
            } else
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("New command : ").append(i).append("issued while scan is going on.. Not Processing it !").toString());
                flag = false;
            }
            continue; /* Loop/switch isn't completed */
        }
        if(mCurContext.getState().getOp() == 20496)
        {
            flag2 = setPendingOperation(false, i, 0, 0, mtvappplaybackcontext, context, mtvuri);
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Retry is going on settting operation is ").append(i).toString());
            flag = flag2;
            if(flag2)
            {
                flag2 = sendPlayerThreadMsg(17, 0, 0, null);
                flag = flag2;
                if(!flag2)
                {
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", "CHNL_RETRY going on, Failed in stopping that -- No way the other commands get serviced!!!");
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Reverting the pending parameters");
                    setPendingOperation(false, 20480, 0, 0, mCurContext, null, null);
                    flag = flag2;
                }
            }
            continue; /* Loop/switch isn't completed */
        }
        if(mPendingParam.mNewURI != null)
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Current Session is in the middle. CurCmd[").append(mCurContext.getState().getOp()).append("] URI [").append(mPendingParam.mNewURI).append("] ChnlNum [").append(mPendingParam.mNewURI.chnlNum()).append("] [fileIndex: ").append(mPendingParam.mNewURI.fileIndex()).append("]").toString());
        MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Cannot issue CLOSE immediately.. Setting Pending CMD [").append(i).append("] with appropriate parameters").toString());
        flag = flag2;
        if(i != 20486)
            flag = true;
        if(mCurContext.getState().getOp() == 20494)
        {
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Need not issue close as current command itself is close... Setting Pending CMD [").append(i).append("] with appropriate parameters").toString());
            flag = false;
        }
        flag2 = flag;
        if(mPendingParam.mNewURI != null)
        {
            flag2 = flag;
            if(mPendingParam.mNewURI.pbType() == 6)
            {
                if(mCurContext.getState().getOp() != 20482)
                    break; /* Loop/switch isn't completed */
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Already Recorder Open is going on , No need to close the session , Can Continue Opening Player also ! ");
                flag2 = false;
            }
        }
_L10:
        flag = setPendingOperation(flag2, i, 0, 0, mtvappplaybackcontext, context, mtvuri);
        if(true) goto _L2; else goto _L9
_L9:
        flag2 = flag;
        if(mCurContext.getState().getOp() == 20487)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Already Recorder Record is going on , No need to close the session , Can Continue Opening Player also !");
            boolean flag1 = setPendingOperation(false, i, 0, 0, mtvappplaybackcontext, context, mtvuri);
            handlePendingCommand(20487);
            return flag1;
        }
          goto _L10
        if(true) goto _L2; else goto _L11
_L11:
    }

    private void handleOpenFailure(boolean flag)
    {
        if(mPlayerHdlr != null)
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("handleOpenFailure handle:").append(flag).toString());
            if(flag)
            {
                mPlayerHdlr.removeCallbacks(mRunnablePostOpenFailure);
                mPlayerHdlr.postDelayed(mRunnablePostOpenFailure, 5000L);
                return;
            } else
            {
                mPlayerHdlr.removeCallbacks(mRunnablePostOpenFailure);
                return;
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Player Handler -- Error in handleOpenFailure()");
            return;
        }
    }

    private boolean handlePendingCommand(int i)
    {
        boolean flag = false;
        if(mCurContext == null) goto _L2; else goto _L1
_L1:
        int j;
        j = mCurContext.getState().getOp();
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("handlePendingCommand ::  iCurSetCmd  ").append(j).append(" curCmd ").append(i).append(" mPendingParam ").append(mPendingParam).toString());
        if(mPendingParam == null || mPendingParam.mPendingCmd == 0) goto _L4; else goto _L3
_L3:
        if(j != i) goto _L6; else goto _L5
_L5:
        if(mPendingParam.mcmdServiced) goto _L8; else goto _L7
_L7:
        MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Pending CMD [").append(mPendingParam.mPendingCmd).append("] will be serviced now").toString());
        setPendingOpStatus(true);
        if(mPendingParam.mNewContext != null && mPendingParam.mNewContext != mCurContext)
        {
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Context Differs -- Setting the NewContext and henceforth all the CBs will be triggered to the new context ");
            mCurContext = mPendingParam.mNewContext;
            mPlayerHdlr.removeCallbacks(mRetryChnlSearch);
            mCurContext.getState().setState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED);
            MtvAppPlaybackContextManager.getInstance().setCurrentContext(mCurContext);
        }
        sendPlayerThreadMsg(mPendingParam.mPendingCmd, mPendingParam.mCmdStatus, mPendingParam.mCmdExtraInfo, null);
        mPendingParam.mCmdExtraInfo = 0;
_L12:
        flag = true;
_L10:
        return flag;
_L8:
        MtvUtilDebug.High("MtvAppPlayerOneSeg", "Closing the current on-going session");
        if(mOneSegServ != null)
        {
            mCurContext.getState().setOp(20494);
            handleClose(true);
        }
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("The CB/NewCmd [").append(i).append("] is different from the current operation [").append(j).append("] going on -- Doing Nothing").toString());
        continue; /* Loop/switch isn't completed */
_L4:
        if(mPendingParam != null) goto _L10; else goto _L9
_L9:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "PendingCmd Queue is NULL --- Get Ready to take ADB Dump!!!");
        return false;
_L2:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "mContext is NULL - Take ForceDump Please!!!");
        return false;
        if(true) goto _L12; else goto _L11
_L11:
    }

    private void handleRetryChnlSearch(boolean flag)
    {
        if(mPlayerHdlr != null)
        {
            if(flag)
            {
                mRetryCnt++;
                if(mRetryCnt == 5)
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Retry Cnt [").append(mRetryCnt).append("].. Max times searched, Got Fedup - Leave it Yaar - Why do you want to play TV when there is no Siganl!!!").toString());
                    mPlayerHdlr.removeCallbacks(mRetryChnlSearch);
                    mRetryCnt = 0;
                    setContextParams(20480, 20482, 24580, mPendingParam.mNewURI.chnlNum(), true);
                    return;
                }
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Lets check health stats before Running again : ").append(mPendingParam).toString());
                if(mPendingParam.mPendingCmd != 0 && !mPendingParam.mAppContext.equals(mCurContext) && mPendingParam.mPendingCmd == 20482)
                {
                    mPlayerHdlr.removeCallbacks(mRetryChnlSearch);
                    sendPlayerThreadMsg(20482, 0, 0, mPendingParam.mNewURI);
                    return;
                } else
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Retry Cnt [").append(mRetryCnt).append("].. Retrying for Channel:: Sleeping for 5sec").toString());
                    mPlayerHdlr.removeCallbacks(mRetryChnlSearch);
                    mCurContext.getState().setOp(20496);
                    mPlayerHdlr.postDelayed(mRetryChnlSearch, 5000L);
                    return;
                }
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Resetting RetryChnlSearch() ");
                mPlayerHdlr.removeCallbacks(mRetryChnlSearch);
                mRetryCnt = 0;
                return;
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Player Handler -- Error in handleRetryChnlSearch()");
            return;
        }
    }

    private boolean handleSeek(int i, int j, int k, int l, int i1, int j1)
    {
        char c;
        boolean flag;
        boolean flag1;
        boolean flag3;
        flag3 = false;
        flag = false;
        flag1 = false;
        c = '\u6004';
        if(mCurContext == null) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR lookupswitch 5: default 72
    //                   0: 172
    //                   1: 247
    //                   16: 511
    //                   256: 638
    //                   4096: 610;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid seek status [").append(i1).append("]. Failure in Seek(), Don't know which event to send!!! ").toString());
        flag = flag1;
        k = c;
_L15:
        if(flag) goto _L10; else goto _L9
_L9:
        mSeekParam = null;
        if(i != 20491) goto _L12; else goto _L11
_L11:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Failure in trickModePlay() ");
_L13:
        setContextParams(20480, i, k, 0, true);
_L10:
        if(mCurContext.getState().getOp() == 20480)
            handlePendingCommand(20480);
        return flag;
_L4:
        if(mSeekParam == null)
        {
            mSeekParam = new MtvAppPlayerSeekParams();
            if(mSeekParam != null)
            {
                mSeekParam.mCurTimeStamp = l;
                mSeekParam.mTrickMode = k;
                mSeekParam.mSeekFail = false;
            }
        }
        k = c;
        flag = flag1;
        if(mOneSegServ != null)
        {
            flag = mOneSegServ.pause();
            k = c;
        }
        continue; /* Loop/switch isn't completed */
_L5:
        k = c;
        flag = flag1;
        if(j != 201)
            continue; /* Loop/switch isn't completed */
        MtvUtilDebug.High("MtvAppPlayerOneSeg", "SEEK - Pause Done");
        mCurContext.getState().setState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED);
        k = c;
        flag = flag1;
        if(mSeekParam == null)
            continue; /* Loop/switch isn't completed */
        k = c;
        flag = flag1;
        if(mOneSegServ == null)
            continue; /* Loop/switch isn't completed */
        if(i == 20491)
        {
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("SEEK - Calling Trickmode with Mode [").append(mSeekParam.mTrickMode).append("] newTimeStamp [").append(mSeekParam.mCurTimeStamp).append("]").toString());
            flag1 = flag3;
            if(mSeekParam.mTrickMode == 0)
            {
                mSeekParam.mSeekStatus = 4096;
                flag1 = flag3;
            }
        } else
        {
            flag1 = flag3;
            if(i == 20492)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("SEEK - Calling Reposition with newTimeStamp [").append(mSeekParam.mCurTimeStamp).append("]").toString());
                flag1 = mOneSegServ.repositionPlay(mSeekParam.mCurTimeStamp);
            }
        }
        k = c;
        flag = flag1;
        if(!flag1)
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Resuming the play as there is failure in seek() operation");
            mSeekParam.mSeekFail = true;
            k = c;
            flag = flag1;
            if(mOneSegServ != null)
            {
                flag = mOneSegServ.resume();
                k = c;
            }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if(j == 201)
        {
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "SEEK - SEEK Done");
            if(mSeekParam != null)
                mSeekParam.mSeekedTimeStamp = j1;
        } else
        {
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Failure in [").append(i).append("] session. resuming the playback").toString());
            mSeekParam.mSeekFail = true;
        }
        k = c;
        flag = flag1;
        if(mOneSegServ != null)
        {
            flag = mOneSegServ.resume();
            k = c;
        }
        continue; /* Loop/switch isn't completed */
_L8:
        MtvUtilDebug.High("MtvAppPlayerOneSeg", "SEEK - got onTrickModeEnd() Callback -- Post the Event now");
        mSeekParam.mSeekStatus = 4096;
        k = c;
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L7:
        boolean flag2;
        if(mSeekParam.mSeekStatus != 4096)
        {
            if(j == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "SEEK - Resume Done");
                flag2 = true;
            } else
            {
                mSeekParam.mSeekFail = true;
                mSeekParam.mSeekedTimeStamp = 0;
                flag2 = flag;
            }
        } else
        {
            flag2 = true;
        }
        if(i == 20492 || i == 20491 && mSeekParam.mSeekStatus == 4096)
        {
            k = c;
            flag = flag2;
            if(flag2)
            {
                k = c;
                flag = flag2;
                if(mSeekParam != null)
                {
                    if(!mSeekParam.mSeekFail)
                    {
                        MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Success in [").append(i).append("] for the playback ").toString());
                        j = 24581;
                    } else
                    {
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Failure in [").append(i).append("] for the playback ").toString());
                        j = 24580;
                    }
                    mCurContext.getState().setOp(20480);
                    setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING, i, j, mSeekParam.mSeekedTimeStamp, true);
                    mSeekParam = null;
                    k = j;
                    flag = flag2;
                }
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Current Command = [").append(i).append("] SeekStatus = [").append(mSeekParam.mSeekStatus).append("]. May be still under processing !!").toString());
            k = c;
            flag = flag2;
        }
        continue; /* Loop/switch isn't completed */
_L12:
        if(i == 20492)
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Failure in repositionPlay() ");
        if(true) goto _L13; else goto _L2
_L2:
        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Context. Cannot handle trickModePlay()/repositionPlay() ");
        return false;
        if(true) goto _L15; else goto _L14
_L14:
    }

    private void handleSignalUpdate(boolean flag)
    {
        if(mPlayerHdlr != null)
        {
            if(flag)
            {
                mPlayerHdlr.removeCallbacks(mRunnableUpdateSignal);
                mPlayerHdlr.postDelayed(mRunnableUpdateSignal, 4000L);
                return;
            } else
            {
                mLowSigCnt = 0;
                mPlayerHdlr.removeCallbacks(mRunnableUpdateSignal);
                return;
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Player Handler -- Error in handleSignalUpdate()");
            return;
        }
    }

    private void resetApp()
    {
        if(mOneSegServ != null)
        {
            mOneSegServ.unregisterListener(this);
            mOneSegServ = null;
        }
        handleRetryChnlSearch(false);
        handleSignalUpdate(false);
        handleLowSignal(false);
        setPendingOpStatus(false);
        MtvAppPlaybackContextManager.getInstance().reset();
        mCurContext = null;
        mPlayer = null;
        mPlayerHdlr = null;
        MtvUtilDebug.High("MtvAppPlayerOneSeg", "Reset all the data");
    }

    private boolean sendPlayerThreadMsg(int i, int j, int k, Object obj)
    {
        if(mPlayerHdlr != null)
        {
            if(j == 215 || i == 20487 || i == 20486)
                return mPlayerHdlr.sendMessageAtFrontOfQueue(mPlayerHdlr.obtainMessage(i, j, k, obj));
            if(i == 20495)
            {
                handleRetryChnlSearch(false);
                flushPlayerThreadMsg();
                return mPlayerHdlr.sendMessage(mPlayerHdlr.obtainMessage(i, j, k, obj));
            } else
            {
                return mPlayerHdlr.sendMessage(mPlayerHdlr.obtainMessage(i, j, k, obj));
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Thread Handler. Failure in posting messages to thread");
            return false;
        }
    }

    private void setContextParams(int i, int j, int k, int l, boolean flag)
    {
        if(mCurContext != null)
        {
            mCurContext.getState().setOp(i);
            mCurContext.getState().triggerNotification(j, k, l, flag);
        }
    }

    private void setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state, int i, int j, int k, boolean flag)
    {
        if(mCurContext != null)
        {
            mCurContext.getState().setState(state);
            mCurContext.getState().triggerNotification(i, j, k, flag);
        }
    }

    private void setPendingOpStatus(boolean flag)
    {
        mOpStatus = flag;
    }

    private boolean setPendingOperation(boolean flag, int i, int j, int k, MtvAppPlaybackContext mtvappplaybackcontext, Context context, MtvURI mtvuri)
    {
        if(mPendingParam != null)
        {
            if(mPendingParam.mPendingCmd == 20495)
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "DELETE is already set as Pending command -- Cannot entertain any more pending commands");
                return false;
            }
            synchronized(mPendingParam)
            {
                mPendingParam.mcmdServiced = flag;
                mPendingParam.mPendingCmd = i;
                mPendingParam.mCmdStatus = j;
                mPendingParam.mCmdExtraInfo = k;
                mPendingParam.mNewContext = mtvappplaybackcontext;
                mPendingParam.mAppContext = context;
                mPendingParam.mNewURI = mtvuri;
            }
            return true;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Handler:: Cannot Store parameters for next session -- Cannot continue operation");
            return false;
        }
        mtvappplaybackcontext;
        mtvappplayerpendingparams;
        JVM INSTR monitorexit ;
        throw mtvappplaybackcontext;
    }

    public boolean cancelRecord(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered cancelRecord()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if((mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED) && i == 20487)
                flag = sendPlayerThreadMsg(20487, 2, 0, null);
            else
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Recording is not going on curState [").append(mtvappplaybackcontext).append("] curCmd [").append(i).append("] -- Cannot Cancel Recording").toString());
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Mismatch in context curContext [").append(mCurContext).append("] newContext [").append(mtvappplaybackcontext).append("]. Cannot Cancel Recording ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting cancelRecord()");
        return flag;
    }

    public boolean cancelScanChannels(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered cancelScanChannels()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && i == 20485)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session is going on curState [").append(state1).append("], curCmd [").append(i).append("] -- Checking whether the new command [CANCEL SCAN] can be serviced or not").toString());
                flag = handleNewCommand(20486, 0, 0, mtvappplaybackcontext, null, null);
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(state1).append("] curCommand [").append(i).append("]. Failure in cancelScanChannels() ").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Mismatch in context curContext [").append(mCurContext).append(" newContext [").append(mtvappplaybackcontext).append("]. Failure in cancelScanChannels()").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting cancelScanChannels()");
        return flag;
    }

    public boolean captFrame(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered captFrame()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && i == 20480)
            {
                boolean flag1 = sendPlayerThreadMsg(20488, 0, 0, null);
                flag = flag1;
                if(flag1)
                {
                    mtvappplaybackcontext.getState().triggerNotification(20488, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State curState [").append(state1).append("] curCmd [").append(i).append("] -- Cannot Capture Frame").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Mismatch in context curContext [").append(mCurContext).append("] newContext [").append(mtvappplaybackcontext).append("]. Cannot Capture Frame ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting captFrame()");
        return flag;
    }

    public boolean create(MtvAppPlaybackContext mtvappplaybackcontext, Context context, int i)
    {
        boolean flag = false;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered create()");
        context.startService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"));
        if(mCurContext == null)
        {
            if(mtvappplaybackcontext != null)
            {
                if(mtvappplaybackcontext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE)
                {
                    if(mPendingParam != null)
                    {
                        setPendingOperation(false, 0, 0, 0, mtvappplaybackcontext, context, null);
                        if(mtvappplaybackcontext.getComponents() != null)
                        {
                            if(mtvappplaybackcontext.getComponents().getAudio() != null)
                            {
                                mtvappplaybackcontext.getComponents().getAudio().setControlInterface(MtvOneSegFactory.getAudioControl());
                                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Enabling Audio Comp");
                                mtvappplaybackcontext.getComponents().getAudio().enable();
                            }
                            if(mtvappplaybackcontext.getComponents().getVideo() != null)
                            {
                                mtvappplaybackcontext.getComponents().getVideo().setControlInterface(MtvOneSegFactory.getVideoControl());
                                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Enabling Video Comp");
                                mtvappplaybackcontext.getComponents().getVideo().enable();
                            }
                            if(mtvappplaybackcontext.getComponents().getBml() != null)
                                mtvappplaybackcontext.getComponents().getBml().setControlInterface(MtvOneSegFactory.getBMLViewControl());
                        }
                        boolean flag1 = sendPlayerThreadMsg(20481, i, 0, null);
                        flag = flag1;
                        if(flag1)
                        {
                            mtvappplaybackcontext.getState().triggerNotification(20481, 24577, 0);
                            flag = flag1;
                        }
                    } else
                    {
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Cannot Set Params required to start CREATE Operation.. Failure in Create() ");
                    }
                } else
                {
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(mtvappplaybackcontext.getState().getState()).append("]. Cannot create playback session").toString());
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Context. Cannot create playback session");
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "******Valid Context Before Create!!!. Cannot create playback session******");
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting create()");
        return flag;
    }

    public void delete(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered delete()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && i == 20480)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "No Sessions Going on... Invoking Delete !");
                boolean flag1 = sendPlayerThreadMsg(20495, 0, 0, null);
                flag = flag1;
                if(flag1)
                {
                    mtvappplaybackcontext.getState().triggerNotification(20495, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                if(i != 20480)
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Current Session is in the middle. Cannot issue Close Immediately ! ");
                if(mPendingParam.mPendingCmd != 20495)
                {
                    flag = handleNewCommand(20495, 0, 0, mtvappplaybackcontext, null, null);
                } else
                {
                    flag = true;
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Since one Delete is already set as pending command ignoring further  Delelte commands");
                }
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Mismatch in context curContext [").append(mCurContext).append(" newContext [").append(mtvappplaybackcontext).append("]. Cannot delete playback session").toString());
        }
        if(!flag)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Invalid State in Delete():: Trying to exit gracefully after that its your fate !!");
            setContextParams(20480, 20495, 24581, 0, true);
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting delete()");
    }

    public boolean deleteAllAffililiationAreas(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            if(mCurContext.getState().getOp() == 20480)
                flag = sendPlayerThreadMsg(20493, 5, 0, null);
            return flag;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid context = ").append(mtvappplaybackcontext).append("cannot post message to playeroneseg thread").toString());
            return false;
        }
    }

    public boolean deleteAllTvLink(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            if(mCurContext.getState().getOp() == 20480)
                flag = sendPlayerThreadMsg(20493, 4, 0, null);
            return flag;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid context = ").append(mtvappplaybackcontext).append("cannot post message to playeroneseg thread").toString());
            return false;
        }
    }

    public boolean deleteBroadCasterArea(MtvAppPlaybackContext mtvappplaybackcontext, int i, int j)
    {
        boolean flag = false;
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext) && i != -1 && j != -1)
        {
            if(mCurContext.getState().getOp() == 20480)
            {
                mtvappplaybackcontext = new MtvOneSegTVLink();
                mtvappplaybackcontext.origNWID = j;
                flag = sendPlayerThreadMsg(20493, 6, i, mtvappplaybackcontext);
            }
            return flag;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid context = ").append(mtvappplaybackcontext).append("cannot post message to playeroneseg thread").toString());
            return false;
        }
    }

    public boolean deleteTVFile(MtvAppPlaybackContext mtvappplaybackcontext, int i)
    {
        boolean flag = false;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered deleteTVFile()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
            flag = sendPlayerThreadMsg(16, i, 0, null);
        else
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Input Parameters pbContext [").append(mtvappplaybackcontext).append("] mCurrentContext [").append(mCurContext).append("]").toString());
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting deleteTVFile()");
        return flag;
    }

    public boolean deleteTvLink(MtvAppPlaybackContext mtvappplaybackcontext, int i)
    {
        boolean flag = false;
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext) && i != -1)
        {
            if(mCurContext.getState().getOp() == 20480)
                flag = sendPlayerThreadMsg(20493, 3, i, null);
            return flag;
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid context = ").append(mtvappplaybackcontext).append("Invalid Index ").append(i).toString());
            return false;
        }
    }

    public long getPlaybackTime(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        long l1 = -1L;
        long l = l1;
        if(mtvappplaybackcontext != null)
        {
            l = l1;
            if(mtvappplaybackcontext.equals(mCurContext))
            {
                l = l1;
                if(mtvappplaybackcontext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LOCALTV)
                    l = mOneSegServ.getPlayBackTime();
            }
        }
        return l;
    }

    public void onServiceNotify(int i, int j, int k, Object obj)
    {
        if(mCurContext.getState().getOp() == 20495 && i != 118)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("DELETE started Ignoring Callback from backend, command [").append(i).append("], status [").append(j).append("]").toString());
            return;
        } else
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Callback from backend, command [").append(i).append("], status [").append(j).append("]").toString());
            sendPlayerThreadMsg(i, j, k, obj);
            return;
        }
    }

    public boolean open(MtvAppPlaybackContext mtvappplaybackcontext, MtvURI mtvuri)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered open()");
        if(mtvappplaybackcontext != null && mtvuri != null && mCurContext != null)
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(mtvappplaybackcontext.getComponents().getBml() != null)
                mtvappplaybackcontext.getComponents().getBml().setControlInterface(MtvOneSegFactory.getBMLViewControl());
            if(mtvappplaybackcontext.equals(mCurContext))
            {
                if(state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && i == 20480)
                {
                    if(mPendingParam != null)
                    {
                        setPendingOperation(false, 0, 0, 0, mCurContext, mPendingParam.mAppContext, mtvuri);
                        boolean flag1 = sendPlayerThreadMsg(20482, 0, 0, null);
                        flag = flag1;
                        if(flag1)
                        {
                            mtvappplaybackcontext.getState().triggerNotification(20482, 24577, 0);
                            flag = flag1;
                        }
                    } else
                    {
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Cannot Set params required to start OPEN Operation -- Failure in open() ");
                    }
                } else
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session is going on curState [").append(state1).append("] curCmd [").append(i).append("] -- Checking whether the new command [OPEN] [newChnl: ").append(mtvuri.chnlNum()).append("]  [new fileIndex: ").append(mtvuri.fileIndex()).append("] can be serviced or not").toString());
                    flag = handleNewCommand(20482, 0, 0, mtvappplaybackcontext, mtvuri, mPendingParam.mAppContext);
                }
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session is going on curState [").append(state1).append("] curCmd [").append(i).append("] -- Checking whether the new command [OPEN] [newChnl: ").append(mtvuri.chnlNum()).append("]  [new fileIndex: ").append(mtvuri.fileIndex()).append("] can be serviced or not").toString());
                flag = handleNewCommand(20482, 0, 0, mtvappplaybackcontext, mtvuri, null);
            }
        } else
        if(mtvappplaybackcontext == null)
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Context - null. Cannot start playback session");
        else
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid openURI - null. Cannot start playback session");
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting open()");
        return flag;
    }

    public boolean open(MtvAppPlaybackContext mtvappplaybackcontext, MtvURI mtvuri, Context context)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered open()");
        if(mtvappplaybackcontext != null && mtvuri != null && context != null && mCurContext != null)
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(mCurContext.equals(mtvappplaybackcontext))
            {
                if((state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED || state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED) && i == 20480)
                {
                    if(mPendingParam != null)
                    {
                        setPendingOperation(false, 0, 0, 0, mCurContext, context, mtvuri);
                        boolean flag1 = sendPlayerThreadMsg(20482, 0, 0, null);
                        flag = flag1;
                        if(flag1)
                        {
                            mtvappplaybackcontext.getState().triggerNotification(20482, 24577, 0);
                            flag = flag1;
                        }
                    } else
                    {
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Cannot Set params required to start OPEN Operation -- Failure in open() ");
                    }
                } else
                {
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(state1).append("]. Cannot open playback session").toString());
                }
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session is going on curState [").append(state1).append("] curCmd [").append(i).append("] -- Checking whether the new command [OPEN] [newChnl: ").append(mtvuri.chnlNum()).append("]  [new fileIndex: ").append(mtvuri.fileIndex()).append("] can be serviced or not").toString());
                flag = handleNewCommand(20482, 0, 0, mtvappplaybackcontext, mtvuri, context);
            }
        } else
        if(mtvappplaybackcontext == null)
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Context - null. Cannot start playback session");
        else
        if(mtvuri == null)
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid openURI - null. Cannot start playback session");
        else
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid bmlCB - null. Cannot start playback session");
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting open()");
        return flag;
    }

    public boolean pause(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered pause()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && i == 20480)
            {
                boolean flag1 = sendPlayerThreadMsg(20489, 0, 0, null);
                flag = flag1;
                if(flag1)
                {
                    mCurContext.getState().triggerNotification(20489, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(mtvappplaybackcontext).append("] curCommand [").append(i).append("]. Failure in pause()").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters pbContext = [").append(mtvappplaybackcontext).append("] curContext = [").append(mCurContext).append("]. Failure in pause() ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Exiting pause() : ").append(flag).toString());
        return flag;
    }

    public boolean reposition(MtvAppPlaybackContext mtvappplaybackcontext, int i)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Entered reposition() rePositionTimeStamp [").append(i).append("]").toString());
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int j = mCurContext.getState().getOp();
            if(mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && j == 20480)
            {
                boolean flag1 = sendPlayerThreadMsg(20492, i, 0, null);
                flag = flag1;
                if(flag1)
                {
                    mCurContext.getState().triggerNotification(20492, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(mtvappplaybackcontext).append("] currentCommand [").append(j).append("]. Failure in reposition() ").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters pbContext = [").append(mtvappplaybackcontext).append("] curContext = [").append(mCurContext).append("]. Failure in reposition() ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting reposition()");
        return flag;
    }

    public boolean resume(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered resume()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED && i == 20480)
            {
                boolean flag1 = sendPlayerThreadMsg(20490, 0, 0, null);
                flag = flag1;
                if(flag1)
                {
                    mCurContext.getState().triggerNotification(20490, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(mtvappplaybackcontext).append("] curCommand [").append(i).append("]. Failure in resume()").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters pbContext = [").append(mtvappplaybackcontext).append("] curContext = [").append(mCurContext).append("]. Failure in pause() ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting resume()");
        return flag;
    }

    public boolean scanChannels(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered scanChannels()");
        if(mtvappplaybackcontext != null && !mtvappplaybackcontext.equals(mCurContext))
        {
            com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && i == 20480)
            {
                boolean flag1 = handleNewCommand(20485, 0, 0, mtvappplaybackcontext, null, null);
                flag = flag1;
                if(flag1)
                {
                    mtvappplaybackcontext.getState().triggerNotification(20485, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session is going on curState [").append(state1).append("], curCmd [").append(i).append("] -- Checking whether the new command [SCAN] can be serviced or not").toString());
                handleNewCommand(20485, 0, 0, mtvappplaybackcontext, null, null);
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("No Change in Context {curContext = [").append(mCurContext).append("] newContext = ").append(mtvappplaybackcontext).append("] }. Cannot issue SCAN, Failure in scanChannels()").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting scanChannels()");
        return flag;
    }

    public void screwupCleanup()
    {
        boolean flag = false;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered screwupCleanup()");
        if(mCurContext != null)
        {
            if(mOneSegServ != null)
                flag = mOneSegServ.screwupCleanup();
            if(!flag)
            {
                resetApp();
            } else
            {
                int i = 0;
                do
                {
                    try
                    {
                        Thread.sleep(100L);
                    }
                    catch(InterruptedException interruptedexception)
                    {
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Sleeping failure in screwupCleanup");
                    }
                    i++;
                } while(i < 5 && mCurContext != null);
            }
            if(mCurContext != null)
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "screwupCleanup : Context still not null");
                resetApp();
            }
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting screwupCleanup().. Hope DTV will be able to recover now!!");
    }

    public boolean startRecord(MtvAppPlaybackContext mtvappplaybackcontext, String s, int i, boolean flag)
    {
        boolean flag2 = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered startRecord()");
        if(mtvappplaybackcontext != null && s != null)
        {
            if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
            {
                com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = mCurContext.getState().getState();
                int j = mCurContext.getState().getOp();
                if((state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED) && j == 20480)
                {
                    boolean flag1;
                    if(flag)
                        flag1 = sendPlayerThreadMsg(20487, 4, i, s);
                    else
                        flag1 = sendPlayerThreadMsg(20487, 1, i, s);
                    flag2 = flag1;
                    if(flag1)
                    {
                        flag2 = flag1;
                        if(!flag)
                        {
                            mtvappplaybackcontext.getState().triggerNotification(20487, 24577, 0);
                            flag2 = flag1;
                        }
                    }
                } else
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Already one session is going on curState [").append(state1).append("] curCmd [").append(j).append("] -- Cannot Start Recording").toString());
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Mismatch in context curContext [").append(mCurContext).append("] newContext [").append(mtvappplaybackcontext).append("]. Cannot Start Recording ").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Input parameters pbContext [").append(mtvappplaybackcontext).append("] recURI [").append(s).append("] availMemSize [").append(i).append("]. Cannot Start Recording").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting startRecord()");
        return flag2;
    }

    public boolean startTVLink(MtvAppPlaybackContext mtvappplaybackcontext, MtvOneSegTVLink mtvonesegtvlink, Context context)
    {
        boolean flag = false;
        context = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered startTVLink()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext) && mtvonesegtvlink != null)
        {
            context = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(mtvappplaybackcontext.getComponents().getBml() != null)
                mtvappplaybackcontext.getComponents().getBml().setControlInterface(MtvOneSegFactory.getBMLViewControl());
            if(context == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && i == 20480)
            {
                boolean flag1 = sendPlayerThreadMsg(20493, 1, 0, mtvonesegtvlink);
                flag = flag1;
                if(flag1)
                {
                    mCurContext.getState().triggerNotification(20493, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(context).append("] currentCommand [").append(i).append("]. Failure in startTVLink() ").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters pbContext = [").append(mtvappplaybackcontext).append("] curContext = [").append(mCurContext).append("] tvLinkURI = [").append(mtvonesegtvlink).append("]. Failure in startTVLink() ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting startTVLink()");
        return flag;
    }

    public boolean stopRecord(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered stopRecord()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if((mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED) && i == 20487)
                flag = sendPlayerThreadMsg(20487, 3, 0, null);
            else
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Recording is not going on curState [").append(mtvappplaybackcontext).append("] curCmd [").append(i).append("] -- Cannot Stop Recording").toString());
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Mismatch in context curContext [").append(mCurContext).append("] newContext [").append(mtvappplaybackcontext).append("]. Cannot Stop Recording ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting stopRecord()");
        return flag;
    }

    public boolean stopTVLink(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered stopTVLink()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int i = mCurContext.getState().getOp();
            if(mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && i == 20493)
                flag = sendPlayerThreadMsg(20493, 2, 0, null);
            else
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(mtvappplaybackcontext).append("] currentCommand [").append(i).append("]. Failure in stopTVLink() ").toString());
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters pbContext = [").append(mtvappplaybackcontext).append("] curContext = [").append(mCurContext).append("]. Failure in stopTVLink() ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting stopTVLink()");
        return flag;
    }

    public boolean trickmode(MtvAppPlaybackContext mtvappplaybackcontext, int i, int j, int k)
    {
        boolean flag = false;
        com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Entered trickmode()");
        if(mtvappplaybackcontext != null && mtvappplaybackcontext.equals(mCurContext))
        {
            mtvappplaybackcontext = mCurContext.getState().getState();
            int l = mCurContext.getState().getOp();
            if(mtvappplaybackcontext == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING && (l == 20480 || l == 20491))
            {
                boolean flag1 = sendPlayerThreadMsg(20491, i, j, Integer.valueOf(k));
                flag = flag1;
                if(flag1)
                {
                    mCurContext.getState().triggerNotification(20491, 24577, 0);
                    flag = flag1;
                }
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid State [").append(mtvappplaybackcontext).append("] currentCommand [").append(l).append("]. Failure in trickmode() ").toString());
            }
        } else
        {
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters pbContext = [").append(mtvappplaybackcontext).append("] curContext = [").append(mCurContext).append("]. Failure in trickmode() ").toString());
        }
        MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Exiting trickmode()");
        return flag;
    }

    private static final int CHNL_FAILURE_DELAY = 5000;
    private static final int CHNL_RETRY_CANCEL = 17;
    private static final int CHNL_RETRY_CNT = 5;
    private static final int CHNL_RETRY_DELAY = 5000;
    private static final int DEL_TV_FILE = 16;
    private static final int REC_CANCEL = 2;
    private static final int REC_CONTINUED = 4;
    private static final int REC_START = 1;
    private static final int REC_STOP = 3;
    private static final int SEEK_PAUSE_DONE = 1;
    private static final int SEEK_RESUME_DONE = 256;
    private static final int SEEK_SEEK_DONE = 16;
    private static final int SEEK_SEEK_PROGRESS = 4096;
    private static final int SEEK_STARTED = 0;
    private static final int SIGNAL_LOW_CNT = 3;
    private static final int SIGNAL_UPDATE_FREQ = 4000;
    private static final String TAG = "MtvAppPlayerOneSeg";
    private static final int TVLINK_AFFIL_DEL = 5;
    private static final int TVLINK_BROADCAST_AREA_DEL = 6;
    public static final int TVLINK_DEL = 3;
    private static final int TVLINK_DEL_ALL = 4;
    private static final int TVLINK_START = 1;
    private static final int TVLINK_STOP = 2;
    private static final int WAIT_BEFORE_NOSIGANL = 10000;
    private static MtvAppPlaybackContext mCurContext = null;
    private static int mLowSigCnt = 0;
    private static MtvOneSegService mOneSegServ = null;
    private static boolean mOpStatus = false;
    private static volatile MtvAppPlayerPendingParams mPendingParam = null;
    private static MtvAppPlayerOneSeg mPlayer = null;
    private static int mRetryCnt = 0;
    private static MtvAppPlayerSeekParams mSeekParam = null;
    private Handler mPlayerHdlr;
    private final android.os.Handler.Callback mPlayerHdlrCB = new android.os.Handler.Callback() {

        public boolean handleMessage(Message message)
        {
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Command[").append(message.what).append("] in thread").toString());
            if(MtvAppPlayerOneSeg.mPendingParam != null && message.what == MtvAppPlayerOneSeg.mPendingParam.mPendingCmd)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Resetting  command status and pending cmd ");
                MtvAppPlayerOneSeg.mPendingParam.mCmdStatus = 0;
                MtvAppPlayerOneSeg.mPendingParam.mPendingCmd = 0;
            }
            if(MtvAppPlayerOneSeg.mCurContext == null)
                if(MtvAppPlayerOneSeg.mPendingParam != null)
                {
                    MtvAppPlayerOneSeg.mCurContext = MtvAppPlayerOneSeg.mPendingParam.mNewContext;
                    MtvAppPlaybackContextManager.getInstance().setCurrentContext(MtvAppPlayerOneSeg.mCurContext);
                } else
                {
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Problem in receiving message, cannot set context:: Cannont continue operation");
                }
            if(MtvAppPlayerOneSeg.mCurContext == null) goto _L2; else goto _L1
_L1:
            message.what;
            JVM INSTR lookupswitch 38: default 428
        //                       16: 2614
        //                       17: 2586
        //                       101: 2634
        //                       102: 2714
        //                       103: 3788
        //                       105: 3975
        //                       106: 4042
        //                       107: 4229
        //                       108: 4438
        //                       109: 5350
        //                       110: 5370
        //                       111: 5428
        //                       112: 5666
        //                       113: 4487
        //                       114: 3122
        //                       115: 5813
        //                       116: 5879
        //                       117: 5947
        //                       118: 5994
        //                       119: 6030
        //                       120: 6086
        //                       121: 6142
        //                       122: 6192
        //                       127: 3377
        //                       128: 3717
        //                       20481: 472
        //                       20482: 626
        //                       20485: 1315
        //                       20486: 1425
        //                       20487: 1082
        //                       20488: 1021
        //                       20489: 1545
        //                       20490: 1649
        //                       20491: 1753
        //                       20492: 1923
        //                       20493: 2075
        //                       20494: 2437
        //                       20495: 2497;
               goto _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41
_L3:
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Unknown Command [").append(message.what).append("] Ignoring...").toString());
_L66:
            return true;
_L29:
            boolean flag1 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Create Operation Started");
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20481);
            if(getPendingOpStatus())
            {
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20481, 24577, 0);
                setPendingOpStatus(false);
            }
            MtvAppPlayerOneSeg.mOneSegServ = MtvOneSegFactory.getService();
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
            {
                MtvAppPlayerOneSeg.mOneSegServ.unregisterListener(MtvAppPlayerOneSeg.this);
                boolean flag8 = MtvAppPlayerOneSeg.mOneSegServ.registerListener(MtvAppPlayerOneSeg.this);
                flag1 = flag8;
                if(flag8)
                {
                    flag1 = flag8;
                    if(MtvAppPlayerOneSeg.mPendingParam != null)
                        flag1 = MtvAppPlayerOneSeg.mOneSegServ.create(MtvAppPlayerOneSeg.mPendingParam.mAppContext, message.arg1);
                }
            }
            if(!flag1)
                setContextParams(20480, 20481, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L30:
            boolean flag2 = false;
            message = MtvAppPlayerOneSeg.mPendingParam;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Open Operation Started ChnlNum [").append(((MtvAppPlayerPendingParams) (message)).mNewURI.chnlNum()).append("] fileIndex [").append(((MtvAppPlayerPendingParams) (message)).mNewURI.fileIndex()).append("]").toString());
            if(MtvAppPlayerOneSeg.mCurContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED && MtvAppPlayerOneSeg.mCurContext.getState().getOp() == 20487)
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Already Background Recording is going on... Not Setting Current operation as open in here !");
            else
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20482);
            if(getPendingOpStatus())
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Posting OPEN_START to UiPlayer ");
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20482, 24577, 0);
                setPendingOpStatus(false);
            }
            if(MtvAppPlayerOneSeg.mOneSegServ != null && message != null)
            {
                int i = ((MtvAppPlayerPendingParams) (message)).mNewURI.pbType();
                if(i == 2 || i == 4)
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "As it is live/testmode, starting SignalQty Runnable ");
                    handleSignalUpdate(true);
                } else
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "As it is local ,pde, removing SignalQty Runnable ");
                    handleSignalUpdate(false);
                }
                handleOpenFailure(true);
                if(MtvAppPlayerOneSeg.mCurContext.getComponents() != null)
                {
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "Enabling Captions ");
                    if(MtvAppPlayerOneSeg.mCurContext.getComponents().getCaption() != null)
                    {
                        MtvAppPlayerOneSeg.mCurContext.getComponents().getCaption().setControlInterface(MtvOneSegFactory.getCaptionControl());
                        MtvAppPlayerOneSeg.mCurContext.getComponents().getCaption().enable();
                    }
                }
                if(i == 2 || i == 4 || i == 6)
                {
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setCurrentOpenedChannel(((MtvAppPlayerPendingParams) (message)).mNewURI.chnlNum());
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setCurrentOpenedChannelServiceId(((MtvAppPlayerPendingParams) (message)).mNewURI.serviceID());
                }
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Calling OneSegService.Open() ");
                flag2 = MtvAppPlayerOneSeg.mOneSegServ.open(((MtvAppPlayerPendingParams) (message)).mNewURI);
            } else
            if(message == null)
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "OpenURI is not set -- Cannot start playback session");
            else
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Handler: OneSegServiceHdl - null. Cannot start playback session");
            if(!flag2)
                setContextParams(20480, 20482, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L34:
            boolean flag3 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "CAPTURE Operation Started");
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20488);
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
                flag3 = MtvAppPlayerOneSeg.mOneSegServ.captureFrame();
            if(!flag3)
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20488, 24580, 0);
            continue; /* Loop/switch isn't completed */
_L33:
            boolean flag4;
            flag4 = false;
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20487);
            if(MtvAppPlayerOneSeg.mOneSegServ == null) goto _L43; else goto _L42
_L42:
            message.arg1;
            JVM INSTR tableswitch 1 4: default 1136
        //                       1 1206
        //                       2 1236
        //                       3 1255
        //                       4 1274;
               goto _L44 _L45 _L46 _L47 _L48
_L44:
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("] with REC Command. Cannot service it").toString());
_L49:
            if(!flag4)
            {
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20487, 24580, 0);
            }
            continue; /* Loop/switch isn't completed */
_L45:
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "startRecord() Operation Started");
            flag4 = MtvAppPlayerOneSeg.mOneSegServ.startRecord((String)message.obj, message.arg2);
            continue; /* Loop/switch isn't completed */
_L46:
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "cancelRecord() Operation Started");
            flag4 = MtvAppPlayerOneSeg.mOneSegServ.cancelRecord();
            continue; /* Loop/switch isn't completed */
_L47:
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "stopRecord() Operation Started");
            flag4 = MtvAppPlayerOneSeg.mOneSegServ.stopRecord();
            continue; /* Loop/switch isn't completed */
_L48:
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Continuation of BG recording in Live");
            MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20487, 24578, 0);
            flag4 = true;
            continue; /* Loop/switch isn't completed */
_L43:
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Service Handle. Cannot Continue Recording");
            if(true) goto _L49; else goto _L31
_L31:
            flag4 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "SCAN Operation Started");
            MtvAppPlayerOneSeg.mCurContext.getState().setState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED);
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20485);
            if(getPendingOpStatus())
            {
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20485, 24577, 0);
                setPendingOpStatus(false);
            }
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
                flag4 = MtvAppPlayerOneSeg.mOneSegServ.scanChannels();
            if(!flag4)
                setContextParams(20480, 20485, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L32:
            flag4 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("CANCEL SCAN Operation Started LastSetScanned Chnl [").append(MtvAppPlayerOneSeg.mCurContext.getAttribute().getLastScannedChannel()).append("]").toString());
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20486);
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
                flag4 = MtvAppPlayerOneSeg.mOneSegServ.cancelScanChannels();
            if(!flag4)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "cancel scan failure reset context");
                MtvAppPlayerOneSeg.mCurContext.getAttribute().reset();
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20486, 24580, 0);
            }
            continue; /* Loop/switch isn't completed */
_L35:
            flag4 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Pause Operation Started");
            if(MtvAppPlayerOneSeg.mPendingParam != null)
            {
                if(MtvAppPlayerOneSeg.mPendingParam.mNewURI.pbType() != 5)
                {
                    MtvAppPlayerOneSeg.mCurContext.getState().setOp(20489);
                    if(MtvAppPlayerOneSeg.mOneSegServ != null)
                        flag4 = MtvAppPlayerOneSeg.mOneSegServ.pause();
                } else
                {
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Invalid Playback Type - PTYPE_IMAGE Cannot Pause !");
                }
            } else
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "mPendingParam is null!");
            }
            if(!flag4)
                setContextParams(20480, 20489, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L36:
            flag4 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Resume Operation Started");
            if(MtvAppPlayerOneSeg.mPendingParam != null)
            {
                if(MtvAppPlayerOneSeg.mPendingParam.mNewURI.pbType() != 5)
                {
                    MtvAppPlayerOneSeg.mCurContext.getState().setOp(20490);
                    if(MtvAppPlayerOneSeg.mOneSegServ != null)
                        flag4 = MtvAppPlayerOneSeg.mOneSegServ.resume();
                } else
                {
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Invalid Playback Type - PTYPE_IMAGE Cannot Resume !");
                }
            } else
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "mPendingParam is null!");
            }
            if(!flag4)
                setContextParams(20480, 20490, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L37:
            flag4 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "TrcikMode Operation Started");
            if(MtvAppPlayerOneSeg.mPendingParam != null)
            {
                if(MtvAppPlayerOneSeg.mPendingParam.mNewURI.pbType() != 5)
                {
                    MtvAppPlayerOneSeg.mCurContext.getState().setOp(20491);
                    if(MtvAppPlayerOneSeg.mSeekParam == null)
                        MtvAppPlayerOneSeg.mSeekParam = new MtvAppPlayerSeekParams();
                    MtvAppPlayerOneSeg.mSeekParam.mTrickMode = message.arg1;
                    MtvAppPlayerOneSeg.mSeekParam.mTrickSpeed = message.arg2;
                    int j = ((Integer)message.obj).intValue();
                    flag4 = MtvAppPlayerOneSeg.mOneSegServ.trickmodePlay(MtvAppPlayerOneSeg.mSeekParam.mTrickMode, MtvAppPlayerOneSeg.mSeekParam.mTrickSpeed, j);
                } else
                {
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Invalid Playback Type - PTYPE_IMAGE Cannot Trick !");
                }
            } else
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "mPendingParam is null!");
            }
            if(!flag4)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Failure in trickMode !");
                setContextParams(20480, 20491, 24580, 0, true);
            }
            continue; /* Loop/switch isn't completed */
_L38:
            flag4 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Reposition Operation Started repositionTimeStamp [").append(message.arg1).append("]").toString());
            if(MtvAppPlayerOneSeg.mPendingParam != null)
            {
                if(MtvAppPlayerOneSeg.mPendingParam.mNewURI.pbType() != 5)
                {
                    MtvAppPlayerOneSeg.mCurContext.getState().setOp(20492);
                    MtvAppPlayerOneSeg.mSeekParam = new MtvAppPlayerSeekParams();
                    MtvAppPlayerOneSeg.mSeekParam.mCurTimeStamp = message.arg1;
                    flag4 = MtvAppPlayerOneSeg.mOneSegServ.repositionPlay(MtvAppPlayerOneSeg.mSeekParam.mCurTimeStamp);
                } else
                {
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Invalid Playback Type - PTYPE_IMAGE Cannot Reposition !");
                }
            } else
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "mPendingParam is null!");
            }
            if(!flag4)
                setContextParams(20480, 20492, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L39:
            boolean flag9;
            flag9 = false;
            flag4 = flag9;
            if(MtvAppPlayerOneSeg.mOneSegServ == null) goto _L51; else goto _L50
_L50:
            message.arg1;
            JVM INSTR tableswitch 1 6: default 2132
        //                       1 2196
        //                       2 2234
        //                       3 2245
        //                       4 2298
        //                       5 2327
        //                       6 2356;
               goto _L52 _L53 _L54 _L55 _L56 _L57 _L58
_L52:
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid command [").append(message.arg1).append("] in TVLink Operation. Failure in TVLInk Operation()").toString());
            flag4 = flag9;
_L51:
            if(!flag4)
                setContextParams(20480, 20493, 24580, 0, true);
            continue; /* Loop/switch isn't completed */
_L53:
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "TVLink Operation Started ");
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20493);
            flag4 = MtvAppPlayerOneSeg.mOneSegServ.startTVLink((MtvOneSegTVLink)message.obj);
            continue; /* Loop/switch isn't completed */
_L54:
            flag4 = MtvAppPlayerOneSeg.mOneSegServ.stopTVLink();
            continue; /* Loop/switch isn't completed */
_L55:
            flag4 = flag9;
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("TVLink - delete Operation Started for index = ").append(message.arg2).toString());
                flag4 = MtvAppPlayerOneSeg.mOneSegServ.deleteTvLink(message.arg2);
            }
            continue; /* Loop/switch isn't completed */
_L56:
            flag4 = flag9;
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "TVLink - Deleteing all tvlinks ");
                flag4 = MtvAppPlayerOneSeg.mOneSegServ.deleteAllTvLink();
            }
            continue; /* Loop/switch isn't completed */
_L57:
            flag4 = flag9;
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "TVLink - Deleteing all affiliation areas ");
                flag4 = MtvAppPlayerOneSeg.mOneSegServ.deleteAllAffililiationAreas();
            }
            continue; /* Loop/switch isn't completed */
_L58:
            MtvOneSegTVLink mtvonesegtvlink = (MtvOneSegTVLink)message.obj;
            flag4 = flag9;
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("TVLink - Deleteing broadcast area with affiliation id = ").append(message.arg2).append("original net id = ").append(mtvonesegtvlink.origNWID).toString());
                flag4 = MtvAppPlayerOneSeg.mOneSegServ.deleteBroadCasterArea(message.arg2, mtvonesegtvlink.origNWID);
            }
            if(true) goto _L51; else goto _L40
_L40:
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Close Operation Started");
            MtvAppPlayerOneSeg.mCurContext.getComponents().getCaption().reset();
            MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24589, 0);
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20494);
            handleClose(true);
            continue; /* Loop/switch isn't completed */
_L41:
            boolean flag5 = false;
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Delete Operation Started");
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
            {
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20495);
                flag5 = MtvAppPlayerOneSeg.mOneSegServ.delete();
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "OneSegService instance is null !");
            }
            if(!flag5)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Failure in deleting Playback Session ! Posting DELETE success and Stopping RemoteService !");
                setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE, 20495, 24581, 0, true);
                resetApp();
            }
            continue; /* Loop/switch isn't completed */
_L5:
            handleRetryChnlSearch(false);
            handlePendingCommand(MtvAppPlayerOneSeg.mCurContext.getState().getOp());
            continue; /* Loop/switch isn't completed */
_L4:
            if(MtvAppPlayerOneSeg.mOneSegServ != null)
                MtvAppPlayerOneSeg.mOneSegServ.deleteTVFile(message.arg1);
            continue; /* Loop/switch isn't completed */
_L6:
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully created the playback session");
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED, 20481, 24581, 0, true);
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Failure in creating the playback session ");
                setContextParams(20480, 20481, 24580, 0, true);
            }
            continue; /* Loop/switch isn't completed */
_L7:
            boolean flag6 = false;
            handleOpenFailure(false);
            if(message.arg1 == 201)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Current open command success ! Checking if any pendng command needs to be processed !");
                flag6 = handlePendingCommand(20482);
            } else
            if(message.arg1 == 203)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Current open command failed ! Checking if any pendng command needs to be processed !");
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                flag6 = handlePendingCommand(20480);
            }
            if(!flag6)
                switch(message.arg1)
                {
                case 202: 
                default:
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("With OPEN command from backend.. Verify the commands once again!").toString());
                    break;

                case 201: 
                    handleRetryChnlSearch(false);
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully opened the playback session ");
                    setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED, 20482, 24581, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED.ordinal(), true);
                    if(message.obj != null)
                        MtvAppPlayerOneSeg.mCurContext.getAttribute().setChannel((android.broadcast.helper.types.MtvOneSegChannel[])(android.broadcast.helper.types.MtvOneSegChannel[])message.obj);
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "Play Operation Started");
                    if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() == 20482)
                        setContextParams(20480, 20484, 24577, 0, true);
                    else
                    if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() == 20487)
                        MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20484, 24577, 0);
                    break;

                case 204: 
                case 205: 
                case 206: 
                    handleBuffering(20482, message.arg1, message.arg2);
                    break;

                case 203: 
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "Failure in opening the playback session ");
                    if(MtvAppPlayerOneSeg.mPendingParam != null && (MtvAppPlayerOneSeg.mPendingParam.mNewURI.pbType() == 2 || MtvAppPlayerOneSeg.mPendingParam.mNewURI.pbType() == 4))
                        handleRetryChnlSearch(true);
                    else
                        setContextParams(20480, 20482, 24580, 0, true);
                    break;
                }
            continue; /* Loop/switch isn't completed */
_L18:
            if(message.arg1 == 215)
                setContextParams(20480, 20484, 24593, 0, true);
            else
            if(true)
            {
                switch(message.arg1)
                {
                case 202: 
                case 207: 
                case 208: 
                case 209: 
                case 210: 
                case 211: 
                case 212: 
                case 213: 
                default:
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("With PLAY command from backend.. Verify the commands once again!").toString());
                    break;

                case 201: 
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully started the playback session ");
                    setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING, 20484, 24581, 0, true);
                    break;

                case 204: 
                case 205: 
                case 206: 
                    handleBuffering(20484, message.arg1, message.arg2);
                    break;

                case 214: 
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", "End of file reached");
                    setContextParams(20480, 20484, 24592, 0, true);
                    break;

                case 203: 
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Failure in starting the playback session ");
                    setContextParams(20480, 20484, 24580, 0, true);
                    break;
                }
                if(false)
                    ;
            }
            continue; /* Loop/switch isn't completed */
_L27:
            boolean flag7 = false;
            if(message.arg1 == 201)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Current open command success ! Checking if any pendng command needs to be processed !");
                flag7 = handlePendingCommand(20482);
            } else
            if(message.arg1 == 222)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Current open command failed ! Checking if any pendng command needs to be processed !");
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                flag7 = handlePendingCommand(20480);
            }
            if(flag7)
                continue; /* Loop/switch isn't completed */
            switch(message.arg1)
            {
            default:
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Unrecognized Command ").append(message.arg1).toString());
                break;

            case 201: 
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully opened the Recorder session ");
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED, 20482, 24581, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED.ordinal(), true);
                break;

            case 222: 
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Failure in opening the Recorder session ");
                setContextParams(20480, 20482, 24580, 0, true);
                break;

            case 221: 
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "REC_OPEN NIT recieved ");
                if(message.obj instanceof String)
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setCurrentChannelName((String)message.obj);
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20482, 24601, -1);
                break;

            case 220: 
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "REC_OPEN EIT recieved ");
                if(message.obj instanceof String)
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setCurrentProgramName((String)message.obj);
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20482, 24600, -1);
                break;
            }
            if(false)
                ;
            continue; /* Loop/switch isn't completed */
_L28:
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully closed  the Recorder session ");
                if(MtvAppPlayerOneSeg.mCurContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.RECORDER_OPENED)
                    handleClose(false);
                else
                if(MtvAppPlayerOneSeg.mCurContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED)
                    MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Ignoring Recorder Module close success command as player module is also in open state !");
            }
            continue; /* Loop/switch isn't completed */
_L8:
            char c;
            char c9;
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("CMD_REC_START status:").append(message.arg1).toString());
            c9 = '\u6002';
            c = '\u6011';
            message.arg1;
            JVM INSTR lookupswitch 5: default 3880
        //                       201: 3897
        //                       203: 3921
        //                       216: 3944
        //                       217: 3955
        //                       222: 3966;
               goto _L59 _L60 _L61 _L62 _L63 _L64
_L59:
            MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20487, c9, c);
            continue; /* Loop/switch isn't completed */
_L60:
            MtvAppPlayerOneSeg.mCurContext.getComponents().getVideo().setCaptFrameName((String)message.obj);
            c = '\0';
            continue; /* Loop/switch isn't completed */
_L61:
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
            c9 = '\u6004';
            c = '\u6011';
            continue; /* Loop/switch isn't completed */
_L62:
            c9 = '\u6004';
            c = '\u6012';
            continue; /* Loop/switch isn't completed */
_L63:
            c9 = '\u6004';
            c = '\u6013';
            continue; /* Loop/switch isn't completed */
_L64:
            c9 = '\u600C';
            c = '\0';
            if(true) goto _L59; else goto _L9
_L9:
            char c1 = '\u6004';
            if(message.arg1 == 201)
                c1 = '\u6005';
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
            MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20487, c1, message.arg2);
            handlePendingCommand(MtvAppPlayerOneSeg.mCurContext.getState().getOp());
            continue; /* Loop/switch isn't completed */
_L10:
            int k = MtvAppPlayerOneSeg.mCurContext.getState().getOp();
            MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Got the captured frame");
            if(k == 20488)
            {
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
                if(message.arg1 == 201)
                {
                    MtvAppPlayerOneSeg.mCurContext.getComponents().getVideo().setCaptFrame((Bitmap)message.obj);
                    MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(k, 24581, 0);
                } else
                {
                    MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(k, 24580, 0);
                }
            } else
            if(k == 20487)
            {
                if(message.arg1 == 201)
                {
                    MtvAppPlayerOneSeg.mCurContext.getComponents().getVideo().setCaptFrame((Bitmap)message.obj);
                    MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(k, 24596, 0);
                }
            } else
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid curCmd [").append(k).append("]. CaptureFrame CB Cannot be handled!").toString());
            }
            continue; /* Loop/switch isn't completed */
_L11:
            if(!handlePendingCommand(20485) && MtvAppPlayerOneSeg.mCurContext.getState().getOp() == 20485)
            {
                switch(message.arg1)
                {
                default:
                    MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("With SCAN command from backend.. Verify the commands once again!").toString());
                    break;

                case 202: 
                    char c2 = '\u6016';
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setLastScannedChannel(message.arg2);
                    if(message.obj != null)
                    {
                        MtvAppPlayerOneSeg.mCurContext.getAttribute().setChannel((android.broadcast.helper.types.MtvOneSegChannel[])(android.broadcast.helper.types.MtvOneSegChannel[])message.obj);
                        c2 = '\u6015';
                    }
                    MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20485, c2, message.arg2);
                    break;

                case 201: 
                case 203: 
                    char c3 = '\u6004';
                    if(message.arg1 == 201)
                        c3 = '\u6005';
                    setContextParams(20480, 20485, c3, 0, true);
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().reset();
                    break;
                }
                if(false)
                    ;
            }
            continue; /* Loop/switch isn't completed */
_L12:
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Got CANCEL_SCAN from Service");
            setContextParams(20480, 20486, 24581, 0, true);
            MtvAppPlayerOneSeg.mCurContext.getAttribute().reset();
            handlePendingCommand(20480);
            continue; /* Loop/switch isn't completed */
_L17:
            switch(message.arg1)
            {
            case 214: 
            case 215: 
            case 216: 
            case 217: 
            case 219: 
            case 220: 
            case 221: 
            case 224: 
            case 225: 
            case 226: 
            case 227: 
            case 228: 
            case 229: 
            case 230: 
            case 231: 
            default:
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("] with STATUS_UPDT from Service. Dont know, what to do!?").toString());
                break;

            case 208: 
                if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() != 20494)
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setProgram((android.broadcast.helper.types.MtvOneSegProgram[])(android.broadcast.helper.types.MtvOneSegProgram[])message.obj);
                break;

            case 232: 
                if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() != 20494)
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setChannel((android.broadcast.helper.types.MtvOneSegChannel[])(android.broadcast.helper.types.MtvOneSegChannel[])message.obj);
                break;

            case 223: 
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24602, 0);
                break;

            case 209: 
                if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() != 20494)
                    MtvAppPlayerOneSeg.mCurContext.getAttribute().setTot(((Long)message.obj).longValue());
                break;

            case 210: 
                int l = 0;
                if(MtvOneSegService.MTV_SERVICE_NO_SIGNAL == message.arg2 || message.obj != null)
                {
                    if(message.obj != null)
                    {
                        message = (MtvOneSegSignal)message.obj;
                        MtvAppPlayerOneSeg.mCurContext.getAttribute().setSignalStatistics(message);
                        if(message != null)
                            l = message.getSignalQuality();
                        MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Current SignalQuality [").append(l).append("]").toString());
                        MtvAppPlayerOneSeg.mCurContext.getAttribute().setSignalLevel(l);
                        if(MtvAppPlayerOneSeg.mLowSigCnt == 3)
                        {
                            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Low- Signal:: Go to good signal area else TV will be stopped immediately!!!");
                            MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24588, 0);
                            handleSignalUpdate(false);
                        } else
                        {
                            handleSignalUpdate(true);
                        }
                    } else
                    {
                        MtvAppPlayerOneSeg.mCurContext.getAttribute().setSignalLevel(0);
                        if(MtvAppPlayerOneSeg.mLowSigCnt == 3)
                        {
                            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Low- Signal:: Go to good signal area else TV will be stopped immediately!!!");
                            boolean flag = false;
                            int i1 = ((flag) ? 1 : 0);
                            if(MtvAppPlayerOneSeg.mPendingParam != null)
                            {
                                i1 = ((flag) ? 1 : 0);
                                if(MtvAppPlayerOneSeg.mPendingParam.mNewURI != null)
                                    i1 = MtvAppPlayerOneSeg.mPendingParam.mNewURI.chnlNum();
                            }
                            MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24588, i1);
                            handleSignalUpdate(false);
                        } else
                        {
                            handleSignalUpdate(true);
                        }
                    }
                } else
                if(MtvAppPlayerOneSeg.mPendingParam.mPendingCmd == 0)
                {
                    if(message.arg2 == 2)
                    {
                        MtvAppPlayerOneSeg.mCurContext.getAttribute().setSignalLevel(0);
                        handleLowSignal(true);
                    } else
                    {
                        handleLowSignal(false);
                    }
                } else
                {
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("As there are pending commands [").append(MtvAppPlayerOneSeg.mPendingParam.mPendingCmd).append("] to be serviced, ignoring LOW_SIGNAL from Player").toString());
                }
                break;

            case 222: 
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "LOW SIGNAL  event !");
                int j1 = -1;
                if(MtvAppPlayerOneSeg.mPendingParam.mNewURI != null)
                    j1 = MtvAppPlayerOneSeg.mPendingParam.mNewURI.chnlNum();
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24588, j1);
                break;

            case 211: 
                int k1 = MtvAppPlayerOneSeg.mCurContext.getState().getOp();
                if(k1 != 20494 && k1 != 20491 && k1 != 20492)
                {
                    MtvAppPlayerOneSeg.mCurContext.getComponents().getCaption().setBuffer((SpannableStringBuilder)message.obj);
                    MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24589, 0);
                }
                break;

            case 212: 
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Time Update:: New time is [").append(message.arg2).append("]").toString());
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24590, message.arg2);
                break;

            case 213: 
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24591, 0);
                break;

            case 218: 
                char c4 = '\u6004';
                if(message.arg2 == 201)
                    c4 = '\u6003';
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24599, c4);
                break;

            case 207: 
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24585, 0);
                break;
            }
            continue; /* Loop/switch isn't completed */
_L13:
            handleLocalPlayback(1, message.arg1, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PAUSED, 0);
            continue; /* Loop/switch isn't completed */
_L14:
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Resume SUCCESS from Service: New time is: [").append(message.arg2).append("]").toString());
            handleLocalPlayback(256, message.arg1, com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING, message.arg2);
            continue; /* Loop/switch isn't completed */
_L15:
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Trickmode SUCCESS from Service: New time is: [").append(message.obj).append("]").toString());
                if(MtvAppPlayerOneSeg.mSeekParam != null)
                {
                    MtvAppPlayerOneSeg.mSeekParam.mTrickMode = 0;
                    MtvAppPlayerOneSeg.mSeekParam.mTrickSpeed = 0;
                }
                setContextParams(20480, 20491, 24581, ((Integer)message.obj).intValue(), true);
            } else
            if(message.arg1 == 202)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Trickmode Progress from Service: New time is: [").append(message.obj).append("]").toString());
                if(MtvAppPlayerOneSeg.mSeekParam == null)
                    MtvAppPlayerOneSeg.mSeekParam = new MtvAppPlayerSeekParams();
                MtvAppPlayerOneSeg.mSeekParam.mSeekedTimeStamp = ((Integer)message.obj).intValue();
                setContextParams(20480, 20491, 24578, MtvAppPlayerOneSeg.mSeekParam.mSeekedTimeStamp, true);
            } else
            if(message.arg1 == 214)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Got Trickmode  End of file reached");
                setContextParams(20480, 20484, 24592, 0, true);
            }
            continue; /* Loop/switch isn't completed */
_L16:
            MtvUtilDebug.High("MtvAppPlayerOneSeg", (new StringBuilder()).append("Got Reposition SUCCESS from Service: New time is: [").append(message.obj).append("]").toString());
            char c5 = '\u6004';
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "SEEK - SEEK Done");
                char c10 = '\u6005';
                c5 = c10;
                if(MtvAppPlayerOneSeg.mSeekParam != null)
                {
                    MtvAppPlayerOneSeg.mSeekParam.mSeekedTimeStamp = ((Integer)message.obj).intValue();
                    c5 = c10;
                }
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Failure in [112] session. resuming the playback");
                MtvAppPlayerOneSeg.mSeekParam.mSeekFail = true;
            }
            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
            if(MtvAppPlayerOneSeg.mSeekParam != null)
                setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING, 20492, c5, MtvAppPlayerOneSeg.mSeekParam.mSeekedTimeStamp, true);
            continue; /* Loop/switch isn't completed */
_L19:
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Got CMD_TVLINK_START SUCCESS from Service:");
                MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20493, 24578, 0);
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Got CMD_TVLINK_START FAILURE!!! from Service:");
                setContextParams(20480, 20493, 24580, 0, true);
            }
            continue; /* Loop/switch isn't completed */
_L20:
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_STOP:TVLink Operation Completed ");
                setContextParams(20480, 20493, 24581, 0, true);
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_STOP FAILURE!!!! ");
                setContextParams(20480, 20493, 24580, 0, true);
            }
            continue; /* Loop/switch isn't completed */
_L21:
            handleClose(false);
            if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() == 20494)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "As the current command is CMD_CLOSE, resetting the cur cmd to NONE - Else other commands will never be serviced");
                MtvAppPlayerOneSeg.mCurContext.getState().setOp(20480);
            }
            continue; /* Loop/switch isn't completed */
_L22:
            MtvUtilDebug.High("MtvAppPlayerOneSeg", "Successfully deleted the playback session ");
            setContextState(com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE, 20495, 24581, 0, true);
            resetApp();
            continue; /* Loop/switch isn't completed */
_L23:
            char c6 = '\u6004';
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_DEL Operation Completed ");
                c6 = '\u6005';
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_DEL FAILURE!!!! ");
            }
            setContextParams(20480, 20493, c6, 3, true);
            continue; /* Loop/switch isn't completed */
_L24:
            char c7 = '\u6004';
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_DEL Operation Completed ");
                c7 = '\u6005';
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_DEL_ALL FAILURE!!!! ");
            }
            setContextParams(20480, 20493, c7, 4, true);
            continue; /* Loop/switch isn't completed */
_L25:
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_DEL Operation Completed ");
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_AFFI_DEL FAILURE!!!! ");
                setContextParams(20480, 20493, 24580, 5, true);
            }
            continue; /* Loop/switch isn't completed */
_L26:
            char c8 = '\u6004';
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_DEL Operation Completed ");
                c8 = '\u6005';
            } else
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "CMD_TVLINK_BROADCAST_AREA_DEL FAILURE!!!! ");
            }
            setContextParams(20480, 20493, c8, 6, true);
            continue; /* Loop/switch isn't completed */
_L2:
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "******Invalid Context. Cannot Handle commands in PlayerThread******");
            if(true) goto _L66; else goto _L65
_L65:
        }

        final MtvAppPlayerOneSeg this$0;

            
            {
                this$0 = MtvAppPlayerOneSeg.this;
                super();
            }
    }
;
    private final Runnable mRetryChnlSearch = new Runnable() {

        public void run()
        {
            if(MtvAppPlayerOneSeg.mCurContext != null && MtvAppPlayerOneSeg.mCurContext.getState().getState() == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && MtvAppPlayerOneSeg.mPendingParam != null && MtvAppPlayerOneSeg.mPendingParam.mPendingCmd == 0)
            {
                MtvUtilDebug.Low("MtvAppPlayerOneSeg", "Posting OPEN from Retry Runnable ");
                sendPlayerThreadMsg(20482, 0, 0, MtvAppPlayerOneSeg.mPendingParam.mNewURI);
                return;
            } else
            {
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("Invalid Parameters mCurContext [").append(MtvAppPlayerOneSeg.mCurContext).append(" ] mPendingParam [").append(MtvAppPlayerOneSeg.mPendingParam).append("] Cannot retry channel search").toString());
                return;
            }
        }

        final MtvAppPlayerOneSeg this$0;

            
            {
                this$0 = MtvAppPlayerOneSeg.this;
                super();
            }
    }
;
    private final Runnable mRunnableLowSignal = new Runnable() {

        public void run()
        {
            if(mPlayerHdlr != null && MtvAppPlayerOneSeg.mCurContext != null)
            {
                MtvUtilDebug.High("MtvAppPlayerOneSeg", "Low- Signal:: Go to good signal area else TV will be stopped immediately!!!");
                if(MtvAppPlayerOneSeg.mCurContext.getType() == com.samsung.sec.mtv.app.context.MtvAppPlaybackContext.Type.LIVETV)
                {
                    if(MtvAppPlayerOneSeg.mPendingParam != null && MtvAppPlayerOneSeg.mPendingParam.mNewURI != null)
                        MtvAppPlayerOneSeg.mCurContext.getState().triggerNotification(20483, 24588, MtvAppPlayerOneSeg.mPendingParam.mNewURI.chnlNum());
                    else
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid Pending Parameters.. May be nobody interested in receiving the notification !!");
                } else
                {
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Live is not going on! How come low-signal now -- Anyways ignore it!!");
                }
                handleLowSignal(false);
            }
        }

        final MtvAppPlayerOneSeg this$0;

            
            {
                this$0 = MtvAppPlayerOneSeg.this;
                super();
            }
    }
;
    private final Runnable mRunnablePostOpenFailure = new Runnable() {

        public void run()
        {
label0:
            {
                com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
                boolean flag = false;
                MtvUtilDebug.Error("MtvAppPlayerOneSeg", "mRunnablePostOpenFailure enetred");
                if(mPlayerHdlr != null && MtvAppPlayerOneSeg.mCurContext != null)
                {
                    com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = MtvAppPlayerOneSeg.mCurContext.getState().getState();
                    int i = MtvAppPlayerOneSeg.mCurContext.getState().getOp();
                    MtvUtilDebug.Error("MtvAppPlayerOneSeg", (new StringBuilder()).append("mRunnablePostOpenFailure enetred  curState :").append(state1).append("  curCommand  :").append(i).toString());
                    if(state1 == com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && i == 20482)
                    {
                        MtvUtilDebug.High("MtvAppPlayerOneSeg", "Sending OPEN_FAILURE since we didn't recieve any CB for CMD_OPEN");
                        sendPlayerThreadMsg(102, 203, 0, null);
                        if(MtvAppPlayerOneSeg.mOneSegServ != null)
                        {
                            MtvAppPlayerOneSeg.mCurContext.getState().setOp(20494);
                            flag = MtvAppPlayerOneSeg.mOneSegServ.close();
                        }
                        if(!flag)
                            break label0;
                        MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Close called successfully from mRunnablePostOpenFailure");
                    }
                }
                return;
            }
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "mRunnablePostOpenFailure Service Close got failed :");
        }

        final MtvAppPlayerOneSeg this$0;

            
            {
                this$0 = MtvAppPlayerOneSeg.this;
                super();
            }
    }
;
    private final Runnable mRunnableUpdateSignal = new Runnable() {

        public void run()
        {
label0:
            {
                com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state = com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.NONE;
                if(mPlayerHdlr != null && MtvAppPlayerOneSeg.mCurContext != null)
                {
                    com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State state1 = MtvAppPlayerOneSeg.mCurContext.getState().getState();
                    int i = MtvAppPlayerOneSeg.mCurContext.getState().getOp();
                    if(state1 != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.INITIALIZED && state1 != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.OPENED && state1 != com.samsung.sec.mtv.app.context.MtvAppPlaybackState.State.PLAYING || i == 20494 || i == 20495)
                        break label0;
                    if(MtvAppPlayerOneSeg.mCurContext.getState().getOp() != 20485)
                        MtvAppPlayerOneSeg.mOneSegServ.getSignalStatistics();
                }
                return;
            }
            MtvUtilDebug.Error("MtvAppPlayerOneSeg", "Invalid State, not extracting signal quality!");
        }

        final MtvAppPlayerOneSeg this$0;

            
            {
                this$0 = MtvAppPlayerOneSeg.this;
                super();
            }
    }
;







/*
    static MtvAppPlayerSeekParams access$1402(MtvAppPlayerSeekParams mtvappplayerseekparams)
    {
        mSeekParam = mtvappplayerseekparams;
        return mtvappplayerseekparams;
    }

*/















/*
    static MtvAppPlaybackContext access$502(MtvAppPlaybackContext mtvappplaybackcontext)
    {
        mCurContext = mtvappplaybackcontext;
        return mtvappplaybackcontext;
    }

*/





/*
    static MtvOneSegService access$902(MtvOneSegService mtvonesegservice)
    {
        mOneSegServ = mtvonesegservice;
        return mtvonesegservice;
    }

*/
}
