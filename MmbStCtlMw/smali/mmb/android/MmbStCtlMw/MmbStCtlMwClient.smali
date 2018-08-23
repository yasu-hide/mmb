.class public Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;
.super Ljava/lang/Object;
.source "MmbStCtlMwClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbStCtlMwClient"


# instance fields
.field private log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

.field private mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "/system/lib/libMmbStCtlMwService_jni.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    return-void
.end method


# virtual methods
.method public native MmbStCtlMwClientAVEndJni()I
.end method

.method public native MmbStCtlMwClientAVInitializeJni()I
.end method

.method public native MmbStCtlMwClientAudioDecStartJni(SI)I
.end method

.method public native MmbStCtlMwClientAudioDecStopJni()I
.end method

.method public native MmbStCtlMwClientAudioESChangeJni(S)I
.end method

.method public native MmbStCtlMwClientAudioMainSubChangeJni(I)I
.end method

.method public native MmbStCtlMwClientAudioOutDevSetJni(I)I
.end method

.method public native MmbStCtlMwClientAudioPlayJni()I
.end method

.method public native MmbStCtlMwClientAudioStopJni()I
.end method

.method public native MmbStCtlMwClientCaptionEndJni(I)I
.end method

.method public native MmbStCtlMwClientCaptionGetLangNumSetEnableJni(I)I
.end method

.method public native MmbStCtlMwClientCaptionInitJni()I
.end method

.method public native MmbStCtlMwClientCaptionReqNotifyNothingFixedTimeJni(IZ)I
.end method

.method public native MmbStCtlMwClientCaptionReqNotifyRecvJni(IZ)I
.end method

.method public native MmbStCtlMwClientCaptionReqNotifyRestartJni(IZ)I
.end method

.method public native MmbStCtlMwClientCaptionRestartDispJni(I)I
.end method

.method public native MmbStCtlMwClientCaptionSelectLangJni(II)I
.end method

.method public native MmbStCtlMwClientCaptionSetDispAreaJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;)I
.end method

.method public native MmbStCtlMwClientCaptionSetDispOnOffJni(IZ)I
.end method

.method public native MmbStCtlMwClientCaptionSetPlayPositionChangeJni(I)I
.end method

.method public native MmbStCtlMwClientCaptionSetPlayStateJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I
.end method

.method public native MmbStCtlMwClientCaptionStartJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;Z)I
.end method

.method public native MmbStCtlMwClientCaptionStopDispJni(IZZ)I
.end method

.method public native MmbStCtlMwClientCheckResourceAvailableJni(I)I
.end method

.method public native MmbStCtlMwClientClearCaSystemJni()I
.end method

.method public native MmbStCtlMwClientFastForwardPlayJni()I
.end method

.method public native MmbStCtlMwClientGetBitJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;)I
.end method

.method public native MmbStCtlMwClientGetCnValueJni()I
.end method

.method public native MmbStCtlMwClientGetCurrentTimeJni()J
.end method

.method public native MmbStCtlMwClientGetDurationJni()J
.end method

.method public native MmbStCtlMwClientGetEitJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;)I
.end method

.method public native MmbStCtlMwClientGetIntJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwInt;)I
.end method

.method public native MmbStCtlMwClientGetNitJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;)I
.end method

.method public native MmbStCtlMwClientGetPmtJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;)I
.end method

.method public native MmbStCtlMwClientGetSdtJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;)I
.end method

.method public native MmbStCtlMwClientIsResumeInfoExistJni(I)Z
.end method

.method public native MmbStCtlMwClientPausePlayJni()I
.end method

.method public native MmbStCtlMwClientPrepPlayJni(I)I
.end method

.method public native MmbStCtlMwClientResumeJni()I
.end method

.method public native MmbStCtlMwClientRewindPlayJni()I
.end method

.method public native MmbStCtlMwClientScanCancelJni()I
.end method

.method public native MmbStCtlMwClientScanJni(I)I
.end method

.method public native MmbStCtlMwClientSeekToJni(J)I
.end method

.method public native MmbStCtlMwClientSelectChJni(IIII)I
.end method

.method public native MmbStCtlMwClientSetListenerJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)V
.end method

.method public native MmbStCtlMwClientSetResumePlayingJni(Z)V
.end method

.method public native MmbStCtlMwClientStartPlayJni(I)I
.end method

.method public native MmbStCtlMwClientStartStJni(IIII)I
.end method

.method public native MmbStCtlMwClientStopPlayJni()I
.end method

.method public native MmbStCtlMwClientStopStJni()I
.end method

.method public native MmbStCtlMwClientVideoDecStartJni(S)I
.end method

.method public native MmbStCtlMwClientVideoDecStopJni()I
.end method

.method public native MmbStCtlMwClientVideoDisplayCloseJni()I
.end method

.method public native MmbStCtlMwClientVideoDisplayOpenJni(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I
.end method

.method public native MmbStCtlMwClientVideoDisplaySetupJni(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I
.end method

.method public aVEnd()I
    .locals 3

    .prologue
    .line 465
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "aVEnd()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAVEndJni()I

    move-result v0

    return v0
.end method

.method public aVInitialize()I
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "aVInitialize()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAVInitializeJni()I

    move-result v0

    return v0
.end method

.method public audioDecStart(SI)I
    .locals 3
    .param p1, "aComponentTag"    # S
    .param p2, "aMode"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioDecStart()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "aComponentTag = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 538
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "aMode         = "

    invoke-virtual {v0, v1, v2, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 540
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioDecStartJni(SI)I

    move-result v0

    return v0
.end method

.method public audioDecStop()I
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioDecStop()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioDecStopJni()I

    move-result v0

    return v0
.end method

.method public audioESChange(S)I
    .locals 3
    .param p1, "aComponent_tag"    # S

    .prologue
    .line 743
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioESChange()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "aComponent_tag = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 746
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioESChangeJni(S)I

    move-result v0

    return v0
.end method

.method public audioMainSubChange(I)I
    .locals 3
    .param p1, "aMode"    # I

    .prologue
    .line 719
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioMainSubChange()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "aMode = "

    invoke-virtual {v0, v1, v2, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 722
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioMainSubChangeJni(I)I

    move-result v0

    return v0
.end method

.method public audioOutDevSet(I)I
    .locals 3
    .param p1, "aAudioHW"    # I

    .prologue
    .line 764
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioOutDevSet()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioOutDevSetJni(I)I

    move-result v0

    return v0
.end method

.method public audioPlay()I
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioPlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioPlayJni()I

    move-result v0

    return v0
.end method

.method public audioStop()I
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "audioStop()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientAudioStopJni()I

    move-result v0

    return v0
.end method

.method public captionEnd(I)I
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 842
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionEnd()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionEndJni(I)I

    move-result v0

    return v0
.end method

.method public captionGetLangNumSetEnable(I)I
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionGetLangNumSetEnable()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionGetLangNumSetEnableJni(I)I

    move-result v0

    return v0
.end method

.method public captionInit()I
    .locals 3

    .prologue
    .line 782
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionInit()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionInitJni()I

    move-result v0

    return v0
.end method

.method public captionReqNotifyNothingFixedTime(IZ)I
    .locals 3
    .param p1, "aIndex"    # I
    .param p2, "aIsStartReq"    # Z

    .prologue
    .line 863
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionReqNotifyNothingFixedTime()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionReqNotifyNothingFixedTimeJni(IZ)I

    move-result v0

    return v0
.end method

.method public captionReqNotifyRecv(IZ)I
    .locals 3
    .param p1, "aIndex"    # I
    .param p2, "aIsStartReq"    # Z

    .prologue
    .line 905
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionReqNotifyRecv()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionReqNotifyRecvJni(IZ)I

    move-result v0

    return v0
.end method

.method public captionReqNotifyRestart(IZ)I
    .locals 3
    .param p1, "aIndex"    # I
    .param p2, "aIsStartReq"    # Z

    .prologue
    .line 884
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionReqNotifyRestart()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionReqNotifyRestartJni(IZ)I

    move-result v0

    return v0
.end method

.method public captionRestartDisp(I)I
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 949
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionRestartDisp()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionRestartDispJni(I)I

    move-result v0

    return v0
.end method

.method public captionSelectLang(II)I
    .locals 3
    .param p1, "aIndex"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 1040
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionSelectLang()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionSelectLangJni(II)I

    move-result v0

    return v0
.end method

.method public captionSetDispArea(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;)I
    .locals 4
    .param p1, "aIndex"    # I
    .param p2, "aDispAreaSet"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;

    .prologue
    .line 972
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "captionSetDispArea()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    const/16 v0, -0x1501

    .line 978
    .local v0, "ret":I
    :goto_0
    if-eqz p2, :cond_0

    .line 979
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionSetDispAreaJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionDispAreaSet;)I

    move-result v0

    .line 982
    :cond_0
    return v0

    .line 975
    .end local v0    # "ret":I
    :cond_1
    const/16 v0, -0x1101

    goto :goto_0
.end method

.method public captionSetDispOnOff(IZ)I
    .locals 3
    .param p1, "aIndex"    # I
    .param p2, "aIsDisp"    # Z

    .prologue
    .line 1005
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionSetDispOnOff()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionSetDispOnOffJni(IZ)I

    move-result v0

    return v0
.end method

.method public captionSetPlayPositionChange(I)I
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 1113
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionSetPlayPositionChange()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionSetPlayPositionChangeJni(I)I

    move-result v0

    return v0
.end method

.method public captionSetPlayState(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I
    .locals 4
    .param p1, "aIndex"    # I
    .param p2, "aPlayStateSet"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;

    .prologue
    .line 1074
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "captionSetPlayState()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    const/16 v0, -0x1501

    .line 1080
    .local v0, "ret":I
    :goto_0
    if-eqz p2, :cond_0

    .line 1081
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionSetPlayStateJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionPlayStateSet;)I

    move-result v0

    .line 1084
    :cond_0
    return v0

    .line 1077
    .end local v0    # "ret":I
    :cond_1
    const/16 v0, -0x1101

    goto :goto_0
.end method

.method public captionStart(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;Z)I
    .locals 4
    .param p1, "aIndex"    # I
    .param p2, "aStart"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;
    .param p3, "aIsLimitedMode"    # Z

    .prologue
    .line 812
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "captionStart()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const/16 v1, 0x38

    if-ne p1, v1, :cond_1

    const/16 v0, -0x1501

    .line 818
    .local v0, "ret":I
    :goto_0
    if-eqz p2, :cond_0

    .line 819
    invoke-virtual {p0, p1, p2, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionStartJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwCaptionStart;Z)I

    move-result v0

    .line 822
    :cond_0
    return v0

    .line 815
    .end local v0    # "ret":I
    :cond_1
    const/16 v0, -0x1101

    goto :goto_0
.end method

.method public captionStopDisp(IZZ)I
    .locals 3
    .param p1, "aIndex"    # I
    .param p2, "aIsCanvasClear"    # Z
    .param p3, "aIsPidClear"    # Z

    .prologue
    .line 927
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "captionStopDisp()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-virtual {p0, p1, p2, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCaptionStopDispJni(IZZ)I

    move-result v0

    return v0
.end method

.method public checkResourceAvailable(I)I
    .locals 3
    .param p1, "aServiceId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "checkResourceAvailable()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientCheckResourceAvailableJni(I)I

    move-result v0

    return v0
.end method

.method public clearCaSystem()I
    .locals 3

    .prologue
    .line 1334
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "clearCaSystem()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientClearCaSystemJni()I

    move-result v0

    return v0
.end method

.method public fastForwardPlay()I
    .locals 3

    .prologue
    .line 1222
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "fastForwardPlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientFastForwardPlayJni()I

    move-result v0

    return v0
.end method

.method public getBit(Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;)I
    .locals 4
    .param p1, "aBit"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;

    .prologue
    .line 349
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "getBit()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, -0x2

    .line 353
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetBitJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;)I

    move-result v0

    .line 355
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->outBitData(Lmmb/android/MmbStCtlMw/MmbStCtlMwBit;)V

    .line 358
    :cond_0
    return v0
.end method

.method public getCnValue()I
    .locals 3

    .prologue
    .line 419
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "getCnValue()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetCnValueJni()I

    move-result v0

    return v0
.end method

.method public getCurrentTime()J
    .locals 3

    .prologue
    .line 1284
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "getCurrentTime()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetCurrentTimeJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDuration()J
    .locals 3

    .prologue
    .line 1270
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "getDuration()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetDurationJni()J

    move-result-wide v0

    return-wide v0
.end method

.method public getEit(Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;)I
    .locals 4
    .param p1, "aEit"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;

    .prologue
    .line 372
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "getEit()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, -0x2

    .line 376
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 377
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetEitJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;)I

    move-result v0

    .line 378
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->outEitData(Lmmb/android/MmbStCtlMw/MmbStCtlMwEit;)V

    .line 381
    :cond_0
    return v0
.end method

.method public getInt(ILmmb/android/MmbStCtlMw/MmbStCtlMwInt;)I
    .locals 4
    .param p1, "aServiceId"    # I
    .param p2, "aInt"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwInt;

    .prologue
    .line 325
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "getInt()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "aServiceId = "

    invoke-virtual {v1, v2, v3, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->infoLogPrint(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    const/4 v0, -0x2

    .line 330
    .local v0, "ret":I
    if-eqz p2, :cond_0

    .line 331
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetIntJni(ILmmb/android/MmbStCtlMw/MmbStCtlMwInt;)I

    move-result v0

    .line 332
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-virtual {v1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->outIntData(Lmmb/android/MmbStCtlMw/MmbStCtlMwInt;)V

    .line 335
    :cond_0
    return v0
.end method

.method public getNit(Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;)I
    .locals 4
    .param p1, "aNit"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;

    .prologue
    .line 301
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "getNit()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, -0x2

    .line 305
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetNitJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;)I

    move-result v0

    .line 307
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->outNitData(Lmmb/android/MmbStCtlMw/MmbStCtlMwNit;)V

    .line 310
    :cond_0
    return v0
.end method

.method public getPmt(Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;)I
    .locals 4
    .param p1, "aPmt"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;

    .prologue
    .line 278
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "getPmt()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v0, -0x2

    .line 282
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetPmtJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;)I

    move-result v0

    .line 284
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->outPmtData(Lmmb/android/MmbStCtlMw/MmbStCtlMwPmt;)V

    .line 287
    :cond_0
    return v0
.end method

.method public getSdt(Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;)I
    .locals 4
    .param p1, "aSdt"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;

    .prologue
    .line 395
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "getSdt()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, -0x2

    .line 399
    .local v0, "ret":I
    if-eqz p1, :cond_0

    .line 400
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientGetSdtJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;)I

    move-result v0

    .line 401
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    invoke-virtual {v1, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->outSdtData(Lmmb/android/MmbStCtlMw/MmbStCtlMwSdt;)V

    .line 404
    :cond_0
    return v0
.end method

.method public isResumeInfoExist(I)Z
    .locals 3
    .param p1, "aPrgNo"    # I

    .prologue
    .line 1300
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "isResumeInfoExist()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientIsResumeInfoExistJni(I)Z

    move-result v0

    return v0
.end method

.method public pausePlay()I
    .locals 3

    .prologue
    .line 1205
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "pausePlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientPausePlayJni()I

    move-result v0

    return v0
.end method

.method public prepPlay(I)I
    .locals 3
    .param p1, "aPrgNo"    # I

    .prologue
    .line 1135
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "prepPlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientPrepPlayJni(I)I

    move-result v0

    return v0
.end method

.method public resume()I
    .locals 3

    .prologue
    .line 1188
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "resume()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientResumeJni()I

    move-result v0

    return v0
.end method

.method public rewindPlay()I
    .locals 3

    .prologue
    .line 1239
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "rewindPlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientRewindPlayJni()I

    move-result v0

    return v0
.end method

.method public scan(I)I
    .locals 3
    .param p1, "aUserParam"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "scan()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientScanJni(I)I

    move-result v0

    return v0
.end method

.method public scanCancel()I
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "scanCancel()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientScanCancelJni()I

    move-result v0

    return v0
.end method

.method public seekTo(J)I
    .locals 3
    .param p1, "aMsec"    # J

    .prologue
    .line 1256
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "seekTo()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientSeekToJni(J)I

    move-result v0

    return v0
.end method

.method public selectCh(IIII)I
    .locals 3
    .param p1, "aChannel"    # I
    .param p2, "aSegmentType"    # I
    .param p3, "aServiceId"    # I
    .param p4, "aUserParam"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "selectCh()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {p0, p1, p2, p3, p4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientSelectChJni(IIII)I

    move-result v0

    return v0
.end method

.method public setListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)I
    .locals 4
    .param p1, "listener"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "setListener()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-nez p1, :cond_1

    .line 133
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "listener null"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->errorLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-virtual {v0, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->setMmbStCtlMwListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V

    .line 136
    iput-object v3, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    .line 138
    :cond_0
    invoke-virtual {p0, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientSetListenerJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)V

    .line 149
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 141
    :cond_1
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    if-nez v0, :cond_2

    .line 142
    new-instance v0, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-direct {v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    .line 145
    :cond_2
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-virtual {v0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;->setMmbStCtlMwListener(Lmmb/android/MmbStCtlMw/MmbStCtlMwListener;)V

    .line 146
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->mJniWrapper:Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;

    invoke-virtual {p0, v0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientSetListenerJni(Lmmb/android/MmbStCtlMw/MmbStCtlMwJniWrapper;)V

    goto :goto_0
.end method

.method public setResumePlaying(Z)V
    .locals 3
    .param p1, "aResumePlaying"    # Z

    .prologue
    .line 1314
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "setResumeInfoPlaying()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientSetResumePlayingJni(Z)V

    .line 1318
    return-void
.end method

.method public startPlay(I)I
    .locals 3
    .param p1, "aUserParam"    # I

    .prologue
    .line 1153
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "startPlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientStartPlayJni(I)I

    move-result v0

    return v0
.end method

.method public startSt(IIII)I
    .locals 3
    .param p1, "aChannel"    # I
    .param p2, "aSegmentType"    # I
    .param p3, "aServiceId"    # I
    .param p4, "aUserParam"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "startSt()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0, p1, p2, p3, p4}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientStartStJni(IIII)I

    move-result v0

    return v0
.end method

.method public stopPlay()I
    .locals 3

    .prologue
    .line 1170
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "stopPlay()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientStopPlayJni()I

    move-result v0

    return v0
.end method

.method public stopSt()I
    .locals 3

    .prologue
    .line 240
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "stopSt()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientStopStJni()I

    move-result v0

    return v0
.end method

.method public videoDecStart(S)I
    .locals 3
    .param p1, "aComponentTag"    # S

    .prologue
    .line 488
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "videoDecStart()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientVideoDecStartJni(S)I

    move-result v0

    return v0
.end method

.method public videoDecStop()I
    .locals 3

    .prologue
    .line 510
    iget-object v0, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v1, "MmbStCtlMwClient"

    const-string v2, "videoDecStop()"

    invoke-virtual {v0, v1, v2}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientVideoDecStopJni()I

    move-result v0

    return v0
.end method

.method public videoDisplayClose()I
    .locals 4

    .prologue
    .line 616
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "videoDisplayClose()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-virtual {p0}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientVideoDisplayCloseJni()I

    move-result v0

    .line 622
    .local v0, "ret":I
    return v0
.end method

.method public videoDisplayOpen(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I
    .locals 4
    .param p1, "aParam"    # Landroid/view/Surface;
    .param p2, "aRoi"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;
    .param p3, "aRotateDegrees"    # I

    .prologue
    .line 587
    const/16 v0, -0x2003

    .line 589
    .local v0, "ret":I
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "videoDisplayOpen()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 592
    invoke-virtual {p0, p1, p2, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientVideoDisplayOpenJni(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I

    move-result v0

    .line 595
    :cond_0
    return v0
.end method

.method public videoDisplaySetup(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I
    .locals 4
    .param p1, "aParam"    # Landroid/view/Surface;
    .param p2, "aRoi"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;
    .param p3, "aRotateDegrees"    # I

    .prologue
    .line 647
    const/16 v0, -0x2003

    .line 649
    .local v0, "ret":I
    iget-object v1, p0, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->log:Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;

    const-string v2, "MmbStCtlMwClient"

    const-string v3, "videoDisplaySetup()"

    invoke-virtual {v1, v2, v3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwCommon;->debugLogPrint(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 653
    invoke-virtual {p0, p1, p2, p3}, Lmmb/android/MmbStCtlMw/MmbStCtlMwClient;->MmbStCtlMwClientVideoDisplaySetupJni(Landroid/view/Surface;Lmmb/android/MmbStCtlMw/MmbStCtlMwVoRect;I)I

    move-result v0

    .line 656
    :cond_0
    return v0
.end method
