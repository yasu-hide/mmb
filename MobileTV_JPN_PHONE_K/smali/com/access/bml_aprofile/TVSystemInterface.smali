.class public interface abstract Lcom/access/bml_aprofile/TVSystemInterface;
.super Ljava/lang/Object;
.source "TVSystemInterface.java"


# static fields
.field public static final AFFILIATE_MAX:I = 0x8

.field public static final AUDIO_STATUS_MUTE:I = 0x0

.field public static final AUDIO_STATUS_PLAY:I = 0x1

.field public static final AUDIO_STATUS_STOPPED:I = 0x2

.field public static final BROWSER_STATUS_RUNNING:I = 0x1

.field public static final BROWSER_STATUS_STOP:I = 0x0

.field public static final CONNECTION_CELLULAR_CDMA_CELLULAR:I = 0x131

.field public static final CONNECTION_CELLULAR_DS_CDMA:I = 0x12f

.field public static final CONNECTION_CELLULAR_MC_CDMA:I = 0x130

.field public static final CONNECTION_CELLULAR_PDC:I = 0x12d

.field public static final CONNECTION_CELLULAR_PDC_P:I = 0x12e

.field public static final CONNECTION_CELLULAR_UNKNOWN:I = 0x12c

.field public static final CONNECTION_ETHERNET_DHCP:I = 0x193

.field public static final CONNECTION_ETHERNET_FIXED_IP:I = 0x192

.field public static final CONNECTION_ETHERNET_PPPOE:I = 0x191

.field public static final CONNECTION_ISDN:I = 0x64

.field public static final CONNECTION_PHS_PIAFS2_0:I = 0xc9

.field public static final CONNECTION_PHS_PIAFS2_1:I = 0xca

.field public static final CONNECTION_PHS_UNKNOWN:I = 0xc8

.field public static final CONNECTION_PSTN:I = 0x1

.field public static final FLAG_DHCP_ERROR:I = 0x2

.field public static final FLAG_DHCP_IPINFO_CHANGED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final GENERIC:I = -0x1

.field public static final ILLEGALPARAMETER:I = -0x3

.field public static final KEY_GROUP_BASIC:I = 0x1

.field public static final KEY_GROUP_DATABUTTON:I = 0x2

.field public static final KEY_GROUP_NONE:I = 0x0

.field public static final KEY_GROUP_NUMERICTUNING:I = 0x4

.field public static final MESSAGETYPE_AUDIOUPDATE:I = 0x3

.field public static final MESSAGETYPE_BROWSER_STATUS:I = 0x4

.field public static final MESSAGETYPE_CLEARNVRAM:I = 0x5

.field public static final MESSAGETYPE_ENTERSTATUS:I = 0x7

.field public static final MESSAGETYPE_HALT:I = 0x6

.field public static final MESSAGETYPE_LEAVESTATUS:I = 0x8

.field public static final MESSAGETYPE_NOTIFYERROR:I = 0x9

.field public static final MESSAGETYPE_NOTIFY_RETURNTVMAIN:I = 0xb

.field public static final MESSAGETYPE_NOTIFY_SETCHANNEL:I = 0xa

.field public static final MESSAGETYPE_VIDEOSTATUS:I = 0x1

.field public static final MESSAGETYPE_VIDEOUPDATE:I = 0x2

.field public static final MIME_APPLICATIONARIBCONTENTPLAYCONTROL:I = 0x10

.field public static final MIME_APPLICATIONARIBMPEG2TTS:I = 0x11

.field public static final MIME_AUDIOARIBAIFF:I = 0xc

.field public static final MIME_AUDIOARIBMPEG2AAC:I = 0xb

.field public static final MIME_CONTENTUNKNOWN:I = 0x0

.field public static final MIME_VIDEOARIBMPEG1:I = 0xd

.field public static final MIME_VIDEOARIBMPEG2:I = 0xe

.field public static final MIME_VIDEOARIBMPEG4:I = 0xf

.field public static final NO:I = 0x0

.field public static final NOTINCLUDEGROUPED:I = -0x63

.field public static final NOTMASKED:I = -0x62

.field public static final NOTREADY:I = -0x9

.field public static final NOTSUPPORTED:I = -0x2

.field public static final OK:I = 0x0

.field public static final STARTMODE_AUTO:I = 0x2

.field public static final STARTMODE_DATABUTTON:I = 0x1

.field public static final STARTMODE_NONE:I = 0x0

.field public static final STARTMODE_RETURNTOMAIN:I = 0x3

.field public static final TCP_DATALINK_ALTERABLE:I = 0x2

.field public static final TCP_DATALINK_ETHERNET:I = 0x0

.field public static final TCP_DATALINK_PPP:I = 0x1

.field public static final TCP_DATALINK_UNKNOWN:I = -0x1

.field public static final VIDEOSTATUS_INVISIBLE:I = 0x4

.field public static final VIDEOSTATUS_UNKNOWN:I = 0x0

.field public static final VIDEOSTATUS_VIDEOCOMPOSED:I = 0x2

.field public static final VIDEOSTATUS_VIDEONONE:I = 0x3

.field public static final VIDEOSTATUS_VIDEOONLY:I = 0x1

.field public static final VISIBILITYCHANGED_INVISIBLE:I = 0x2

.field public static final VISIBILITYCHANGED_REFRESH:I = 0x3

.field public static final VISIBILITYCHANGED_VISIBLE:I = 0x1

.field public static final WOULDBLOCK:I = -0xd

.field public static final YES:I = 0x1


# virtual methods
.method public abstract PushDemuxIncomingPacket([BII)I
.end method

.method public abstract PushDemuxIncomingSection(I[BI)I
.end method

.method public abstract addDataButtonPressEvent()I
.end method

.method public abstract addKeyPressEvent(I)I
.end method

.method public abstract addKeyReleaseEvent(I)I
.end method

.method public abstract demux_SetChannel(IIII)V
.end method

.method public abstract dsmcc_GetSTCPeer(Lcom/access/bml_aprofile/ArgInteger;Lcom/access/bml_aprofile/ArgInteger;)I
.end method

.method public abstract dtvAudioStream_UpdatePeer(IIII)I
.end method

.method public abstract dtvAudio_ClosePeer(I)V
.end method

.method public abstract dtvAudio_GetStatusPeer(I)I
.end method

.method public abstract dtvAudio_OpenPeer([BII[B)I
.end method

.method public abstract dtvAudio_SetStatusPeer(II)I
.end method

.method public abstract dtvCC_FinalizePeer()V
.end method

.method public abstract dtvCC_GetDisplayStatusPeer(I)I
.end method

.method public abstract dtvCC_GetLanguageStatusPeer(I)I
.end method

.method public abstract dtvCC_InitializePeer()I
.end method

.method public abstract dtvCC_SetDisplayStatusPeer(II)I
.end method

.method public abstract dtvControl_GetAffiliateIDPeer([B)I
.end method

.method public abstract dtvControl_GetEventIDPeer()I
.end method

.method public abstract dtvControl_GetIRDIDPeer(I[B)I
.end method

.method public abstract dtvControl_GetProgramRelativeTimePeer()I
.end method

.method public abstract dtvControl_GetTotTdtTimePeer(Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvControl_IsBeingBroadcastPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;)I
.end method

.method public abstract dtvControl_LaunchExAppPeer(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)I
.end method

.method public abstract dtvControl_NotifyHaltPeer(II)V
.end method

.method public abstract dtvControl_PlayRomSoundPeer(I)I
.end method

.method public abstract dtvControl_StartExtraBrowserPeer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
.end method

.method public abstract dtvEPG_CancelReservationPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;)I
.end method

.method public abstract dtvEPG_CheckOperationPeer()I
.end method

.method public abstract dtvEPG_FinalizePeer()V
.end method

.method public abstract dtvEPG_GetEventDurationPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/ArgInteger;)I
.end method

.method public abstract dtvEPG_GetEventStartTimePeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvEPG_InitializePeer()I
.end method

.method public abstract dtvEPG_IsReservedPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvEPG_RecCancelReservationPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;)I
.end method

.method public abstract dtvEPG_RecIsReservedPeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvEPG_RecReservePeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvEPG_ReservePeer(Lcom/access/bml_aprofile/TDTVAribEventURI;Lcom/access/bml_aprofile/TDTVDate;)I
.end method

.method public abstract dtvEvent_NotifyDataButtonMaskPeer(I)V
.end method

.method public abstract dtvEvent_SetUsedKeyListPeer(I)I
.end method

.method public abstract dtvExtension_KeyboardClosePeer()V
.end method

.method public abstract dtvExtension_KeyboardGetStatusPeer()I
.end method

.method public abstract dtvExtension_KeyboardGetValuePeer([BI)I
.end method

.method public abstract dtvExtension_KeyboardIsEnabledPeer()I
.end method

.method public abstract dtvExtension_KeyboardOpenPeer(III[BI)I
.end method

.method public abstract dtvGraphic_NotifyVideoStatusPeer(I)V
.end method

.method public abstract dtvNVRAM_GetBookmarkMaxPeer()I
.end method

.method public abstract dtvNVRAM_GetDenbunMaxPeer()I
.end method

.method public abstract dtvNVRAM_GetZipcodePeer([B)I
.end method

.method public abstract dtvNVRAM_SetZipcodePeer([B)I
.end method

.method public abstract dtvNet_GetConnectionTypePeer(Lcom/access/bml_aprofile/ArgInteger;)I
.end method

.method public abstract dtvNet_GetIPInfoPeer([B[B)I
.end method

.method public abstract dtvNet_GetIPStatusFlagPeer()I
.end method

.method public abstract dtvNet_GetPrefixNumberPeer(Lcom/access/bml_aprofile/TDTVPrefixNumber;)I
.end method

.method public abstract dtvNet_IsIPConnectedPeer()I
.end method

.method public abstract dtvSystem_EnterStatusPeer(I)I
.end method

.method public abstract dtvSystem_LeaveStatusPeer(I)I
.end method

.method public abstract dtvSystem_NotifyDialogOpenPeer(Lcom/access/bml_aprofile/TDTVDialogParameter;)I
.end method

.method public abstract dtvSystem_NotifyDialogOperationPeer(ZLcom/access/bml_aprofile/TDTVDialogParameter;)I
.end method

.method public abstract dtvSystem_NotifyErrorPeer(I)I
.end method

.method public abstract dtvVideoStream_UpdatePeer(ILandroid/graphics/Rect;II)I
.end method

.method public abstract endSystem()Z
.end method

.method public abstract finalizeSystem()V
.end method

.method public abstract initializeSystem(Lcom/access/bml_aprofile/TVSystemInterface;)Z
.end method

.method public abstract returnToMain()V
.end method

.method public abstract setFont(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setStream(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setURI(Ljava/lang/String;)Z
.end method

.method public abstract setZipCode(Ljava/lang/String;)V
.end method

.method public abstract startSystem(Landroid/view/Surface;)Z
.end method
