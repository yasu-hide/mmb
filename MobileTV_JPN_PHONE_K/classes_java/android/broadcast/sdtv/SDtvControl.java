// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.sdtv;

import android.broadcast.helper.MtvUtilDebug;
import android.broadcast.helper.types.*;
import android.os.Handler;
import android.view.Surface;
import android.view.SurfaceHolder;
import java.lang.ref.WeakReference;

public class SDtvControl
{

    private SDtvControl()
    {
        mIsLocalPlay = false;
        mIsBuffering = false;
        bufferingEventCount = 0;
        mNativeOpen = 0;
        bIsNativeCreateDone = false;
        MtvUtilDebug.High("SDtvControl", "Successfully Instantiated Constrcutor");
    }

    private static void PostServiceCBFromNative(Object obj, int i, int j, Object obj1)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("Entered PostServiceCBFromNative() command [").append(i).append("] status [").append(j).append("]").toString());
        i;
        JVM INSTR lookupswitch 12: default 144
    //                   -100: 759
    //                   1: 191
    //                   2: 838
    //                   3: 782
    //                   4: 996
    //                   5: 1052
    //                   6: 1108
    //                   7: 1275
    //                   8: 737
    //                   14: 182
    //                   1549: 1257
    //                   4096: 1307;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13
_L11:
        break; /* Loop/switch isn't completed */
_L1:
        MtvUtilDebug.Error("SDtvControl", (new StringBuilder()).append("Invalid Callback Command [").append(i).append("]. Status [").append(j).append("]. Ignoring ").toString());
_L14:
        MtvUtilDebug.Low("SDtvControl", "Exiting PostServiceCBFromNative()");
        return;
_L3:
        MtvUtilDebug.Low("SDtvControl", "Entered NATIVE_CMD_OPEN");
        switch(j)
        {
        default:
            MtvUtilDebug.Error("SDtvControl", (new StringBuilder()).append("Invalid Callback Status [").append(j).append("] in OPEN Command. Ignoring").toString());
            break;

        case 1285: 
            mRemoteServiceHandler.sendMessage(mRemoteServiceHandler.obtainMessage(1282, j, -1, null));
            break;

        case 4: // '\004'
            MtvUtilDebug.Mid("SDtvControl", "Got PMT from native ");
            sendOpenStatus(4);
            break;

        case 8: // '\b'
            MtvUtilDebug.Mid("SDtvControl", "Got NIT from native ");
            sendOpenStatus(8);
            break;

        case 64: // '@'
            MtvUtilDebug.Mid("SDtvControl", "Got BIT from native ");
            sendOpenStatus(64);
            break;

        case 512: 
            MtvUtilDebug.Low("SDtvControl", "Got EIT from native ");
            obj = new MtvOneSegProgram[50];
            if(mSDtvHdl.getProgramInfo(((MtvOneSegProgram []) (obj))))
                sendSVCThreadMessage(1282, 512, 0, obj);
            else
                MtvUtilDebug.Error("SDtvControl", "Failure in retrieving ProgramInformation!!!");
            break;

        case 256: 
            MtvUtilDebug.Mid("SDtvControl", "Got SDT from native ");
            sendOpenStatus(256);
            break;

        case 32: // ' '
            MtvUtilDebug.Low("SDtvControl", "Got TOT from native ");
            long l = mSDtvHdl.getStreamTime();
            if(l != -1L)
                sendSVCThreadMessage(1282, 32, 0, Long.valueOf(l));
            else
                MtvUtilDebug.Error("SDtvControl", "Failure in retrieving Stream Time!!!");
            break;

        case -1: 
            MtvUtilDebug.Low("SDtvControl", "Got NATIVECB_STAT_FAILURE from CMD_OPEN");
            if(mSDtvHdl != null && isNativeOpen)
            {
                isNativeOpen = false;
                sendSVCThreadMessage(1282, -1, 0, null);
            }
            break;

        case 1: // '\001'
            sendOpenStatus(1);
            break;

        case -4: 
            MtvUtilDebug.Error("SDtvControl", "Got Tuner Failure [Low-Signal initiated] from native");
            if(mSDtvHdl != null && isNativeOpen)
            {
                isNativeOpen = false;
                sendSVCThreadMessage(1282, -1, 0, null);
            }
            break;

        case 4097: 
        case 4099: 
            handleBufferingEvent(i, j);
            break;

        case 1289: 
            sendSVCThreadMessage(1282, 1289, 0, null);
            break;

        case 1292: 
            sendSVCThreadMessage(1282, 1292, 0, null);
            break;

        case 1291: 
            sendSVCThreadMessage(1282, 1291, 0, null);
            break;

        case 1293: 
            sendSVCThreadMessage(4096, 4102, ((byte[])(byte[])obj1).length, obj1);
            break;

        case 1286: 
        case 1287: 
            break;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        if(j == 1)
        {
            isNativeClosing = false;
            sendSVCThreadMessage(1283, 1, 0, null);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        MtvUtilDebug.Error("SDtvControl", "Malfunctioning of Native Processes -- Serious mishap!!!");
        sendSVCThreadMessage(1282, 1294, 0, null);
        continue; /* Loop/switch isn't completed */
_L5:
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("NATIVE_CMD_RESUME status  ").append(j).toString());
        if(j == 1)
            sendSVCThreadMessage(1539, 1, 0, null);
        else
            sendSVCThreadMessage(1539, -1, 0, null);
        continue; /* Loop/switch isn't completed */
_L4:
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("Got NATIVE_CMD_PLAY :").append(j).toString());
        switch(j)
        {
        default:
            MtvUtilDebug.Error("SDtvControl", (new StringBuilder()).append("Invalid Callback Status [").append(j).append("] in PLAY Command. Ignoring").toString());
            break;

        case 1: // '\001'
            sendSVCThreadMessage(4096, 4099, 0, null);
            sendSVCThreadMessage(1538, 1, 0, null);
            break;

        case 4097: 
        case 4099: 
            handleBufferingEvent(i, j);
            break;

        case -1: 
            MtvUtilDebug.High("SDtvControl", "PLAY_FAILURE -- Please confirm if its VDec failure !!");
            sendSVCThreadMessage(1538, -1, 0, null);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L6:
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("NATIVE_CMD_RESUME status  ").append(j).toString());
        if(j == 1)
            sendSVCThreadMessage(1540, 1, 0, null);
        else
            sendSVCThreadMessage(1540, -1, 0, null);
        continue; /* Loop/switch isn't completed */
_L7:
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("NATIVE_CMD_REPOSITION ").append(obj1).toString());
        if(j == 1)
            sendSVCThreadMessage(1541, 1, 0, obj1);
        else
            sendSVCThreadMessage(1541, -1, 0, null);
        continue; /* Loop/switch isn't completed */
_L8:
        switch(j)
        {
        case -1: 
            sendSVCThreadMessage(1542, j, 0, null);
            break;

        case 1290: 
            MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("NATIVE_CMD_SEEK ").append(obj1).toString());
            sendSVCThreadMessage(1542, j, 0, obj1);
            break;

        case 1: // '\001'
            MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("NATIVE_CMD_SEEK ").append(obj1).toString());
            sendSVCThreadMessage(1542, j, 0, obj1);
            break;

        case 1289: 
            sendSVCThreadMessage(1542, j, 0, null);
            break;
        }
        if(false)
            ;
        continue; /* Loop/switch isn't completed */
_L12:
        if(j == 1)
            sendSVCThreadMessage(1549, 1, 0, obj1);
        if(true) goto _L14; else goto _L9
_L9:
        switch(j)
        {
        }
        if(true) goto _L14; else goto _L15
_L15:
_L13:
        switch(j)
        {
        case 4097: 
            sendSVCThreadMessage(4096, 4097, 0, null);
            break;

        case 4098: 
            sendSVCThreadMessage(4096, 4098, 0, null);
            break;

        case 4099: 
            sendSVCThreadMessage(4096, 4099, 0, null);
            break;

        case 4101: 
            sendSVCThreadMessage(4096, 4101, 0, null);
            break;

        case 4103: 
            sendSVCThreadMessage(4096, 4103, 0, null);
            break;

        case 4104: 
            sendSVCThreadMessage(4096, 4104, 0, null);
            break;

        case 4100: 
            sendSVCThreadMessage(4096, 4100, 0, null);
            break;
        }
        if(true) goto _L14; else goto _L16
_L16:
    }

    public static SDtvControl getInstance()
    {
        if(mSDtvHdl == null)
            mSDtvHdl = new SDtvControl();
        return mSDtvHdl;
    }

    public static android.broadcast.oneseg.MtvOneSegService.OneSegSvcState getSvcState()
    {
        return mOneSegRemoteSvcState;
    }

    private static void handleBufferingEvent(int i, int j)
    {
        if(mSDtvHdl != null && !isNativeOpen)
        {
            MtvUtilDebug.High("SDtvControl", "Not in Open State... ! Ignoring Buffering Events !");
        } else
        {
            if(i == 2)
            {
                if(j == 4097)
                {
                    SDtvControl sdtvcontrol = mSDtvHdl;
                    sdtvcontrol.bufferingEventCount = sdtvcontrol.bufferingEventCount + 1;
                    MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("bufferingEventCount   ").append(mSDtvHdl.bufferingEventCount).toString());
                    if(mSDtvHdl.bufferingEventCount <= 24)
                    {
                        if(!mSDtvHdl.mIsBuffering)
                        {
                            sendSVCThreadMessage(4096, 4097, 0, null);
                            mSDtvHdl.mIsBuffering = true;
                        } else
                        {
                            sendSVCThreadMessage(4096, 4098, 0, null);
                        }
                    } else
                    {
                        MtvUtilDebug.High("SDtvControl", "Low Signal Triggered !   ");
                        mSDtvHdl.bufferingEventCount = 0;
                        sendSVCThreadMessage(4096, 4107, 0, null);
                    }
                } else
                if(j == 4099)
                {
                    mSDtvHdl.bufferingEventCount = 0;
                    sendSVCThreadMessage(4096, 4099, 0, null);
                    mSDtvHdl.mIsBuffering = false;
                }
            } else
            if(i == 1)
            {
                SDtvControl sdtvcontrol1 = mSDtvHdl;
                sdtvcontrol1.bufferingEventCount = sdtvcontrol1.bufferingEventCount + 1;
                if(j == 4097)
                {
                    mSDtvHdl.mIsBuffering = false;
                    if(mSDtvHdl.bufferingEventCount >= 10)
                    {
                        if(getSvcState() == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE || getSvcState() == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.REC_OPEN)
                        {
                            MtvUtilDebug.High("SDtvControl", "No Data in Tuner Even After Locking to a  Channel ! Sending Open Failure !");
                            sendSVCThreadMessage(1282, -1, 0, null);
                            isNativeOpen = false;
                        } else
                        if(getSvcState() == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.OPEN)
                        {
                            MtvUtilDebug.High("SDtvControl", " Low Signal Triggered !   ");
                            mSDtvHdl.bufferingEventCount = 0;
                            sendSVCThreadMessage(4096, 4107, 0, null);
                        }
                        mSDtvHdl.bufferingEventCount = 0;
                    }
                } else
                if(j == 4099)
                {
                    mSDtvHdl.bufferingEventCount = 0;
                    mSDtvHdl.mIsBuffering = false;
                }
            }
            if(!mSDtvHdl.mIsBuffering)
            {
                MtvUtilDebug.Low("SDtvControl", "handleBufferingEvent() :: Buffering Completed...");
                return;
            }
        }
    }

    private static native boolean nativeCaptureFrame();

    private static native void nativeClose();

    private static native int nativeDeInitMW();

    private static native boolean nativeDeleteTVRecFile(int i);

    private static native void nativeFinalize();

    private static native int nativeGetAudioSessionId();

    private static native boolean nativeGetComponentInfo(Object obj);

    private static native boolean nativeGetPlayType();

    private static native long nativeGetPlaybackTime();

    private static native boolean nativeGetProgramInfo(Object aobj[]);

    private static native int nativeGetServiceID();

    private static native boolean nativeGetServiceInfo(Object obj);

    private static native boolean nativeGetSignalStatistics(Object obj);

    private static native long nativeGetStreamTimeLongType();

    private static native boolean nativeInitMW();

    private static native boolean nativeOpen(int i, int j, String s, int k);

    private static native boolean nativePause();

    private static native boolean nativePlay();

    private static native boolean nativeRenameTVRecFile(int i, String s);

    private static native boolean nativeReposition(int i);

    private static native boolean nativeResume();

    private static native boolean nativeScan(int i);

    private static native void nativeSetAudioEnable(int i);

    private static native void nativeSetAudioMode(int i);

    private static native void nativeSetDisplay(Surface surface, int i, int j);

    private static native int nativeSetParserFilter(int i);

    private static native void nativeSetSoundEffect(int i, int j);

    private static native boolean nativeSetup(Object obj);

    private static native boolean nativeTrickmode(int i, int j, int k);

    private static native void nativeTunerPowerOff();

    private static native void nativeTunerPowerOn();

    private static native void nativeUpdateTvFilesDB();

    private static native void nativesetFrameRateChange(int i);

    private static void sendOpenStatus(int i)
    {
        boolean flag;
        byte byte0;
        flag = false;
        byte0 = -1;
        if(mSDtvHdl == null) goto _L2; else goto _L1
_L1:
        if(i == 4 || i == 8 || i == 64)
        {
            SDtvControl sdtvcontrol = mSDtvHdl;
            sdtvcontrol.mNativeOpen = sdtvcontrol.mNativeOpen | i;
        }
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("sendOpenStatus :: Native Open is Success. : getSvcState() :").append(getSvcState()).toString());
        if(getSvcState() != android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.CREATE && getSvcState() != android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.REC_OPEN) goto _L4; else goto _L3
_L3:
        if(i != 1) goto _L6; else goto _L5
_L5:
        char c;
        MtvUtilDebug.High("SDtvControl", "sendOpenStatus :: Got OPEN_SUCCESS from backend. Wait for PMT and NIT ");
        c = byte0;
        i = ((flag) ? 1 : 0);
_L8:
        if(1 == i)
        {
            MtvOneSegChannel amtvonesegchannel[] = new MtvOneSegChannel[50];
            if(!mSDtvHdl.getChannelInfo(amtvonesegchannel))
                break; /* Loop/switch isn't completed */
            sendSVCThreadMessage(c, 1, 0, amtvonesegchannel);
        }
_L2:
        return;
_L6:
        i = ((flag) ? 1 : 0);
        c = byte0;
        if(4 == (mSDtvHdl.mNativeOpen & 4))
        {
            i = ((flag) ? 1 : 0);
            c = byte0;
            if(8 == (mSDtvHdl.mNativeOpen & 8))
            {
                i = 1;
                c = '\u0502';
                MtvUtilDebug.High("SDtvControl", "sendOpenStatus :: Recieved PMT and NIT events..  Extracting the SI Information !");
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        if(getSvcState() == android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.SCAN)
        {
            if(i == 1)
            {
                MtvUtilDebug.Low("SDtvControl", "sendOpenStatus :: Got Succes for Scan Operation start!");
                sendSVCThreadMessage(1282, 1, 0, null);
                return;
            }
            i = ((flag) ? 1 : 0);
            c = byte0;
            if(8 == (mSDtvHdl.mNativeOpen & 8))
            {
                i = 1;
                c = '\u0505';
            }
        } else
        {
            MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("SI information recieved in some other state ! ").append(getSvcState()).toString());
            i = 0;
            c = '\u1000';
            MtvOneSegChannel amtvonesegchannel1[] = new MtvOneSegChannel[50];
            if(mSDtvHdl.getChannelInfo(amtvonesegchannel1))
                sendSVCThreadMessage(4096, 4106, 0, amtvonesegchannel1);
            else
                sendSVCThreadMessage(4096, 4106, 0, null);
        }
        if(true) goto _L8; else goto _L7
_L7:
        sendSVCThreadMessage(c, -1, 0, null);
        return;
    }

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
        mOneSegRemoteSvcState = onesegsvcstate;
    }

    public boolean IsLocalPlay()
    {
        return mIsLocalPlay;
    }

    public void SDtvSetDisplay(SurfaceHolder surfaceholder, int i, int j)
    {
        MtvUtilDebug.Low("SDtvControl", "Surface Changed and Sent for native display");
        if(surfaceholder != null && surfaceholder.getSurface() != null)
        {
            nativeSetDisplay(surfaceholder.getSurface(), i, j);
            return;
        } else
        {
            nativeSetDisplay(null, i, j);
            return;
        }
    }

    public boolean captureFrame()
    {
        MtvUtilDebug.Low("SDtvControl", "Capture frame called");
        if(!mIsBuffering)
        {
            return nativeCaptureFrame();
        } else
        {
            MtvUtilDebug.Low("SDtvControl", "Player in Buffering State  , Cannot Capture Frame ! ");
            return false;
        }
    }

    public void close()
    {
        MtvUtilDebug.Low("SDtvControl", "Entered close()");
        mNativeOpen = 0;
        isNativeOpen = false;
        mIsBuffering = false;
        bufferingEventCount = 0;
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting close()");
            return;
        }
        if(isNativeClosing)
        {
            MtvUtilDebug.Low("SDtvControl", "Don't try to close door, which is already closed.!!");
            return;
        } else
        {
            isNativeClosing = true;
            nativeClose();
            setIsLocalPlay(false);
            MtvUtilDebug.High("SDtvControl", "Successfully Closed Native MW");
            MtvUtilDebug.Low("SDtvControl", "Exiting close()");
            return;
        }
    }

    public boolean create()
    {
        MtvUtilDebug.Low("SDtvControl", "Entered create()");
        boolean flag1 = nativeSetup(new WeakReference(this));
        boolean flag = flag1;
        if(flag1)
        {
            MtvUtilDebug.Mid("SDtvControl", "Calling NativeInitMW");
            flag = nativeInitMW();
        }
        if(flag)
            bIsNativeCreateDone = true;
        else
            bIsNativeCreateDone = false;
        MtvUtilDebug.Low("SDtvControl", "Exiting create()");
        return flag;
    }

    public boolean create(Handler handler)
    {
        mRemoteServiceHandler = handler;
        MtvUtilDebug.Low("SDtvControl", "Entered create()");
        boolean flag1 = nativeSetup(new WeakReference(this));
        boolean flag = flag1;
        if(flag1)
        {
            MtvUtilDebug.Mid("SDtvControl", "Calling NativeInitMW");
            flag = nativeInitMW();
        }
        if(flag)
            bIsNativeCreateDone = true;
        else
            bIsNativeCreateDone = false;
        MtvUtilDebug.Low("SDtvControl", "Exiting create()");
        return flag;
    }

    public void delete()
    {
        MtvUtilDebug.Low("SDtvControl", "Entered delete()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            mSDtvHdl = null;
            mNativeOpen = 0;
            isNativeOpen = false;
            MtvUtilDebug.Low("SDtvControl", "Exiting delete()");
            return;
        } else
        {
            nativeDeInitMW();
            nativeFinalize();
            mSDtvHdl = null;
            bIsNativeCreateDone = false;
            mNativeOpen = 0;
            isNativeOpen = false;
            sendSVCThreadMessage(1284, 1, 0, null);
            MtvUtilDebug.Low("SDtvControl", "Exiting delete()");
            return;
        }
    }

    public boolean deleteTVFile(int i)
    {
        MtvUtilDebug.Low("SDtvControl", "Entered deleteTVFile()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting deleteTVFile()");
            return false;
        } else
        {
            boolean flag = nativeDeleteTVRecFile(i);
            MtvUtilDebug.Low("SDtvControl", "Exiting deleteTVFile()");
            return flag;
        }
    }

    public int getAudioSessionId()
    {
        MtvUtilDebug.Low("SDtvControl", "getAudioSessionId called ");
        return nativeGetAudioSessionId();
    }

    public boolean getChannelInfo(MtvOneSegChannel amtvonesegchannel[])
    {
        MtvUtilDebug.Low("SDtvControl", "Entered getChannelInfo()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting getChannelInfo()");
            return false;
        } else
        {
            boolean flag = nativeGetServiceInfo(amtvonesegchannel);
            MtvUtilDebug.Low("SDtvControl", "Exiting getChannelInfo()");
            return flag;
        }
    }

    public String getChnlURI(MtvOneSegChannel mtvonesegchannel)
    {
        Object obj = null;
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting getChnlURI()");
            return null;
        }
        String s = obj;
        if(mtvonesegchannel != null)
        {
            MtvComponent mtvcomponent = new MtvComponent();
            s = obj;
            if(mtvcomponent != null)
            {
                s = obj;
                if(mSDtvHdl.getComponentInfo(mtvcomponent))
                {
                    int i;
                    if(IsLocalPlay())
                        i = 1;
                    else
                        i = 2;
                    s = (new MtvOneSegPlayer(mtvonesegchannel.getServName(), mtvcomponent.getVideo(), mtvcomponent.getAudio(), mtvcomponent.getCaption())).getOpenURI(i);
                    MtvUtilDebug.Low("SDtvControl", s);
                }
            }
        }
        return s;
    }

    public boolean getComponentInfo(MtvComponent mtvcomponent)
    {
        MtvUtilDebug.Low("SDtvControl", "Entered getComponentInfo()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting getComponentInfo()");
            return false;
        } else
        {
            boolean flag = nativeGetComponentInfo(mtvcomponent);
            MtvUtilDebug.Low("SDtvControl", "Exiting getComponentInfo()");
            return flag;
        }
    }

    public long getPlaybackTime()
    {
        MtvUtilDebug.Low("SDtvControl", "getPlaybackTime called");
        return nativeGetPlaybackTime();
    }

    public boolean getProgramInfo(MtvOneSegProgram amtvonesegprogram[])
    {
        MtvUtilDebug.Low("SDtvControl", "Entered getProgramInfo()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting getProgramInfo()");
            return false;
        } else
        {
            boolean flag = nativeGetProgramInfo(amtvonesegprogram);
            MtvUtilDebug.Low("SDtvControl", "Exiting getProgramInfo()");
            return flag;
        }
    }

    public boolean getSigStats(MtvOneSegSignal mtvonesegsignal)
    {
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting getSigStats()");
            return false;
        } else
        {
            return nativeGetSignalStatistics(mtvonesegsignal);
        }
    }

    public long getStreamTime()
    {
        MtvUtilDebug.Low("SDtvControl", "Entered getStreamTime()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting getStreamTime()");
            return -1L;
        } else
        {
            long l = nativeGetStreamTimeLongType();
            MtvUtilDebug.Low("SDtvControl", "Exiting getStreamTime()");
            return l;
        }
    }

    public boolean open(int i, int j, String s, int k)
    {
        MtvUtilDebug.Low("SDtvControl", "Entered open()");
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("open: playType [").append(i).append("] chnlNum [").append(j).append("] fPath [").append(s).append("] fileIndex [").append(k).append("]").toString());
        mIsBuffering = false;
        bufferingEventCount = 0;
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting open()");
            return false;
        }
        if(4 == i)
            i = 2;
        isNativeOpen = true;
        if(isNativeClosing)
            MtvUtilDebug.Low("SDtvControl", "nativeClose didnt give response, still opening new one. Lets check later!");
        isNativeClosing = false;
        boolean flag = nativeOpen(i, j, s, k);
        if(!flag)
            isNativeOpen = false;
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("Exiting open() ").append(isNativeOpen).toString());
        return flag;
    }

    public boolean pause()
    {
        MtvUtilDebug.Low("SDtvControl", "Pause called");
        return nativePause();
    }

    public boolean renameTVFile(int i, String s)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("Entered renameTVFile() fileIndex[").append(i).append("] renameString[").append(s).append("] bytelength[").append(s.getBytes().length).append("]").toString());
        boolean flag = nativeRenameTVRecFile(i, s);
        StringBuilder stringbuilder = (new StringBuilder()).append("Exiting renameTvFile() with ");
        if(flag)
            s = "Success";
        else
            s = "Fail";
        MtvUtilDebug.Low("SDtvControl", stringbuilder.append(s).toString());
        return flag;
    }

    public boolean reposition(int i)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("Reposition called [").append(i).append("]").toString());
        return nativeReposition(i);
    }

    public boolean resume()
    {
        MtvUtilDebug.Low("SDtvControl", "Resume called");
        return nativeResume();
    }

    public boolean scanChannel(int i)
    {
        MtvUtilDebug.Low("SDtvControl", "Entered scanChannel()");
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting scanChannel()");
            return false;
        }
        boolean flag1 = nativeScan(i);
        boolean flag = flag1;
        if(flag1)
            if(nativeSetParserFilter(32) == 1)
            {
                MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("Lucky You!! Chnl [").append(i).append("] is available and successfully set the Scan filter too!").toString());
                flag = flag1;
            } else
            {
                flag = false;
            }
        MtvUtilDebug.Low("SDtvControl", "Exiting scanChannel()");
        return flag;
    }

    public void setAudioEnable(int i)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("setAudioEnable called [").append(i).append("]").toString());
        nativeSetAudioEnable(i);
    }

    public void setAudioMode(int i)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("setAudioMode called [").append(i).append("]").toString());
        nativeSetAudioMode(i);
    }

    public void setFrameRateChange(int i)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("setFrameRateChange called [").append(i).append("]").toString());
        nativesetFrameRateChange(i);
    }

    public void setIsLocalPlay(boolean flag)
    {
        mIsLocalPlay = flag;
    }

    public void setSoundEffect(int i, int j)
    {
        MtvUtilDebug.High("SDtvControl", (new StringBuilder()).append("setSoundEffect called [").append(i).append("] [").append(j).append("]").toString());
        nativeSetSoundEffect(i, j);
    }

    public boolean trickmode(int i, int j, int k)
    {
        MtvUtilDebug.Low("SDtvControl", (new StringBuilder()).append("Trickmode called [").append(i).append("] [").append(j).append("] [").append(k).append("]").toString());
        return nativeTrickmode(i, j, k);
    }

    public void tunerPowerCtrl(boolean flag)
    {
        if(!bIsNativeCreateDone)
        {
            MtvUtilDebug.Low("SDtvControl", "Native Create not yet done!! Do Create First!!");
            MtvUtilDebug.Low("SDtvControl", "Exiting tunerPowerCtrl()");
            return;
        }
        if(flag)
        {
            nativeTunerPowerOn();
            return;
        } else
        {
            nativeTunerPowerOff();
            return;
        }
    }

    public void updateTVFilesDB()
    {
        MtvUtilDebug.Low("SDtvControl", "updateTVFilesDB - Start");
        nativeUpdateTvFilesDB();
        MtvUtilDebug.Low("SDtvControl", "updateTVFilesDB - Exit");
    }

    public static final int CMD_BASE = 1280;
    public static final int CMD_CLOSE = 1283;
    public static final int CMD_DEINIT = 1284;
    public static final int CMD_INIT = 1281;
    public static final int CMD_OPEN = 1282;
    public static final int CMD_SCAN = 1285;
    static final int MAX_BUFFERING_EVENT_COUNT = 24;
    public static final int NATIVECB_START_STOP_DONE = 1292;
    public static final int NATIVECB_STAT_ABNORMAL_FAILURE = 1294;
    public static final int NATIVECB_STAT_AUDIO_PES_READY = 1281;
    public static final int NATIVECB_STAT_BASE = 1280;
    public static final int NATIVECB_STAT_BIT_RCV = 64;
    public static final int NATIVECB_STAT_BML_DSMCC_READY = 1284;
    public static final int NATIVECB_STAT_BUFFERING_BEGIN = 4097;
    public static final int NATIVECB_STAT_BUFFERING_COMPLETED = 4099;
    public static final int NATIVECB_STAT_BUFFERING_PROGRESS = 4098;
    public static final int NATIVECB_STAT_CAPTION = 4102;
    public static final int NATIVECB_STAT_CAPTION_RCV = 1293;
    public static final int NATIVECB_STAT_CAPT_PES_READY = 1283;
    public static final int NATIVECB_STAT_CAT_RCV = 128;
    public static final int NATIVECB_STAT_EIT_RCV = 512;
    public static final int NATIVECB_STAT_END_OF_FILE = 1289;
    public static final int NATIVECB_STAT_FAILURE = -1;
    public static final int NATIVECB_STAT_MEDIA_ERROR = 4100;
    public static final int NATIVECB_STAT_NIT_RCV = 8;
    public static final int NATIVECB_STAT_NOMEMORY = -2;
    public static final int NATIVECB_STAT_PARSER_FAILURE = -3;
    public static final int NATIVECB_STAT_PAT_RCV = 2;
    public static final int NATIVECB_STAT_PCR_UPDATE = 1287;
    public static final int NATIVECB_STAT_PMT_CHANGE = 1285;
    public static final int NATIVECB_STAT_PMT_RCV = 4;
    public static final int NATIVECB_STAT_PMT_UPDATE = 1286;
    public static final int NATIVECB_STAT_REC_NOTALLOWED = -8;
    public static final int NATIVECB_STAT_SDT_RCV = 256;
    public static final int NATIVECB_STAT_SEEK_PROGRESS = 1290;
    public static final int NATIVECB_STAT_SHORT_CLIP = 1291;
    public static final int NATIVECB_STAT_SIGNAL = 4101;
    public static final int NATIVECB_STAT_SUCCESS = 1;
    public static final int NATIVECB_STAT_TIME_UPDT = 4103;
    public static final int NATIVECB_STAT_TOT_RCV = 32;
    public static final int NATIVECB_STAT_TRICKMODE_END = 4105;
    public static final int NATIVECB_STAT_TUNER_FAILURE = -4;
    public static final int NATIVECB_STAT_TUNER_TIMEOUT = -5;
    public static final int NATIVECB_STAT_USER_INFO_UPDATE = 1288;
    public static final int NATIVECB_STAT_VIDEORATIO_UPDT = 4104;
    public static final int NATIVECB_STAT_VIDEO_PES_READY = 1282;
    public static final int NATIVE_CMD_ABNORMAL_DEATH = -100;
    private static final int NATIVE_CMD_CLOSE = 8;
    private static final int NATIVE_CMD_DEINIT = 14;
    private static final int NATIVE_CMD_INIT = 0;
    protected static final int NATIVE_CMD_OPEN = 1;
    private static final int NATIVE_CMD_PAUSE = 3;
    private static final int NATIVE_CMD_PLAY = 2;
    protected static final int NATIVE_CMD_RECCANCEL = 11;
    protected static final int NATIVE_CMD_RECCLOSE = 13;
    protected static final int NATIVE_CMD_RECOPEN = 9;
    protected static final int NATIVE_CMD_RECSTART = 10;
    protected static final int NATIVE_CMD_RECSTOP = 12;
    private static final int NATIVE_CMD_REPOSITION = 5;
    private static final int NATIVE_CMD_RESUME = 4;
    private static final int NATIVE_CMD_SEEK = 6;
    private static final int NATIVE_CMD_SEEK_SYNC_TIME = 7;
    public static final int NATIVE_MAX_PHYSICALIDS = 50;
    public static final int NATIVE_MAX_PROGRAMS = 50;
    public static final int NATIVE_PARSERFILT_ALL = 63;
    public static final int NATIVE_PARSERFILT_SCAN = 32;
    public static final int NATIVE_PARSERFILT_SIPSI = 1;
    public static final int SDTV_CMD_ABNORMAL_DEATH = -100;
    public static final int SDTV_CMD_CAPT_FRAME = 1549;
    public static final int SDTV_CMD_CLOSE = 1543;
    public static final int SDTV_CMD_DEINIT = 1547;
    public static final int SDTV_CMD_INIT = 1536;
    public static final int SDTV_CMD_PAUSE = 1539;
    public static final int SDTV_CMD_PLAY = 1538;
    public static final int SDTV_CMD_RECCANCEL = 1545;
    public static final int SDTV_CMD_RECSTART = 1544;
    public static final int SDTV_CMD_RECSTOP = 1546;
    public static final int SDTV_CMD_REPOSITION = 1541;
    public static final int SDTV_CMD_RESUME = 1540;
    public static final int SDTV_CMD_SCAN = 1548;
    public static final int SDTV_CMD_SEEK = 1542;
    public static final int SDTV_CMD_UPDATE = 4096;
    public static final int SDTV_MAX_PROGRAMS = 20;
    public static final int SDTV_PARSERFILT_ALL = 63;
    public static final int SDTV_PARSERFILT_SCAN = 32;
    public static final int SDTV_PARSERFILT_SIPSI = 1;
    public static final int SDTV_STAT_CHANNEL_INFO = 4106;
    public static final int SDTV_STAT_PMT_RCV = 4108;
    public static final int SDTV_STAT_TUNER_LOW_SIGNAL = 4107;
    public static final int STACK_CMD_END = 1286;
    private static final String TAG = "SDtvControl";
    private static boolean isNativeClosing = false;
    private static boolean isNativeOpen = false;
    private static android.broadcast.oneseg.MtvOneSegService.OneSegSvcState mOneSegRemoteSvcState;
    private static Handler mRemoteServiceHandler = null;
    private static SDtvControl mSDtvHdl = null;
    private boolean bIsNativeCreateDone;
    private int bufferingEventCount;
    private boolean mIsBuffering;
    private boolean mIsLocalPlay;
    private int mNativeOpen;

    static 
    {
        mOneSegRemoteSvcState = android.broadcast.oneseg.MtvOneSegService.OneSegSvcState.IDLE;
    }
}
