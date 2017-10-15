// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import android.content.*;
import android.content.res.Resources;
import android.graphics.Rect;
import android.media.MediaPlayer;
import android.net.*;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.*;
import java.io.*;
import java.util.Enumeration;
import java.util.Hashtable;

// Referenced classes of package com.access.bml_aprofile:
//            TVSystemInterface, KeyEventConverter, NotifyStocker, NotifyDialog, 
//            KeyboardInputStocker, KeyboardInputDialog, DTVUtil, KeyboardInputParameter, 
//            KeyboardInputResult, ArgInteger, TDTVDialogParameter, TDTVDate, 
//            TDTVAribEventURI, TDTVPrefixNumber

public abstract class TVSystem
    implements TVSystemInterface
{
    class DTVAudio
    {

        public String fileName;
        public int mime;
        public String objectID;
        public int status;
        final TVSystem this$0;

        DTVAudio()
        {
            this$0 = TVSystem.this;
            super();
        }
    }

    public class MessageType
    {

        public static final int KEYBOARDINPUTDIALOG = 4;
        public static final int NOTIFYDIALOG = 1;
        public static final int NOTIFYERROR = 5;
        public static final int STARTEXTRABROWSER = 3;
        public static final int VIDEOUPDATE = 2;
        final TVSystem this$0;

        public MessageType()
        {
            this$0 = TVSystem.this;
            super();
        }
    }

    public class NetworkMonitor extends BroadcastReceiver
    {

        public void onReceive(Context context, Intent intent)
        {
            action = intent.getAction();
            if(action.equals("android.net.conn.CONNECTIVITY_CHANGE"))
            {
                Log.d("TVSystem", "NetworkMonitor - onReceive Network Changed!");
                netMonitor = "Changed";
            }
        }

        String action;
        final TVSystem this$0;

        public NetworkMonitor()
        {
            this$0 = TVSystem.this;
            super();
        }
    }

    class Status
    {

        public static final int ACCESSINGBOOKMARK = 10;
        public static final int ACCESSINGMEMORY = 6;
        public static final int BMLMODE = 10001;
        public static final int CALLINGPHONE = 3;
        public static final int CONNECTINGNETWORK = 4;
        public static final int HTMLMODE = 10002;
        public static final int ILLEGALFUNCTION = -7;
        public static final int INITIALUPDATE = 9;
        public static final int LOADINGDOCUMENT = 8;
        public static final int MAILMODE = 10003;
        public static final int MAX = 13;
        public static final int NONEMODE = 10004;
        public static final int OCCUPIEDIP = 12;
        public static final int RECEIVINGVIAARIB = 1;
        public static final int RECEIVINGVIAHTTP = 2;
        public static final int RUNNINGBROWSER = 7;
        public static final int SCRIPTERROR = -6;
        public static final int SECUREDZONE = 11;
        public static final int STACKOVERFLOW = -5;
        public static final int TRANSFERRINGDATA = 5;
        public static final int UNAVAILABLEDOCUMENT = -1;
        final TVSystem this$0;

        Status()
        {
            this$0 = TVSystem.this;
            super();
        }
    }


    public TVSystem(Context context)
    {
        packageName = null;
        mContext = context;
        keyEventConverter = new KeyEventConverter();
        notifyStocker = new NotifyStocker();
        notifyDialog = new NotifyDialog(context, notifyStocker);
        keyboardInputStocker = new KeyboardInputStocker();
        keyboardInputDialog = new KeyboardInputDialog(context, keyboardInputStocker);
        keyboardAvailable = true;
        packageName = context.getPackageName();
        videoStatus = 0;
        videoStatusPrev = 0;
        fontFile = null;
        audioPlayerTbl = new Hashtable();
        audioPlayer = null;
        romSoundPlayer = null;
        audioPlayingId = -1;
        isPlayingAACStream = false;
        activityHandler = null;
        isStartedTvsystem = false;
        bmlStartMode = 0;
        isInvisible = false;
        contentWidth = 960;
        contentHeight = 540;
        netMonitor = "";
        DTVUtil.logI("Create TVSystem instance");
        handler = new Handler() {

            public void handleMessage(Message message)
            {
                switch(message.what)
                {
                case 2: // '\002'
                default:
                    DTVUtil.logW("Unknown message was detected.");
                    return;

                case 1: // '\001'
                    showNotifyDialog((TDTVDialogParameter)message.obj);
                    return;

                case 3: // '\003'
                    startExtraBrowser((String)message.obj);
                    return;

                case 4: // '\004'
                    showKeyboardInputDialog((KeyboardInputParameter)message.obj);
                    return;

                case 5: // '\005'
                    DTVUtil.show((String)message.obj, mContext);
                    break;
                }
            }

            final TVSystem this$0;

            
            {
                this$0 = TVSystem.this;
                super();
            }
        }
;
        context = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        monitor = new NetworkMonitor();
        mContext.registerReceiver(monitor, context);
    }

    private native void TvsystemAPI_AddVisibilityChangedEvent(int i);

    private native int TvsystemAPI_addDataButtonPressEvent();

    private native int TvsystemAPI_addKeyPressEvent(int i);

    private native int TvsystemAPI_addKeyReleaseEvent(int i);

    private native void TvsystemAPI_addMediaStoppedEvent(byte abyte0[]);

    private native int TvsystemAPI_demuxIncomingPacket(byte abyte0[], int i, int j);

    private native int TvsystemAPI_demuxIncomingSection(int i, byte abyte0[], int j);

    private native int TvsystemAPI_endSystem();

    private native void TvsystemAPI_finalizeSystem();

    private native int TvsystemAPI_initializeSystem(TVSystemInterface tvsysteminterface);

    private native void TvsystemAPI_returnToMain();

    private native int TvsystemAPI_setChannel(int i);

    private native int TvsystemAPI_setStream(String s);

    private native int TvsystemAPI_setURI(String s);

    private native void TvsystemAPI_setZipCode(byte abyte0[]);

    private native int TvsystemAPI_startSystem(Surface surface, String s, String s1);

    private int audioCheckPlaying()
    {
        if(audioPlayer != null && audioPlayer.isPlaying() && audioPlayerTbl.containsKey(Integer.valueOf(audioPlayingId)))
        {
            int i = ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(audioPlayingId))).mime;
            DTVUtil.logI((new StringBuilder("audioCheckPlaying  ")).append(i).toString());
            return i;
        } else
        {
            return 0;
        }
    }

    private void audioFinalize()
    {
        if(audioPlayerTbl.isEmpty()) goto _L2; else goto _L1
_L1:
        Enumeration enumeration = audioPlayerTbl.elements();
_L6:
        if(enumeration.hasMoreElements()) goto _L4; else goto _L3
_L3:
        audioPlayerTbl.clear();
_L2:
        if(audioPlayer != null)
        {
            if(audioPlayer.isPlaying())
                audioPlayer.stop();
            audioPlayer.release();
            audioPlayer = null;
        }
        romSoundPlayer = null;
        return;
_L4:
        (new File(mContext.getCacheDir(), ((DTVAudio)enumeration.nextElement()).fileName)).delete();
        if(true) goto _L6; else goto _L5
_L5:
    }

    private void audioPlay(int i)
    {
        String s = ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(i))).fileName;
        if(s == null)
            return;
        if(audioPlayer != null)
        {
            if(audioPlayer.isPlaying())
            {
                audioPlayer.stop();
                if(audioPlayerTbl.containsKey(Integer.valueOf(audioPlayingId)))
                    ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(audioPlayingId))).status = 0;
            }
            audioPlayer.reset();
        } else
        {
            audioPlayer = new MediaPlayer();
        }
        try
        {
            audioPlayer.setDataSource((new StringBuilder()).append(mContext.getCacheDir()).append("/").append(s).toString());
            audioPlayer.prepare();
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
        audioPlayer.setLooping(false);
        audioPlayer.start();
        audioPlayingId = i;
        audioPlayer.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            public void onCompletion(MediaPlayer mediaplayer)
            {
                DTVUtil.logI("audioPlayer onCompletion");
                if(audioPlayerTbl.containsKey(Integer.valueOf(audioPlayingId)))
                {
                    TvsystemAPI_addMediaStoppedEvent(((DTVAudio)audioPlayerTbl.get(Integer.valueOf(audioPlayingId))).objectID.getBytes());
                    audioRemove(audioPlayingId);
                }
            }

            final TVSystem this$0;

            
            {
                this$0 = TVSystem.this;
                super();
            }
        }
);
    }

    private void audioRemove(int i)
    {
        if(audioPlayerTbl.containsKey(Integer.valueOf(i)))
        {
            String s = ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(i))).fileName;
            audioPlayerTbl.remove(Integer.valueOf(i));
            if(s != null)
                (new File(mContext.getCacheDir(), s)).delete();
        }
    }

    private int getAppResSound(String s)
    {
        if(mContext == null)
            return 0;
        else
            return mContext.getResources().getIdentifier(s, "raw", packageName);
    }

    private String getStatusText(int i)
    {
        switch(i)
        {
        default:
            return "Status not included list.";

        case 1: // '\001'
            return "Receiving via ARIB.";

        case 2: // '\002'
            return "Receiving via HTTP.";

        case 3: // '\003'
            return "Calling phone.";

        case 4: // '\004'
            return "Connecting network.";

        case 5: // '\005'
            return "Transferring data.";

        case 6: // '\006'
            return "Accessing memory.";

        case 7: // '\007'
            return "Running browser.";

        case 8: // '\b'
            return "Loading document.";

        case 9: // '\t'
            return "Initial update.";

        case 10: // '\n'
            return "Accessing bookmark.";

        case 11: // '\013'
            return "Secured zone.";

        case 12: // '\f'
            return "Occupied ip.";

        case 13: // '\r'
            return "Max.";

        case -1: 
            return "Unavailable document.";

        case -5: 
            return "Stack over flow.";

        case -6: 
            return "Script error.";

        case -7: 
            return "Illegal function.";

        case 10001: 
            return "BML mode.";

        case 10002: 
            return "HTML mode.";

        case 10003: 
            return "Mail mode.";

        case 10004: 
            return "None mode.";
        }
    }

    private String getString(int i)
    {
        return mContext.getString(i);
    }

    private String loadRomSound(int i)
    {
        String s;
        String s1;
        if(i < 10)
            s = (new StringBuilder("fullseg_0")).append(i).toString();
        else
            s = (new StringBuilder("fullseg_")).append(i).toString();
        s1 = (new StringBuilder("/system/etc/one-seg/")).append(s).append(".ogg").toString();
        DTVUtil.logI((new StringBuilder("[loadRomSound]sound Name: ")).append(s1).toString());
        s = s1;
        if(!(new File(s1)).exists())
        {
            DTVUtil.logW((new StringBuilder("There is no built-in sound id #")).append(i).toString());
            s = null;
        }
        return s;
    }

    private void showKeyboardInputDialog(KeyboardInputParameter keyboardinputparameter)
    {
        keyboardInputDialog.show(keyboardinputparameter.type, keyboardinputparameter.ctype, keyboardinputparameter.maxlen, keyboardinputparameter.init);
    }

    private void showNotifyDialog(TDTVDialogParameter tdtvdialogparameter)
    {
        notifyDialog.show(tdtvdialogparameter);
    }

    private void startExtraBrowser(String s)
    {
        if(s == null)
        {
            DTVUtil.logW("Arguments are null.");
            return;
        }
        Intent intent = new Intent();
        intent.setClassName("com.android.browser", "com.android.browser.BrowserActivity");
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(s));
        DTVUtil.logI("Trying to start extra browser.");
        try
        {
            mContext.startActivity(intent);
            return;
        }
        // Misplaced declaration of an exception variable
        catch(String s)
        {
            DTVUtil.logW("Matching activity was not found.");
        }
    }

    private void tryStartSystem()
    {
        if(bmlPlane == null)
            return;
        if(!initializeSystem(this))
        {
            DTVUtil.logE("Failed to initialize TVSystem.");
            return;
        }
        if(!startSystem(bmlPlane.getHolder().getSurface()))
        {
            DTVUtil.logE("Failed to initialize TVSystem.");
            endSystem();
            finalizeSystem();
            return;
        } else
        {
            isStartedTvsystem = true;
            DTVUtil.logD("TVSystem started successfully.");
            return;
        }
    }

    public int PushDemuxIncomingPacket(byte abyte0[], int i, int j)
    {
        return TvsystemAPI_demuxIncomingPacket(abyte0, i, j);
    }

    public int PushDemuxIncomingSection(int i, byte abyte0[], int j)
    {
        return TvsystemAPI_demuxIncomingSection(i, abyte0, j);
    }

    public int addDataButtonPressEvent()
    {
        int i = 0;
        if(!isInvisible) goto _L2; else goto _L1
_L1:
        isInvisible = false;
        TvsystemAPI_AddVisibilityChangedEvent(1);
_L4:
        return i;
_L2:
        int j;
        j = TvsystemAPI_addDataButtonPressEvent();
        i = j;
        if(j != 0) goto _L4; else goto _L3
_L3:
        if(videoStatus == 1 || videoStatus == 4)
            break; /* Loop/switch isn't completed */
        i = j;
        if(videoStatus != 0) goto _L4; else goto _L5
_L5:
        bmlStartMode = 1;
        Log.d("TVSystem", "addDataButtonPressEvent bmlStartMode set STARTMODE_DATABUTTON");
        return j;
    }

    public int addKeyPressEvent(int i)
    {
        return TvsystemAPI_addKeyPressEvent(i);
    }

    public int addKeyReleaseEvent(int i)
    {
        return TvsystemAPI_addKeyReleaseEvent(i);
    }

    public void bmlPlaneCreated(SurfaceView surfaceview)
    {
        if(bmlPlane == null)
        {
            DTVUtil.logI("bmlPlane will be added to TVSystem.");
            bmlPlane = surfaceview;
            tryStartSystem();
            return;
        } else
        {
            DTVUtil.logI("bmlPlane was already added to TVSystem.");
            return;
        }
    }

    public void clearNVRAM()
    {
        String as[] = mContext.fileList();
        if(as == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L5:
        if(i < as.length) goto _L3; else goto _L2
_L2:
        return;
_L3:
        mContext.deleteFile(as[i]);
        i++;
        if(true) goto _L5; else goto _L4
_L4:
    }

    public void demux_SetChannel(int i, int j, int k, int l)
    {
        DTVUtil.logI((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf((new StringBuilder(String.valueOf("Notify Set Channel: "))).append("OriginalNetworkID= 0x").append(Integer.toHexString(i)).append(" ").toString()))).append("TransportStreamID= 0x").append(Integer.toHexString(j)).append(" ").toString()))).append("ServiceID= 0x").append(Integer.toHexString(k)).append(" ").toString()))).append("auto_start_flag= ").append(Integer.toHexString(l)).append(" ").toString());
        Message message = Message.obtain();
        message.what = 10;
        message.arg1 = l;
        if(activityHandler != null)
        {
            activityHandler.sendMessage(message);
            return;
        } else
        {
            DTVUtil.logW("failed to send application message.");
            return;
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        int i = keyevent.getKeyCode();
        int j = keyEventConverter.getDTVKeyCode(i);
        if(keyevent.getAction() == 0)
            while(keyEventConverter.isDataButton(i) && addDataButtonPressEvent() == 0 || -1 != j && keyEventConverter.isMasked(j) && addKeyPressEvent(j) == 0) 
                return true;
        else
        if(keyevent.getAction() == 1 && -1 != j && keyEventConverter.isMasked(j) && addKeyReleaseEvent(j) == 0)
            return true;
        return false;
    }

    public abstract int dsmcc_GetSTCPeer(ArgInteger arginteger, ArgInteger arginteger1);

    public int dtvAudioStream_UpdatePeer(int i, int j, int k, int l)
    {
        isPlayingAACStream = false;
        if(i == 1 && l == 11)
            isPlayingAACStream = true;
        Message message = Message.obtain();
        message.what = 3;
        message.arg1 = j;
        message.arg2 = k;
        message.obj = Integer.valueOf(i);
        if(activityHandler != null)
        {
            activityHandler.sendMessage(message);
            return 0;
        } else
        {
            DTVUtil.logW("failed to send application message.");
            return -1;
        }
    }

    public void dtvAudio_ClosePeer(int i)
    {
        DTVUtil.logI((new StringBuilder("dtvAudio_ClosePeer: id ")).append(i).toString());
        if(audioPlayer != null)
        {
            if(audioPlayer.isPlaying())
                audioPlayer.stop();
            if(audioPlayerTbl.isEmpty())
            {
                audioPlayer.release();
                audioPlayer = null;
            }
        }
        audioRemove(i);
    }

    public int dtvAudio_GetStatusPeer(int i)
    {
        int j = -1;
        if(audioPlayerTbl.containsKey(Integer.valueOf(i)))
            j = ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(i))).status;
        return j;
    }

    public int dtvAudio_OpenPeer(byte abyte0[], int i, int j, byte abyte1[])
    {
        int k;
        DTVAudio dtvaudio;
        k = -1;
        dtvaudio = new DTVAudio();
        dtvaudio.objectID = new String(abyte1);
        dtvaudio.status = j;
        dtvaudio.mime = i;
        if(i != 11) goto _L2; else goto _L1
_L1:
        if(!isPlayingAACStream) goto _L4; else goto _L3
_L3:
        return k;
_L4:
        dtvaudio.fileName = (new StringBuilder(String.valueOf(dtvaudio.objectID))).append(".aac").toString();
_L7:
        DTVUtil.logI((new StringBuilder("dtvAudio_OpenPeer: status= ")).append(dtvaudio.status).append(" fileName= ").append(dtvaudio.fileName).toString());
        abyte1 = new File(mContext.getCacheDir(), dtvaudio.fileName);
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream(abyte1);
            fileoutputstream.write(abyte0);
            fileoutputstream.close();
            Runtime.getRuntime().exec((new StringBuilder("chmod 777 ")).append(abyte1.getAbsolutePath()).toString());
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        k = 0;
        do
        {
            i = k + 1;
            boolean flag;
            if(audioPlayerTbl.containsKey(Integer.valueOf(i)))
                flag = false;
            else
                flag = true;
            k = i;
        } while(!flag);
        audioPlayerTbl.put(Integer.valueOf(i), dtvaudio);
        k = i;
        if(j != 1) goto _L3; else goto _L5
_L5:
        audioPlay(i);
        return i;
_L2:
        if(i != 12)
            break MISSING_BLOCK_LABEL_302;
        if(audioCheckPlaying() == 11) goto _L3; else goto _L6
_L6:
        dtvaudio.fileName = (new StringBuilder(String.valueOf(dtvaudio.objectID))).append(".aif").toString();
          goto _L7
        DTVUtil.logW((new StringBuilder("dtvAudio_OpenPeer:Error known mime type ")).append(i).toString());
        return -3;
    }

    public int dtvAudio_SetStatusPeer(int i, int j)
    {
        DTVUtil.logI((new StringBuilder("dtvAudio_SetStatusPeer: id ")).append(i).append("status ").append(j).toString());
        if(((DTVAudio)audioPlayerTbl.get(Integer.valueOf(i))).fileName == null)
        {
            DTVUtil.logW("dtvAudio_SetStatusPeer: no seach key in the table");
            return -1;
        }
        if(j != 1) goto _L2; else goto _L1
_L1:
        audioPlay(i);
_L4:
        ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(i))).status = j;
        return 0;
_L2:
        if(j != 0)
            break; /* Loop/switch isn't completed */
        if(audioPlayer != null && audioPlayingId == i)
        {
            if(audioPlayer.isPlaying())
                audioPlayer.stop();
            if(((DTVAudio)audioPlayerTbl.get(Integer.valueOf(i))).status == 1)
                TvsystemAPI_addMediaStoppedEvent(((DTVAudio)audioPlayerTbl.get(Integer.valueOf(audioPlayingId))).objectID.getBytes());
        }
        if(true) goto _L4; else goto _L3
_L3:
        DTVUtil.logW((new StringBuilder("dtvAudio_SetStatusPeer: unknown status ")).append(j).toString());
        return -1;
    }

    public abstract void dtvCC_FinalizePeer();

    public abstract int dtvCC_GetDisplayStatusPeer(int i);

    public abstract int dtvCC_GetLanguageStatusPeer(int i);

    public abstract int dtvCC_InitializePeer();

    public abstract int dtvCC_SetDisplayStatusPeer(int i, int j);

    public abstract int dtvControl_GetAffiliateIDPeer(byte abyte0[]);

    public abstract int dtvControl_GetEventIDPeer();

    public abstract int dtvControl_GetIRDIDPeer(int i, byte abyte0[]);

    public abstract int dtvControl_GetProgramRelativeTimePeer();

    public abstract int dtvControl_GetTotTdtTimePeer(TDTVDate tdtvdate);

    public abstract int dtvControl_IsBeingBroadcastPeer(TDTVAribEventURI tdtvaribeventuri);

    public int dtvControl_LaunchExAppPeer(String s, String s1, String as[], int i)
    {
        byte byte0 = -1;
        DTVUtil.logI("dtvControl_LaunchExAppPeer");
        if(s == null || s1 == null || as == null)
            return -1;
        DTVUtil.logI((new StringBuilder("   uri ")).append(s).toString());
        DTVUtil.logI((new StringBuilder("   mime ")).append(s1).toString());
        int j = 0;
        do
        {
label0:
            {
label1:
                {
                    if(j < i)
                        break label0;
                    int k = byte0;
                    if(s.length() <= 0)
                        break label1;
                    k = byte0;
                    if(s1.length() <= 0)
                        break label1;
                    k = byte0;
                    if(i <= 0)
                        break label1;
                    s = Uri.parse(s);
                    String s2 = s.getScheme();
                    k = byte0;
                    if(s2 == null)
                        break label1;
                    if(!s2.equalsIgnoreCase("http"))
                    {
                        k = byte0;
                        if(!s2.equalsIgnoreCase("https"))
                            break label1;
                    }
                    if(s1.equalsIgnoreCase("Unfixed") && i > 3)
                    {
                        j = byte0;
                        if(as[0].equalsIgnoreCase("Start"))
                        {
                            j = byte0;
                            if(as[2].equalsIgnoreCase("WebBrowser"))
                                j = 0;
                        }
                    } else
                    {
                        j = byte0;
                        if(s1.equalsIgnoreCase("text/html"))
                        {
                            j = byte0;
                            if(i > 1)
                            {
                                j = byte0;
                                if(as[0].equalsIgnoreCase("Update"))
                                    j = 0;
                            }
                        }
                    }
                    k = j;
                    if(j == 0)
                    {
                        s = new Intent("android.intent.action.VIEW", s);
                        mContext.startActivity(s);
                        k = j;
                    }
                }
                return k;
            }
            DTVUtil.logI((new StringBuilder("   exinfo[")).append(j).append("] ").append(as[j]).toString());
            j++;
        } while(true);
    }

    public void dtvControl_NotifyHaltPeer(int i, int j)
    {
    }

    public void dtvControl_NotifyServicePeer(int i, int j, int k)
    {
    }

    public int dtvControl_PlayRomSoundPeer(int i)
    {
        DTVUtil.logI((new StringBuilder("[Audio]dtvControl_PlayRomSoundPeer soundId = ")).append(i).toString());
        int j = audioCheckPlaying();
        if(j == 11)
        {
            DTVUtil.logI("AAC File is playing.");
            return -1;
        }
        if(j == 12)
        {
            DTVUtil.logI("AIFF File is playing.");
            audioPlayer.stop();
            if(audioPlayerTbl.containsKey(Integer.valueOf(audioPlayingId)))
                ((DTVAudio)audioPlayerTbl.get(Integer.valueOf(audioPlayingId))).status = 0;
            audioPlayer.reset();
        }
        if(i >= 0 && i < 14)
        {
            String s = loadRomSound(i);
            if(s == null)
                return -1;
            romSoundPlayer = new MediaPlayer();
            try
            {
                romSoundPlayer.setDataSource(s);
                romSoundPlayer.prepare();
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
            romSoundPlayer.setLooping(false);
            romSoundPlayer.start();
            if(romSoundPlayer != null)
                romSoundPlayer.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

                    public void onCompletion(MediaPlayer mediaplayer)
                    {
                        mediaplayer.release();
                    }

                    final TVSystem this$0;

            
            {
                this$0 = TVSystem.this;
                super();
            }
                }
);
        }
        return 0;
    }

    public int dtvControl_StartExtraBrowserPeer(String s, int i, String s1, String s2)
    {
        boolean flag = false;
        if(s == null || i != 0 && 1 != i || s1 == null || s2 == null)
        {
            DTVUtil.logW("Invalid arguments.");
            i = -1;
        } else
        {
            s = Message.obtain();
            s.what = 3;
            s.arg1 = 0;
            s.arg2 = 0;
            s.obj = s2;
            i = ((flag) ? 1 : 0);
            if(!handler.sendMessage(s))
            {
                DTVUtil.logW("failed to send application message.");
                return -1;
            }
        }
        return i;
    }

    public abstract int dtvEPG_CancelReservationPeer(TDTVAribEventURI tdtvaribeventuri);

    public abstract int dtvEPG_CheckOperationPeer();

    public void dtvEPG_FinalizePeer()
    {
        DTVUtil.logD("dtvEPG_FinalizePeer");
    }

    public abstract int dtvEPG_GetEventDurationPeer(TDTVAribEventURI tdtvaribeventuri, ArgInteger arginteger);

    public abstract int dtvEPG_GetEventStartTimePeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public int dtvEPG_InitializePeer()
    {
        DTVUtil.logD("dtvEPG_InitializePeer");
        return 0;
    }

    public abstract int dtvEPG_IsReservedPeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public int dtvEPG_RecCancelReservationPeer(TDTVAribEventURI tdtvaribeventuri)
    {
        return -1;
    }

    public int dtvEPG_RecIsReservedPeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate)
    {
        return -1;
    }

    public int dtvEPG_RecReservePeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate)
    {
        return -1;
    }

    public abstract int dtvEPG_ReservePeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public abstract void dtvEvent_NotifyDataButtonMaskPeer(int i);

    public int dtvEvent_SetUsedKeyListPeer(int i)
    {
label0:
        {
            int j = i;
            if(keyEventConverter != null)
            {
                if(i < 0)
                    break label0;
                keyEventConverter.setMask(i);
                j = 0;
            }
            return j;
        }
        DTVUtil.logW("obtained keymask is illegal parameter.");
        return -3;
    }

    public void dtvExtension_KeyboardClosePeer()
    {
        keyboardInputDialog.dismiss();
        keyboardInputStocker.clear();
    }

    public int dtvExtension_KeyboardGetStatusPeer()
    {
        byte byte0;
        KeyboardInputResult keyboardinputresult;
        byte0 = -1;
        keyboardinputresult = keyboardInputStocker.peekResult();
        if(keyboardinputresult != null) goto _L2; else goto _L1
_L1:
        byte0 = -13;
_L4:
        return byte0;
_L2:
        switch(keyboardinputresult.result)
        {
        default:
            DTVUtil.logW("Invalid keyboard input dialog result.");
            return -1;

        case 0: // '\0'
            return 0;

        case 1: // '\001'
            break;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    public int dtvExtension_KeyboardGetValuePeer(byte abyte0[], int i)
    {
        if(abyte0 == null)
        {
            DTVUtil.logW("Arguments are null.");
            return -1;
        }
        KeyboardInputResult keyboardinputresult = keyboardInputStocker.pollResult();
        if(keyboardinputresult == null)
        {
            DTVUtil.logW("There is no input result.");
            return -1;
        }
        try
        {
            System.arraycopy(keyboardinputresult.inputText.getBytes("EUC-JP"), 0, abyte0, 0, keyboardinputresult.inputText.getBytes("EUC-JP").length);
            DTVUtil.logD((new StringBuilder("dtvExtension_KeyboardGetValuePeer string: ")).append(new String(abyte0, "EUC-JP")).toString());
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        return 0;
    }

    public int dtvExtension_KeyboardIsEnabledPeer()
    {
        return !getKeyboardAvailable() ? -1 : 0;
    }

    public int dtvExtension_KeyboardOpenPeer(int i, int j, int k, byte abyte0[], int l)
    {
        boolean flag = false;
        if(k <= 0)
        {
            DTVUtil.logW("Invalid arguments.");
            return -1;
        }
        KeyboardInputParameter keyboardinputparameter = new KeyboardInputParameter();
        keyboardinputparameter.type = i;
        keyboardinputparameter.ctype = j;
        keyboardinputparameter.maxlen = k;
        try
        {
            keyboardinputparameter.init = new String(abyte0, 0, l, "EUC-JP");
        }
        // Misplaced declaration of an exception variable
        catch(byte abyte0[])
        {
            abyte0.printStackTrace();
        }
        abyte0 = Message.obtain();
        abyte0.what = 4;
        abyte0.arg1 = 0;
        abyte0.arg2 = 0;
        abyte0.obj = keyboardinputparameter;
        if(!handler.sendMessage(abyte0))
        {
            DTVUtil.logW("failed to send application message.");
            return -1;
        }
        if(keyboardInputDialog.syncShowResult())
            i = ((flag) ? 1 : 0);
        else
            i = -1;
        return i;
    }

    public void dtvGraphic_NotifyVideoStatusPeer(int i)
    {
        DTVUtil.logD((new StringBuilder("dtvGraphic_NotifyVideoStatusPeer ")).append(i).toString());
        if(i >= 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        videoStatus;
        JVM INSTR tableswitch 0 4: default 64
    //                   0 136
    //                   1 136
    //                   2 64
    //                   3 64
    //                   4 136;
           goto _L3 _L4 _L4 _L3 _L3 _L4
_L3:
        videoStatusPrev = videoStatus;
        videoStatus = i;
        if(bmlStartMode == 2 && !isInvisible && activityHandler != null)
        {
            Message message = Message.obtain();
            message.what = 1;
            message.arg1 = 0;
            message.arg2 = 0;
            message.obj = Integer.valueOf(i);
            activityHandler.sendMessage(message);
            return;
        }
          goto _L1
_L4:
        if(i == 2 || i == 3)
        {
            isInvisible = false;
            if(bmlStartMode != 0)
                continue; /* Loop/switch isn't completed */
            bmlStartMode = 2;
            Log.d("TVSystem", "dtvGraphic_NotifyVideoStatusPeer bmlStartMode set STARTMODE_AUTO");
        }
          goto _L3
        if(bmlStartMode != 3) goto _L3; else goto _L5
_L5:
        Log.d("TVSystem", "dtvGraphic_NotifyVideoStatusPeer bmlStartMode STARTMODE_RETURNTOMAIN");
        bmlStartMode = 2;
        isInvisible = true;
        TvsystemAPI_AddVisibilityChangedEvent(2);
        return;
    }

    public void dtvGraphic_SetViewModePeer(int i, int j)
    {
        if(i == 960 && j == 540 || i == 720 && j == 480)
        {
            contentWidth = i;
            contentHeight = j;
            return;
        } else
        {
            contentWidth = 960;
            contentHeight = 540;
            return;
        }
    }

    public int dtvNVRAM_GetBookmarkMaxPeer()
    {
        return 50;
    }

    public int dtvNVRAM_GetDenbunMaxPeer()
    {
        return 3;
    }

    public abstract int dtvNVRAM_GetZipcodePeer(byte abyte0[]);

    public abstract int dtvNVRAM_SetZipcodePeer(byte abyte0[]);

    public int dtvNet_GetConnectionTypePeer(ArgInteger arginteger)
    {
        arginteger.mOutValue = 403;
        return 0;
    }

    public abstract int dtvNet_GetIPInfoPeer(byte abyte0[], byte abyte1[]);

    public int dtvNet_GetIPStatusFlagPeer()
    {
        if(netMonitor.equals("Changed"))
        {
            netMonitor = "";
            DTVUtil.logI("dtvNet_GetIPStatusFlagPeer Network Changed!");
            return 1;
        } else
        {
            return 0;
        }
    }

    public int dtvNet_GetPrefixNumberPeer(TDTVPrefixNumber tdtvprefixnumber)
    {
        return -1;
    }

    public int dtvNet_IsIPConnectedPeer()
    {
        Object obj = (ConnectivityManager)mContext.getSystemService("connectivity");
        NetworkInfo networkinfo = ((ConnectivityManager) (obj)).getNetworkInfo(1);
        if(networkinfo == null || !networkinfo.isConnected())
            if((obj = ((ConnectivityManager) (obj)).getNetworkInfo(0)) == null || !((NetworkInfo) (obj)).isConnected())
                return 0;
        return 1;
    }

    public int dtvSystem_EnterStatusPeer(int i)
    {
        DTVUtil.logI((new StringBuilder("Enter Status: ")).append(getStatusText(i)).toString());
        if(1 == i || 3 == i)
        {
            if(activityHandler != null)
            {
                Message message = Message.obtain();
                message.what = 7;
                message.arg1 = 0;
                message.arg2 = 0;
                message.obj = Integer.valueOf(i);
                activityHandler.sendMessage(message);
            }
        } else
        if(10001 == i && activityHandler != null)
        {
            Message message1 = Message.obtain();
            message1.what = 4;
            message1.arg1 = 0;
            message1.arg2 = 0;
            message1.obj = Integer.valueOf(1);
            activityHandler.sendMessage(message1);
            return 0;
        }
        return 0;
    }

    public int dtvSystem_LeaveStatusPeer(int i)
    {
        DTVUtil.logI((new StringBuilder("Leave Status: ")).append(getStatusText(i)).toString());
        if(1 == i || 3 == i)
        {
            if(activityHandler != null)
            {
                Message message = Message.obtain();
                message.what = 8;
                message.arg1 = 0;
                message.arg2 = 0;
                message.obj = Integer.valueOf(i);
                activityHandler.sendMessage(message);
            }
        } else
        if(10001 == i && activityHandler != null)
        {
            Message message1 = Message.obtain();
            message1.what = 4;
            message1.arg1 = 0;
            message1.arg2 = 0;
            message1.obj = Integer.valueOf(0);
            activityHandler.sendMessage(message1);
            return 0;
        }
        return 0;
    }

    public int dtvSystem_NotifyDialogOpenPeer(TDTVDialogParameter tdtvdialogparameter)
    {
        int i = 0;
        Message message = Message.obtain();
        message.what = 1;
        message.arg1 = 0;
        message.arg2 = 0;
        message.obj = tdtvdialogparameter;
        if(!handler.sendMessage(message))
        {
            DTVUtil.logW("failed to send application message.");
            return -1;
        }
        if(!notifyDialog.syncShowResult())
            i = -1;
        return i;
    }

    public int dtvSystem_NotifyDialogOperationPeer(boolean flag, TDTVDialogParameter tdtvdialogparameter)
    {
        if(flag)
        {
            notifyDialog.dismiss();
            notifyStocker.clear();
            return -1;
        }
        TDTVDialogParameter tdtvdialogparameter1 = notifyStocker.pollResult();
        if(tdtvdialogparameter1 == null)
        {
            return -9;
        } else
        {
            tdtvdialogparameter.err_code = tdtvdialogparameter1.err_code;
            tdtvdialogparameter.err_subcode = tdtvdialogparameter1.err_subcode;
            tdtvdialogparameter.msg1 = tdtvdialogparameter1.msg1;
            tdtvdialogparameter.msg2 = tdtvdialogparameter1.msg2;
            tdtvdialogparameter.result = tdtvdialogparameter1.result;
            return 0;
        }
    }

    public int dtvSystem_NotifyErrorPeer(int i)
    {
        DTVUtil.logW((new StringBuilder("Notify Error: ")).append(getStatusText(i)).toString());
        if(-1 == i && activityHandler != null)
        {
            Message message = Message.obtain();
            message.what = 9;
            message.arg1 = i;
            message.arg2 = 0;
            activityHandler.sendMessage(message);
        }
        return 0;
    }

    public int dtvVideoStream_UpdatePeer(int i, Rect rect, int j, int k)
    {
        k = 0;
        DTVUtil.logD((new StringBuilder("dtvVideoStream_UpdatePeer status= ")).append(i).append(" ").append(rect.left).append(",").append(rect.top).append(",").append(rect.right).append(",").append(rect.bottom).toString());
        if(1 == i || i == 0) goto _L2; else goto _L1
_L1:
        i = -3;
_L5:
        return i;
_L2:
        boolean flag;
        Message message;
        flag = false;
        message = Message.obtain();
        message.what = 2;
        message.arg1 = j;
        message.arg2 = videoStatus;
        if(1 != i) goto _L4; else goto _L3
_L3:
label0:
        {
            message.obj = rect;
            if(videoStatusPrev != 2)
            {
                j = ((flag) ? 1 : 0);
                if(videoStatusPrev != 3)
                    break label0;
            }
            if(videoStatus != 1)
            {
                j = ((flag) ? 1 : 0);
                if(videoStatus != 4)
                    break label0;
            }
            j = 1;
        }
_L6:
        if(activityHandler != null)
        {
            activityHandler.sendMessage(message);
            i = k;
            if(j != 0)
            {
                rect = Message.obtain();
                rect.what = 11;
                rect.arg1 = 0;
                rect.arg2 = 0;
                rect.obj = null;
                activityHandler.sendMessage(rect);
                return 0;
            }
        } else
        {
            DTVUtil.logW("failed to send application message.");
            return -1;
        }
        if(true) goto _L5; else goto _L4
_L4:
        j = ((flag) ? 1 : 0);
        if(i == 0)
        {
            message.obj = null;
            j = ((flag) ? 1 : 0);
        }
          goto _L6
    }

    public boolean endSystem()
    {
        return TvsystemAPI_endSystem() == 0;
    }

    public void exit()
    {
        notifyDialog.dismiss();
        keyboardInputDialog.dismiss();
        if(isStartedTvsystem)
        {
            if(!endSystem())
                DTVUtil.logE("Failed to stop TVSystem.");
            finalizeSystem();
        } else
        {
            DTVUtil.logW("tvSystem is not started yet.");
        }
        audioFinalize();
        bmlPlane = null;
        videoPlane = null;
        isStartedTvsystem = false;
        notifyDialog.finalize();
        keyboardInputDialog.finalize();
        handler.removeMessages(0);
        if(activityHandler != null)
            activityHandler.removeMessages(0);
        activityHandler = null;
        try
        {
            mContext.unregisterReceiver(monitor);
        }
        catch(IllegalArgumentException illegalargumentexception)
        {
            Log.w("TVSystem", "IllegalArgumentException - unregisterReceiver(monitor)");
        }
        mContext = null;
        DTVUtil.logD("TVSystem finalized.");
    }

    public void finalizeSystem()
    {
        TvsystemAPI_finalizeSystem();
    }

    public boolean getKeyboardAvailable()
    {
        return keyboardAvailable;
    }

    public int getVideoStatus()
    {
        return videoStatus;
    }

    public boolean initializeSystem(TVSystemInterface tvsysteminterface)
    {
        return TvsystemAPI_initializeSystem(tvsysteminterface) == 0;
    }

    public void returnToMain()
    {
        TvsystemAPI_returnToMain();
        if(bmlStartMode == 2)
        {
            isInvisible = true;
            TvsystemAPI_AddVisibilityChangedEvent(2);
        } else
        if(bmlStartMode == 1)
        {
            bmlStartMode = 3;
            return;
        }
    }

    public void setActivityHandler(Handler handler1)
    {
        activityHandler = handler1;
    }

    public int setChannel(int i)
    {
        bmlStartMode = 0;
        isInvisible = false;
        videoStatus = 0;
        videoStatusPrev = 0;
        return TvsystemAPI_setChannel(i);
    }

    public void setContext(Context context)
    {
        mContext = context;
        notifyDialog.setContext(context);
        keyboardInputDialog.setContext(context);
    }

    public void setFont(String s)
        throws IOException
    {
        File file = new File(s);
        if(!file.exists() || !file.isFile() || !file.canRead())
        {
            throw new IOException();
        } else
        {
            fontFile = s;
            return;
        }
    }

    public boolean setStream(String s)
        throws IOException
    {
        File file = new File(s);
        if(!file.exists() || !file.isFile() || !file.canRead())
            throw new IOException();
        switch(TvsystemAPI_setStream(s))
        {
        default:
            return false;

        case 0: // '\0'
            return true;

        case -1: 
            return false;
        }
    }

    public boolean setURI(String s)
    {
        switch(TvsystemAPI_setURI(s))
        {
        case -1: 
        default:
            return false;

        case 0: // '\0'
            return true;
        }
    }

    public void setZipCode(String s)
    {
        if(s == null)
        {
            return;
        } else
        {
            DTVUtil.logI((new StringBuilder("setZipCode: ")).append(s).toString());
            TvsystemAPI_setZipCode(s.getBytes());
            return;
        }
    }

    public boolean startSystem(Surface surface)
    {
        File file = mContext.getFilesDir();
        return TvsystemAPI_startSystem(surface, fontFile, file.getPath()) == 0;
    }

    public void videoPlaneCreated(SurfaceView surfaceview)
    {
        if(videoPlane == null)
        {
            DTVUtil.logI("videoPlane will be added to TVSystem.");
            videoPlane = surfaceview;
            tryStartSystem();
            return;
        } else
        {
            DTVUtil.logI("videoPlane was already added to TVSystem.");
            return;
        }
    }

    private static final int ROMSOUND_NUM_MAX = 14;
    private Handler activityHandler;
    private MediaPlayer audioPlayer;
    private Hashtable audioPlayerTbl;
    private int audioPlayingId;
    private SurfaceView bmlPlane;
    private int bmlStartMode;
    public int contentHeight;
    public int contentWidth;
    private String fontFile;
    public Handler handler;
    private boolean isInvisible;
    private boolean isPlayingAACStream;
    private boolean isStartedTvsystem;
    public KeyEventConverter keyEventConverter;
    private boolean keyboardAvailable;
    private KeyboardInputDialog keyboardInputDialog;
    private KeyboardInputStocker keyboardInputStocker;
    private Context mContext;
    private NetworkMonitor monitor;
    private String netMonitor;
    private NotifyDialog notifyDialog;
    private NotifyStocker notifyStocker;
    private String packageName;
    private MediaPlayer romSoundPlayer;
    private SurfaceView videoPlane;
    private int videoStatus;
    private int videoStatusPrev;

    static 
    {
        System.loadLibrary("TvsystemInterface");
    }









}
