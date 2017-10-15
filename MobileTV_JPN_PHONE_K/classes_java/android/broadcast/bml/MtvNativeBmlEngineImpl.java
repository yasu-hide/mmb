// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package android.broadcast.bml;

import android.broadcast.helper.MtvUtilDebug;
import android.content.Context;
import android.media.MediaPlayer;
import android.os.Handler;
import com.access.bml.BMLNativeCallbacks;
import com.access.bml.BMLNativeView;
import java.io.*;
import java.util.HashMap;
import java.util.Stack;

// Referenced classes of package android.broadcast.bml:
//            IMtvNativeBmlEngineListener, IMtvNativeBmlViewListener

class MtvNativeBmlEngineImpl extends BMLNativeCallbacks
{
    private class BMLAudio
        implements android.media.MediaPlayer.OnErrorListener, android.media.MediaPlayer.OnCompletionListener, android.media.MediaPlayer.OnPreparedListener
    {

        public byte[] getIn_data()
        {
            return in_data;
        }

        public int getIn_mime()
        {
            return in_mime;
        }

        public void onCompletion(MediaPlayer mediaplayer)
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BMLAudio: ").append(in_object_id).append("isCompleted.").append(in_status).toString());
            if(in_status == 2)
            {
                return;
            } else
            {
                fMediaStopped_EventType = 9005;
                fMediaStopped_ObjectID = in_object_id;
                BML_PostDTVBEvent_MediaStopped(0);
                return;
            }
        }

        public boolean onError(MediaPlayer mediaplayer, int i, int j)
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BMLAudio: ").append(in_object_id).append("onError.").toString());
            return false;
        }

        public void onPrepared(MediaPlayer mediaplayer)
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BMLAudio: ").append(in_object_id).append("isPrepared.").toString());
            isReady = true;
        }

        public void setIn_data(byte abyte0[])
        {
            in_data = abyte0;
        }

        public void setIn_mime(int i)
        {
            in_mime = i;
        }

        private byte in_data[];
        private int in_mime;
        String in_object_id;
        int in_status;
        boolean isReady;
        public MediaPlayer mp;
        public String streamFileName;
        final MtvNativeBmlEngineImpl this$0;

        private BMLAudio()
        {
            this$0 = MtvNativeBmlEngineImpl.this;
            super();
            in_data = null;
            in_mime = 0;
            in_status = 0;
            isReady = false;
            in_object_id = null;
        }

    }


    private MtvNativeBmlEngineImpl(Context context)
    {
        super(context);
        maxAudioHashNum = 0;
        mSetKeyMasking = 0;
        mBmlViewListener = null;
        mBmlEngineListener = null;
        intResult = -1;
        isWaiting = false;
        mBmlHandler = new Handler() {

            final MtvNativeBmlEngineImpl this$0;

            
            {
                this$0 = MtvNativeBmlEngineImpl.this;
                super();
            }
        }
;
    }

    static String byteArrayToString(byte abyte0[])
    {
        try
        {
            abyte0 = new String(abyte0, "UTF-8");
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            MtvUtilDebug.Low("BmlEngineImpl", "UnsupportedEncodingException");
            return new String("");
        }
        return abyte0;
    }

    public static MtvNativeBmlEngineImpl getInstance(Context context)
    {
        if(context == null)
            return null;
        if(nBmlEngine == null)
        {
            nBmlEngine = new MtvNativeBmlEngineImpl(context);
            mURLstack = new Stack();
        }
        nBmlEngine.mContext = context;
        return nBmlEngine;
    }

    public void BML_CB_Audio_ClosePeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_ClosePeer: ").append(i).toString());
        if(!audioHash.containsKey(Integer.toString(i)))
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_ClosePeer:").append(i).append("th audio does not exist.").toString());
            return;
        } else
        {
            BMLAudio bmlaudio = (BMLAudio)audioHash.get(Integer.toString(i));
            bmlaudio.mp.release();
            mContext.deleteFile(bmlaudio.streamFileName);
            audioHash.remove(Integer.toString(i));
            return;
        }
    }

    public int BML_CB_Audio_GetStatusPeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_GetStatusPeer: ").append(i).toString());
        byte byte0 = -1;
        BMLAudio bmlaudio = (BMLAudio)audioHash.get(Integer.toString(i));
        i = byte0;
        if(bmlaudio != null)
            i = bmlaudio.in_status;
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_GetStatusPeer: return ").append(i).toString());
        return i;
    }

    public int BML_CB_Audio_OpenPeer(byte abyte0[], int i, int j, byte abyte1[])
    {
        int k;
        boolean flag;
        String s = byteArrayToString(abyte1);
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_OpenPeer: mime ").append(i).append(", object_id st_").append(s).append(", status ").append(j).toString());
        flag = false;
        k = 0;
_L8:
        int l = ((flag) ? 1 : 0);
        if(k > maxAudioHashNum + 1) goto _L2; else goto _L1
_L1:
        Object obj;
        BMLAudio bmlaudio;
        if(audioHash.containsKey(Integer.toString(k)))
            break MISSING_BLOCK_LABEL_686;
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(k).append("th Sound does not exist.").toString());
        bmlaudio = new BMLAudio();
        bmlaudio.setIn_data((byte[])abyte0.clone());
        bmlaudio.setIn_mime(i);
        bmlaudio.in_status = j;
        bmlaudio.in_object_id = byteArrayToString(abyte1);
        bmlaudio.isReady = false;
        audioHash.put(Integer.toString(k), bmlaudio);
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(k).append("th Sound is added to audioHash").toString());
        bmlaudio.streamFileName = (new StringBuilder()).append("BMLAudio").append(Integer.toString(k)).append(".mp4").toString();
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("Writing BML Audio file(").append(bmlaudio.streamFileName).append("):").toString());
        obj = null;
        abyte1 = null;
        FileOutputStream fileoutputstream = mContext.openFileOutput(bmlaudio.streamFileName, 0);
        abyte1 = fileoutputstream;
        obj = fileoutputstream;
        fileoutputstream.write(abyte0);
        if(fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte0[])
            {
                abyte0.printStackTrace();
            }
_L3:
        abyte1 = null;
        abyte0 = null;
        obj = mContext.openFileInput(bmlaudio.streamFileName);
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        bmlaudio.mp = new MediaPlayer();
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        bmlaudio.mp.setDataSource(((FileInputStream) (obj)).getFD());
_L4:
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        bmlaudio.mp.setOnPreparedListener(bmlaudio);
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        bmlaudio.mp.setOnCompletionListener(bmlaudio);
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        bmlaudio.mp.prepare();
_L6:
        Object obj1;
        if(obj != null)
            try
            {
                ((FileInputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte0[])
            {
                abyte0.printStackTrace();
            }
_L5:
        l = k;
        if(k >= maxAudioHashNum)
        {
            maxAudioHashNum = k;
            l = k;
        }
_L2:
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_OpenPeer: return ").append(l).toString());
        return l;
        abyte0;
        obj = abyte1;
        abyte0.printStackTrace();
        if(abyte1 != null)
            try
            {
                abyte1.close();
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte0[])
            {
                abyte0.printStackTrace();
            }
          goto _L3
        abyte0;
        if(obj != null)
            try
            {
                ((FileOutputStream) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte1[])
            {
                abyte1.printStackTrace();
            }
        throw abyte0;
        obj1;
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        ((IllegalArgumentException) (obj1)).printStackTrace();
          goto _L4
        obj;
        abyte1 = abyte0;
        ((FileNotFoundException) (obj)).printStackTrace();
        if(abyte0 != null)
            try
            {
                abyte0.close();
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte0[])
            {
                abyte0.printStackTrace();
            }
          goto _L5
        obj1;
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        ((IllegalStateException) (obj1)).printStackTrace();
          goto _L4
        abyte0;
        Object obj2;
        if(abyte1 != null)
            try
            {
                abyte1.close();
            }
            // Misplaced declaration of an exception variable
            catch(byte abyte1[])
            {
                abyte1.printStackTrace();
            }
        throw abyte0;
        obj2;
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        ((IOException) (obj2)).printStackTrace();
          goto _L4
        obj2;
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        ((IllegalStateException) (obj2)).printStackTrace();
          goto _L6
        obj2;
        abyte0 = ((byte []) (obj));
        abyte1 = ((byte []) (obj));
        ((IOException) (obj2)).printStackTrace();
          goto _L6
        MtvUtilDebug.Low("BmlEngineImpl", "Inside else statement2");
        k++;
        if(true) goto _L8; else goto _L7
_L7:
    }

    public int BML_CB_Audio_SetStatusPeer(int i, int j)
    {
        BMLAudio bmlaudio;
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Audio_SetStatusPeer: in_id ").append(i).append(",in_status ").append(j).toString());
        bmlaudio = (BMLAudio)audioHash.get(Integer.toString(i));
        if(bmlaudio == null)
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(i).append("th element does not exist.").toString());
            return -1;
        }
        j;
        JVM INSTR tableswitch 0 2: default 108
    //                   0 110
    //                   1 271
    //                   2 223;
           goto _L1 _L2 _L3 _L4
_L1:
        return 0;
_L2:
        if(bmlaudio.in_status == 1)
        {
            bmlaudio.mp.stop();
            bmlaudio.in_status = 0;
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(": in_id").append(i).append("  SLIM_DTV_AUDIO_STATUS_STOP").toString());
            fMediaStopped_EventType = 9005;
            fMediaStopped_ObjectID = bmlaudio.in_object_id;
            BML_PostDTVBEvent_MediaStopped(0);
        } else
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(": in_id").append(i).append(" is not played yet! So no need to stop Media Player !").toString());
        }
        continue; /* Loop/switch isn't completed */
_L4:
        bmlaudio.mp.stop();
        bmlaudio.in_status = 0;
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(": in_id").append(i).append("  SLIM_DTV_AUDIO_STATUS_STOP_NOEVENT").toString());
        continue; /* Loop/switch isn't completed */
_L3:
        int k = 0;
        while(k <= maxAudioHashNum) 
        {
            if(audioHash.containsKey(Integer.toString(k)) && ((BMLAudio)audioHash.get(Integer.toString(k))).in_status == 1)
                MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(i).append(" is playing continue previous sound!").append(j).toString());
            else
                MtvUtilDebug.Low("BmlEngineImpl", "Inside else statement3");
            k++;
        }
        if(!bmlaudio.isReady)
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(": in_id").append(i).append("is not Ready").toString());
            return -3;
        }
        bmlaudio.in_status = 1;
        bmlaudio.mp.start();
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append(": in_id").append(i).append("  SLIM_DTV_AUDIO_STATUS_PLAY").toString());
        if(true) goto _L1; else goto _L5
_L5:
    }

    public int BML_CB_CancelModalState()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_CancelModalState]");
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        return 0;
    }

    public void BML_CB_Control_FinalizePeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_Control_FinalizePeer SHOULD be overrided by OEM");
        audioHash.clear();
        maxAudioHashNum = 0;
    }

    public int BML_CB_Control_InitializePeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_InitializePeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_profile:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        maxAudioHashNum = 0;
        return 0;
    }

    public void BML_CB_Control_NotifyDocumentPeer(int i, int j, byte abyte0[])
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_NotifyDocumentPeer]");
        if(!MtvUtilDebug.isReleaseMode())
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_component_tag:").append(i).toString());
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_module_id:").append(j).toString());
        }
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_resource:").append(new String(abyte0)).toString());
    }

    public void BML_CB_Control_NotifyHaltPeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_NotifyHaltPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_status:").append(i).toString());
        if(i == 1 && mBmlEngineListener != null)
            mBmlEngineListener.onBmlEngineStateChange(1, i, 0, null);
        if(i == 8)
        {
            MtvUtilDebug.Low("BmlEngineImpl", "need to call book bml_engine.BML_NotifyServiceChangedByBookmark");
            if(mBmlEngineListener != null)
                mBmlEngineListener.onBmlEngineStateChange(8, i, 0, null);
        }
        if(i == 0 && mBmlEngineListener != null)
            mBmlEngineListener.onBmlEngineStateChange(0, 0, 0, null);
    }

    public void BML_CB_Control_NotifyLocationPeer(byte abyte0[])
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_NotifyLocationPeer]");
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_uri:").append(new String(abyte0)).toString());
    }

    public void BML_CB_Control_NotifyServicePeer(int i, int j, int k)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_NotifyServicePeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_original_network_id:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_transport_stream_id:").append(j).toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_service_id:").append(k).toString());
    }

    public int BML_CB_Control_PlayRomSoundPeer(byte abyte0[])
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_PlayRomSoundPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_sound_id:").append(new String(abyte0)).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        boolean flag1 = false;
        boolean flag2 = false;
        abyte0 = new String(abyte0);
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_Control_PlayRomSoundPeer:").append(abyte0).toString());
        int i = 0;
        int j;
label0:
        do
        {
label1:
            {
                boolean flag = flag2;
                j = ((flag1) ? 1 : 0);
                if(i < 16)
                {
                    if(!Integer.toString(i).equals(abyte0))
                        break label1;
                    flag = true;
                    j = i;
                }
                if(!flag)
                    return -1011;
                break label0;
            }
            i++;
        } while(true);
        abyte0 = new MediaPlayer();
        abyte0.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            public void onCompletion(MediaPlayer mediaplayer)
            {
                try
                {
                    mediaplayer.stop();
                    mediaplayer.release();
                    return;
                }
                // Misplaced declaration of an exception variable
                catch(MediaPlayer mediaplayer)
                {
                    mediaplayer.printStackTrace();
                }
            }

            final MtvNativeBmlEngineImpl this$0;

            
            {
                this$0 = MtvNativeBmlEngineImpl.this;
                super();
            }
        }
);
        try
        {
            abyte0.setDataSource((new StringBuilder()).append("/system/etc/one-seg/bmlrom_").append(j).append(".wav").toString());
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
        }
        catch(IllegalStateException illegalstateexception)
        {
            illegalstateexception.printStackTrace();
        }
        catch(IOException ioexception)
        {
            ioexception.printStackTrace();
        }
        try
        {
            abyte0.prepare();
        }
        catch(IllegalStateException illegalstateexception1)
        {
            illegalstateexception1.printStackTrace();
        }
        catch(IOException ioexception1)
        {
            ioexception1.printStackTrace();
        }
        abyte0.start();
        return 0;
    }

    public int BML_CB_Control_SaveImageToMemoryCardPeer(int i, byte abyte0[], boolean flag, byte abyte1[])
    {
        if(mBmlViewListener != null)
            return mBmlViewListener.cb_storeImage(abyte0, flag, abyte1);
        else
            return 0;
    }

    public void BML_CB_Control_SaveImageToMemoryCard_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_SaveImageToMemoryCard_CancelPeer]");
        if(intResult == -3 || intResult == -2)
            intResult = -1;
    }

    public void BML_CB_Control_SetTitlePeer(byte abyte0[])
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Control_SetTitlePeer]");
    }

    public void BML_CB_DTV_EVENT_DATAEVENTCHANGED(int i, int j, int k)
    {
        if(BML_GetHaltStatus() != -1)
        {
            w = Browser_WindowNew();
            if(!MtvUtilDebug.isReleaseMode())
                MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_DTV_EVENT_DATAEVENTCHANGED:").append(w).toString());
            BML_SetBrowserWindow(w);
            BML_EscapeHalt();
            if(mBmlViewListener != null)
                mBmlViewListener.cb_updateBMLSurfaceView();
        }
    }

    public void BML_CB_DTV_EVENT_HALT(int i)
    {
    }

    public void BML_CB_DTV_EVENT_RETURNTOENTRY()
    {
        if(BML_GetHaltStatus() != -1)
        {
            return;
        } else
        {
            BML_NotifyReturnToEntry();
            return;
        }
    }

    public void BML_CB_DTV_EVENT_SERVICECHANGED(int i, int j, int k, int l)
    {
        w = Browser_WindowNew();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_DTV_EVENT_SERVICECHANGED:").append(w).toString());
        mfOriginalNetworkID = i;
        mfTransportStreamID = j;
        mfServiceID = k;
        BML_SetBrowserWindow(w);
        BML_EscapeHalt();
        if(mBmlViewListener != null)
            mBmlViewListener.cb_updateBMLSurfaceView();
        BML_NotifyServiceChanged(i, j, k, l);
    }

    public int BML_CB_Engine_Halt()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Engine_Status]");
        return 0;
    }

    public void BML_CB_Event_SetEventMaskPeer_MediaStopped(int i)
    {
    }

    public int BML_CB_Event_SetUsedKeyListPeer(int i)
    {
        setKeyPad_mask(i);
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_Event_SetUsedKeyListPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_mask:").append(i).toString());
        i;
        JVM INSTR lookupswitch 5: default 88
    //                   0: 106
    //                   1: 116
    //                   4: 126
    //                   16: 136
    //                   32: 147;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        mBmlHandler.post(new Runnable() {

            public void run()
            {
                if(mBmlViewListener != null)
                    mBmlViewListener.cb_KeyPadTypeChanged();
            }

            final MtvNativeBmlEngineImpl this$0;

            
            {
                this$0 = MtvNativeBmlEngineImpl.this;
                super();
            }
        }
);
        return 0;
_L2:
        mSetKeyMasking = mSetKeyMasking | 0;
_L3:
        mSetKeyMasking = mSetKeyMasking | 1;
_L4:
        mSetKeyMasking = mSetKeyMasking | 4;
_L5:
        mSetKeyMasking = mSetKeyMasking | 0x10;
_L6:
        mSetKeyMasking = mSetKeyMasking | 0x20;
        if(true) goto _L1; else goto _L7
_L7:
    }

    public int BML_CB_ExecuteHalt(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_ExecuteHalt]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_halt_status:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_ExecuteHalt(").append(i).append(") ").toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_ExecuteHalt: BML Engine is Halted because of (").append(i).append(")").toString());
        if(i == 3)
            mTuneAvailable = true;
        if(i == 1 && m_BMLView != null)
            m_BMLView.updateCanvasColor(0xff000000);
        if(mBmlViewListener != null)
            mBmlViewListener.cb_haltExecuted(i);
        Browser_WindowDelete();
        BML_SetBrowserWindow(0);
        BML_CompleteHalt(i);
        isWaiting = false;
        clearBMLBackLocation();
        if(i == 3)
        {
            MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_ExecuteHalt posting runnable ");
            mBmlHandler.post(new Runnable() {

                public void run()
                {
                    MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_ExecuteHalt posting runnable BML_NotifyServiceChanged");
                    BML_NotifyServiceChanged(MtvNativeBmlEngineImpl.mfOriginalNetworkID, MtvNativeBmlEngineImpl.mfTransportStreamID, MtvNativeBmlEngineImpl.mfServiceID, 128);
                }

                final MtvNativeBmlEngineImpl this$0;

            
            {
                this$0 = MtvNativeBmlEngineImpl.this;
                super();
            }
            }
);
        }
        return 0;
    }

    public void BML_CB_NotifyEnterUnload(boolean flag)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_NotifyEnterUnload]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_enter:").append(flag).toString());
    }

    public void BML_CB_NotifyTransitionDone()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_NotifyTransitionDone");
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_NotifyTransitionDone:");
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_NotifyTransitionDone: First drawing has been completed");
    }

    public int BML_CB_SetFullDataDisplayArea(int i, int j)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_SetFullDataDisplayArea]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_mode:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_by:").append(j).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_SetFullDataDisplayArea(mode ").append(i).append("  by ").append(j).append(")").toString());
        if(i != 1) goto _L2; else goto _L1
_L1:
        if(mBmlViewListener != null)
            mBmlViewListener.cb_setBMLFullView();
_L4:
        return 0;
_L2:
        if(i == 0)
        {
            if(mBmlViewListener != null)
                mBmlViewListener.cb_updateBMLSurfaceView();
        } else
        {
            MtvUtilDebug.Low("BmlEngineImpl", "Invalid DisplayMode ");
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public int BML_CB_System_EnterStatusPeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_System_EnterStatusPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_status:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        return 0;
    }

    public int BML_CB_System_LeaveStatusPeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_System_LeaveStatusPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_status:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        return 0;
    }

    public int BML_CB_System_NotifyErrorPeer(int i)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_System_NotifyErrorPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_status:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        return 0;
    }

    public int BML_CB_XDPA_MailToPeer(byte abyte0[], byte abyte1[], byte abyte2[])
    {
        if(mBmlViewListener != null)
            mBmlViewListener.cb_mailToPeer(abyte0, abyte1, abyte2);
        return 0;
    }

    public void BML_CB_XDPA_MailTo_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_MailTo_CancelPeer");
        if(intResult == -3 || intResult == -2)
            intResult = -1;
    }

    public int BML_CB_XDPA_PhoneToPeer(String s)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_PhoneToPeer:");
        if(mBmlViewListener != null)
            mBmlViewListener.cb_phoneToPeer(s);
        return 0;
    }

    public void BML_CB_XDPA_PhoneTo_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_PhoneTo_CancelPeer SHOULD be overrided by OEM");
        if(intResult == -3 || intResult == -2)
            intResult = -1;
    }

    public int BML_CB_XDPA_SaveExAppFilePeer(byte abyte0[], byte abyte1[], byte abyte2[], boolean flag)
    {
        return -1002;
    }

    public void BML_CB_XDPA_SaveExAppFile_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_SaveExAppFile_CancelPeer:");
    }

    public int BML_CB_XDPA_StartResidentAppPeer(byte abyte0[], int i, byte abyte1[], String as[])
    {
        if(mBmlViewListener != null)
            mBmlViewListener.cb_startResidentAppPeer(abyte0, i, abyte1, as);
        return 0;
    }

    public void BML_CB_XDPA_StartResidentApp_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_StartResidentApp_CancelPeer:");
    }

    public int BML_CB_XDPA_TuneWithRFPeer(int i, int j, int k, int l)
    {
        MtvUtilDebug.Low("BmlEngineImpl", "[BML_CB_XDPA_TuneWithRFPeer]");
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_freq_channel_no:").append(i).toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_service_id:").append(j).toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_mode:").append(k).toString());
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("[Input]in_guard_interval:").append(l).toString());
        MtvUtilDebug.Low("BmlEngineImpl", "[Output] Result:0");
        return -1002;
    }

    public int BML_CB_XDPA_WriteAddressBookInfoPeer(byte abyte0[], byte abyte1[], String s, String s1)
    {
        if(mBmlViewListener != null)
            mBmlViewListener.cb_writeAddressBookInfoPeer(abyte0, abyte1, s, s1);
        return 0;
    }

    public void BML_CB_XDPA_WriteAddressBookInfo_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_WriteAddressBookInfo_CancelPeer:");
    }

    public int BML_CB_XDPA_WriteSchInfoPeer(short word0, int i, int j, int k, int l, int i1, int j1, 
            short word1, byte abyte0[], byte abyte1[], boolean flag)
    {
        if(mBmlViewListener != null)
            mBmlViewListener.cb_writeSchInfoPeer(word0, i, j, k, l, i1, j1, word1, abyte0, abyte1, flag);
        return 0;
    }

    public void BML_CB_XDPA_WriteSchInfo_CancelPeer()
    {
        MtvUtilDebug.Low("BmlEngineImpl", "BML_CB_XDPA_WriteSchInfo_CancelPeer:");
    }

    public boolean BML_CB_appExIMEStartPeer(byte abyte0[], boolean flag, boolean flag1, int i, int j)
    {
        if(mBmlViewListener != null)
            mBmlViewListener.cb_appIMEStartPeer(abyte0, flag, flag1, i, j);
        return true;
    }

    public boolean BML_DTVNVRAMDB_DeleteAllAffiliationAreas()
    {
        return DTVNVRAMDB_DeleteAllAffiliationAreas();
    }

    public boolean BML_DTVNVRAMDB_DeleteAllCproBMInfo()
    {
        return DTVNVRAMDB_DeleteAllCproBMInfo();
    }

    public boolean BML_DTVNVRAMDB_DeleteBroadcasterArea(int i, int j)
    {
        return DTVNVRAMDB_DeleteBroadcasterArea(i, j);
    }

    public boolean BML_DTVNVRAMDB_DeleteCproBMInfo(int i)
    {
        return DTVNVRAMDB_DeleteCproBMInfo(i);
    }

    public boolean BML_DTV_EVENT_SERVICECHANGED_BY_BOOKMARK(int i, int j, int k, int l, String s, int ai[])
    {
        w = Browser_WindowNew();
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML_CB_DTV_EVENT_SERVICECHANGED:").append(w).toString());
        BML_SetBrowserWindow(w);
        BML_EscapeHalt();
        return BML_NotifyServiceChangedByBookmark(i, j, k, l, s, ai);
    }

    public int Browser_CB_CommandHandler_HandleCommandProc(int i, int j)
    {
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("Browser_CB_CommandHandler_HandleCommandProc: cmd=").append(i).toString());
        if(isWaiting)
            return 1;
        i;
        JVM INSTR lookupswitch 15: default 168
    //                   0: 216
    //                   4: 283
    //                   6: 316
    //                   7: 354
    //                   18: 392
    //                   21: 194
    //                   23: 442
    //                   26: 475
    //                   150: 508
    //                   152: 541
    //                   153: 574
    //                   154: 607
    //                   155: 623
    //                   156: 656
    //                   157: 689;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15 _L16
_L16:
        break MISSING_BLOCK_LABEL_689;
_L1:
        MtvUtilDebug.High("BmlEngineImpl", "UNKNOWN SLIM_BRCOMMAND");
        isWaiting = false;
_L17:
        if(!isWaiting())
            Browser_ReplyToCommand();
        else
            MtvUtilDebug.Low("BmlEngineImpl", "Pop up result waiting");
        return 0;
_L7:
        if(mBmlViewListener != null)
            mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L2:
        if(!MtvUtilDebug.isReleaseMode())
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("SLIM_BRCOMMAND_QUERY_SETLOCATION  ").append(fSetLocation_URL).toString());
        if(mBmlViewListener != null)
        {
            MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_SETLOCATION  process command");
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
        }
          goto _L17
_L3:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_REDIRECT_DIALOG");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L4:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_AUTH_DIALOG");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
        fConfirmed_Reply = true;
          goto _L17
_L5:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_SERVER_CERT_CONFIRM_DIALOG");
        fConfirmed_certReply = true;
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L6:
        MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("SLIM_BRCOMMAND_NOTIFY_STREAM_STATE").append(fStreamState_State).toString());
        if(mBmlViewListener != null)
            mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L8:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_NOTIFY_CONTENT_ERROR");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L9:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_NOTIFY_ERROR");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L10:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_DTV_TRANSMITTEXTDATA");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L11:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_DTV_PERMITFUNCTION");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L12:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_DTV_WRITEBOOKMARK");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L13:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_DTV_WRITEPERSISTENTARRAY");
        fDoWrite = true;
          goto _L17
_L14:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_NOTIFY_DTV_FAILUREACTION");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
_L15:
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_QUERY_DTV_SYSTEMCONTINUE");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
        MtvUtilDebug.Low("BmlEngineImpl", "SLIM_BRCOMMAND_NOTIFY_DTV_DRAWERROR");
        if(mBmlViewListener != null)
            isWaiting = mBmlViewListener.cb_processCommand(i, j);
          goto _L17
    }

    void attachEngineListener(IMtvNativeBmlEngineListener imtvnativebmlenginelistener)
    {
        if(imtvnativebmlenginelistener == null)
        {
            return;
        } else
        {
            mBmlEngineListener = imtvnativebmlenginelistener;
            return;
        }
    }

    void attachViewListener(IMtvNativeBmlViewListener imtvnativebmlviewlistener)
    {
        if(imtvnativebmlviewlistener == null)
        {
            return;
        } else
        {
            mBmlViewListener = imtvnativebmlviewlistener;
            return;
        }
    }

    void clearBMLBackLocation()
    {
        while(mURLstack == null || mURLstack.empty()) 
            return;
        mURLstack.clear();
    }

    void dettachEngineListener(IMtvNativeBmlEngineListener imtvnativebmlenginelistener)
    {
        mBmlEngineListener = null;
    }

    void dettachViewListener(IMtvNativeBmlViewListener imtvnativebmlviewlistener)
    {
        mBmlViewListener = null;
    }

    public boolean getAvailableKey(int i)
    {
        if(i < 7 || i > 16) goto _L2; else goto _L1
_L1:
        if((mSetKeyMasking & 4) == 0) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if(i != 66 && i != 4)
            continue; /* Loop/switch isn't completed */
        if((mSetKeyMasking & 1) != 0) goto _L3; else goto _L5
_L5:
        return false;
        if(i != 17 && i != 18 || (mSetKeyMasking & 0x10) != 0) goto _L3; else goto _L6
_L6:
        return false;
    }

    public int getBmlViewScreenHeight()
    {
        if(m_BMLView != null)
            return m_BMLView.get_scr_height();
        else
            return 0;
    }

    public int getBmlViewScreenWidth()
    {
        if(m_BMLView != null)
            return m_BMLView.get_scr_width();
        else
            return 0;
    }

    public int getBmlWidth()
    {
        return w;
    }

    public int getKeyMasking()
    {
        boolean flag = true;
        byte byte0;
        if((mSetKeyMasking & 4) != 0)
        {
            byte0 = 4;
        } else
        {
            byte0 = flag;
            if((mSetKeyMasking & 1) == 0)
            {
                byte0 = flag;
                if((mSetKeyMasking & 0x10) != 0)
                    return 16;
            }
        }
        return byte0;
    }

    int getKeyPad_mask()
    {
        return KeyPad_mask;
    }

    public boolean isWaiting()
    {
        return isWaiting;
    }

    public boolean setBMLBackLocation()
    {
        if(mURLstack != null && !mURLstack.empty())
        {
            MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML Back size=").append(mURLstack.size()).toString());
            if(mURLstack.size() >= 2)
            {
                String s = (String)mURLstack.pop();
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML Back Pop current=").append(s).toString());
                s = (String)mURLstack.pop();
                if(!MtvUtilDebug.isReleaseMode())
                    MtvUtilDebug.Low("BmlEngineImpl", (new StringBuilder()).append("BML Back Pop previous=").append(s).toString());
                Browser_WindowSetLocation(w, s, 8192);
                return true;
            }
        }
        return false;
    }

    public void setBitMapLeft(float f)
    {
    }

    public void setBitMapTop(float f)
    {
    }

    public void setBmlWidth(int i)
    {
        w = i;
    }

    void setKeyPad_mask(int i)
    {
        KeyPad_mask = i;
    }

    public void setWaiting(boolean flag)
    {
        isWaiting = flag;
    }

    static boolean BMLEngineInitStatus = false;
    public static int KeyPad_mask = 0;
    public static final String STRING_ENCODE = "UTF-8";
    private static final String TAG = "BmlEngineImpl";
    private static HashMap audioHash = new HashMap();
    public static boolean mTuneAvailable = false;
    private static Stack mURLstack = null;
    public static int mfComponentTag = 0;
    public static int mfOriginalNetworkID = 0;
    public static int mfServiceID = 0;
    public static int mfTransportStreamID = 0;
    private static MtvNativeBmlEngineImpl nBmlEngine = null;
    public int intResult;
    private boolean isWaiting;
    protected volatile IMtvNativeBmlEngineListener mBmlEngineListener;
    private Handler mBmlHandler;
    protected volatile IMtvNativeBmlViewListener mBmlViewListener;
    private int mSetKeyMasking;
    private int maxAudioHashNum;
    private int w;

    static 
    {
        KeyPad_mask = 1;
        BMLEngineInitStatus = false;
    }
}
