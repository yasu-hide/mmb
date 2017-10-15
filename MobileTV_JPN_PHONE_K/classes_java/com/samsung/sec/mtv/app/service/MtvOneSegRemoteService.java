// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.samsung.sec.mtv.app.service;

import android.app.NotificationManager;
import android.app.Service;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import android.broadcast.sdtv.SDtvControl;
import android.broadcast.sdtv.SDtvRecEngineControl;
import android.content.Context;
import android.content.Intent;
import android.os.*;
import java.util.ArrayList;

public class MtvOneSegRemoteService extends Service
{
    private class DtvRemoteDeatRecipient
        implements android.os.IBinder.DeathRecipient
    {

        public void binderDied()
        {
            MtvUtilDebug.Error("MtvOneSegRemoteService", "client :: binderDied");
            if(MtvOneSegRemoteService.mIsBackGroundRecordingOn)
            {
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Background Recording was going on...Cancelling Record!");
                MtvOneSegRemoteService.mIsBackGroundRecordingOn = false;
                SDtvRecEngineControl.getInstance().cancelRecord();
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Powering off tuner now as BG recorder has died!");
                MtvOneSegRemoteService.sendUrgentSVCThreadMessage(125, 0, 0, null);
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Calling RecClose to turn off tuner!");
                recClose();
            }
        }

        private Messenger mClientMessenger;
        final MtvOneSegRemoteService this$0;

        protected DtvRemoteDeatRecipient(Messenger messenger)
        {
            this$0 = MtvOneSegRemoteService.this;
            super();
            mClientMessenger = null;
            mClientMessenger = messenger;
            MtvUtilDebug.Low("MtvOneSegRemoteService", (new StringBuilder()).append("mClientMessenger is.... ").append(mClientMessenger).toString());
        }
    }

    class IncomingHandler extends Handler
    {

        public void handleMessage(Message message)
        {
            MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("Got Message [").append(message.what).append("] in Incoming Handler").toString());
            message.what;
            JVM INSTR lookupswitch 23: default 232
        //                       101: 320
        //                       102: 423
        //                       103: 1043
        //                       104: 1094
        //                       105: 1124
        //                       106: 879
        //                       107: 718
        //                       108: 747
        //                       109: 575
        //                       110: 637
        //                       111: 666
        //                       112: 604
        //                       114: 532
        //                       117: 810
        //                       118: 850
        //                       123: 269
        //                       124: 282
        //                       127: 917
        //                       128: 1013
        //                       306: 776
        //                       311: 832
        //                       312: 909
        //                       319: 238;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24
_L1:
            super.handleMessage(message);
_L26:
            return;
_L24:
            if(message.arg1 < android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.values().length)
            {
                MtvOneSegRemoteService.setOneSegSvcState(android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.values()[message.arg1]);
                return;
            } else
            {
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Error Setting the State ! Unknow State Value !");
                return;
            }
_L17:
            MtvOneSegRemoteService.sendSVCThreadMessage(123, 0, 0, message.replyTo);
            return;
_L18:
            mClients.remove(message.replyTo);
            if(mClients.size() == 0)
            {
                MtvOneSegRemoteService.sendSVCThreadMessage(125, 0, 0, null);
                return;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            MtvUtilDebug.Low("MtvOneSegRemoteService", "Got CMD_CREATE from client...");
            if(!MtvOneSegRemoteService.mIsStartCommandDone)
            {
                MtvOneSegRemoteService.loadJNI();
                MtvOneSegRemoteService.mOpInfo = new MtvOneSegServiceSetCmdInfo();
                message = new HandlerThread("OneSegRemoteService");
                message.start();
                MtvUtilDebug.Low("MtvOneSegRemoteService", "Starting the thread");
                MtvOneSegRemoteService.mOneSegSvcHdlr = new Handler(message.getLooper(), mOneSegSvcHdlrCB);
                MtvUtilDebug.High("MtvOneSegRemoteService", "Successfully Instantiated Constrcutor");
                MtvOneSegRemoteService.sendSVCThreadMessage(101, 1, 0, null);
                MtvOneSegRemoteService.mIsStartCommandDone = true;
                return;
            } else
            {
                MtvOneSegRemoteService.sendSVCThreadMessage(125, 1, 1, null);
                return;
            }
_L3:
            boolean flag = false;
            message = getUriFromBundle((Bundle)message.obj);
            if(message != null)
            {
                if(message.pbType() == 2 || message.pbType() == 1 || message.pbType() == 4)
                    flag = open(message);
                else
                if(message.pbType() == 6)
                    flag = recOpen(message);
            } else
            {
                MtvUtilDebug.Error("MtvOneSegRemoteService", "mMtvUril is null !");
            }
            if(!flag)
            {
                sendMessageToClients(Message.obtain(null, 302, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L14:
            if(!start(getChannelFromBundle((Bundle)message.obj)))
            {
                sendMessageToClients(Message.obtain(null, 114, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L10:
            if(!pause())
            {
                sendMessageToClients(Message.obtain(null, 109, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L13:
            if(!reposition(message.arg1))
            {
                sendMessageToClients(Message.obtain(null, 112, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L11:
            if(!resume())
            {
                sendMessageToClients(Message.obtain(null, 110, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L12:
            int i = ((Bundle)message.obj).getInt("TRICK_CURR_TIME", 0);
            if(!trickPlay(message.arg1, message.arg2, i))
            {
                sendMessageToClients(Message.obtain(null, 111, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L8:
            if(!scanChannels())
            {
                sendMessageToClients(Message.obtain(null, 107, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L9:
            if(!cancelScanChannels())
            {
                sendMessageToClients(Message.obtain(null, 108, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L21:
            if(!deleteTVFile(message.arg1))
            {
                sendMessageToClients(Message.obtain(null, 306, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L15:
            if(!close(message.arg1))
            {
                MtvUtilDebug.High("MtvOneSegRemoteService", "Remote service CLOSE FAILED...NOW WHAT TO DO???");
                return;
            }
            continue; /* Loop/switch isn't completed */
_L22:
            if(!screwupCleanup())
            {
                MtvUtilDebug.High("MtvOneSegRemoteService", "ScrewupCleanup Also FAILED...NOW WHAT TO DO???");
                return;
            }
            continue; /* Loop/switch isn't completed */
_L16:
            if(!delete())
            {
                sendMessageToClients(Message.obtain(null, 118, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L7:
            if(!captureFrame())
            {
                sendMessageToClients(Message.obtain(null, 320, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L23:
            getSignalStats();
            return;
_L19:
            MtvURI mtvuri = getUriFromBundle((Bundle)message.obj);
            if(mtvuri != null)
                MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("PB type = ").append(mtvuri.pbType()).append(" && Chnlnum = ").append(mtvuri.chnlNum()).toString());
            if(!recOpen(message.obj))
            {
                sendMessageToClients(Message.obtain(null, 321, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L20:
            if(!recClose())
            {
                sendMessageToClients(Message.obtain(null, 322, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L4:
            String s = ((Bundle)message.obj).getString("MTV_REC_CMD_DATA", null);
            if(!startRecord(s, message.arg1))
            {
                sendMessageToClients(Message.obtain(null, 303, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L5:
            if(!cancelRecord())
            {
                sendMessageToClients(Message.obtain(null, 304, 203, 0, null));
                return;
            }
            continue; /* Loop/switch isn't completed */
_L6:
            if(!stopRecord())
            {
                sendMessageToClients(Message.obtain(null, 305, 203, 0, null));
                return;
            }
            if(true) goto _L26; else goto _L25
_L25:
        }

        final MtvOneSegRemoteService this$0;

        IncomingHandler()
        {
            this$0 = MtvOneSegRemoteService.this;
            super();
        }
    }

    private static class MtvOneSegServiceSetCmdInfo
    {

        private int mCurCmd;
        private boolean mCurCmdError;
        private int mCurCmdStatus;
        private int mCurMdl;
        private int mNextCmd;



/*
        static boolean access$1002(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, boolean flag)
        {
            mtvonesegservicesetcmdinfo.mCurCmdError = flag;
            return flag;
        }

*/



/*
        static int access$1102(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mCurCmd = i;
            return i;
        }

*/



/*
        static int access$1202(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mCurCmdStatus = i;
            return i;
        }

*/


/*
        static int access$1502(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mCurMdl = i;
            return i;
        }

*/


/*
        static int access$1576(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            i = mtvonesegservicesetcmdinfo.mCurMdl | i;
            mtvonesegservicesetcmdinfo.mCurMdl = i;
            return i;
        }

*/



/*
        static int access$1602(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mNextCmd = i;
            return i;
        }

*/

        private MtvOneSegServiceSetCmdInfo()
        {
            mCurCmd = 0;
            mCurCmdStatus = 0;
            mCurMdl = 0;
            mNextCmd = 0;
            mCurCmdError = false;
        }

    }


    public MtvOneSegRemoteService()
    {
        mClients = new ArrayList();
        mRunnableFakeClose = new Runnable() {

            public void run()
            {
                android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate = MtvOneSegRemoteService.getOneSegSvcState();
                MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("RunnableFakeClose() is Fired -- Verifying anything needs to be closed. Current State = [").append(onesegsvcstate).append("]").toString());
                if(onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.OPEN || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.START || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.PAUSE)
                {
                    MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("Looks Like Close is Still going on !! mCurMdls = [").append(MtvOneSegRemoteService.mOneSegSvcClose).append("]").toString());
                    if(MtvOneSegRemoteService.mOneSegSvcClose != 0 && MtvOneSegRemoteService.mOneSegSvcClose != 273)
                    {
                        MtvOneSegRemoteService.mOneSegSvcClose = 273;
                        handleClose(MtvOneSegRemoteService.mOneSegSvcClose);
                    }
                    return;
                } else
                {
                    MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("] Ignoring Close Handling").toString());
                    return;
                }
            }

            final MtvOneSegRemoteService this$0;

            
            {
                this$0 = MtvOneSegRemoteService.this;
                super();
            }
        }
;
        mOneSegScanRunnable = new Runnable() ;
    }

    private void closeService(int i)
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", (new StringBuilder()).append("Entered Remote closeService() ").append(getOneSegSvcState()).toString());
        if(getOneSegSvcState() != android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.REC_OPEN && i != android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.REC_OPEN.ordinal()) goto _L2; else goto _L1
_L1:
        SDtvRecEngineControl.getInstance().closeBGRecord();
_L4:
        setIsLocalPlay(false);
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Exiting closeService() ");
        return;
_L2:
        if(SDtvControl.getInstance() != null)
        {
            MtvUtilDebug.Low("MtvOneSegRemoteService", "Calling SDtvControl.close()");
            SDtvControl.getInstance().close();
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private boolean createService(Context context)
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered createService() ");
        if(SDtvControl.getInstance() != null)
        {
            MtvUtilDebug.Low("MtvOneSegRemoteService", "Successfully Instantiated SDtvControl only...");
            if(SDtvControl.getInstance().create(mOneSegSvcHdlr))
                MtvUtilDebug.Low("MtvOneSegRemoteService", "Successfully created SDtvControl() ");
        }
        boolean flag = SDtvRecEngineControl.getInstance().create(mOneSegSvcHdlr);
        if(flag)
            MtvUtilDebug.Low("MtvOneSegRemoteService", "Successfully created SDtvRecEngineControl() ");
        if(flag)
            MtvUtilDebug.High("MtvOneSegRemoteService", "Successfully Created Playback Service ");
        else
            deleteService();
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Exiting createService() ");
        return flag;
    }

    private void deleteService()
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered deleteService() ");
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Resetting global data ");
        isJNILoaded = false;
        if(SDtvControl.getInstance() != null)
        {
            SDtvControl.getInstance().delete();
            MtvUtilDebug.Low("MtvOneSegRemoteService", "Deleted SDtvControl() ");
        }
        SDtvRecEngineControl.getInstance().delete();
        MtvUtilDebug.High("MtvOneSegRemoteService", "Successfully deleted Playback Service ");
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Exiting deleteService() ");
    }

    public static android.broadcast.oneseg.MtvOneSegService.OneSegSvcState getOneSegSvcState()
    {
        return mOneSegSvcState;
    }

    private MtvOneSegSignal getSignalInfo()
    {
        MtvOneSegSignal mtvonesegsignal1 = new MtvOneSegSignal();
        MtvOneSegSignal mtvonesegsignal = mtvonesegsignal1;
        if(mtvonesegsignal1 != null)
        {
            mtvonesegsignal = mtvonesegsignal1;
            if(!SDtvControl.getInstance().getSigStats(mtvonesegsignal1))
            {
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Failure in retrieving Signal Statistics ");
                mtvonesegsignal = null;
            }
        }
        return mtvonesegsignal;
    }

    private void handleClose(int i)
    {
label0:
        {
            if(i == 273)
            {
                mOneSegSvcHdlr.removeCallbacks(mRunnableFakeClose);
                mOneSegSvcClose = 0;
                if(mOpInfo == null || !mOpInfo.mCurCmdError)
                    break label0;
                sendMessageToClients(Message.obtain(null, mOpInfo.mCurCmd, mOpInfo.mCurCmdStatus, 0, null));
                setOpStatus(0, 0, 0, 0, false);
            }
            return;
        }
        setOneSegSvcState(android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE);
        MtvUtilDebug.High("MtvOneSegRemoteService", "Successfully Closed Service ");
        sendMessageToClients(Message.obtain(null, 117, 201, 0, null));
    }

    private void handleScanChannels()
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "handleScanChannels");
        if(mScanChnlIndex <= 52 && SDtvControl.getInstance() != null)
            if(SDtvControl.getInstance().scanChannel(mScanChnlIndex))
            {
                mOneSegSvcHdlr.postDelayed(mOneSegScanRunnable, 10000L);
            } else
            {
                sendMessageToClients(Message.obtain(null, 307, 202, mScanChnlIndex, null));
                mScanChnlIndex++;
                sendSVCThreadMessage(107, 2, 0, null);
            }
        if(mScanChnlIndex > 52)
            resetScan();
    }

    public static boolean isLocalPlay()
    {
        return mLocalPlay;
    }

    private static void loadJNI()
    {
        if(!isJNILoaded)
        {
            System.loadLibrary("broadcastForOneSeg_jni");
            isJNILoaded = true;
            return;
        } else
        {
            MtvUtilDebug.Error("MtvOneSegRemoteService", "JNI is already loaded, not loading again");
            return;
        }
    }

    private boolean pause()
    {
        return sendSVCThreadMessage(109, 0, 0, null);
    }

    private boolean reposition(int i)
    {
        return sendSVCThreadMessage(112, i, 0, null);
    }

    private void resetScan()
    {
        mOneSegSvcHdlr.removeCallbacks(mOneSegScanRunnable);
        mOneSegSvcHdlr.removeMessages(107);
        mScanChnlIndex = 13;
        if(SDtvControl.getInstance() != null)
            SDtvControl.getInstance().close();
    }

    private void resetService()
    {
        setIsLocalPlay(false);
        for(int i = mClients.size() - 1; i >= 0; i--)
            mClients.remove(i);

        isJNILoaded = false;
        setOpStatus(0, 0, 0, 0, false);
        mOpInfo = null;
        mOneSegSvcHdlr = null;
        mIsStartCommandDone = false;
        mIsBackGroundRecordingOn = false;
    }

    private boolean resume()
    {
        return sendSVCThreadMessage(110, 0, 0, null);
    }

    public static boolean sendSVCThreadMessage(int i, int j, int k, Object obj)
    {
label0:
        {
            boolean flag = false;
            if(mOneSegSvcHdlr != null)
            {
                if(j != 1294)
                    break label0;
                flag = mOneSegSvcHdlr.sendMessageAtFrontOfQueue(mOneSegSvcHdlr.obtainMessage(i, j, k, obj));
            }
            return flag;
        }
        return mOneSegSvcHdlr.sendMessage(mOneSegSvcHdlr.obtainMessage(i, j, k, obj));
    }

    public static boolean sendUrgentSVCThreadMessage(int i, int j, int k, Object obj)
    {
        boolean flag = false;
        if(mOneSegSvcHdlr != null)
            flag = mOneSegSvcHdlr.sendMessageAtFrontOfQueue(mOneSegSvcHdlr.obtainMessage(i, j, k, obj));
        return flag;
    }

    public static void setIsLocalPlay(boolean flag)
    {
        mLocalPlay = flag;
        SDtvControl.getInstance().setIsLocalPlay(flag);
    }

    public static void setOneSegSvcState(android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate)
    {
        mOneSegSvcState = onesegsvcstate;
        SDtvControl.setSvcState(mOneSegSvcState);
        SDtvRecEngineControl.setSvcState(mOneSegSvcState);
        MtvUtilDebug.Low("MtvOneSegRemoteService", (new StringBuilder()).append("OneSegService State :: mOneSegSvcState = ").append(mOneSegSvcState).toString());
    }

    private void setOpStatus(int i, int j, int k, int l, boolean flag)
    {
        if(mOpInfo != null)
        {
            mOpInfo.mCurCmd = i;
            mOpInfo.mCurCmdStatus = j;
            if(k <= 0)
                mOpInfo.mCurMdl = k;
            else
                i = 
// JavaClassFileOutputException: get_constant: invalid tag

    private boolean trickPlay(int i, int j, int k)
    {
        return sendSVCThreadMessage(111, i, j, Integer.valueOf(k));
    }

    public boolean cancelRecord()
    {
        return sendUrgentSVCThreadMessage(104, 0, 0, null);
    }

    public boolean cancelScanChannels()
    {
        return sendSVCThreadMessage(108, 0, 0, null);
    }

    public boolean captureFrame()
    {
        return sendSVCThreadMessage(106, 0, 0, null);
    }

    public boolean close(int i)
    {
        return sendSVCThreadMessage(117, i, 0, null);
    }

    public boolean delete()
    {
        return sendSVCThreadMessage(118, 0, 0, null);
    }

    public boolean deleteAllAffililiationAreas()
    {
        boolean flag = false;
        android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered deleteAllAffililiationAreas() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.OPEN || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.START)
            flag = sendSVCThreadMessage(121, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid State  - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegRemoteService", "exiting deleteAllAffililiationAreas() ");
        return flag;
    }

    public boolean deleteAllTvLink()
    {
        boolean flag = false;
        android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered deleteAllTvLink() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.OPEN || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.START)
            flag = sendSVCThreadMessage(120, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid State - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegRemoteService", "exiting deleteAllTvLink() ");
        return flag;
    }

    public boolean deleteBroadCasterArea(int i, int j)
    {
        boolean flag = false;
        android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered deleteBroadCasterArea() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.OPEN || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.START)
            flag = sendSVCThreadMessage(122, i, j, null);
        else
            MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid State - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegRemoteService", "exiting deleteBroadCasterArea() ");
        return flag;
    }

    public boolean deleteTVFile(int i)
    {
        return sendSVCThreadMessage(32, i, 0, null);
    }

    public boolean deleteTvLink(int i)
    {
        boolean flag = false;
        android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered deleteTvLink() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.OPEN || onesegsvcstate == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.START)
            flag = sendSVCThreadMessage(119, i, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid State - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegRemoteService", "exiting deleteTvLink() ");
        return flag;
    }

    Bundle getBundleFromChannel(MtvOneSegChannel amtvonesegchannel[])
    {
        if(amtvonesegchannel == null)
        {
            MtvUtilDebug.High("MtvOneSegRemoteService", "getBundleFromChannel: Input is null");
            return null;
        }
        Bundle bundle = new Bundle();
        MtvOneSegChannel amtvonesegchannel1[] = null;
        int i = 0;
        for(int j = 0; j < amtvonesegchannel.length;)
        {
            int l = i;
            if(amtvonesegchannel[j] != null)
                l = i + 1;
            j++;
            i = l;
        }

        if(i != 0)
        {
            MtvOneSegChannel amtvonesegchannel2[] = new MtvOneSegChannel[i];
            int k = 0;
            do
            {
                amtvonesegchannel1 = amtvonesegchannel2;
                if(k >= i)
                    break;
                if(amtvonesegchannel[k] != null)
                {
                    MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("mNewChannelWithPhysicalIDs[i] is not null with i: ").append(k).append(". ").toString());
                    amtvonesegchannel2[k] = new MtvOneSegChannel();
                    amtvonesegchannel2[k].setServID(amtvonesegchannel[k].getServID());
                    amtvonesegchannel2[k].setRemoteKeyID(amtvonesegchannel[k].getRemoteKeyID());
                    amtvonesegchannel2[k].setServiceName(amtvonesegchannel[k].getServName());
                    amtvonesegchannel2[k].setNumberOfPhysicalIDs(amtvonesegchannel[k].getNumberOfPhysicalIDs());
                    amtvonesegchannel2[k].setPhysicalID(amtvonesegchannel[k].getPhysicalID());
                    amtvonesegchannel2[k].setPhysicalIDType(amtvonesegchannel[k].getPhysicalIDType());
                    amtvonesegchannel2[k].setPhysicalIDName(amtvonesegchannel[k].getPhysicalIDName());
                    amtvonesegchannel2[k].setPhysicalIDProviderName(amtvonesegchannel[k].getPhysicalIDProviderName());
                } else
                {
                    MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("mNewChannelWithPhysicalIDs[i] is null with i: ").append(k).append(". ").toString());
                }
                k++;
            } while(true);
        }
        bundle.putParcelableArray("MTV_CHANNEL_INFO", amtvonesegchannel1);
        return bundle;
    }

    Bundle getBundleFromProgramInfo(MtvOneSegProgram amtvonesegprogram[])
    {
        Bundle bundle = new Bundle();
        int i = 0;
        MtvOneSegProgram amtvonesegprogram1[] = null;
        for(int j = 0; j < amtvonesegprogram.length;)
        {
            int l = i;
            if(amtvonesegprogram[j] != null)
                l = i + 1;
            j++;
            i = l;
        }

        if(i != 0)
        {
            MtvOneSegProgram amtvonesegprogram2[] = new MtvOneSegProgram[i];
            int k = 0;
            do
            {
                amtvonesegprogram1 = amtvonesegprogram2;
                if(k >= i)
                    break;
                if(amtvonesegprogram[k] != null)
                {
                    amtvonesegprogram2[k] = new MtvOneSegProgram();
                    amtvonesegprogram2[k].setEventID(amtvonesegprogram[k].getEventID());
                    amtvonesegprogram2[k].setServiceID(amtvonesegprogram[k].getServiceID());
                    amtvonesegprogram2[k].setProgramName(amtvonesegprogram[k].getProgName());
                    amtvonesegprogram2[k].setProgDesc(amtvonesegprogram[k].getProgDesc());
                    amtvonesegprogram2[k].setStartTime(amtvonesegprogram[k].getStartTime());
                    amtvonesegprogram2[k].setEndTime(amtvonesegprogram[k].getEndTime());
                }
                k++;
            } while(true);
        }
        bundle.putParcelableArray("MTV_PROGRAM_INFO", amtvonesegprogram1);
        return bundle;
    }

    Bundle getBundleFromStreamTime(long l)
    {
        Bundle bundle = new Bundle();
        bundle.putLong("MTV_STREAM_TIME", l);
        return bundle;
    }

    Bundle getBundleFromUri(MtvURI mtvuri)
    {
        if(mtvuri == null)
        {
            MtvUtilDebug.High("MtvOneSegRemoteService", "getBundleFromUri: Input is null");
            return null;
        }
        Bundle bundle = new Bundle();
        bundle.putInt("MTV_URI_PBTYPE", mtvuri.pbType());
        bundle.putInt("MTV_URI_CHANNEL_NUM", mtvuri.chnlNum());
        bundle.putString("MTV_URI_FILEPATH", mtvuri.filePath());
        bundle.putInt("MTV_URI_FILEINDEX", mtvuri.fileIndex());
        bundle.putInt("MTV_URI_SERVICE_ID", mtvuri.serviceID());
        bundle.putBoolean("MTV_URI_SWITCHSERVICE", mtvuri.isSwitchService());
        if(mtvuri.tvLink() != null)
        {
            bundle.putBoolean("MTV_URI_IS_TVLINK", true);
            bundle.putInt("MTV_URI_TV_LINK_ORIG_NWID", mtvuri.tvLink().origNWID);
            bundle.putInt("MTV_URI_TV_LINK_TRANS_STREAMID", mtvuri.tvLink().transStreamID);
            bundle.putInt("MTV_URI_TV_LINK_SERVID", mtvuri.tvLink().servID);
            bundle.putInt("MTV_URI_TV_LINK_COMP_TAG", mtvuri.tvLink().compTag);
            bundle.putString("MTV_URI_TV_LINK_DEST_URI", mtvuri.tvLink().destURI);
            bundle.putIntArray("MTV_URI_TV_LINK_AFFIL_ID", mtvuri.tvLink().affilID);
            return bundle;
        } else
        {
            bundle.putBoolean("MTV_URI_IS_TVLINK", false);
            return bundle;
        }
    }

    Bundle getBundlefromSigInfo(MtvOneSegSignal mtvonesegsignal)
    {
        if(mtvonesegsignal == null)
        {
            MtvUtilDebug.High("MtvOneSegRemoteService", "getBundlefromSigInfo: Input is null");
            return null;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putInt("MTV_SIGNAL_CN", mtvonesegsignal.getCN());
            bundle.putInt("MTV_SIGNAL_RSSI", mtvonesegsignal.getRSSI());
            bundle.putInt("MTV_SIGNAL_BER", mtvonesegsignal.getBER());
            bundle.putInt("MTV_SIGNAL_SIGQUALITY", mtvonesegsignal.getSignalQuality());
            return bundle;
        }
    }

    MtvOneSegChannel getChannelFromBundle(Bundle bundle)
    {
        if(bundle == null)
        {
            MtvUtilDebug.High("MtvOneSegRemoteService", "getChannelFromBundle: Input is null");
            return null;
        } else
        {
            MtvOneSegChannel mtvonesegchannel = new MtvOneSegChannel();
            mtvonesegchannel.setServID(bundle.getInt("MTV_CHANNEL_SERVICEID"));
            mtvonesegchannel.setRemoteKeyID(bundle.getInt("MTV_CHANNEL_REMOTEKEYID"));
            mtvonesegchannel.setServiceName(bundle.getString("MTV_CHANNEL_SERVICENAME"));
            return mtvonesegchannel;
        }
    }

    public MtvOneSegSignal getSignalStatistics()
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "Entered getSignalStatistics() ");
        return getSignalInfo();
    }

    public void getSignalStats()
    {
        sendSVCThreadMessage(312, 0, 0, null);
    }

    MtvURI getUriFromBundle(Bundle bundle)
    {
        if(bundle == null)
        {
            MtvUtilDebug.High("MtvOneSegRemoteService", "getUriFromBundle: Input is null");
            return null;
        }
        int i = bundle.getInt("MTV_URI_PBTYPE");
        int j = bundle.getInt("MTV_URI_SERVICE_ID");
        MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("getUriFromBundle() MTV_URI_SWITCHSERVICE = ").append(bundle.getBoolean("MTV_URI_SWITCHSERVICE")).append(" and  serviceID = ").append(j).toString());
        if(!bundle.getBoolean("MTV_URI_IS_TVLINK"))
        {
            if(i == 2 || i == 4 || i == 6)
                return new MtvURI(i, bundle.getInt("MTV_URI_CHANNEL_NUM"), j, bundle.getBoolean("MTV_URI_SWITCHSERVICE"));
            else
                return new MtvURI(i, bundle.getString("MTV_URI_FILEPATH"), bundle.getInt("MTV_URI_FILEINDEX"), j);
        } else
        {
            return new MtvURI(i, bundle.getInt("MTV_URI_TV_LINK_ORIG_NWID"), bundle.getInt("MTV_URI_TV_LINK_TRANS_STREAMID"), bundle.getInt("MTV_URI_TV_LINK_SERVID"), bundle.getInt("MTV_URI_TV_LINK_COMP_TAG"), bundle.getString("MTV_URI_TV_LINK_DEST_URI"), bundle.getIntArray("MTV_URI_TV_LINK_AFFIL_ID"));
        }
    }

    public IBinder onBind(Intent intent)
    {
        return mMessenger.getBinder();
    }

    public void onCreate()
    {
        onCreate();
        MtvUtilDebug.Low("MtvOneSegRemoteService", "OnCreate Called");
    }

    public void onDestroy()
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "OnDestroy Called");
        mIsStartCommandDone = false;
        mIsBackGroundRecordingOn = false;
        deleteService();
        resetService();
        onDestroy();
    }

    public void onLowMemory()
    {
        onLowMemory();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "OnStartCommmand Called");
        if(!mIsStartCommandDone)
        {
            loadJNI();
            mOpInfo = new MtvOneSegServiceSetCmdInfo();
            HandlerThread handlerthread = new HandlerThread("OneSegRemoteService");
            handlerthread.start();
            MtvUtilDebug.Low("MtvOneSegRemoteService", "Starting the thread");
            mOneSegSvcHdlr = new Handler(handlerthread.getLooper(), mOneSegSvcHdlrCB);
            MtvUtilDebug.High("MtvOneSegRemoteService", "Successfully Instantiated Constrcutor");
            sendSVCThreadMessage(101, 0, 0, null);
            mIsStartCommandDone = true;
        }
        if(intent != null && intent.getAction() != null && intent.getAction().equals("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE_UPDATE_DB"))
        {
            MtvUtilDebug.Low("MtvOneSegRemoteService", "OnStartCommmand Called with intent to Update the DB !");
            sendSVCThreadMessage(126, 0, 0, null);
        }
        return 1;
    }

    public void onTaskRemoved(Intent intent)
    {
        MtvUtilDebug.High("MtvOneSegRemoteService", "onTaskRemoved");
        intent = (NotificationManager)getSystemService("notification");
        if(intent != null)
            intent.cancel(0x7f0200c3);
    }

    public boolean onUnbind(Intent intent)
    {
        MtvUtilDebug.Low("MtvOneSegRemoteService", "OnUnbind Called");
        return onUnbind(intent);
    }

    public boolean open(MtvURI mtvuri)
    {
        return sendSVCThreadMessage(102, 0, 0, getBundleFromUri(mtvuri));
    }

    public boolean recClose()
    {
        return sendSVCThreadMessage(128, 0, 0, null);
    }

    public boolean recOpen(Object obj)
    {
        return sendSVCThreadMessage(127, 0, 0, obj);
    }

    public boolean scanChannels()
    {
        return sendSVCThreadMessage(107, 1, 0, null);
    }

    public boolean screwupCleanup()
    {
        deleteService();
        resetService();
        return true;
    }

    void sendMessageToClients(Message message)
    {
label0:
        {
            boolean flag = false;
            int i = mClients.size() - 1;
            do
            {
                if(i < 0)
                    break;
                try
                {
                    MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("Sending Message [").append(message.what).append("] to app").toString());
                    ((Messenger)mClients.get(i)).send(message);
                }
                catch(RemoteException remoteexception)
                {
                    MtvUtilDebug.High("MtvOneSegRemoteService", "Dead Client Detected ...");
                    mClients.remove(i);
                    flag = true;
                }
                i--;
            } while(true);
            if(flag)
            {
                if(mClients.size() != 0)
                    break label0;
                MtvUtilDebug.High("MtvOneSegRemoteService", "Powering off tuner as no clients present !");
                sendUrgentSVCThreadMessage(125, 0, 0, null);
                MtvUtilDebug.High("MtvOneSegRemoteService", "Client is dead...resetting the service...");
                closeService(getOneSegSvcState().ordinal());
                deleteService();
                resetService();
            }
            return;
        }
        MtvUtilDebug.High("MtvOneSegRemoteService", "One of the clients died...others still alive...not resetting the service...");
    }

    public boolean start(MtvOneSegChannel mtvonesegchannel)
    {
        return sendSVCThreadMessage(114, 0, 0, mtvonesegchannel);
    }

    public boolean startRecord(String s, int i)
    {
        return sendUrgentSVCThreadMessage(103, i, 0, s);
    }

    public boolean stopRecord()
    {
        return sendUrgentSVCThreadMessage(105, 0, 0, null);
    }

    public boolean tunerPowerCtrl(boolean flag)
    {
        if(flag)
            return sendSVCThreadMessage(125, 1, 0, null);
        else
            return sendSVCThreadMessage(125, 0, 0, null);
    }

    private static final int ALL_MDL_DONE = 273;
    public static final int CMD_REC_OPEN = 4381;
    private static final int CREATE_RESPONSE_REQUIRED = 1;
    private static final int DEL_TV_FILE = 32;
    private static final int DUMMY_CHNL_SCAN = 7;
    public static final int INIT_NEX_BML = 1;
    public static final int INIT_ONLY_SDTV = 0;
    private static final int MAX_CHNL = 52;
    private static final int MDL_NONE = 0;
    public static final int MSG_MTV_CMD_BASE = 4352;
    public static final int MSG_MTV_CMD_CANCEL_RECORD = 4361;
    public static final int MSG_MTV_CMD_CANCEL_SCAN_CHANNELS = 4365;
    public static final int MSG_MTV_CMD_CAPTURE_FRAME = 4363;
    public static final int MSG_MTV_CMD_CLOSE = 4373;
    public static final int MSG_MTV_CMD_CLOSE_SERVICE = 4356;
    public static final int MSG_MTV_CMD_DELETE = 4375;
    public static final int MSG_MTV_CMD_DELETE_SERVICE = 4357;
    public static final int MSG_MTV_CMD_DELETE_TV_FILE = 4366;
    public static final int MSG_MTV_CMD_GET_LOCAL_PLAY_STATUS = 4380;
    public static final int MSG_MTV_CMD_GET_PLAYER_STATUS = 4379;
    public static final int MSG_MTV_CMD_GET_SERVICE_STATE = 4378;
    public static final int MSG_MTV_CMD_GET_SIGNAL_QUALITY = 4376;
    public static final int MSG_MTV_CMD_INIT_SERVICE = 4354;
    public static final int MSG_MTV_CMD_OPEN = 4358;
    public static final int MSG_MTV_CMD_REGISTER_CLIENT = 4352;
    public static final int MSG_MTV_CMD_RESET_SERVICE = 4355;
    public static final int MSG_MTV_CMD_SCAN_CHANNELS = 4364;
    public static final int MSG_MTV_CMD_SCREWUP_CLEANUP = 4374;
    public static final int MSG_MTV_CMD_SET_SERVICE_STATE = 4377;
    public static final int MSG_MTV_CMD_START = 4359;
    public static final int MSG_MTV_CMD_START_RECORD = 4360;
    public static final int MSG_MTV_CMD_STOP_RECORD = 4362;
    public static final int MSG_MTV_CMD_UNREGISTER_CLIENT = 4353;
    public static int MTV_SERVICE_NO_SIGNAL = 0;
    private static final int SCAN_CONTINUE = 2;
    private static final int SCAN_START = 1;
    private static final int SCAN_TIMER = 10000;
    private static final String TAG = "MtvOneSegRemoteService";
    private static final int TUNER_POWER_OFF_REQUIRED = 0;
    public static final int TUNER_POWER_ON_REQUIRED = 1;
    private static boolean isJNILoaded = false;
    private static boolean mIsBackGroundRecordingOn = false;
    private static boolean mIsStartCommandDone = false;
    private static boolean mLocalPlay = false;
    private static int mOneSegSvcClose = 0;
    private static Handler mOneSegSvcHdlr = null;
    private static android.broadcast.oneseg.MtvOneSegService.OneSegSvcState mOneSegSvcState;
    private static MtvOneSegServiceSetCmdInfo mOpInfo = null;
    private static int mScanChnlIndex = 13;
    ArrayList mClients;
    final Messenger mMessenger = new Messenger(new IncomingHandler());
    private Runnable mOneSegScanRunnable;
    private final android.os.Handler.Callback mOneSegSvcHdlrCB = new android.os.Handler.Callback() {

        public boolean handleMessage(Message message)
        {
            MtvUtilDebug.Low("MtvOneSegRemoteService", (new StringBuilder()).append("Got Command[").append(message.what).append("] in thread").toString());
            message.what;
            JVM INSTR lookupswitch 37: default 344
        //                       32: 1355
        //                       101: 500
        //                       102: 642
        //                       103: 1830
        //                       104: 1882
        //                       105: 1950
        //                       106: 1448
        //                       107: 1144
        //                       108: 1314
        //                       109: 954
        //                       110: 995
        //                       111: 1081
        //                       112: 1036
        //                       114: 853
        //                       117: 1434
        //                       118: 1645
        //                       123: 378
        //                       125: 1500
        //                       126: 2468
        //                       127: 1667
        //                       128: 1784
        //                       312: 1577
        //                       1282: 2491
        //                       1283: 3897
        //                       1284: 3917
        //                       1285: 3801
        //                       1287: 1996
        //                       1288: 2257
        //                       1289: 2399
        //                       1290: 2438
        //                       1538: 3394
        //                       1539: 3346
        //                       1540: 3298
        //                       1541: 3458
        //                       1542: 3562
        //                       1549: 2926
        //                       4096: 2959;
               goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38
_L1:
            MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid Command [").append(message.what).append("]. Ignoring").toString());
_L50:
            return true;
_L18:
            message = (Messenger)message.obj;
            mClients.add(message);
            IBinder ibinder = message.getBinder();
            if(ibinder != null)
            {
                MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("myClientMessenger Binder is :: ").append(ibinder).toString());
                try
                {
                    MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("linkToDeath myClientMessenger Binder :: ").append(ibinder).toString());
                    ibinder.linkToDeath(new DtvRemoteDeatRecipient(message), 0);
                }
                // Misplaced declaration of an exception variable
                catch(Message message)
                {
                    message.printStackTrace();
                }
            } else
            {
                MtvUtilDebug.High("MtvOneSegRemoteService", "IMtvOneSegServiceListener.CMD_REGISTER_CLIENT :: myClientMessenger is NULL ");
            }
            continue; /* Loop/switch isn't completed */
_L3:
            if(message.arg2 == 0)
                if(createService((Context)message.obj))
                {
                    MtvUtilDebug.High("MtvOneSegRemoteService", "Success in CREATE -- Only SDTVControl Initialized..state is still Idle ");
                    MtvOneSegRemoteService.mIsStartCommandDone = true;
                    if(message.arg1 == 1)
                    {
                        MtvOneSegRemoteService.sendSVCThreadMessage(125, 1, 1, null);
                    } else
                    {
                        if(mClients.size() == 0)
                        {
                            MtvUtilDebug.High("MtvOneSegRemoteService", "Success in CREATE -- Turning off tuner as safety code ");
                            MtvOneSegRemoteService.sendUrgentSVCThreadMessage(125, 0, 0, null);
                        }
                        sendMessageToClients(Message.obtain(null, 301, 201, 0, null));
                    }
                } else
                {
                    MtvOneSegRemoteService.mIsStartCommandDone = false;
                    MtvUtilDebug.High("MtvOneSegRemoteService", "Failure in CREATE -- Posting CREATE_FAILURE ");
                    sendMessageToClients(Message.obtain(null, 301, 203, 0, null));
                }
            continue; /* Loop/switch isn't completed */
_L4:
            boolean flag = false;
            message = getUriFromBundle((Bundle)message.obj);
            MtvOneSegRemoteService.mIsBackGroundRecordingOn = false;
            if(message == null || SDtvControl.getInstance() == null)
                continue; /* Loop/switch isn't completed */
            int i = message.pbType();
            MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("IMtvOneSegServiceListener.CMD_OPEN -> Playback Type = ").append(message.pbType()).append(", ServiceID = ").append(message.serviceID()).append(", chNum = ").append(message.chnlNum()).toString());
            if(i == 2)
                flag = SDtvControl.getInstance().open(i, message.chnlNum(), message.filePath(), message.serviceID());
            else
            if(i == 1 || i == 4)
                flag = SDtvControl.getInstance().open(i, message.chnlNum(), message.filePath(), message.fileIndex());
            if(flag)
            {
                if(i == 1)
                    MtvOneSegRemoteService.setIsLocalPlay(true);
                else
                    MtvOneSegRemoteService.setIsLocalPlay(false);
                sendMessageToClients(Message.obtain(null, 302, 201, 0, null));
            } else
            {
                sendMessageToClients(Message.obtain(null, 302, 203, 0, null));
            }
            continue; /* Loop/switch isn't completed */
_L15:
            Object obj = null;
            MtvOneSegChannel mtvonesegchannel = (MtvOneSegChannel)message.obj;
            if(mtvonesegchannel != null)
            {
                message = obj;
                if(SDtvControl.getInstance() != null)
                    message = SDtvControl.getInstance().getChnlURI(mtvonesegchannel);
                if(message == null)
                {
                    sendMessageToClients(Message.obtain(null, 314, 203, 0, null));
                } else
                {
                    Bundle bundle = new Bundle();
                    bundle.putString("SDTV_URI", message);
                    sendMessageToClients(Message.obtain(null, 314, 201, 0, bundle));
                }
            }
            continue; /* Loop/switch isn't completed */
_L11:
            boolean flag1 = false;
            if(SDtvControl.getInstance() != null)
                flag1 = SDtvControl.getInstance().pause();
            if(!flag1)
                sendMessageToClients(Message.obtain(null, 309, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L12:
            boolean flag2 = false;
            if(SDtvControl.getInstance() != null)
                flag2 = SDtvControl.getInstance().resume();
            if(!flag2)
                sendMessageToClients(Message.obtain(null, 310, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L14:
            boolean flag3 = false;
            if(SDtvControl.getInstance() != null)
                flag3 = SDtvControl.getInstance().reposition(message.arg1);
            if(!flag3)
                sendMessageToClients(Message.obtain(null, 326, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L13:
            boolean flag4 = false;
            if(SDtvControl.getInstance() != null)
            {
                Integer integer = (Integer)message.obj;
                flag4 = SDtvControl.getInstance().trickmode(message.arg1, message.arg2, integer.intValue());
            }
            if(!flag4)
                sendMessageToClients(Message.obtain(null, 325, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L9:
            boolean flag5 = false;
            message.arg1;
            JVM INSTR tableswitch 1 2: default 1172
        //                       1 1230
        //                       2 1302;
               goto _L39 _L40 _L41
_L39:
            MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid Command [").append(message.arg1).append("] in SCAN. Failure in SCAN").toString());
_L42:
            if(!flag5)
                sendMessageToClients(Message.obtain(null, 307, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L40:
            if(SDtvControl.getInstance() != null)
            {
                boolean flag13 = SDtvControl.getInstance().open(2, 7, null, 0);
                flag5 = flag13;
                if(flag13)
                {
                    MtvOneSegRemoteService.setOneSegSvcState(android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.SCAN);
                    setOpStatus(107, 0, 0, 0, false);
                    sendMessageToClients(Message.obtain(null, 307, 201, 0, null));
                    flag5 = flag13;
                }
            }
            continue; /* Loop/switch isn't completed */
_L41:
            flag5 = true;
            handleScanChannels();
            if(true) goto _L42; else goto _L10
_L10:
            MtvUtilDebug.Low("MtvOneSegRemoteService", (new StringBuilder()).append("Got CMD_CANCEL_SCAN in thread:: Current Scan ChnlIndex [").append(MtvOneSegRemoteService.mScanChnlIndex).append("]").toString());
            resetScan();
            continue; /* Loop/switch isn't completed */
_L2:
            boolean flag6 = false;
            if(SDtvControl.getInstance() != null)
                flag6 = SDtvControl.getInstance().deleteTVFile(message.arg1);
            else
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Invalid MW Handle. Cannot Delete TVFile from DB");
            if(flag6)
                sendMessageToClients(Message.obtain(null, 306, 201, 0, null));
            else
                sendMessageToClients(Message.obtain(null, 306, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L16:
            closeService(message.arg1);
            continue; /* Loop/switch isn't completed */
_L8:
            boolean flag7 = false;
            if(SDtvControl.getInstance() != null)
                flag7 = SDtvControl.getInstance().captureFrame();
            else
                MtvUtilDebug.Error("MtvOneSegRemoteService", "SDTV Control is null, Weird... Is is even possible ??");
            if(!flag7)
                sendMessageToClients(Message.obtain(null, 320, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L19:
            if(SDtvControl.getInstance() != null)
            {
                if(message.arg1 == 1)
                    SDtvControl.getInstance().tunerPowerCtrl(true);
                else
                    SDtvControl.getInstance().tunerPowerCtrl(false);
                if(message.arg2 == 1 && message.arg1 == 1)
                {
                    MtvUtilDebug.Low("MtvOneSegRemoteService", "CMD_CREATE: tuner power control done...sending CREATE success");
                    sendMessageToClients(Message.obtain(null, 301, 201, 0, null));
                }
            }
            continue; /* Loop/switch isn't completed */
_L23:
            message = getSignalStatistics();
            if(message == null)
                sendMessageToClients(Message.obtain(null, 312, 210, MtvOneSegRemoteService.MTV_SERVICE_NO_SIGNAL, null));
            else
                sendMessageToClients(Message.obtain(null, 312, 210, message.getSignalQuality(), getBundlefromSigInfo(message)));
            continue; /* Loop/switch isn't completed */
_L17:
            setOpStatus(0, 0, 0, 0, false);
            deleteService();
            continue; /* Loop/switch isn't completed */
_L21:
            boolean flag14 = false;
            message = (MtvURI)message.obj;
            if(message != null)
                MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("PB type = ").append(message.pbType()).append(" && Chnlnum = ").append(message.chnlNum()).toString());
            boolean flag8 = flag14;
            if(SDtvRecEngineControl.getInstance() != null)
            {
                flag8 = flag14;
                if(message != null)
                    flag8 = SDtvRecEngineControl.getInstance().openBGRecord(message.pbType(), message.chnlNum(), message.serviceID());
            }
            if(!flag8)
                sendMessageToClients(Message.obtain(null, 321, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L22:
            boolean flag9 = false;
            if(SDtvRecEngineControl.getInstance() != null)
                flag9 = SDtvRecEngineControl.getInstance().closeBGRecord();
            if(!flag9)
                sendMessageToClients(Message.obtain(null, 322, 203, 0, null));
            MtvOneSegRemoteService.mIsBackGroundRecordingOn = false;
            continue; /* Loop/switch isn't completed */
_L5:
            boolean flag10 = false;
            if(SDtvRecEngineControl.getInstance() != null)
                flag10 = SDtvRecEngineControl.getInstance().startRecord((String)message.obj, message.arg1);
            if(!flag10)
                sendMessageToClients(Message.obtain(null, 303, 203, 0, null));
            continue; /* Loop/switch isn't completed */
_L6:
            boolean flag11 = false;
            if(SDtvRecEngineControl.getInstance() != null)
                flag11 = SDtvRecEngineControl.getInstance().cancelRecord();
            if(!flag11)
                sendMessageToClients(Message.obtain(null, 304, 203, 0, null));
            else
                sendMessageToClients(Message.obtain(null, 304, 201, 0, null));
            MtvOneSegRemoteService.mIsBackGroundRecordingOn = false;
            continue; /* Loop/switch isn't completed */
_L7:
            boolean flag12 = false;
            if(SDtvRecEngineControl.getInstance() != null)
                flag12 = SDtvRecEngineControl.getInstance().stopRecord();
            if(!flag12)
                sendMessageToClients(Message.obtain(null, 305, 203, 0, null));
            MtvOneSegRemoteService.mIsBackGroundRecordingOn = false;
            continue; /* Loop/switch isn't completed */
_L28:
            switch(message.arg1)
            {
            case -4: 
                sendMessageToClients(Message.obtain(null, 321, 222, 0, null));
                break;

            case 1: // '\001'
                MtvOneSegRemoteService.mIsBackGroundRecordingOn = true;
                sendMessageToClients(Message.obtain(null, 321, 201, 0, null));
                break;

            case 7: // '\007'
                sendMessageToClients(Message.obtain(null, 320, 201, 0, message.obj));
                break;

            case 1538: 
                if(message.obj != null && (message.obj instanceof String))
                {
                    Bundle bundle1 = new Bundle();
                    bundle1.putString("CHNL_NAME", (String)message.obj);
                    sendMessageToClients(Message.obtain(null, 321, 221, 0, bundle1));
                }
                break;

            case 1539: 
                if(message.obj != null && (message.obj instanceof String))
                {
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("PROG_NAME", (String)message.obj);
                    sendMessageToClients(Message.obtain(null, 321, 220, 0, bundle2));
                }
                break;
            }
            continue; /* Loop/switch isn't completed */
_L29:
            char c;
            Bundle bundle3;
            c = '\313';
            bundle3 = null;
            message.arg1;
            JVM INSTR lookupswitch 4: default 2312
        //                       -3: 2369
        //                       -2: 2379
        //                       1: 2335
        //                       4107: 2389;
               goto _L43 _L44 _L45 _L46 _L47
_L43:
            message = bundle3;
_L48:
            sendMessageToClients(Message.obtain(null, 303, c, 0, message));
            continue; /* Loop/switch isn't completed */
_L46:
            c = '\311';
            bundle3 = new Bundle();
            bundle3.putString("REC_THUMBNAIL_NAME", (String)message.obj);
            message = bundle3;
            continue; /* Loop/switch isn't completed */
_L44:
            c = '\327';
            message = bundle3;
            continue; /* Loop/switch isn't completed */
_L45:
            c = '\330';
            message = bundle3;
            continue; /* Loop/switch isn't completed */
_L47:
            c = '\336';
            message = bundle3;
            if(true) goto _L48; else goto _L30
_L30:
            char c1 = '\313';
            if(message.arg1 == 1)
                c1 = '\311';
            sendMessageToClients(Message.obtain(null, 305, c1, message.arg2, null));
            continue; /* Loop/switch isn't completed */
_L31:
            if(message.arg1 == 1)
                sendMessageToClients(Message.obtain(null, 322, 201, 0, null));
            continue; /* Loop/switch isn't completed */
_L20:
            if(SDtvControl.getInstance() != null)
            {
                MtvUtilDebug.High("MtvOneSegRemoteService", "CMD_UPDATE_TV_FILES ... Calling SDTV Update TVFiles DB");
                SDtvControl.getInstance().updateTVFilesDB();
            }
            continue; /* Loop/switch isn't completed */
_L24:
            switch(message.arg1)
            {
            default:
                MtvUtilDebug.Error("MtvOneSegRemoteService", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("] with MW OPEN Command. Ignoring..").toString());
                break;

            case 1285: 
                sendMessageToClients(Message.obtain(null, 1282, 1285, 0, null));
                break;

            case 1: // '\001'
                if(android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.SCAN == MtvOneSegRemoteService.getOneSegSvcState())
                {
                    MtvUtilDebug.Low("MtvOneSegRemoteService", "Dummy Channel Open Success... Can Start Scanning now !");
                    MtvOneSegRemoteService.mOneSegSvcHdlr.post(new Runnable() {

                        public void run()
                        {
                            handleScanChannels();
                        }

                        final _cls3 this$1;

            
            {
                this$1 = _cls3.this;
                super();
            }
                    }
);
                } else
                {
                    if(MtvOneSegRemoteService.mOneSegSvcState == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.REC_OPEN)
                    {
                        MtvUtilDebug.Low("MtvOneSegRemoteService", "UnRegistering Recorder Module From Tuner !");
                        SDtvRecEngineControl.getInstance().closeBGRecord();
                    }
                    sendMessageToClients(Message.obtain(null, 1282, 1, 0, getBundleFromChannel((MtvOneSegChannel[])(MtvOneSegChannel[])message.obj)));
                }
                break;

            case -1: 
                sendMessageToClients(Message.obtain(null, 1282, -1, 0, null));
                break;

            case 512: 
                sendMessageToClients(Message.obtain(null, 1282, 512, 0, getBundleFromProgramInfo((MtvOneSegProgram[])(MtvOneSegProgram[])message.obj)));
                break;

            case 32: // ' '
                sendMessageToClients(Message.obtain(null, 1282, 32, 0, getBundleFromStreamTime(((Long)message.obj).longValue())));
                break;

            case 1294: 
                MtvUtilDebug.Error("MtvOneSegRemoteService", "Malfunctioning of MW - Have to close DTV!!!");
                MtvOneSegRemoteService.mIsStartCommandDone = false;
                sendMessageToClients(Message.obtain(null, 1282, 1294, 0, null));
                break;

            case 1291: 
                sendMessageToClients(Message.obtain(null, 1282, 1291, 0, null));
                break;

            case 1292: 
                sendMessageToClients(Message.obtain(null, 1282, 1292, 0, null));
                break;

            case 1289: 
                sendMessageToClients(Message.obtain(null, 1282, 1289, 0, null));
                break;
            }
            if(false)
                ;
            continue; /* Loop/switch isn't completed */
_L37:
            if(message.arg1 == 1)
                sendMessageToClients(Message.obtain(null, 320, 201, 0, message.obj));
            continue; /* Loop/switch isn't completed */
_L38:
            switch(message.arg1)
            {
            case 4101: 
            case 4105: 
            default:
                MtvUtilDebug.High("MtvOneSegRemoteService", (new StringBuilder()).append("UnProcessed Status Updated - ").append(message.arg1).toString());
                break;

            case 4097: 
                sendMessageToClients(Message.obtain(null, 4096, 4097, 0, null));
                break;

            case 4098: 
                sendMessageToClients(Message.obtain(null, 4096, 4098, 0, null));
                break;

            case 4099: 
                sendMessageToClients(Message.obtain(null, 4096, 4099, 0, null));
                break;

            case 4102: 
                Bundle bundle4 = new Bundle();
                bundle4.putByteArray("CAPTION_ARRAY", (byte[])(byte[])message.obj);
                sendMessageToClients(Message.obtain(null, 4096, 4102, message.arg2, bundle4));
                break;

            case 4103: 
                sendMessageToClients(Message.obtain(null, 4096, 4103, 0, null));
                break;

            case 4104: 
                sendMessageToClients(Message.obtain(null, 4096, 4104, 0, null));
                break;

            case 4100: 
                sendMessageToClients(Message.obtain(null, 4096, 4100, 0, null));
                break;

            case 4106: 
                sendMessageToClients(Message.obtain(null, 4096, message.arg1, 0, getBundleFromChannel((MtvOneSegChannel[])(MtvOneSegChannel[])message.obj)));
                break;

            case 4107: 
                sendMessageToClients(Message.obtain(null, 4096, message.arg1, 0, null));
                break;
            }
            if(false)
                ;
            continue; /* Loop/switch isn't completed */
_L34:
            if(message.arg1 == 1)
                sendMessageToClients(Message.obtain(null, 1540, 1, 0, null));
            else
                sendMessageToClients(Message.obtain(null, 1540, -1, 0, null));
            continue; /* Loop/switch isn't completed */
_L33:
            if(message.arg1 == 1)
                sendMessageToClients(Message.obtain(null, 1539, 1, 0, null));
            else
                sendMessageToClients(Message.obtain(null, 1539, -1, 0, null));
            continue; /* Loop/switch isn't completed */
_L32:
            if(message.arg1 == 1)
                sendMessageToClients(Message.obtain(null, 1538, 1, 0, null));
            else
            if(message.arg1 == -1)
            {
                MtvUtilDebug.Low("MtvOneSegRemoteService", "Failure in Play !");
                sendMessageToClients(Message.obtain(null, 1538, -1, 0, null));
            }
            continue; /* Loop/switch isn't completed */
_L35:
            if(message.arg1 == 1)
            {
                Bundle bundle5 = new Bundle();
                bundle5.putInt("REPOSITION_TIME", ((Integer)message.obj).intValue());
                MtvUtilDebug.Low("MtvOneSegRemoteService", (new StringBuilder()).append("REPOSITION_TIME ").append(message.obj).toString());
                sendMessageToClients(Message.obtain(null, 1541, 1, 0, bundle5));
            } else
            {
                sendMessageToClients(Message.obtain(null, 1541, -1, 0, null));
            }
            continue; /* Loop/switch isn't completed */
_L36:
            switch(message.arg1)
            {
            case -1: 
                sendMessageToClients(Message.obtain(null, 1542, -1, 0, null));
                break;

            case 1290: 
                Bundle bundle6 = new Bundle();
                if(message.obj != null)
                    bundle6.putInt("TRICK_TIME", ((Integer)message.obj).intValue());
                else
                    bundle6.putInt("TRICK_TIME", Integer.valueOf(0).intValue());
                sendMessageToClients(Message.obtain(null, 1542, 1290, 0, bundle6));
                break;

            case 1: // '\001'
                Bundle bundle7 = new Bundle();
                if(message.obj != null)
                    bundle7.putInt("TRICK_TIME", ((Integer)message.obj).intValue());
                else
                    bundle7.putInt("TRICK_TIME", Integer.valueOf(0).intValue());
                sendMessageToClients(Message.obtain(null, 1542, 1, 0, bundle7));
                break;

            case 1289: 
                sendMessageToClients(Message.obtain(null, 1542, 1289, 0, null));
                break;
            }
            if(false)
                ;
            continue; /* Loop/switch isn't completed */
_L27:
            MtvOneSegRemoteService.mOneSegSvcHdlr.removeCallbacks(mOneSegScanRunnable);
            if(message.arg1 == 1)
                sendMessageToClients(Message.obtain(null, 307, 202, MtvOneSegRemoteService.mScanChnlIndex, getBundleFromChannel((MtvOneSegChannel[])(MtvOneSegChannel[])message.obj)));
            else
                sendMessageToClients(Message.obtain(null, 307, 202, MtvOneSegRemoteService.mScanChnlIndex, null));
            int i = sendUrgentSVCThreadMessage;
            handleScanChannels();
            continue; /* Loop/switch isn't completed */
_L25:
            sendMessageToClients(Message.obtain(null, 1283, 0, 0, null));
            continue; /* Loop/switch isn't completed */
_L26:
            sendMessageToClients(Message.obtain(null, 1284, 0, 0, null));
            if(true) goto _L50; else goto _L49
_L49:
        }

        final MtvOneSegRemoteService this$0;

            
            {
                this$0 = MtvOneSegRemoteService.this;
                super();
            }
    }
;
    private Runnable mRunnableFakeClose;

    static 
    {
        mOneSegSvcState = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.IDLE;
        MTV_SERVICE_NO_SIGNAL = -2;
    }



/*
    static boolean access$002(boolean flag)
    {
        mIsStartCommandDone = flag;
        return flag;
    }

*/




/*
    static int access$1302(int i)
    {
        mOneSegSvcClose = i;
        return i;
    }

*/




/*
    static int access$1708()
    {
        int i = mScanChnlIndex;
        mScanChnlIndex = i + 1;
        return i;
    }

*/





/*
    static boolean access$2002(boolean flag)
    {
        mIsBackGroundRecordingOn = flag;
        return flag;
    }

*/


/*
    static MtvOneSegServiceSetCmdInfo access$202(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo)
    {
        mOpInfo = mtvonesegservicesetcmdinfo;
        return mtvonesegservicesetcmdinfo;
    }

*/









/*
    static Handler access$402(Handler handler)
    {
        mOneSegSvcHdlr = handler;
        return handler;
    }

*/





}
