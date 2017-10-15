// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.oneseg;

import android.broadcast.IMtvOneSegServiceListener;
import android.broadcast.bml.MtvOneSegBmlEngineControl;
import android.broadcast.helper.MtvURI;
import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import android.broadcast.sdtv.SDtvCompControlImpl;
import android.broadcast.sdtv.SDtvControl;
import android.content.*;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.*;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.util.DisplayMetrics;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

public class MtvOneSegService
{
    static class IncomingHandler extends Handler
    {

        public void handleMessage(Message message)
        {
            MtvOneSegService.sendSVCThreadMessage(message.what, message.arg1, message.arg2, message.obj);
            super.handleMessage(message);
        }

        IncomingHandler()
        {
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
        static int access$2202(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mCurCmdStatus = i;
            return i;
        }

*/



/*
        static int access$2302(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mNextCmd = i;
            return i;
        }

*/



/*
        static boolean access$2402(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, boolean flag)
        {
            mtvonesegservicesetcmdinfo.mCurCmdError = flag;
            return flag;
        }

*/



/*
        static int access$302(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mCurCmd = i;
            return i;
        }

*/



/*
        static int access$402(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            mtvonesegservicesetcmdinfo.mCurMdl = i;
            return i;
        }

*/


/*
        static int access$476(MtvOneSegServiceSetCmdInfo mtvonesegservicesetcmdinfo, int i)
        {
            i = mtvonesegservicesetcmdinfo.mCurMdl | i;
            mtvonesegservicesetcmdinfo.mCurMdl = i;
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

    public static final class OneSegSVCSIType extends Enum
    {

        public static OneSegSVCSIType valueOf(String s)
        {
            return (OneSegSVCSIType)Enum.valueOf(android/broadcast/oneseg/MtvOneSegService$OneSegSVCSIType, s);
        }

        public static OneSegSVCSIType[] values()
        {
            return (OneSegSVCSIType[])$VALUES.clone();
        }

        private static final OneSegSVCSIType $VALUES[];
        public static final OneSegSVCSIType BIT;
        public static final OneSegSVCSIType CHNLINFO;
        public static final OneSegSVCSIType NIT;
        public static final OneSegSVCSIType NONE;
        public static final OneSegSVCSIType PMT;
        public static final OneSegSVCSIType SDT;
        public static final OneSegSVCSIType TOT;

        static 
        {
            NONE = new OneSegSVCSIType("NONE", 0);
            PMT = new OneSegSVCSIType("PMT", 1);
            NIT = new OneSegSVCSIType("NIT", 2);
            BIT = new OneSegSVCSIType("BIT", 3);
            TOT = new OneSegSVCSIType("TOT", 4);
            SDT = new OneSegSVCSIType("SDT", 5);
            CHNLINFO = new OneSegSVCSIType("CHNLINFO", 6);
            $VALUES = (new OneSegSVCSIType[] {
                NONE, PMT, NIT, BIT, TOT, SDT, CHNLINFO
            });
        }

        private OneSegSVCSIType(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class OneSegSvcState extends Enum
    {

        public static OneSegSvcState valueOf(String s)
        {
            return (OneSegSvcState)Enum.valueOf(android/broadcast/oneseg/MtvOneSegService$OneSegSvcState, s);
        }

        public static OneSegSvcState[] values()
        {
            return (OneSegSvcState[])$VALUES.clone();
        }

        private static final OneSegSvcState $VALUES[];
        public static final OneSegSvcState CREATE;
        public static final OneSegSvcState IDLE;
        public static final OneSegSvcState MAX;
        public static final OneSegSvcState OPEN;
        public static final OneSegSvcState PAUSE;
        public static final OneSegSvcState REC_OPEN;
        public static final OneSegSvcState SCAN;
        public static final OneSegSvcState START;

        static 
        {
            IDLE = new OneSegSvcState("IDLE", 0);
            CREATE = new OneSegSvcState("CREATE", 1);
            REC_OPEN = new OneSegSvcState("REC_OPEN", 2);
            OPEN = new OneSegSvcState("OPEN", 3);
            START = new OneSegSvcState("START", 4);
            PAUSE = new OneSegSvcState("PAUSE", 5);
            SCAN = new OneSegSvcState("SCAN", 6);
            MAX = new OneSegSvcState("MAX", 7);
            $VALUES = (new OneSegSvcState[] {
                IDLE, CREATE, REC_OPEN, OPEN, START, PAUSE, SCAN, MAX
            });
        }

        private OneSegSvcState(String s, int i)
        {
            super(s, i);
        }
    }


    private MtvOneSegService()
    {
        bSDTVInitDone = false;
        bOnlySDTVCreated = false;
        mCaptionclearflag = true;
        isCaptureCommandInProgress = false;
        captionString = null;
        drcsMap = new HashMap();
        prevColor = -1;
        mConnection = new ServiceConnection() {

            public void onServiceConnected(ComponentName componentname, IBinder ibinder)
            {
                MtvUtilDebug.Low("MtvOneSegService", "MtvOneSegRemoteService is now Connected");
                MtvOneSegService.mRemoteOneSegService = new Messenger(ibinder);
                try
                {
                    componentname = Message.obtain(null, 123);
                    componentname.replyTo = mMessenger;
                    MtvOneSegService.mRemoteOneSegService.send(componentname);
                    MtvUtilDebug.Low("MtvOneSegService", "Sending command to MtvOneSegRemoteService for initing SDTV Control...");
                    componentname = Message.obtain(null, 101, 0, 0, null);
                    MtvOneSegService.mRemoteOneSegService.send(componentname);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch(ComponentName componentname)
                {
                    MtvUtilDebug.Low("MtvOneSegService", "onServiceConnected : Service has probably crashed!!");
                }
            }

            public void onServiceDisconnected(ComponentName componentname)
            {
                MtvUtilDebug.Low("MtvOneSegService", "MtvOneSegRemoteService is now disconnected");
                MtvOneSegService.mRemoteOneSegService = null;
                MtvOneSegService.mIsBound = false;
                sendEvttoListener(114, 215, 0, null);
                setOpStatus(0, 0, 0, 0, false);
            }

            final MtvOneSegService this$0;

            
            {
                this$0 = MtvOneSegService.this;
                super();
            }
        }
;
        mRunnableFakeClose = new Runnable() {

            public void run()
            {
                OneSegSvcState onesegsvcstate = MtvOneSegService.getOneSegSvcState();
                MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("RunnableFakeClose() is Fired -- Verifying anything needs to be closed. Current State = [").append(onesegsvcstate).append("]").toString());
                if(onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START || onesegsvcstate == OneSegSvcState.PAUSE)
                {
                    MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("Looks Like Close is Still going on !! mCurMdls = [").append(MtvOneSegService.mOneSegSvcClose).append("]").toString());
                    if(MtvOneSegService.mOneSegSvcClose != 0 && MtvOneSegService.mOneSegSvcClose != 273)
                    {
                        MtvOneSegService.mOneSegSvcClose = 273;
                        handleClose(MtvOneSegService.mOneSegSvcClose);
                    }
                    return;
                } else
                {
                    MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("] Ignoring Close Handling").toString());
                    return;
                }
            }

            final MtvOneSegService this$0;

            
            {
                this$0 = MtvOneSegService.this;
                super();
            }
        }
;
        mOneSegCaptureFrameTimeOutRunnable = new Runnable() {

            public void run()
            {
                if(isCaptureCommandInProgress)
                {
                    MtvUtilDebug.High("MtvOneSegService", "Capture Frame Timed out ! Sending Capture Fail !");
                    isCaptureCommandInProgress = false;
                    sendEvttoListener(106, 203, 0, null);
                }
            }

            final MtvOneSegService this$0;

            
            {
                this$0 = MtvOneSegService.this;
                super();
            }
        }
;
        mCaptionClearTimer = new Runnable() {

            public void run()
            {
                MtvUtilDebug.High("MtvOneSegService", "Clearing caption data after timeout");
                sendEvttoListener(113, 211, 0, new SpannableStringBuilder());
            }

            final MtvOneSegService this$0;

            
            {
                this$0 = MtvOneSegService.this;
                super();
            }
        }
;
        MtvUtilDebug.Low("MtvOneSegService", "Constructor Called");
        loadJNI();
        mOpInfo = new MtvOneSegServiceSetCmdInfo();
        HandlerThread handlerthread = new HandlerThread("OneSegService");
        handlerthread.start();
        MtvUtilDebug.Low("MtvOneSegService", "Starting the thread");
        mOneSegSvcHdlr = new Handler(handlerthread.getLooper(), mOneSegSvcHdlrCB);
        MtvUtilDebug.High("MtvOneSegService", "Successfully Instantiated Constrcutor");
    }

    private void closeService()
    {
        MtvUtilDebug.Low("MtvOneSegService", "Entered closeService() ");
        if(bOnlySDTVCreated)
        {
            MtvUtilDebug.Low("MtvOneSegService", "Only SDTV was created..so fake closing player and BML");
            mOneSegSvcClose |= 0x100;
            mOneSegSvcClose |= 0x10;
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("bOnlySDTVCreated :  ").append(mOneSegSvcClose).toString());
        } else
        {
            if(SDtvCompControlImpl.getCompControl() != null)
            {
                MtvUtilDebug.Low("MtvOneSegService", "Calling SDtvCompControlImpl.close()");
                SDtvCompControlImpl.getCompControl().close();
            }
            if(mBMLInst != null)
            {
                MtvUtilDebug.Low("MtvOneSegService", "Calling OneSegSVCBmlEngineControl.close()");
                mBMLInst.close(0);
            } else
            {
                mOneSegSvcClose |= 0x100;
                MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("mBMLInst is NULL :  ").append(mOneSegSvcClose).toString());
            }
        }
        if(mRemoteOneSegService != null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "Sending message to remote service to close SDTV...");
            Message message = Message.obtain(null, 117, 0, 0, null);
            try
            {
                mRemoteOneSegService.send(message);
            }
            catch(RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
            }
            mOneSegSvcHdlr.postDelayed(mRunnableFakeClose, 10000L);
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", "RemoteService is null ! Probably got Killed !");
            mOneSegSvcClose |= 0x11;
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("RemoteService is NULL :  ").append(mOneSegSvcClose).toString());
            handleClose(mOneSegSvcClose);
        }
        mLocalPlay = false;
        isCaptureCommandInProgress = false;
        MtvUtilDebug.Low("MtvOneSegService", "Exiting closeService() ");
    }

    private boolean createService(Context context, int i)
    {
        boolean flag = false;
        MtvUtilDebug.Low("MtvOneSegService", "Entered createService() ");
        if(context != null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "Getting BML Instance from Engine Control...");
            mBMLInst = MtvOneSegBmlEngineControl.getInstance(context);
        }
        if(context != null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "Binding to Remote service...");
            doBindService(context);
            mCurrContext = context;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegService", "SDTVControl init cannot be done. Appcontext was sent as Null");
        }
        if(mIsBound)
            flag = true;
        bOnlySDTVCreated = false;
        if(flag)
            MtvUtilDebug.High("MtvOneSegService", "Successfully Created Playback Service ");
        else
            deleteService();
        MtvUtilDebug.Low("MtvOneSegService", "Exiting createService() ");
        return flag;
    }

    private void deleteService()
    {
        MtvUtilDebug.Low("MtvOneSegService", "Entered deleteService() ");
        MtvUtilDebug.Low("MtvOneSegService", "Resetting global data ");
        isJNILoaded = false;
        bSDTVInitDone = false;
        bOnlySDTVCreated = false;
        if(mBMLInst != null)
        {
            mBMLInst.destroy();
            mBMLInst = null;
            MtvUtilDebug.Low("MtvOneSegService", "Deleted OneSegSVCBMLEngineControl() ");
        }
        if(SDtvCompControlImpl.getCompControl() != null)
        {
            SDtvCompControlImpl.getCompControl().delete();
            MtvUtilDebug.Low("MtvOneSegService", "Deleted SDtvCompControlImpl() ");
        }
        if(mRemoteOneSegService != null)
        {
            doUnbindService(mCurrContext);
            mRemoteOneSegService = null;
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("MtvOneSegRemoteService probably got killed ! mIsBound = ").append(mIsBound).toString());
            sendEvttoListener(118, 201, 0, null);
            if(mCurrContext != null)
            {
                mCurrContext.unbindService(mConnection);
                MtvUtilDebug.Error("MtvOneSegService", "Called Unbind Just to Ensure we are not getting the connection back !");
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Current App Context is null ; Cannot unbind !");
            }
            setOneSegSvcState(OneSegSvcState.IDLE);
        }
        mCurrentInitMode = 0;
        MtvUtilDebug.High("MtvOneSegService", "Successfully deleted Playback Service ");
        MtvUtilDebug.Low("MtvOneSegService", "Exiting deleteService() ");
    }

    private void getDataGrpSize()
    {
        dataGrpSize = (currentBuffer[6] & 0xff) << 8 | currentBuffer[7] & 0xff;
    }

    private void getLinkNo()
    {
        dataGrpLinkNo = currentBuffer[4];
        lastDataGrpLinkNo = currentBuffer[5];
    }

    public static OneSegSvcState getOneSegSvcState()
    {
        return mOneSegSvcState;
    }

    private boolean getPendingDelete()
    {
        return mPendingDelete;
    }

    public static boolean getPlayerStatus()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(mOpInfo != null)
        {
            flag = flag1;
            if((mOpInfo.mCurMdl & 0x10) == 16)
                flag = true;
        }
        return flag;
    }

    protected static MtvOneSegService getService()
    {
        if(mOneSegService == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "PlayerOneSeg Instance is null, Instantiating the constructor");
            mOneSegService = new MtvOneSegService();
        }
        return mOneSegService;
    }

    private MtvOneSegSignal getSignalInfo()
    {
        OneSegSvcState onesegsvcstate = getOneSegSvcState();
        if((onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START) && mRemoteOneSegService != null)
        {
            Message message = Message.obtain(null, 312);
            try
            {
                mRemoteOneSegService.send(message);
            }
            catch(RemoteException remoteexception)
            {
                remoteexception.printStackTrace();
                return null;
            }
        }
        return null;
    }

    private void handleBuffering(int i, int j)
    {
        i;
        JVM INSTR tableswitch 4097 4099: default 28
    //                   4097 47
    //                   4098 54
    //                   4099 61;
           goto _L1 _L2 _L3 _L4
_L1:
        if(getOneSegSvcState() == OneSegSvcState.CREATE)
        {
            sendEvttoListener(102, i, j, null);
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        i = 204;
        continue; /* Loop/switch isn't completed */
_L3:
        i = 205;
        continue; /* Loop/switch isn't completed */
_L4:
        i = 206;
        if(true) goto _L1; else goto _L5
_L5:
        if(getOneSegSvcState() == OneSegSvcState.OPEN || getOneSegSvcState() == OneSegSvcState.START)
        {
            sendEvttoListener(114, i, j, null);
            return;
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Buffering CB [").append(i).append("] in Invalid State... Ignoring").toString());
            return;
        }
    }

    private void handleClose(int i)
    {
label0:
        {
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("handleClose :  ").append(i).toString());
            if(i == 273)
            {
                mOneSegSvcHdlr.removeCallbacks(mRunnableFakeClose);
                mOneSegSvcClose = 0;
                if(mOpInfo == null || !mOpInfo.mCurCmdError)
                    break label0;
                sendEvttoListener(mOpInfo.mCurCmd, mOpInfo.mCurCmdStatus, 0, null);
                setOpStatus(0, 0, 0, 0, false);
            }
            return;
        }
        setOneSegSvcState(OneSegSvcState.CREATE);
        MtvUtilDebug.High("MtvOneSegService", "Successfully Closed Service ");
        sendEvttoListener(117, 201, 0, null);
    }

    private void handleOpen()
    {
        setOneSegSvcState(OneSegSvcState.START);
        sendEvttoListener(102, 201, 0, null);
        sendEvttoListener(114, 201, 0, null);
    }

    private boolean isCaptMgmtData()
    {
        boolean flag = false;
        byte byte0 = (byte)(currentBuffer[3] >>> 2);
        if(byte0 == 0 || byte0 == 32)
            flag = true;
        return flag;
    }

    private boolean isIdentifierField()
    {
        boolean flag1 = false;
        boolean flag = flag1;
        if(currentBuffer[0] == -128)
        {
            flag = flag1;
            if(currentBuffer[1] == -1)
            {
                flag = flag1;
                if(currentBuffer[2] == -16)
                    flag = true;
            }
        }
        return flag;
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
            MtvUtilDebug.Error("MtvOneSegService", "JNI is already loaded, not loading again");
            return;
        }
    }

    private void parseCharData(int i, int j)
    {
        int k;
        int j1;
        SpannableStringBuilder spannablestringbuilder;
        spannablestringbuilder = new SpannableStringBuilder();
        k = 0;
        j1 = i;
_L2:
        int k1;
        int l1;
        int i2;
        if(k >= j)
            break MISSING_BLOCK_LABEL_1126;
        i2 = currentBuffer[j1] & 0xff;
        l1 = i2 << 8 | currentBuffer[j1 + 1] & 0xff;
        if(currentBuffer[j1] != 13)
            break; /* Loop/switch isn't completed */
        spannablestringbuilder.append("\n");
        k1 = j1;
        i = k;
_L3:
        k = i + 1;
        j1 = k1 + 1;
        if(true) goto _L2; else goto _L1
_L1:
        if(currentBuffer[j1] == 12)
        {
            i = k;
            k1 = j1;
            if(mCaptionclearflag)
            {
                captionString.clear();
                spannablestringbuilder.clear();
                i = k;
                k1 = j1;
            }
        } else
        if(currentBuffer[j1] == 32)
        {
            spannablestringbuilder.append(" ");
            i = k;
            k1 = j1;
        } else
        if(currentBuffer[j1] == -99 && currentBuffer[j1 + 1] == 32)
        {
            i = (currentBuffer[j1 + 2] & 0x3e) / 2;
            mCaptionclearflag = false;
            startCaptionClearTimer(i);
            k1 = j1 + 2;
            i = k + 2;
        } else
        if(i2 >= 128 && i2 <= 135)
        {
            i = 0;
            if(i2 == 128)
                i = 0xff000000;
            else
            if(i2 == 129)
                i = 0xffff0000;
            else
            if(i2 == 130)
                i = 0xff00ff00;
            else
            if(i2 == 131)
                i = -256;
            else
            if(i2 == 132)
                i = 0xff0000ff;
            else
            if(i2 == 133)
                i = -65281;
            else
            if(i2 == 134)
                i = 0xff00ffff;
            else
            if(i2 == 135)
                i = -1;
            if(prevColor != i && spannablestringbuilder != null && spannablestringbuilder.length() > 0)
            {
                spannablestringbuilder.setSpan(new ForegroundColorSpan(prevColor), 0, spannablestringbuilder.length(), 33);
                captionString.append(spannablestringbuilder);
                spannablestringbuilder.clear();
            }
            prevColor = i;
            i = k;
            k1 = j1;
        } else
        {
label0:
            {
                if(i2 < 161 || i2 > 254)
                    break label0;
                Object obj = new byte[2];
                obj[0] = currentBuffer[j1];
                obj[1] = currentBuffer[j1 + 1];
                if(i2 >= 250 && i2 <= 254)
                {
                    if(obj[0] == -6)
                    {
                        obj[0] = (byte)(obj[0] - 10);
                        obj[1] = (byte)(obj[1] - 161);
                    } else
                    if(obj[0] == -5)
                    {
                        obj[0] = (byte)(obj[0] - 11);
                        obj[1] = (byte)(obj[1] - 67);
                    } else
                    if(obj[0] == -4)
                    {
                        obj[0] = (byte)(obj[0] - 12);
                        obj[1] = (byte)(obj[1] + 27);
                    } else
                    if(obj[0] == -3)
                    {
                        obj[0] = (byte)(obj[0] - 12);
                        obj[1] = (byte)(obj[1] - 135);
                    } else
                    if(obj[0] == -2)
                    {
                        obj[0] = (byte)(obj[0] - 13);
                        obj[1] = (byte)(obj[1] - 41);
                    }
                    try
                    {
                        spannablestringbuilder.append(new String(((byte []) (obj)), "UTF-16"));
                    }
                    // Misplaced declaration of an exception variable
                    catch(Object obj)
                    {
                        MtvUtilDebug.Low("MtvOneSegService", "unsupportedEncodingException");
                        ((UnsupportedEncodingException) (obj)).printStackTrace();
                    }
                } else
                {
                    try
                    {
                        spannablestringbuilder.append(new String(((byte []) (obj)), "EUC_JP"));
                    }
                    catch(UnsupportedEncodingException unsupportedencodingexception)
                    {
                        MtvUtilDebug.Low("MtvOneSegService", "unsupportedEncodingException");
                        unsupportedencodingexception.printStackTrace();
                    }
                }
                k1 = j1 + 1;
                i = k + 1;
            }
        }
          goto _L3
        if(l1 >= 16673 && l1 <= 20350) goto _L5; else goto _L4
_L4:
        i = k;
        k1 = j1;
        if(i2 < 33) goto _L3; else goto _L6
_L6:
        i = k;
        k1 = j1;
        if(i2 > 126) goto _L3; else goto _L5
_L5:
        Bitmap bitmap;
        if(l1 >= 16673 && l1 <= 20350)
        {
            k1 = l1;
            j1++;
            i = k + 1;
        } else
        {
            k1 = i2 | 0x4100;
            i = k;
        }
        bitmap = (Bitmap)drcsMap.remove(Integer.valueOf(k1));
        if(bitmap == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "null bitmap returned from map");
            k1 = j1;
        } else
        {
            Bitmap bitmap1 = bitmap.copy(android.graphics.Bitmap.Config.ARGB_8888, true);
            bitmap.recycle();
            for(int l = 0; l < bitmap1.getWidth(); l++)
                for(k1 = 0; k1 < bitmap1.getHeight(); k1++)
                {
                    if(bitmap1.getPixel(l, k1) == -1)
                        bitmap1.setPixel(l, k1, prevColor);
                    if(bitmap1.getPixel(l, k1) == 0xff000000)
                        bitmap1.setPixel(l, k1, 0);
                }


            int i1 = convertDpToPixel(60) / bitmap1.getHeight();
            bitmap = Bitmap.createScaledBitmap(bitmap1, bitmap1.getWidth() * i1, convertDpToPixel(60), true);
            spannablestringbuilder.setSpan(new ForegroundColorSpan(prevColor), 0, spannablestringbuilder.length(), 33);
            captionString.append(spannablestringbuilder);
            spannablestringbuilder.clear();
            spannablestringbuilder.append(" ");
            i1 = spannablestringbuilder.length();
            spannablestringbuilder.setSpan(new ImageSpan(bitmap), i1 - 1, i1, 33);
            captionString.append(spannablestringbuilder);
            spannablestringbuilder.clear();
            k1 = j1;
        }
          goto _L3
        spannablestringbuilder.setSpan(new ForegroundColorSpan(prevColor), 0, spannablestringbuilder.length(), 33);
        captionString.append(spannablestringbuilder);
        MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("data unit finished - pesString: ").append(captionString).toString());
        return;
    }

    private void parseDRCSData(int i, int j)
    {
        byte abyte0[] = currentBuffer;
        j = i + 1;
        byte byte0 = abyte0[i];
        int k = 0;
        i = j;
        for(; k < (byte0 & 0xff); k++)
        {
            byte abyte1[] = currentBuffer;
            j = i + 1;
            byte byte1 = abyte1[i];
            abyte1 = currentBuffer;
            i = j + 1;
            byte byte2 = abyte1[j];
            byte byte3 = currentBuffer[i];
            int l = 0;
            i++;
            while(l < (byte3 & 0xff)) 
            {
                byte abyte2[] = currentBuffer;
                j = i + 1;
                i = (byte)(abyte2[i] & 0xf);
                MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("mode: ").append(i).toString());
                if(i == 0 || i == 1)
                {
                    int ai[] = currentBuffer;
                    i = j + 1;
                    byte byte4 = ai[j];
                    ai = currentBuffer;
                    j = i + 1;
                    int k2 = ai[i] & 0xff;
                    ai = currentBuffer;
                    i = j + 1;
                    int l2 = ai[j] & 0xff;
                    int i3 = (k2 * l2) / 8;
                    ai = new int[i3 * 8];
                    j = 0;
                    for(int i1 = 0; i1 < i3;)
                    {
                        byte byte5 = currentBuffer[i];
                        int k1 = 7;
                        while(k1 >= 0) 
                        {
                            if((1 << k1 & byte5) != 0)
                            {
                                int i2 = j + 1;
                                ai[j] = -1;
                                j = i2;
                            } else
                            {
                                int j2 = j + 1;
                                ai[j] = 0xff000000;
                                j = j2;
                            }
                            k1--;
                        }
                        i1++;
                        i++;
                    }

                    Bitmap bitmap = Bitmap.createBitmap(ai, k2, l2, android.graphics.Bitmap.Config.ARGB_8888);
                    MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("bitmap width: ").append(k2).append(" bitmap height: ").append(l2).append(" depth:").append(byte4).toString());
                    drcsMap.put(Integer.valueOf((byte1 & 0xff) << 8 | byte2 & 0xff), bitmap);
                } else
                {
                    byte abyte3[] = currentBuffer;
                    int j1 = j + 1;
                    i = abyte3[j];
                    abyte3 = currentBuffer;
                    j = j1 + 1;
                    j1 = abyte3[j1];
                    abyte3 = currentBuffer;
                    int l1 = j + 1;
                    j = (abyte3[j] & 0xff) << 8 | currentBuffer[l1] & 0xff;
                    MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("geoDataLength: ").append(j).append(" regionX:").append(i).append(" regionY:").append(j1).toString());
                    i = l1 + 1 + j;
                }
                l++;
            }
        }

    }

    private boolean parseDataUnits()
    {
        int i = dataUnitLoopHdrIndex + 3;
        while(dataUnitLoopLength > 0) 
        {
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("dataUnitLoopLength: ").append(dataUnitLoopLength).toString());
            if(currentBuffer[i] != 31)
            {
                MtvUtilDebug.Low("MtvOneSegService", "data unit separator is not proper, not parsing this caption pes data");
                return false;
            }
            byte byte0 = currentBuffer[i + 1];
            int j = (currentBuffer[i + 3] & 0xff) << 8 | currentBuffer[i + 4] & 0xff;
            if(byte0 == 32)
                parseCharData(i + 5, j);
            else
            if(byte0 == 48)
                parseDRCSData(i + 5, j);
            dataUnitLoopLength = dataUnitLoopLength - (j + 5);
            i += j + 5;
        }
        return true;
    }

    private void resetScan()
    {
        Message message;
        if(mRemoteOneSegService == null)
            break MISSING_BLOCK_LABEL_23;
        message = Message.obtain(null, 108, 0, 0, null);
        mRemoteOneSegService.send(message);
        return;
        RemoteException remoteexception;
        remoteexception;
        remoteexception.printStackTrace();
        return;
    }

    private void resetService()
    {
        if(mRemoteOneSegService != null)
        {
            doUnbindService(mCurrContext);
            mRemoteOneSegService = null;
        }
        mCurrentInitMode = 0;
        bOnlySDTVCreated = false;
        bSDTVInitDone = false;
        mLocalPlay = false;
        mOneSegSvcListr = null;
        isJNILoaded = false;
        setPendingDelete(false);
        setOpStatus(0, 0, 0, 0, false);
        mOpInfo = null;
        mOneSegSvcHdlr = null;
        mOneSegService = null;
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

    public static void setOneSegSvcState(OneSegSvcState onesegsvcstate)
    {
        MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("oldState - ").append(mOneSegSvcState).append(" newState - ").append(onesegsvcstate).toString());
        mOneSegSvcState = onesegsvcstate;
        if(mRemoteOneSegService == null)
            break MISSING_BLOCK_LABEL_70;
        onesegsvcstate = Message.obtain(null, 319, mOneSegSvcState.ordinal(), 0, null);
        mRemoteOneSegService.send(onesegsvcstate);
        return;
        onesegsvcstate;
        onesegsvcstate.printStackTrace();
        return;
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

    private void setPendingDelete(boolean flag)
    {
        mPendingDelete = flag;
    }

    private void startCaptionClearTimer(int i)
    {
        mOneSegSvcHdlr.removeCallbacks(mCaptionClearTimer);
        mOneSegSvcHdlr.postDelayed(mCaptionClearTimer, i * 100);
    }

    public boolean cancelRecord()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered cancelRecord() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START || onesegsvcstate == OneSegSvcState.REC_OPEN)
            flag = sendSVCThreadMessage(104, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in cancelRecord() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting cancelRecord() ");
        return flag;
    }

    public boolean cancelScanChannels()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered cancelScanChannels() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.SCAN)
            flag = sendSVCThreadMessage(108, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in cancelScanChannels() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting cancelScanChannels() ");
        return flag;
    }

    public boolean captureFrame()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered captureFrame() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(106, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in captureFrame() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting captureFrame() ");
        return flag;
    }

    public boolean close()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered close() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate != OneSegSvcState.IDLE && onesegsvcstate != OneSegSvcState.CREATE || mOpInfo != null && mOpInfo.mCurCmd != 0 && mOpInfo.mCurMdl != 0)
            flag = sendSVCThreadMessage(117, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in close()").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting close() ");
        return flag;
    }

    public int convertDpToPixel(int i)
    {
        DisplayMetrics displaymetrics = Resources.getSystem().getDisplayMetrics();
        return (int)((float)i * ((float)displaymetrics.densityDpi / 160F));
    }

    public boolean create(Context context, int i)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        mCurrContext = context;
        mCurrentInitMode = i;
        MtvUtilDebug.Low("MtvOneSegService", "Entered create() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.IDLE)
        {
            SDtvCompControlImpl.getCompControl().create();
            flag = sendSVCThreadMessage(101, i, 0, context);
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in create()").toString());
        }
        if(!flag && SDtvCompControlImpl.getCompControl() != null)
            SDtvCompControlImpl.getCompControl().delete();
        MtvUtilDebug.Low("MtvOneSegService", "Exiting create() ");
        return flag;
    }

    public boolean delete()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.IDLE;
        MtvUtilDebug.Low("MtvOneSegService", "Entered delete() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate != OneSegSvcState.IDLE)
            flag = sendSVCThreadMessage(118, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in delete()").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting delete() ");
        return flag;
    }

    public boolean deleteAllAffililiationAreas()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered deleteAllAffililiationAreas() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(121, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State  - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegService", "exiting deleteAllAffililiationAreas() ");
        return flag;
    }

    public boolean deleteAllTvLink()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered deleteAllTvLink() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(120, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegService", "exiting deleteAllTvLink() ");
        return flag;
    }

    public boolean deleteBroadCasterArea(int i, int j)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered deleteBroadCasterArea() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(122, i, j, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegService", "exiting deleteBroadCasterArea() ");
        return flag;
    }

    public boolean deleteTVFile(int i)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered deleteTVFile() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(32, i, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in deleteTVFile() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting deleteTVFile() ");
        return flag;
    }

    public boolean deleteTvLink(int i)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered deleteTvLink() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(119, i, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State - current state = [").append(onesegsvcstate).append("]").append("can't post message to oneseg thread").toString());
        MtvUtilDebug.Low("MtvOneSegService", "exiting deleteTvLink() ");
        return flag;
    }

    void doBindService(Context context)
    {
        MtvUtilDebug.Low("MtvOneSegService", "doBindService : Called..");
        if(!mIsBound)
        {
            context.bindService(new Intent("com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"), mConnection, 1);
            mIsBound = true;
            return;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegService", "doBindService : Service already bound..");
            return;
        }
    }

    void doUnbindService(Context context)
    {
        MtvUtilDebug.Low("MtvOneSegService", "doUnBindService : Called..");
        if(mIsBound)
        {
            if(mRemoteOneSegService != null)
                try
                {
                    Message message = Message.obtain(null, 124);
                    message.replyTo = mMessenger;
                    mRemoteOneSegService.send(message);
                }
                catch(RemoteException remoteexception)
                {
                    MtvUtilDebug.Low("MtvOneSegService", "doUnbindService : Service has probably crashed!!");
                }
            context.unbindService(mConnection);
            sendEvttoListener(118, 201, 0, null);
            mIsBound = false;
        } else
        {
            MtvUtilDebug.Low("MtvOneSegService", "doUnBindService : Service already unbound..");
        }
        bSDTVInitDone = false;
        setOneSegSvcState(OneSegSvcState.IDLE);
    }

    Bundle getBundleFromChannel(MtvOneSegChannel mtvonesegchannel)
    {
        if(mtvonesegchannel == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "getBundleFromChannel : Input is Null!!");
            return null;
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putInt("MTV_CHANNEL_SERVICEID", mtvonesegchannel.getServID());
            bundle.putInt("MTV_CHANNEL_REMOTEKEYID", mtvonesegchannel.getRemoteKeyID());
            bundle.putString("MTV_CHANNEL_SERVICENAME", mtvonesegchannel.getServName());
            bundle.putInt("MTV_CHANNEL_NUMBEROFPHYSICALIDS", mtvonesegchannel.getNumberOfPhysicalIDs());
            bundle.putInt("MTV_CHANNEL_GETPHYSICALID", mtvonesegchannel.getPhysicalID());
            bundle.putInt("MTV_CHANNEL_PHYSICALIDTYPE", mtvonesegchannel.getPhysicalIDType());
            bundle.putString("MTV_CHANNEL_PHYSICALIDNAME", mtvonesegchannel.getPhysicalIDName());
            bundle.putString("MTV_CHANNEL_PHYSICALIDPROVIDERNAME", mtvonesegchannel.getPhysicalIDProviderName());
            return bundle;
        }
    }

    Bundle getBundleFromUri(MtvURI mtvuri)
    {
        if(mtvuri == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "getBundleFromUri : Input is Null!!");
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

    MtvOneSegChannel[] getChannelFromBundle(Bundle bundle)
    {
        Object obj = null;
        if(bundle != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvOneSegService", "getChannelFromBundle : Input is Null!!");
        bundle = obj;
_L4:
        return bundle;
_L2:
        bundle.setClassLoader(android/broadcast/helper/types/MtvOneSegChannel.getClassLoader());
        android.os.Parcelable aparcelable[] = bundle.getParcelableArray("MTV_CHANNEL_INFO");
        if(aparcelable == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "getChannelFromBundle : Parcels not present !!");
            return null;
        }
        MtvOneSegChannel amtvonesegchannel[] = new MtvOneSegChannel[aparcelable.length];
        int i = 0;
        do
        {
            bundle = amtvonesegchannel;
            if(i >= aparcelable.length)
                continue;
            amtvonesegchannel[i] = (MtvOneSegChannel)aparcelable[i];
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("getChannelFromBundle : Physical channel Name ").append(amtvonesegchannel[i].getServName()).toString());
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    public long getPlayBackTime()
    {
        MtvUtilDebug.Low("MtvOneSegService", "Entered getPlayBackTime()");
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START || onesegsvcstate == OneSegSvcState.PAUSE)
        {
            return SDtvControl.getInstance().getPlaybackTime();
        } else
        {
            MtvUtilDebug.High("MtvOneSegService", "getPlayBackTime called in invalidState");
            return -1L;
        }
    }

    MtvOneSegProgram[] getProgInfoFromBundle(Bundle bundle)
    {
        Object obj = null;
        if(bundle != null) goto _L2; else goto _L1
_L1:
        MtvUtilDebug.Low("MtvOneSegService", "getProgInfoFromBundle : Input is Null!!");
        bundle = obj;
_L4:
        return bundle;
_L2:
        bundle.setClassLoader(android/broadcast/helper/types/MtvOneSegProgram.getClassLoader());
        android.os.Parcelable aparcelable[] = bundle.getParcelableArray("MTV_PROGRAM_INFO");
        if(aparcelable == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "getProgInfoFromBundle : Parcels not present !!");
            return null;
        }
        MtvOneSegProgram amtvonesegprogram[] = new MtvOneSegProgram[aparcelable.length];
        int i = 0;
        do
        {
            bundle = amtvonesegprogram;
            if(i >= aparcelable.length)
                continue;
            amtvonesegprogram[i] = (MtvOneSegProgram)aparcelable[i];
            i++;
        } while(true);
        if(true) goto _L4; else goto _L3
_L3:
    }

    MtvOneSegSignal getSignalInfoFromBundle(Bundle bundle)
    {
        if(bundle == null)
        {
            MtvUtilDebug.Low("MtvOneSegService", "getSignalInfoFromBundle : Input is Null!!");
            return null;
        } else
        {
            MtvOneSegSignal mtvonesegsignal = new MtvOneSegSignal();
            mtvonesegsignal.setCN(bundle.getInt("MTV_SIGNAL_CN"));
            mtvonesegsignal.setRSSI(bundle.getInt("MTV_SIGNAL_RSSI"));
            mtvonesegsignal.setBER(bundle.getInt("MTV_SIGNAL_BER"));
            mtvonesegsignal.setsigQty(bundle.getInt("MTV_SIGNAL_SIGQUALITY"));
            return mtvonesegsignal;
        }
    }

    public int getSignalQuality()
    {
        int i = -1;
        MtvUtilDebug.Low("MtvOneSegService", "Entered getSignalQuality() ");
        MtvOneSegSignal mtvonesegsignal = getSignalInfo();
        if(mtvonesegsignal != null)
            i = mtvonesegsignal.getSignalQuality();
        MtvUtilDebug.Low("MtvOneSegService", "Exiting getSignalQuality() ");
        return i;
    }

    public MtvOneSegSignal getSignalStatistics()
    {
        MtvUtilDebug.Low("MtvOneSegService", "Entered getSignalStatistics() ");
        return getSignalInfo();
    }

    public boolean open(MtvURI mtvuri)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered open() ");
        if(mOpInfo != null)
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("mOpInfo.mCurCmd [").append(mOpInfo.mCurCmd).append("]    mOpInfo.mCurMdl [").append(mOpInfo.mCurMdl).append("]").toString());
        onesegsvcstate = getOneSegSvcState();
        if((onesegsvcstate == OneSegSvcState.CREATE || onesegsvcstate == OneSegSvcState.REC_OPEN) && mOpInfo != null && mOpInfo.mCurCmd == 0 && mOpInfo.mCurMdl == 0)
        {
            if(mtvuri != null)
                flag = sendSVCThreadMessage(102, 0, 0, mtvuri);
            else
                MtvUtilDebug.Error("MtvOneSegService", "Invalid parameter: openURI - null. Failure in open()");
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in open()").toString());
        }
        MtvUtilDebug.Low("MtvOneSegService", "Exiting open() ");
        return flag;
    }

    public void parseCCData(byte abyte0[])
    {
        MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("Entered parseCCData buffer length: ").append(abyte0.length).append(" \n").toString());
        currentBuffer = abyte0;
        if(currentBuffer.length < 9)
        {
            MtvUtilDebug.High("MtvOneSegService", "insufficient length not parsing \n");
            return;
        }
        drcsMap.clear();
        captionString = new SpannableStringBuilder("");
        prevColor = -1;
        mCaptionclearflag = true;
        if(!isIdentifierField())
        {
            MtvUtilDebug.Low("MtvOneSegService", "wrong identifier fields");
            return;
        }
        if(isCaptMgmtData())
        {
            MtvUtilDebug.Low("MtvOneSegService", "management data not processing");
            return;
        }
        getLinkNo();
        getDataGrpSize();
        byte byte0 = (byte)(currentBuffer[8] >>> 6);
        MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("tmd  :").append(byte0).toString());
        if(byte0 == 1 || byte0 == 2)
            dataUnitLoopHdrIndex = 14;
        else
            dataUnitLoopHdrIndex = 9;
        if(dataUnitLoopHdrIndex + 2 > currentBuffer.length)
        {
            MtvUtilDebug.High("MtvOneSegService", "insufficient length not parsing \n");
            return;
        }
        dataUnitLoopLength = (currentBuffer[dataUnitLoopHdrIndex + 1] & 0xff) << 8 | currentBuffer[dataUnitLoopHdrIndex + 2] & 0xff;
        if(dataUnitLoopLength + dataUnitLoopHdrIndex + 3 > currentBuffer.length)
        {
            MtvUtilDebug.High("MtvOneSegService", "insufficient length not parsing \n");
            return;
        }
        if(parseDataUnits())
            sendEvttoListener(113, 211, 0, captionString);
        MtvUtilDebug.High("MtvOneSegService", "Exiting parseCCData \n");
    }

    public boolean pause()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered pause() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(109, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in pause() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting pause() ");
        return flag;
    }

    public boolean registerListener(IMtvOneSegServiceListener imtvonesegservicelistener)
    {
        boolean flag = false;
        MtvUtilDebug.Low("MtvOneSegService", "Entered registerListener()");
        if(imtvonesegservicelistener != null && mOneSegSvcListr == null)
        {
            mOneSegSvcListr = imtvonesegservicelistener;
            MtvUtilDebug.High("MtvOneSegService", "Successfully registered listener");
            flag = true;
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", "Invalid Listener Object. Failure in registerListener() ");
        }
        MtvUtilDebug.Low("MtvOneSegService", "Exiting registerListener()");
        return flag;
    }

    public boolean repositionPlay(int i)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("Entered repositionPlay() curTimeStamp = [ ").append(i).append("]").toString());
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(112, i, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in repositionPlay() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting repositionPlay() ");
        return flag;
    }

    public boolean resume()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered resume() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.PAUSE)
            flag = sendSVCThreadMessage(110, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in resume() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting resume() ");
        return flag;
    }

    public boolean scanChannels()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered scanChannels() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.CREATE)
            flag = sendSVCThreadMessage(107, 1, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in scanChannels() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting scanChannels() ");
        return flag;
    }

    public boolean screwupCleanup()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = getOneSegSvcState();
        MtvUtilDebug.Low("MtvOneSegService", "Entered screwupCleanup() ");
        if(onesegsvcstate != OneSegSvcState.IDLE)
        {
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("Current State is [").append(onesegsvcstate).append("]. Need cleanup!! ").toString());
            flag = true;
            deleteService();
            resetService();
        } else
        {
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("Current State is [").append(onesegsvcstate).append("]. Don't Need cleanup!! ").toString());
        }
        MtvUtilDebug.Low("MtvOneSegService", "Exiting screwupCleanup() ");
        return flag;
    }

    protected void sendEvttoListener(int i, int j, int k, Object obj)
    {
        if(mOneSegSvcListr != null)
            mOneSegSvcListr.onServiceNotify(i, j, k, obj);
    }

    public boolean start(MtvOneSegChannel mtvonesegchannel)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered start() ");
        if(mtvonesegchannel != null)
        {
            OneSegSvcState onesegsvcstate1 = getOneSegSvcState();
            if(onesegsvcstate1 == OneSegSvcState.OPEN)
                flag = sendSVCThreadMessage(114, 0, 0, mtvonesegchannel);
            else
                MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate1).append("]. Failure in start()").toString());
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", "Invalid Input Parameters servInfo = [null]. Failure in start() ");
        }
        MtvUtilDebug.Low("MtvOneSegService", "Exiting start() ");
        return flag;
    }

    public boolean startRecord(String s, int i)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered startRecord() ");
        if(s != null)
        {
            OneSegSvcState onesegsvcstate1 = getOneSegSvcState();
            if(onesegsvcstate1 == OneSegSvcState.START || onesegsvcstate1 == OneSegSvcState.REC_OPEN)
                flag = sendSVCThreadMessage(103, i, 0, s);
            else
                MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate1).append("]. Failure in startRecord() ").toString());
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid Input Parameters recURI [").append(s).append("] availMemSize [").append(i).append("]. Failure in startRecord() ").toString());
        }
        MtvUtilDebug.Low("MtvOneSegService", "Exiting startRecord() ");
        return flag;
    }

    public boolean startTVLink(MtvOneSegTVLink mtvonesegtvlink)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered startTVLink() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(115, 0, 0, mtvonesegtvlink);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in startTVLink() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting startTVLink() ");
        return flag;
    }

    public boolean stopRecord()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered stopRecord() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START || onesegsvcstate == OneSegSvcState.REC_OPEN)
            flag = sendSVCThreadMessage(105, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in stopRecord() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting stopRecord() ");
        return flag;
    }

    public boolean stopTVLink()
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered stopTVLink() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.OPEN || onesegsvcstate == OneSegSvcState.START)
            flag = sendSVCThreadMessage(116, 0, 0, null);
        else
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in stopTVLink() ").toString());
        MtvUtilDebug.Low("MtvOneSegService", "Exiting stopTVLink() ");
        return flag;
    }

    public boolean trickmodePlay(int i, int j, int k)
    {
        boolean flag = false;
        OneSegSvcState onesegsvcstate = OneSegSvcState.MAX;
        MtvUtilDebug.Low("MtvOneSegService", "Entered trickmodePlay() ");
        onesegsvcstate = getOneSegSvcState();
        if(onesegsvcstate == OneSegSvcState.START)
        {
            if(i == 2 || i == 3 || i == 0)
                flag = sendSVCThreadMessage(111, i, j, Integer.valueOf(k));
            else
                MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid TrickType [").append(i).append("]. Failure in trickmodePlay() ").toString());
        } else
        {
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State [").append(onesegsvcstate).append("]. Failure in trickmodePlay() ").toString());
        }
        MtvUtilDebug.Low("MtvOneSegService", "Exiting trickmodePlay() ");
        return flag;
    }

    public void unregisterListener(IMtvOneSegServiceListener imtvonesegservicelistener)
    {
        MtvUtilDebug.Low("MtvOneSegService", "Entered unregisterListener()");
        if(imtvonesegservicelistener != null && mOneSegSvcListr == imtvonesegservicelistener)
            mOneSegSvcListr = null;
        else
        if(imtvonesegservicelistener == null)
            MtvUtilDebug.Error("MtvOneSegService", "Invalid Listener Object. Cannot un-register listener ");
        else
            MtvUtilDebug.Error("MtvOneSegService", "Mismatch in listener Object. Cannot un-register listener ");
        MtvUtilDebug.Low("MtvOneSegService", "Exiting unregisterListener()");
    }

    private static final int ALL_MDL_DONE = 273;
    private static final int BML_DONE = 256;
    private static final int DEL_TV_FILE = 32;
    private static final int INIT_ALL = 0;
    private static final int INIT_ONLY_SDTV = 1;
    private static final int MDL_NONE = 0;
    public static int MTV_SERVICE_NO_SIGNAL = 0;
    private static final int MW_DONE = 1;
    private static final int PLAYER_DONE = 16;
    private static final int SCAN_START = 1;
    private static final String TAG = "MtvOneSegService";
    private static boolean isJNILoaded = false;
    private static MtvOneSegBmlEngineControl mBMLInst = null;
    private static Context mCurrContext = null;
    public static int mCurrentInitMode = 0;
    private static boolean mIsBound = false;
    private static boolean mLocalPlay = false;
    private static MtvOneSegService mOneSegService = null;
    private static int mOneSegSvcClose = 0;
    private static Handler mOneSegSvcHdlr = null;
    private static IMtvOneSegServiceListener mOneSegSvcListr = null;
    private static OneSegSvcState mOneSegSvcState;
    private static MtvOneSegServiceSetCmdInfo mOpInfo = null;
    private static boolean mPendingDelete = false;
    static Messenger mRemoteOneSegService = null;
    private static int mScanChnlIndex = 13;
    private boolean bOnlySDTVCreated;
    private boolean bSDTVInitDone;
    private SpannableStringBuilder captionString;
    private byte currentBuffer[];
    private byte dataGrpLinkNo;
    private int dataGrpSize;
    private int dataUnitLoopHdrIndex;
    private int dataUnitLoopLength;
    private Map drcsMap;
    private boolean isCaptureCommandInProgress;
    private byte lastDataGrpLinkNo;
    private Runnable mCaptionClearTimer;
    private boolean mCaptionclearflag;
    private ServiceConnection mConnection;
    final Messenger mMessenger = new Messenger(new IncomingHandler());
    private Runnable mOneSegCaptureFrameTimeOutRunnable;
    private final android.os.Handler.Callback mOneSegSvcHdlrCB = new android.os.Handler.Callback() {

        public boolean handleMessage(Message message)
        {
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("Got Command[").append(message.what).append("] in thread").toString());
            message.what;
            JVM INSTR lookupswitch 48: default 432
        //                       0: 4644
        //                       1: 4644
        //                       8: 4699
        //                       32: 2745
        //                       101: 466
        //                       102: 660
        //                       103: 1387
        //                       104: 1475
        //                       105: 1536
        //                       106: 1317
        //                       107: 1597
        //                       108: 1832
        //                       109: 1887
        //                       110: 1948
        //                       111: 2009
        //                       112: 2104
        //                       114: 1192
        //                       115: 2168
        //                       116: 2225
        //                       117: 2685
        //                       118: 2723
        //                       119: 2276
        //                       120: 2386
        //                       121: 2472
        //                       122: 2558
        //                       301: 566
        //                       302: 1136
        //                       303: 3899
        //                       304: 3964
        //                       305: 3964
        //                       306: 2812
        //                       307: 1716
        //                       312: 2832
        //                       314: 1282
        //                       320: 3626
        //                       321: 3705
        //                       322: 3985
        //                       1282: 2866
        //                       1283: 3418
        //                       1284: 3532
        //                       1285: 3365
        //                       1538: 3562
        //                       1539: 4013
        //                       1540: 4053
        //                       1541: 4093
        //                       1542: 4175
        //                       4096: 4313
        //                       32769: 4724;
               goto _L1 _L2 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28 _L29 _L29 _L30 _L31 _L32 _L33 _L34 _L35 _L36 _L37 _L38 _L39 _L40 _L41 _L42 _L43 _L44 _L45 _L46 _L47
_L1:
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid Command [").append(message.what).append("]. Ignoring").toString());
_L100:
            return true;
_L5:
            if(createService((Context)message.obj, message.arg1))
            {
                MtvUtilDebug.High("MtvOneSegService", "Success in create -- waiting for SDTV service to respond...");
                if(!bSDTVInitDone)
                {
                    MtvOneSegService.setOneSegSvcState(OneSegSvcState.IDLE);
                } else
                {
                    MtvUtilDebug.High("MtvOneSegService", "Service already connected...not touching the state but everything is created! So send CREATE SUCCESS");
                    sendEvttoListener(101, 201, MtvOneSegService.mCurrentInitMode, null);
                }
            } else
            {
                MtvUtilDebug.High("MtvOneSegService", "Failure in CREATE -- Posting CREATE_FAILURE ");
                sendEvttoListener(101, 203, MtvOneSegService.mCurrentInitMode, null);
            }
            continue; /* Loop/switch isn't completed */
_L26:
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("Got Remote Message : REMOTE_CMD_CREATE with status : [").append(message.arg1).append("]").toString());
            if(message.arg1 == 201)
            {
                MtvUtilDebug.High("MtvOneSegService", "Got Remote Message : success in sdtv create...");
                bSDTVInitDone = true;
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.CREATE);
            } else
            {
                bSDTVInitDone = false;
            }
            sendEvttoListener(101, message.arg1, 0, null);
            continue; /* Loop/switch isn't completed */
_L6:
            boolean flag;
            boolean flag1;
            boolean flag8;
            flag1 = false;
            flag8 = false;
            flag = false;
            message = (MtvURI)message.obj;
            MtvOneSegService.mOneSegSvcClose = 0;
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("mOneSegSvcClose in Open : ").append(MtvOneSegService.mOneSegSvcClose).toString());
            if(message == null || !MtvOneSegService.mIsBound || SDtvControl.getInstance() == null) goto _L49; else goto _L48
_L48:
            int i;
            int j;
            j = message.pbType();
            if(j != 4 && j != 5 && j != 6)
            {
                if(MtvOneSegService.mBMLInst != null)
                {
                    if(!MtvOneSegService.mBMLInst.isBMLEngineCreated())
                    {
                        flag1 = MtvOneSegService.mBMLInst.create();
                        MtvUtilDebug.Low("MtvOneSegService", "BML Instance Create request complete...");
                        if(flag1)
                            MtvUtilDebug.Low("MtvOneSegService", "Successfully created OneSegSVCBMLEngineControl() ");
                        else
                            MtvUtilDebug.Low("MtvOneSegService", "Failure in OneSegSVCBMLEngineControl() ");
                    }
                    flag8 = MtvOneSegService.mBMLInst.open();
                    setOpStatus(102, 0, 256, 0, false);
                }
            } else
            {
                flag8 = true;
            }
            flag1 = flag8;
            i = ((flag) ? 1 : 0);
            if(!flag8) goto _L51; else goto _L50
_L50:
            if(j == 1)
                MtvOneSegService.mLocalPlay = true;
            if(j != 2 && j != 1 && j != 4 && j != 6) goto _L53; else goto _L52
_L52:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L55; else goto _L54
_L54:
            message = Message.obtain(null, 102, 0, 0, getBundleFromUri(message));
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                flag1 = false;
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            flag1 = true;
            i = 1;
_L51:
            if(flag1)
                break; /* Loop/switch isn't completed */
            MtvOneSegService.mLocalPlay = false;
            setOpStatus(102, 203, 0, 0, true);
            closeService();
            continue; /* Loop/switch isn't completed */
_L55:
            flag1 = false;
            i = ((flag) ? 1 : 0);
            continue; /* Loop/switch isn't completed */
_L53:
            if(j == 5)
            {
                handleOpen();
                flag1 = flag8;
                i = ((flag) ? 1 : 0);
            } else
            if(j == 3)
            {
                flag1 = flag8;
                i = ((flag) ? 1 : 0);
                if(MtvOneSegService.mBMLInst != null)
                {
                    boolean flag9 = MtvOneSegService.mBMLInst.openTvLink(message.tvLink());
                    flag1 = flag9;
                    i = ((flag) ? 1 : 0);
                    if(flag9)
                    {
                        handleOpen();
                        flag1 = flag9;
                        i = ((flag) ? 1 : 0);
                    }
                }
            } else
            {
                MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("Invalid PBType [").append(j).append("]. Cannot Open Playback Session ").toString());
                flag1 = false;
                i = ((flag) ? 1 : 0);
            }
            continue; /* Loop/switch isn't completed */
_L49:
            if(message == null)
            {
                MtvUtilDebug.Error("MtvOneSegService", "Invalid openURI [null]. Failure in open() ");
                i = ((flag) ? 1 : 0);
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Invalid Controller Instance. Failure in open() ");
                i = ((flag) ? 1 : 0);
            }
            if(true) goto _L51; else goto _L56
_L56:
            if(i != true)
                setOpStatus(102, 0, 1, 0, false);
            continue; /* Loop/switch isn't completed */
_L27:
            if(message.arg1 == 203)
            {
                MtvOneSegService.mLocalPlay = false;
                setOpStatus(102, 203, 0, 0, true);
                closeService();
            } else
            {
                setOpStatus(102, 0, 1, 0, false);
            }
            continue; /* Loop/switch isn't completed */
_L17:
            i = 0;
            message = (MtvOneSegChannel)message.obj;
            if(message == null) goto _L58; else goto _L57
_L57:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L60; else goto _L59
_L59:
            message = Message.obtain(null, 114, 0, 0, getBundleFromChannel(message));
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L58:
            if(!i)
            {
                setOpStatus(114, 203, 0, 0, true);
                closeService();
            }
            continue; /* Loop/switch isn't completed */
_L60:
            i = 0;
            if(true) goto _L58; else goto _L33
_L33:
            if(message.arg1 == 203)
            {
                setOpStatus(114, 203, 0, 0, true);
                closeService();
            }
            continue; /* Loop/switch isn't completed */
_L10:
            if(MtvOneSegService.mRemoteOneSegService != null)
            {
                message = Message.obtain(null, 106, 0, 0, null);
                try
                {
                    MtvOneSegService.mOneSegSvcHdlr.postDelayed(mOneSegCaptureFrameTimeOutRunnable, 3000L);
                    MtvOneSegService.mRemoteOneSegService.send(message);
                    isCaptureCommandInProgress = true;
                }
                // Misplaced declaration of an exception variable
                catch(Message message)
                {
                    message.printStackTrace();
                }
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Not able to send CAPTURE_FRAME to Remote service");
            }
            continue; /* Loop/switch isn't completed */
_L7:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L62; else goto _L61
_L61:
            Bundle bundle = new Bundle();
            bundle.putString("MTV_REC_CMD_DATA", (String)message.obj);
            message = Message.obtain(null, 103, message.arg1, 0, bundle);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L63:
            if(!i)
                sendEvttoListener(103, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L62:
            i = 0;
            if(true) goto _L63; else goto _L8
_L8:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L65; else goto _L64
_L64:
            message = Message.obtain(null, 104, 0, 0, null);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L66:
            if(!i)
                sendEvttoListener(104, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L65:
            i = 0;
            if(true) goto _L66; else goto _L9
_L9:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L68; else goto _L67
_L67:
            message = Message.obtain(null, 105, 0, 0, null);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L69:
            if(!i)
                sendEvttoListener(105, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L68:
            i = 0;
            if(true) goto _L69; else goto _L11
_L11:
            i = 0;
            message.arg1;
            JVM INSTR tableswitch 1 1: default 1620
        //                       1 1673;
               goto _L70 _L71
_L70:
            MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid Command [").append(message.arg1).append("] in SCAN. Failure in SCAN").toString());
_L72:
            if(!i)
                sendEvttoListener(107, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L71:
            if(MtvOneSegService.mRemoteOneSegService != null)
            {
                message = Message.obtain(null, 107, 1, 0, null);
                try
                {
                    MtvOneSegService.mRemoteOneSegService.send(message);
                }
                // Misplaced declaration of an exception variable
                catch(Message message)
                {
                    message.printStackTrace();
                    i = 0;
                    continue; /* Loop/switch isn't completed */
                }
                i = 1;
                continue; /* Loop/switch isn't completed */
            }
            i = 0;
            if(true) goto _L72; else goto _L31
_L31:
            if(message.arg1 == 201)
            {
                setOpStatus(107, 0, 0, 0, false);
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.SCAN);
            } else
            if(message.arg1 == 203)
                sendEvttoListener(107, 203, 0, null);
            else
            if(message.arg1 == 202)
            {
                MtvOneSegChannel amtvonesegchannel[] = null;
                if(message.obj != null)
                    amtvonesegchannel = getChannelFromBundle((Bundle)message.obj);
                sendEvttoListener(107, 202, message.arg2, amtvonesegchannel);
            }
            continue; /* Loop/switch isn't completed */
_L12:
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("Got CMD_CANCEL_SCAN in thread:: Current Scan ChnlIndex [").append(MtvOneSegService.mScanChnlIndex).append("]").toString());
            setOpStatus(108, 0, 0, 0, false);
            resetScan();
            continue; /* Loop/switch isn't completed */
_L13:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L74; else goto _L73
_L73:
            message = Message.obtain(null, 109, 0, 0, null);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L75:
            if(!i)
                sendEvttoListener(109, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L74:
            i = 0;
            if(true) goto _L75; else goto _L14
_L14:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L77; else goto _L76
_L76:
            message = Message.obtain(null, 110, 0, 0, null);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L78:
            if(!i)
                sendEvttoListener(110, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L77:
            i = 0;
            if(true) goto _L78; else goto _L15
_L15:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L80; else goto _L79
_L79:
            Bundle bundle1 = new Bundle();
            bundle1.putInt("TRICK_CURR_TIME", ((Integer)message.obj).intValue());
            message = Message.obtain(null, 111, message.arg1, message.arg2, bundle1);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L81:
            if(!i)
                sendEvttoListener(111, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L80:
            i = 0;
            if(true) goto _L81; else goto _L16
_L16:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L83; else goto _L82
_L82:
            message = Message.obtain(null, 112, message.arg1, 0, null);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L84:
            if(!i)
                sendEvttoListener(112, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L83:
            i = 0;
            if(true) goto _L84; else goto _L18
_L18:
            boolean flag2 = false;
            if(MtvOneSegService.mBMLInst != null)
                flag2 = MtvOneSegService.mBMLInst.openTvLink((MtvOneSegTVLink)message.obj);
            else
                MtvUtilDebug.Error("MtvOneSegService", "Invalid BML Instance. Failure in startTVLink() -- But How come TV is PLAYING still?!!? ");
            if(!flag2)
                sendEvttoListener(115, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L19:
            boolean flag3 = false;
            if(MtvOneSegService.mBMLInst != null)
                flag3 = MtvOneSegService.mBMLInst.closeTVLink(0);
            else
                MtvUtilDebug.Error("MtvOneSegService", "Invalid BML Instance. Failure in stopTVLink() -- But How come TV is PLAYING still?!!? ");
            if(!flag3)
                sendEvttoListener(116, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L22:
            boolean flag4 = false;
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("Deleting tvlink with index = ").append(message.arg1).toString());
            if(MtvOneSegService.mBMLInst != null)
            {
                boolean flag10 = MtvOneSegService.mBMLInst.DeleteTvLink(message.arg1);
                flag4 = flag10;
                if(flag10)
                {
                    sendEvttoListener(119, 201, 0, null);
                    flag4 = flag10;
                }
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Invalid BML instance. failure in DeleteTVlink ");
            }
            if(!flag4)
                sendEvttoListener(119, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L23:
            boolean flag5 = false;
            MtvUtilDebug.Low("MtvOneSegService", "Deleting all tvlinks  ");
            if(MtvOneSegService.mBMLInst != null)
            {
                boolean flag11 = MtvOneSegService.mBMLInst.DeleteAllTvLink();
                flag5 = flag11;
                if(flag11)
                {
                    sendEvttoListener(120, 201, 0, null);
                    flag5 = flag11;
                }
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Invalid BML instance. failure in DeleteAllTvLink ");
            }
            if(!flag5)
                sendEvttoListener(120, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L24:
            boolean flag6 = false;
            MtvUtilDebug.Low("MtvOneSegService", "Deleting all AffililiationAreas  ");
            if(MtvOneSegService.mBMLInst != null)
            {
                boolean flag12 = MtvOneSegService.mBMLInst.DeleteAllAffililiationAreas();
                flag6 = flag12;
                if(flag12)
                {
                    sendEvttoListener(121, 201, 0, null);
                    flag6 = flag12;
                }
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Invalid BML instance. failure in AffililiationAreas() ");
            }
            if(!flag6)
                sendEvttoListener(121, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L25:
            boolean flag7 = false;
            MtvUtilDebug.Low("MtvOneSegService", (new StringBuilder()).append("Deleting Broacaster area with affilication id = ").append(message.arg1).append(" origin Net id = ").append(message.arg2).toString());
            if(MtvOneSegService.mBMLInst != null)
            {
                boolean flag13 = MtvOneSegService.mBMLInst.DeleteBroadCasterArea(message.arg1, message.arg2);
                flag7 = flag13;
                if(flag13)
                {
                    sendEvttoListener(122, 201, 0, null);
                    flag7 = flag13;
                }
            } else
            {
                MtvUtilDebug.Error("MtvOneSegService", "Invalid BML instance. failure in DeleteBroadCasterArea() ");
            }
            if(!flag7)
                sendEvttoListener(122, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L20:
            if(MtvOneSegService.getOneSegSvcState() == OneSegSvcState.SCAN)
                resetScan();
            closeService();
            setOpStatus(0, 0, 0, 0, false);
            continue; /* Loop/switch isn't completed */
_L21:
            setOpStatus(0, 0, 0, 0, false);
            deleteService();
            continue; /* Loop/switch isn't completed */
_L4:
            if(MtvOneSegService.mRemoteOneSegService == null) goto _L86; else goto _L85
_L85:
            message = Message.obtain(null, 306, message.arg1, 0, null);
            try
            {
                MtvOneSegService.mRemoteOneSegService.send(message);
            }
            // Misplaced declaration of an exception variable
            catch(Message message)
            {
                message.printStackTrace();
                i = 0;
                continue; /* Loop/switch isn't completed */
            }
            i = 1;
_L87:
            if(!i)
                sendEvttoListener(113, 218, 203, null);
            continue; /* Loop/switch isn't completed */
_L86:
            i = 0;
            if(true) goto _L87; else goto _L30
_L30:
            sendEvttoListener(113, 218, message.arg1, null);
            continue; /* Loop/switch isn't completed */
_L32:
            sendEvttoListener(113, message.arg1, message.arg2, getSignalInfoFromBundle((Bundle)message.obj));
            continue; /* Loop/switch isn't completed */
_L37:
            switch(message.arg1)
            {
            default:
                MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid Status [").append(message.arg1).append("] with MW OPEN Command. Ignoring..").toString());
                break;

            case 1: // '\001'
                if(MtvOneSegService.getOneSegSvcState() != OneSegSvcState.OPEN)
                {
                    message = getChannelFromBundle((Bundle)message.obj);
                    MtvOneSegService.setOneSegSvcState(OneSegSvcState.OPEN);
                    sendEvttoListener(102, 201, 0, message);
                } else
                {
                    MtvUtilDebug.Error("MtvOneSegService", "Looks like Received OPEN SUCCESS Multiple Times, Ignoring it now. Correct me if i'm wrong.!!! ");
                }
                break;

            case -1: 
                message = MtvOneSegService.getOneSegSvcState();
                if(message == OneSegSvcState.CREATE)
                {
                    MtvUtilDebug.Error("MtvOneSegService", "Looks like no data from demuxer -- Okie!! Close TV !! ");
                    setOpStatus(102, 203, 0, 0, true);
                    closeService();
                } else
                if(message == OneSegSvcState.OPEN || message == OneSegSvcState.START)
                {
                    MtvUtilDebug.Error("MtvOneSegService", "STAT_FAILURE recieved in OPEN or START State !");
                    setOpStatus(102, 203, 0, 0, true);
                    closeService();
                } else
                {
                    MtvUtilDebug.Error("MtvOneSegService", (new StringBuilder()).append("Invalid State = [").append(message).append("]. What am I suppose to do with TUNER_FAILURE ??").toString());
                }
                break;

            case 512: 
                MtvUtilDebug.Low("MtvOneSegService", "Got EIT Received from below!");
                sendEvttoListener(113, 208, 0, getProgInfoFromBundle((Bundle)message.obj));
                break;

            case 1285: 
                sendEvttoListener(113, 223, 0, null);
                break;

            case 32: // ' '
                long l = ((Bundle)message.obj).getLong("MTV_STREAM_TIME");
                sendEvttoListener(113, 209, 0, Long.valueOf(l));
                break;

            case 1294: 
                sendEvttoListener(114, 215, 0, null);
                break;

            case 1289: 
                sendEvttoListener(114, 214, 0, null);
                break;

            case 1292: 
                this = MtvOneSegService.access$702 | this;
                handleClose(MtvOneSegService.mOneSegSvcClose);
                break;

            case 1291: 
                setOpStatus(0, 0, 0, 0, false);
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.START);
                sendEvttoListener(114, 201, 0, null);
                sendEvttoListener(114, 214, 0, null);
                break;
            }
            if(false)
                ;
            continue; /* Loop/switch isn't completed */
_L40:
            if(message.arg1 == 1)
                sendEvttoListener(107, 202, MtvOneSegService.mScanChnlIndex, message.obj);
            else
                sendEvttoListener(107, 202, MtvOneSegService.mScanChnlIndex, null);
            int i = _22_mOneSegSvcClose_20_in_20_Open_20__3A__20__22_;
            continue; /* Loop/switch isn't completed */
_L38:
            if(MtvOneSegService.getOneSegSvcState() != OneSegSvcState.SCAN)
            {
                this = MtvOneSegService.access$702 | this;
                MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("SDtvControl.CMD_CLOSE :  ").append(MtvOneSegService.mOneSegSvcClose).toString());
                handleClose(MtvOneSegService.mOneSegSvcClose);
            } else
            {
                MtvUtilDebug.Low("MtvOneSegService", "Resetting scan variables and setting the state as CREATE");
                MtvOneSegService.mScanChnlIndex = 13;
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.CREATE);
                if(MtvOneSegService.mOpInfo != null)
                {
                    sendEvttoListener(MtvOneSegService.mOpInfo.mCurCmd, 201, 0, null);
                    setOpStatus(0, 0, 0, 0, false);
                }
            }
            continue; /* Loop/switch isn't completed */
_L39:
            MtvOneSegService.setOneSegSvcState(OneSegSvcState.IDLE);
            sendEvttoListener(118, 201, 0, null);
            resetService();
            continue; /* Loop/switch isn't completed */
_L41:
            if(message.arg1 == 1)
            {
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.START);
                sendEvttoListener(114, 201, 0, null);
            } else
            if(message.arg1 == -1)
            {
                MtvUtilDebug.Error("MtvOneSegService", "Failure in Play ! ");
                sendEvttoListener(114, 203, 0, null);
            }
            continue; /* Loop/switch isn't completed */
_L34:
            if(isCaptureCommandInProgress)
                isCaptureCommandInProgress = false;
            MtvOneSegService.mOneSegSvcHdlr.removeCallbacks(mOneSegCaptureFrameTimeOutRunnable);
            if(message.arg1 == 201)
                sendEvttoListener(106, 201, 0, message.obj);
            else
                sendEvttoListener(106, 203, 0, null);
            continue; /* Loop/switch isn't completed */
_L35:
            Object obj;
            i = message.arg1;
            obj = message.obj;
            if(i != 201) goto _L89; else goto _L88
_L88:
            MtvOneSegService.setOneSegSvcState(OneSegSvcState.REC_OPEN);
            message = ((Message) (obj));
_L90:
            sendEvttoListener(127, i, 0, message);
            continue; /* Loop/switch isn't completed */
_L89:
            if(i == 222)
            {
                MtvUtilDebug.Error("MtvOneSegService", "Got Tuner Failure ! Cleaning Up the Middleware States !");
                setOpStatus(0, 0, 0, 0, true);
                message = ((Message) (obj));
                if(MtvOneSegService.mRemoteOneSegService == null)
                    continue; /* Loop/switch isn't completed */
                MtvUtilDebug.Low("MtvOneSegService", "Sending message to remote service to close SDTV...");
                message = Message.obtain(null, 117, OneSegSvcState.REC_OPEN.ordinal(), 0, null);
                try
                {
                    MtvOneSegService.mRemoteOneSegService.send(message);
                }
                // Misplaced declaration of an exception variable
                catch(Message message)
                {
                    message.printStackTrace();
                    message = ((Message) (obj));
                    continue; /* Loop/switch isn't completed */
                }
                message = ((Message) (obj));
                continue; /* Loop/switch isn't completed */
            }
            if(i == 221)
            {
                message = ((Message) (obj));
                if(obj instanceof Bundle)
                    message = ((Bundle)obj).getString("CHNL_NAME");
            } else
            {
                message = ((Message) (obj));
                if(i == 220)
                {
                    message = ((Message) (obj));
                    if(obj instanceof Bundle)
                        message = ((Bundle)obj).getString("PROG_NAME");
                }
            }
            if(true) goto _L90; else goto _L28
_L28:
            Object obj1 = null;
            obj = obj1;
            if(message.arg1 == 201)
            {
                Bundle bundle2 = (Bundle)message.obj;
                obj = obj1;
                if(bundle2 != null)
                    obj = bundle2.getString("REC_THUMBNAIL_NAME", null);
            }
            sendEvttoListener(103, message.arg1, 0, obj);
            continue; /* Loop/switch isn't completed */
_L29:
            sendEvttoListener(105, message.arg1, message.arg2, null);
            continue; /* Loop/switch isn't completed */
_L36:
            MtvOneSegService.setOneSegSvcState(OneSegSvcState.CREATE);
            sendEvttoListener(128, message.arg1, message.arg2, null);
            continue; /* Loop/switch isn't completed */
_L42:
            i = 203;
            if(message.arg1 == 1)
            {
                i = 201;
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.PAUSE);
            }
            sendEvttoListener(109, i, message.arg2, null);
            continue; /* Loop/switch isn't completed */
_L43:
            i = 203;
            if(message.arg1 == 1)
            {
                i = 201;
                MtvOneSegService.setOneSegSvcState(OneSegSvcState.START);
            }
            sendEvttoListener(110, i, message.arg2, null);
            continue; /* Loop/switch isn't completed */
_L44:
            Object obj2;
            i = 203;
            obj2 = null;
            if(message.arg1 != 1) goto _L92; else goto _L91
_L91:
            i = 201;
            obj = Integer.valueOf(((Bundle)message.obj).getInt("REPOSITION_TIME", 0));
_L93:
            sendEvttoListener(112, i, message.arg2, obj);
            continue; /* Loop/switch isn't completed */
_L92:
            obj = obj2;
            if(message.arg1 == 4105)
            {
                i = 202;
                obj = obj2;
            }
            if(true) goto _L93; else goto _L45
_L45:
            i = 203;
            obj = null;
            message.arg1;
            JVM INSTR lookupswitch 4: default 4228
        //                       -1: 4306
        //                       1: 4273
        //                       1289: 4299
        //                       1290: 4247;
               goto _L94 _L95 _L96 _L97 _L98
_L94:
            sendEvttoListener(111, i, message.arg2, obj);
            continue; /* Loop/switch isn't completed */
_L98:
            i = 202;
            obj = Integer.valueOf(((Bundle)message.obj).getInt("TRICK_TIME", 0));
            continue; /* Loop/switch isn't completed */
_L96:
            i = 201;
            obj = Integer.valueOf(((Bundle)message.obj).getInt("TRICK_TIME", 0));
            continue; /* Loop/switch isn't completed */
_L97:
            i = 214;
            continue; /* Loop/switch isn't completed */
_L95:
            i = 203;
            if(true) goto _L94; else goto _L46
_L46:
            switch(message.arg1)
            {
            case 8: // '\b'
                sendEvttoListener(113, 221, 0, getChannelFromBundle((Bundle)message.obj));
                break;

            case 4097: 
            case 4098: 
            case 4099: 
                handleBuffering(message.arg1, message.arg2);
                break;

            case 4107: 
                sendEvttoListener(113, 222, 0, null);
                break;

            case 4101: 
                sendEvttoListener(113, 210, message.arg2, null);
                break;

            case 4102: 
                message = ((Bundle)message.obj).getByteArray("CAPTION_ARRAY");
                parseCCData(message);
                break;

            case 4103: 
                sendEvttoListener(113, 212, message.arg2, null);
                break;

            case 4104: 
                sendEvttoListener(113, 213, message.arg2, message.obj);
                break;

            case 4100: 
                sendEvttoListener(113, 207, 0, null);
                break;

            case 4106: 
                sendEvttoListener(113, 232, 0, getChannelFromBundle((Bundle)message.obj));
                break;

            case 4108: 
                sendEvttoListener(113, 225, 0, null);
                break;
            }
            if(false)
                ;
            continue; /* Loop/switch isn't completed */
_L2:
            MtvUtilDebug.High("MtvOneSegService", "Got HALT from BML");
            this = MtvOneSegService.access$702 | this;
            MtvUtilDebug.High("MtvOneSegService", (new StringBuilder()).append("BMLNativeConstants.SLIM_DTV_HALT_NONE :  ").append(MtvOneSegService.mOneSegSvcClose).toString());
            handleClose(MtvOneSegService.mOneSegSvcClose);
            continue; /* Loop/switch isn't completed */
_L3:
            MtvUtilDebug.High("MtvOneSegService", "Got  TVLINK_START success  from TV LINK");
            sendEvttoListener(115, 201, 0, null);
            continue; /* Loop/switch isn't completed */
_L47:
            MtvUtilDebug.High("MtvOneSegService", "Got HALT from TV LINK");
            sendEvttoListener(116, 201, 0, null);
            if(true) goto _L100; else goto _L99
_L99:
        }

        final MtvOneSegService this$0;

            
            {
                this$0 = MtvOneSegService.this;
                super();
            }
    }
;
    private Runnable mRunnableFakeClose;
    private int prevColor;

    static 
    {
        MTV_SERVICE_NO_SIGNAL = -2;
        mOneSegSvcState = OneSegSvcState.IDLE;
    }



/*
    static boolean access$002(boolean flag)
    {
        mIsBound = flag;
        return flag;
    }

*/








/*
    static boolean access$1402(MtvOneSegService mtvonesegservice, boolean flag)
    {
        mtvonesegservice.isCaptureCommandInProgress = flag;
        return flag;
    }

*/



/*
    static int access$1502(int i)
    {
        mScanChnlIndex = i;
        return i;
    }

*/


/*
    static int access$1508()
    {
        int i = mScanChnlIndex;
        mScanChnlIndex = i + 1;
        return i;
    }

*/










/*
    static boolean access$602(MtvOneSegService mtvonesegservice, boolean flag)
    {
        mtvonesegservice.bSDTVInitDone = flag;
        return flag;
    }

*/



/*
    static int access$702(int i)
    {
        mOneSegSvcClose = i;
        return i;
    }

*/


/*
    static int access$776(int i)
    {
        i = mOneSegSvcClose | i;
        mOneSegSvcClose = i;
        return i;
    }

*/



/*
    static boolean access$902(boolean flag)
    {
        mLocalPlay = flag;
        return flag;
    }

*/
}
