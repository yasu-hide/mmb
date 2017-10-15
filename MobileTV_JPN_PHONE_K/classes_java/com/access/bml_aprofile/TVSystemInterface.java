// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) ansi 

package com.access.bml_aprofile;

import android.graphics.Rect;
import android.view.Surface;
import java.io.IOException;

// Referenced classes of package com.access.bml_aprofile:
//            ArgInteger, TDTVDate, TDTVAribEventURI, TDTVPrefixNumber, 
//            TDTVDialogParameter

public interface TVSystemInterface
{

    public abstract int PushDemuxIncomingPacket(byte abyte0[], int i, int j);

    public abstract int PushDemuxIncomingSection(int i, byte abyte0[], int j);

    public abstract int addDataButtonPressEvent();

    public abstract int addKeyPressEvent(int i);

    public abstract int addKeyReleaseEvent(int i);

    public abstract void demux_SetChannel(int i, int j, int k, int l);

    public abstract int dsmcc_GetSTCPeer(ArgInteger arginteger, ArgInteger arginteger1);

    public abstract int dtvAudioStream_UpdatePeer(int i, int j, int k, int l);

    public abstract void dtvAudio_ClosePeer(int i);

    public abstract int dtvAudio_GetStatusPeer(int i);

    public abstract int dtvAudio_OpenPeer(byte abyte0[], int i, int j, byte abyte1[]);

    public abstract int dtvAudio_SetStatusPeer(int i, int j);

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

    public abstract int dtvControl_LaunchExAppPeer(String s, String s1, String as[], int i);

    public abstract void dtvControl_NotifyHaltPeer(int i, int j);

    public abstract int dtvControl_PlayRomSoundPeer(int i);

    public abstract int dtvControl_StartExtraBrowserPeer(String s, int i, String s1, String s2);

    public abstract int dtvEPG_CancelReservationPeer(TDTVAribEventURI tdtvaribeventuri);

    public abstract int dtvEPG_CheckOperationPeer();

    public abstract void dtvEPG_FinalizePeer();

    public abstract int dtvEPG_GetEventDurationPeer(TDTVAribEventURI tdtvaribeventuri, ArgInteger arginteger);

    public abstract int dtvEPG_GetEventStartTimePeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public abstract int dtvEPG_InitializePeer();

    public abstract int dtvEPG_IsReservedPeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public abstract int dtvEPG_RecCancelReservationPeer(TDTVAribEventURI tdtvaribeventuri);

    public abstract int dtvEPG_RecIsReservedPeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public abstract int dtvEPG_RecReservePeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public abstract int dtvEPG_ReservePeer(TDTVAribEventURI tdtvaribeventuri, TDTVDate tdtvdate);

    public abstract void dtvEvent_NotifyDataButtonMaskPeer(int i);

    public abstract int dtvEvent_SetUsedKeyListPeer(int i);

    public abstract void dtvExtension_KeyboardClosePeer();

    public abstract int dtvExtension_KeyboardGetStatusPeer();

    public abstract int dtvExtension_KeyboardGetValuePeer(byte abyte0[], int i);

    public abstract int dtvExtension_KeyboardIsEnabledPeer();

    public abstract int dtvExtension_KeyboardOpenPeer(int i, int j, int k, byte abyte0[], int l);

    public abstract void dtvGraphic_NotifyVideoStatusPeer(int i);

    public abstract int dtvNVRAM_GetBookmarkMaxPeer();

    public abstract int dtvNVRAM_GetDenbunMaxPeer();

    public abstract int dtvNVRAM_GetZipcodePeer(byte abyte0[]);

    public abstract int dtvNVRAM_SetZipcodePeer(byte abyte0[]);

    public abstract int dtvNet_GetConnectionTypePeer(ArgInteger arginteger);

    public abstract int dtvNet_GetIPInfoPeer(byte abyte0[], byte abyte1[]);

    public abstract int dtvNet_GetIPStatusFlagPeer();

    public abstract int dtvNet_GetPrefixNumberPeer(TDTVPrefixNumber tdtvprefixnumber);

    public abstract int dtvNet_IsIPConnectedPeer();

    public abstract int dtvSystem_EnterStatusPeer(int i);

    public abstract int dtvSystem_LeaveStatusPeer(int i);

    public abstract int dtvSystem_NotifyDialogOpenPeer(TDTVDialogParameter tdtvdialogparameter);

    public abstract int dtvSystem_NotifyDialogOperationPeer(boolean flag, TDTVDialogParameter tdtvdialogparameter);

    public abstract int dtvSystem_NotifyErrorPeer(int i);

    public abstract int dtvVideoStream_UpdatePeer(int i, Rect rect, int j, int k);

    public abstract boolean endSystem();

    public abstract void finalizeSystem();

    public abstract boolean initializeSystem(TVSystemInterface tvsysteminterface);

    public abstract void returnToMain();

    public abstract void setFont(String s)
        throws IOException;

    public abstract boolean setStream(String s)
        throws IOException;

    public abstract boolean setURI(String s);

    public abstract void setZipCode(String s);

    public abstract boolean startSystem(Surface surface);

    public static final int AFFILIATE_MAX = 8;
    public static final int AUDIO_STATUS_MUTE = 0;
    public static final int AUDIO_STATUS_PLAY = 1;
    public static final int AUDIO_STATUS_STOPPED = 2;
    public static final int BROWSER_STATUS_RUNNING = 1;
    public static final int BROWSER_STATUS_STOP = 0;
    public static final int CONNECTION_CELLULAR_CDMA_CELLULAR = 305;
    public static final int CONNECTION_CELLULAR_DS_CDMA = 303;
    public static final int CONNECTION_CELLULAR_MC_CDMA = 304;
    public static final int CONNECTION_CELLULAR_PDC = 301;
    public static final int CONNECTION_CELLULAR_PDC_P = 302;
    public static final int CONNECTION_CELLULAR_UNKNOWN = 300;
    public static final int CONNECTION_ETHERNET_DHCP = 403;
    public static final int CONNECTION_ETHERNET_FIXED_IP = 402;
    public static final int CONNECTION_ETHERNET_PPPOE = 401;
    public static final int CONNECTION_ISDN = 100;
    public static final int CONNECTION_PHS_PIAFS2_0 = 201;
    public static final int CONNECTION_PHS_PIAFS2_1 = 202;
    public static final int CONNECTION_PHS_UNKNOWN = 200;
    public static final int CONNECTION_PSTN = 1;
    public static final int FLAG_DHCP_ERROR = 2;
    public static final int FLAG_DHCP_IPINFO_CHANGED = 1;
    public static final int FLAG_NONE = 0;
    public static final int GENERIC = -1;
    public static final int ILLEGALPARAMETER = -3;
    public static final int KEY_GROUP_BASIC = 1;
    public static final int KEY_GROUP_DATABUTTON = 2;
    public static final int KEY_GROUP_NONE = 0;
    public static final int KEY_GROUP_NUMERICTUNING = 4;
    public static final int MESSAGETYPE_AUDIOUPDATE = 3;
    public static final int MESSAGETYPE_BROWSER_STATUS = 4;
    public static final int MESSAGETYPE_CLEARNVRAM = 5;
    public static final int MESSAGETYPE_ENTERSTATUS = 7;
    public static final int MESSAGETYPE_HALT = 6;
    public static final int MESSAGETYPE_LEAVESTATUS = 8;
    public static final int MESSAGETYPE_NOTIFYERROR = 9;
    public static final int MESSAGETYPE_NOTIFY_RETURNTVMAIN = 11;
    public static final int MESSAGETYPE_NOTIFY_SETCHANNEL = 10;
    public static final int MESSAGETYPE_VIDEOSTATUS = 1;
    public static final int MESSAGETYPE_VIDEOUPDATE = 2;
    public static final int MIME_APPLICATIONARIBCONTENTPLAYCONTROL = 16;
    public static final int MIME_APPLICATIONARIBMPEG2TTS = 17;
    public static final int MIME_AUDIOARIBAIFF = 12;
    public static final int MIME_AUDIOARIBMPEG2AAC = 11;
    public static final int MIME_CONTENTUNKNOWN = 0;
    public static final int MIME_VIDEOARIBMPEG1 = 13;
    public static final int MIME_VIDEOARIBMPEG2 = 14;
    public static final int MIME_VIDEOARIBMPEG4 = 15;
    public static final int NO = 0;
    public static final int NOTINCLUDEGROUPED = -99;
    public static final int NOTMASKED = -98;
    public static final int NOTREADY = -9;
    public static final int NOTSUPPORTED = -2;
    public static final int OK = 0;
    public static final int STARTMODE_AUTO = 2;
    public static final int STARTMODE_DATABUTTON = 1;
    public static final int STARTMODE_NONE = 0;
    public static final int STARTMODE_RETURNTOMAIN = 3;
    public static final int TCP_DATALINK_ALTERABLE = 2;
    public static final int TCP_DATALINK_ETHERNET = 0;
    public static final int TCP_DATALINK_PPP = 1;
    public static final int TCP_DATALINK_UNKNOWN = -1;
    public static final int VIDEOSTATUS_INVISIBLE = 4;
    public static final int VIDEOSTATUS_UNKNOWN = 0;
    public static final int VIDEOSTATUS_VIDEOCOMPOSED = 2;
    public static final int VIDEOSTATUS_VIDEONONE = 3;
    public static final int VIDEOSTATUS_VIDEOONLY = 1;
    public static final int VISIBILITYCHANGED_INVISIBLE = 2;
    public static final int VISIBILITYCHANGED_REFRESH = 3;
    public static final int VISIBILITYCHANGED_VISIBLE = 1;
    public static final int WOULDBLOCK = -13;
    public static final int YES = 1;
}
