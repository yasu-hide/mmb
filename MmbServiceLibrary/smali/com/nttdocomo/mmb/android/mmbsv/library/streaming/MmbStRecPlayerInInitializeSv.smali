.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;
.source "MmbStRecPlayerInInitializeSv.java"


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "aRecPlayingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 68
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 72
    return-void
.end method

.method private clearAudioMuteByDevice()V
    .locals 9

    .prologue
    const/16 v8, 0x1000

    const/4 v7, 0x0

    const/16 v5, 0x100

    const/4 v6, 0x1

    .line 1025
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 1026
    .local v0, "audioFlg":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v3

    .line 1030
    .local v3, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    if-nez v0, :cond_2

    .line 1032
    const/4 v2, 0x0

    .line 1033
    .local v2, "muteoff":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    shr-int/lit8 v4, v4, 0xc

    if-ne v6, v4, :cond_0

    .line 1038
    invoke-virtual {p0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeDefine(II)I

    move-result v4

    invoke-virtual {p0, v6, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeBitStatus(III)I

    move-result v1

    .line 1042
    .local v1, "audioStatus":I
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 1045
    .end local v1    # "audioStatus":I
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    shr-int/lit8 v4, v4, 0x8

    if-ne v6, v4, :cond_1

    .line 1049
    invoke-virtual {p0, v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeDefine(II)I

    move-result v4

    invoke-virtual {p0, v6, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeBitStatus(III)I

    move-result v1

    .line 1053
    .restart local v1    # "audioStatus":I
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 1090
    .end local v1    # "audioStatus":I
    .end local v2    # "muteoff":Z
    :cond_1
    :goto_0
    return-void

    .line 1058
    :cond_2
    and-int/lit16 v4, v0, 0x100

    if-ne v5, v4, :cond_3

    .line 1060
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v4

    and-int/lit16 v4, v4, 0x100

    shr-int/lit8 v4, v4, 0x8

    if-ne v6, v4, :cond_1

    .line 1064
    invoke-virtual {p0, v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeDefine(II)I

    move-result v4

    invoke-virtual {p0, v6, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeBitStatus(III)I

    move-result v1

    .line 1068
    .restart local v1    # "audioStatus":I
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    goto :goto_0

    .line 1072
    .end local v1    # "audioStatus":I
    :cond_3
    const/16 v4, 0x200

    and-int/lit16 v5, v0, 0x200

    if-ne v4, v5, :cond_1

    .line 1074
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v4

    and-int/lit16 v4, v4, 0x1000

    shr-int/lit8 v4, v4, 0xc

    if-ne v6, v4, :cond_1

    .line 1078
    invoke-virtual {p0, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeDefine(II)I

    move-result v4

    invoke-virtual {p0, v6, v8, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeBitStatus(III)I

    move-result v1

    .line 1082
    .restart local v1    # "audioStatus":I
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    goto :goto_0
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 808
    const-string v0, "state error : state(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 809
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public audioMute(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 827
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->setAudioMuteStatus(I)V

    .line 831
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 2
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 462
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 2
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 351
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 378
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 432
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 405
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public getAudioInfo()I
    .locals 2

    .prologue
    .line 512
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public getAudioLanguage()I
    .locals 2

    .prologue
    .line 915
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public getAudioLanguageNum()I
    .locals 2

    .prologue
    .line 670
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public getLanguageCount(I)I
    .locals 2
    .param p1, "aType"    # I

    .prologue
    .line 535
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 2

    .prologue
    .line 486
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 689
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 691
    .local v0, "BLUETOOTH_ACTION":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 693
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 694
    .local v1, "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getUsbConnectState(Landroid/content/Intent;)I

    move-result v2

    .line 697
    .local v2, "state":I
    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isConnectedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 699
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->setAudioMuteByDeviceNotify()V

    .line 709
    .end local v1    # "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v2    # "state":I
    :cond_2
    :goto_0
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 710
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv$1;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 724
    :cond_3
    return-void

    .line 701
    .restart local v1    # "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .restart local v2    # "state":I
    :cond_4
    const/4 v3, 0x2

    if-eq v3, v2, :cond_5

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 704
    :cond_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->clearAudioMuteByDevice()V

    goto :goto_0
.end method

.method public onAudioInformation(I)V
    .locals 2
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 295
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 2
    .param p1, "aComponentTag"    # S

    .prologue
    .line 320
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 2
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 267
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public pause(IIZ)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 620
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected pauseInner(IIZ)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 651
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public selectAudioLanguage(I)V
    .locals 4
    .param p1, "aComponentTag"    # I

    .prologue
    .line 874
    const-string v0, "state error ComponentTag(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 875
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public selectAudioMode(I)V
    .locals 4
    .param p1, "aMode"    # I

    .prologue
    .line 853
    const-string v0, "state error : AudioMode(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 854
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setAudioLanguageValue(I)V
    .locals 2
    .param p1, "aLanguage"    # I

    .prologue
    .line 896
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method setAudioMuteByDeviceNotify()V
    .locals 7

    .prologue
    const/16 v4, 0x1000

    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 978
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 979
    .local v0, "audioFlg":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    .line 983
    .local v2, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    and-int/lit16 v3, v0, 0x100

    if-ne v6, v3, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    shr-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 989
    invoke-virtual {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v5, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeBitStatus(III)I

    move-result v1

    .line 993
    .local v1, "audioStatus":I
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 996
    .end local v1    # "audioStatus":I
    :cond_0
    const/16 v3, 0x200

    and-int/lit16 v4, v0, 0x200

    if-ne v3, v4, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    shr-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 1001
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v5, v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->changeBitStatus(III)I

    move-result v1

    .line 1005
    .restart local v1    # "audioStatus":I
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 1011
    .end local v1    # "audioStatus":I
    :cond_1
    return-void
.end method

.method public setBmlState(Z)V
    .locals 2
    .param p1, "aState"    # Z

    .prologue
    .line 940
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 1
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 586
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 591
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 561
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 562
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setResumePlaying(Z)V
    .locals 1
    .param p1, "aResumeflag"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setResumePlaying(Z)V

    .line 242
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 2
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 961
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public startPlay(I)V
    .locals 4
    .param p1, "aUserParam"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    .line 97
    .local v2, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    const/16 v0, -0x12

    .line 100
    .local v0, "exceptionDetail":I
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setStartViewUserParam(I)V

    .line 104
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->initializeBmlBrowserCommonWrapped()V

    .line 107
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->startRecPlay(I)I

    move-result v1

    .line 108
    .local v1, "lRet":I
    packed-switch v1, :pswitch_data_0

    .line 122
    const/16 v0, -0x3e8

    .line 126
    :goto_0
    if-eqz v0, :cond_0

    .line 127
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 110
    :pswitch_0
    const/4 v0, 0x0

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    const/16 v0, -0x3e8

    .line 114
    goto :goto_0

    .line 116
    :pswitch_2
    const/4 v0, -0x2

    .line 117
    goto :goto_0

    .line 119
    :pswitch_3
    const/16 v0, -0x19

    .line 120
    goto :goto_0

    .line 130
    :cond_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_STARTING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 135
    return-void

    .line 108
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopPlay()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v5, -0x16

    const/16 v7, -0x12

    .line 153
    const/4 v2, 0x0

    .line 158
    .local v2, "exceptionFlag":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopLibraryForRecPlay()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->initializeDrawSettingData()V

    .line 177
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 180
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->deleteBmlBrowserCommonWrapped()V

    .line 182
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopPlay()I

    move-result v3

    .line 183
    .local v3, "lRet":I
    if-eqz v3, :cond_0

    .line 184
    const-string v4, "stopPlay error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    const/4 v2, 0x2

    .line 187
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->controlThread(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const v4, 0x8a1c

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_2
    invoke-virtual {p0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->clearApplicationStatus(IIZ)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->resetRecPlayingInformationParameter()V

    .line 208
    if-ne v2, v8, :cond_5

    .line 209
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v5, -0x12

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .end local v3    # "lRet":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v4

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_4
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 161
    .local v1, "exceptionDeteil":I
    if-ne v1, v7, :cond_1

    .line 162
    const-string v4, "stopLibraryForRecPlay fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    const/4 v2, 0x1

    goto :goto_0

    .line 164
    :cond_1
    if-ne v1, v5, :cond_2

    .line 165
    const-string v4, "stopLibraryForRecPlay fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const/4 v2, 0x2

    goto :goto_0

    .line 168
    :cond_2
    const-string v4, "stopLibraryForRecPlay unknow fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    const/4 v2, 0x1

    goto :goto_0

    .line 192
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    .restart local v3    # "lRet":I
    :catch_1
    move-exception v0

    .line 193
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 194
    .restart local v1    # "exceptionDeteil":I
    const/4 v4, -0x3

    if-ne v1, v4, :cond_3

    .line 195
    const-string v4, "setApplicationStatus parameter error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 196
    :cond_3
    if-ne v1, v7, :cond_4

    .line 197
    const-string v4, "setApplicationStatus fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    const/4 v2, 0x1

    goto :goto_1

    .line 200
    :cond_4
    const-string v4, "setApplicationStatus unknow fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    const/4 v2, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    :cond_5
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    .line 211
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v5, -0x16

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 215
    :cond_6
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInInitializeSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 220
    return-void
.end method

.method public videoDecode(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 744
    const-string v0, "state error : status(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected videoDecodeInner(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 765
    const-string v0, "state error : status(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 766
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public videoMute(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 786
    const-string v0, "state error : status(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method
