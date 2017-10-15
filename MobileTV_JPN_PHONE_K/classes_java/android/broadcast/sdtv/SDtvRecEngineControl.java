// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.sdtv;

import android.broadcast.helper.MtvUtilDebug;
import android.os.Handler;
import java.util.StringTokenizer;

public class SDtvRecEngineControl
{

    private SDtvRecEngineControl()
    {
        bufferingEventCount = 0;
        mIsBuffering = false;
        MtvUtilDebug.High("SDtvRecEngineControl", "Successfully Instantiated Constructor");
    }

    private void ParseRecURI(String s)
    {
        int i;
        int j;
        int k;
        j = 0;
        MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append("  Entered  ParseRecURI recURI [").append(s).append("]").toString());
        s = s.split(";");
        k = s.length;
        i = 0;
_L8:
        Object obj;
        if(i >= k)
            break MISSING_BLOCK_LABEL_327;
        obj = s[i];
        j++;
        j;
        JVM INSTR tableswitch 1 7: default 104
    //                   1 135
    //                   2 104
    //                   3 201
    //                   4 231
    //                   5 104
    //                   6 261
    //                   7 294;
           goto _L1 _L2 _L1 _L3 _L4 _L1 _L5 _L6
_L6:
        break MISSING_BLOCK_LABEL_294;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        MtvUtilDebug.Error("SDtvRecEngineControl", (new StringBuilder()).append("No Need to Parse these contents  ").append(j).toString());
_L9:
        i++;
        if(true) goto _L8; else goto _L7
_L7:
        path = (new StringTokenizer(((String) (obj)), "?")).nextToken().substring(6);
        obj = new StringTokenizer(((String) (obj)), "=");
        ((StringTokenizer) (obj)).nextToken();
        recMode = Integer.parseInt(((StringTokenizer) (obj)).nextToken());
        if(recMode == 2)
            recMode = 0;
          goto _L9
_L3:
        obj = new StringTokenizer(((String) (obj)), "=");
        ((StringTokenizer) (obj)).nextToken();
        chnName = ((StringTokenizer) (obj)).nextToken();
          goto _L9
_L4:
        obj = new StringTokenizer(((String) (obj)), "=");
        ((StringTokenizer) (obj)).nextToken();
        progName = ((StringTokenizer) (obj)).nextToken();
          goto _L9
_L5:
        obj = new StringTokenizer(((String) (obj)), "=");
        ((StringTokenizer) (obj)).nextToken();
        recLoc = Integer.parseInt(((StringTokenizer) (obj)).nextToken());
          goto _L9
        obj = new StringTokenizer(((String) (obj)), "=");
        ((StringTokenizer) (obj)).nextToken();
        channelServiceID = Integer.parseInt(((StringTokenizer) (obj)).nextToken());
          goto _L9
        MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append(" RecLoc [").append(recLoc).append("] recMode [").append(recMode).append("] path[").append(path).append("]").toString());
        MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append(" progName [").append(progName).append("] chnName [").append(chnName).append("] channelServiceID [").append(channelServiceID).toString());
        return;
    }

    private static void PostRecServiceCBFromNative(Object obj, int i, int j, Object obj1)
    {
        MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append("Entered PostRecServiceCBFromNative() iCmd = ").append(i).append(" iStatus ").append(j).toString());
        i;
        JVM INSTR lookupswitch 5: default 84
    //                   1: 571
    //                   9: 125
    //                   10: 291
    //                   12: 468
    //                   13: 558;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Ignoring Invalid Command,").append(i).append(" Status,").append(j).toString());
_L7:
        MtvUtilDebug.Low("SDtvRecEngineControl", "Exiting PostRecServiceCBFromNative()");
        return;
_L3:
        switch(j)
        {
        default:
            MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Ignoring in Open Invalid Command,").append(i).append(" Status,").append(j).toString());
            break;

        case 8: // '\b'
            sendSVCThreadMessage(1287, 7, 0, obj1);
            break;

        case 1: // '\001'
            sendSVCThreadMessage(1287, 1, 0, obj1);
            break;

        case -4: 
            sendSVCThreadMessage(1287, -4, 0, obj1);
            break;

        case 10: // '\n'
            sendSVCThreadMessage(1287, 1538, 0, obj1);
            break;

        case 11: // '\013'
            sendSVCThreadMessage(1287, 1539, 0, obj1);
            break;

        case 9: // '\t'
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L4:
        switch(j)
        {
        case 1: // '\001'
        case 3: // '\003'
        default:
            MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Ignoring in start Invalid Command,").append(i).append(" Status,").append(j).toString());
            break;

        case 0: // '\0'
            i = mSDtvRecHdl.getRecClipDirNo();
            mRecThumbnailName = String.format("%03X", new Object[] {
                Integer.valueOf(i)
            });
            MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append(" mRecThumbnailName() [").append(mRecThumbnailName).append(" ] dirNo").append(i).toString());
            sendSVCThreadMessage(1288, 1, 0, mRecThumbnailName);
            break;

        case 4: // '\004'
            sendSVCThreadMessage(1288, -2, 0, null);
            break;

        case 2: // '\002'
            sendSVCThreadMessage(1288, -3, 0, null);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L5:
        switch(j)
        {
        case 2: // '\002'
        default:
            MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Ignoring in Stop Invalid Command,").append(i).append(" Status,").append(j).toString());
            break;

        case 1: // '\001'
            sendSVCThreadMessage(1289, 1, 0, null);
            break;

        case 3: // '\003'
            sendSVCThreadMessage(1289, -1, 0, null);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L6:
        sendSVCThreadMessage(1290, 1, 0, null);
        if(true) goto _L7; else goto _L2
_L2:
        switch(j)
        {
        case 4097: 
        case 4099: 
            handleBufferingEvent(i, j);
            break;
        }
        if(true) goto _L7; else goto _L8
_L8:
    }

    public static SDtvRecEngineControl getInstance()
    {
        if(mSDtvRecHdl == null)
            mSDtvRecHdl = new SDtvRecEngineControl();
        return mSDtvRecHdl;
    }

    public static android.broadcast.oneseg.MtvOneSegService.OneSegSvcState getSvcState()
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("getSvcState [").append(mOneSegRemoteSvcState).append("]").toString());
        return mOneSegRemoteSvcState;
    }

    private static void handleBufferingEvent(int i, int j)
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Entered handleRecBufferingEvent() cmd[").append(i).append("] status[").append(j).append("]").toString());
        if(i != 1) goto _L2; else goto _L1
_L1:
        SDtvRecEngineControl sdtvrecenginecontrol = mSDtvRecHdl;
        sdtvrecenginecontrol.bufferingEventCount = sdtvrecenginecontrol.bufferingEventCount + 1;
        if(j != 4097) goto _L4; else goto _L3
_L3:
        mSDtvRecHdl.mIsBuffering = false;
        if(mSDtvRecHdl.bufferingEventCount >= 24)
        {
            if(getSvcState() == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.REC_OPEN)
            {
                MtvUtilDebug.High("SDtvRecEngineControl", " Low Signal Triggered !   ");
                mSDtvRecHdl.bufferingEventCount = 0;
                sendSVCThreadMessage(1288, 4107, 0, null);
            } else
            {
                MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append(" what will i do in this state ? ").append(getSvcState()).toString());
            }
            mSDtvRecHdl.bufferingEventCount = 0;
        }
_L2:
        if(!mSDtvRecHdl.mIsBuffering)
            MtvUtilDebug.Low("SDtvRecEngineControl", "handleBufferingEvent() :: Buffering Completed...");
        return;
_L4:
        if(j == 4099)
        {
            mSDtvRecHdl.bufferingEventCount = 0;
            mSDtvRecHdl.mIsBuffering = false;
        }
        if(true) goto _L2; else goto _L5
_L5:
    }

    private static native boolean nativeBGRecordClose();

    private static native boolean nativeBGRecordOpen(int i, int j, int k);

    private static native boolean nativeCancelRecord();

    private static native int nativeGetRecClipDirNo();

    private static native boolean nativeSetClipDetails(String s, String s1);

    private static native boolean nativeStartRecord(int i, int j, int k, int l, int i1, int j1, String s);

    private static native boolean nativeStopRecord();

    public static boolean sendSVCThreadMessage(int i, int j, int k, Object obj)
    {
label0:
        {
            boolean flag = false;
            if(mRemoteServiceHandler != null)
            {
                if(j != 1294)
                    break label0;
                flag = mRemoteServiceHandler.sendMessageAtFrontOfQueue(mRemoteServiceHandler.obtainMessage(i, j, k, obj));
            }
            return flag;
        }
        return mRemoteServiceHandler.sendMessage(mRemoteServiceHandler.obtainMessage(i, j, k, obj));
    }

    public static void setSvcState(android.broadcast.oneseg.MtvOneSegService.OneSegSvcState onesegsvcstate)
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("setSvcState from[").append(mOneSegRemoteSvcState).append("] to [").append(onesegsvcstate).append("]").toString());
        mOneSegRemoteSvcState = onesegsvcstate;
    }

    public boolean cancelRecord()
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", "Entered cancelRecord()");
        boolean flag = nativeCancelRecord();
        mRecThumbnailName = null;
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Exiting cancelRecord() ").append(flag).toString());
        return flag;
    }

    public boolean closeBGRecord()
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", "Entered closeRecord()");
        boolean flag = nativeBGRecordClose();
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Exiting closeRecord() [").append(flag).append("]").toString());
        return flag;
    }

    public boolean create(Handler handler)
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", "Entered create()");
        mRemoteServiceHandler = handler;
        MtvUtilDebug.Low("SDtvRecEngineControl", "Exiting create()");
        return true;
    }

    public void delete()
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", "Entered delete()");
        mSDtvRecHdl = null;
        mRemoteServiceHandler = null;
        MtvUtilDebug.Low("SDtvRecEngineControl", "Exiting delete()");
    }

    public int getRecClipDirNo()
    {
        int i = nativeGetRecClipDirNo();
        if(i == -1)
        {
            MtvUtilDebug.Error("SDtvRecEngineControl", "Failure in retrieving the dir No");
            return i;
        } else
        {
            MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append("getClipDetails()  Dir No [").append(i).append("]").toString());
            return i;
        }
    }

    public boolean openBGRecord(int i, int j, int k)
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Entered openForRecord() channelNum [").append(j).append("]").toString());
        boolean flag = nativeBGRecordOpen(i, j, k);
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Exiting openForRecord() [").append(flag).append("]").toString());
        return flag;
    }

    public void setClipDetails()
    {
        MtvUtilDebug.High("SDtvRecEngineControl", (new StringBuilder()).append(" setClipDetails()  Prg Name[").append(progName).append("] Chn Name [").append(chnName).append("]").toString());
        if(!nativeSetClipDetails(progName, chnName))
            MtvUtilDebug.High("SDtvRecEngineControl", "nativeSetClipDetails failed !");
    }

    public boolean startRecord(String s, int i)
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Entered startRecord() recURI  [").append(s).append("]").toString());
        ParseRecURI(s);
        videoPid = 0;
        audioPid = 0;
        boolean flag = nativeStartRecord(playerType, channelNum, recMode, recLoc, videoPid, audioPid, path);
        if(progName != null && chnName != null)
            nativeSetClipDetails(progName, chnName);
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Exiting startRecord()  [").append(flag).append("]").toString());
        return flag;
    }

    public boolean stopRecord()
    {
        MtvUtilDebug.Low("SDtvRecEngineControl", "Entered stopRecord()");
        boolean flag = nativeStopRecord();
        mRecThumbnailName = null;
        MtvUtilDebug.Low("SDtvRecEngineControl", (new StringBuilder()).append("Exiting stopRecord() ").append(flag).toString());
        return flag;
    }

    public static final int CMD_CAPTURE_FRAME = 1291;
    public static final int CMD_REC_CLOSE = 1290;
    public static final int CMD_REC_OPEN = 1287;
    public static final int CMD_REC_START = 1288;
    public static final int CMD_REC_STOP = 1289;
    public static final int NATIVECB_STAT_CAPTURE_FRAME_FAILURE = 8;
    public static final int NATIVECB_STAT_CAPTURE_FRAME_SUCCESS = 7;
    public static final int NATIVECB_STAT_NO_SPACE = -2;
    public static final int NATIVECB_STAT_UNKNOWN = -3;
    private static final int ONESEG_CALLBACK_EIT_RECV = 11;
    private static final int ONESEG_CALLBACK_NIT_RECV = 10;
    private static final int ONESEG_CALLBACK_PLAYBACK_ENDOFCLIP = 7;
    private static final int ONESEG_CALLBACK_PLAYBACK_FAILED = 6;
    private static final int ONESEG_CALLBACK_PLAYBACK_UNKNOWN = 5;
    private static final int ONESEG_CALLBACK_PMT_RECV = 9;
    private static final int ONESEG_CALLBACK_REC_FAILED = 3;
    private static final int ONESEG_CALLBACK_REC_NO_SPACE = 4;
    private static final int ONESEG_CALLBACK_REC_START_SUCCESS = 0;
    private static final int ONESEG_CALLBACK_REC_STOP_SUCCESS = 1;
    private static final int ONESEG_CALLBACK_REC_UNKNOWN = 2;
    private static final int ONESEG_REC_FRAME_CAPTURE_SUCCESS = 8;
    public static final int PRSR_CB_STAT_EIT_RCV = 1539;
    public static final int PRSR_CB_STAT_NIT_RCV = 1538;
    public static final int PRSR_CB_STAT_PMT_RCV = 1537;
    private static final String TAG = "SDtvRecEngineControl";
    private static int audioPid = -1;
    private static int channelNum = -1;
    private static int channelServiceID = -1;
    private static String chnName = null;
    private static android.broadcast.oneseg.MtvOneSegService.OneSegSvcState mOneSegRemoteSvcState;
    private static String mRecThumbnailName = null;
    private static Handler mRemoteServiceHandler = null;
    private static SDtvRecEngineControl mSDtvRecHdl = null;
    private static String path = null;
    private static int playerType = -1;
    private static String progName = null;
    private static int recLoc = -1;
    private static int recMode = -1;
    private static int videoPid = -1;
    private int bufferingEventCount;
    private boolean mIsBuffering;

    static 
    {
        mOneSegRemoteSvcState = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.IDLE;
    }
}
