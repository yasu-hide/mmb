.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStPlayerInIdleSv.java"


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V

    .line 74
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "aRecPlayingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 102
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 106
    return-void
.end method

.method private copyStreamingInfoToRecInfo()V
    .locals 4

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    .line 870
    .local v2, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 871
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 873
    .local v0, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 874
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getVideoStatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setVideoStatus(I)V

    .line 875
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getContractstatus()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setServiceContractStatus(I)V

    .line 876
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudiocomponenttag()S

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudiocomponenttag(S)V

    .line 877
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getBmlStarterFlag()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlStarterFlag(Z)V

    .line 878
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getCaptionStarterFlag()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setCaptionStarterFlag(Z)V

    .line 879
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 880
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V

    .line 881
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getBmlDraw()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlDraw(Z)V

    .line 882
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getStartViewUserParam()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setStartViewUserParam(I)V

    .line 883
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 884
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getExecuteStartCaptionFlag()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setExecuteStartCaptionFlag(Z)V

    .line 889
    return-void
.end method

.method private preStartActual(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)V
    .locals 9
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;

    .prologue
    const/4 v8, 0x1

    const v7, 0xa306

    .line 309
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 313
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3, v4, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 317
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkConflict(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 323
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    .local v0, "conflictresult":I
    if-eqz v0, :cond_1

    .line 326
    const-string v3, "conflict(%d)"

    new-array v4, v8, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3, v4, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 332
    const/16 v3, 0x8

    if-ne v3, v0, :cond_0

    iget-boolean v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbExecutionSelectStart:Z

    if-ne v8, v3, :cond_0

    .line 334
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->releaseTunerResouce(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    .line 342
    :goto_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v4, 0x2

    invoke-direct {v3, v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v3

    .line 338
    :cond_0
    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    invoke-virtual {p0, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->checkReservationConflict(II)V

    goto :goto_0

    .line 350
    :cond_1
    return-void
.end method

.method private setStarterFlag()V
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getBmlDisplay()Z

    move-result v0

    .line 263
    .local v0, "bmlstarterflag":Z
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setBmlStateCommonWrapped(Z)V

    .line 266
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSuperImposeCaptionDisplay(I)Z

    move-result v1

    .line 269
    .local v1, "captionstarterflag":Z
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setCaptionStateCommonWrapped(Z)V

    .line 272
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSuperImposeCaptionDisplay(I)Z

    move-result v2

    .line 275
    .local v2, "superimposestarterflag":Z
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setSuperimposeStateCommonWrapped(Z)V

    .line 280
    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public onFinishReleaseResource(I)V
    .locals 11
    .param p1, "aErrorCode"    # I

    .prologue
    .line 652
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v2

    .line 653
    .local v2, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v3

    .line 654
    .local v3, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getStartViewUserParam()I

    move-result v6

    .line 655
    .local v6, "userparam":I
    const/16 v0, 0x8

    .line 657
    .local v0, "errordetail":I
    packed-switch p1, :pswitch_data_0

    .line 671
    const-string v7, "error(%d)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    :goto_0
    move v1, v0

    .line 677
    .local v1, "result":I
    move v5, v6

    .line 678
    .local v5, "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;

    invoke-direct {v8, p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 689
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 693
    return-void

    .line 659
    .end local v1    # "result":I
    .end local v5    # "uparam":I
    :pswitch_0
    const/16 v0, 0xb

    .line 660
    goto :goto_0

    .line 662
    :pswitch_1
    const/16 v0, 0xc

    .line 665
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v4

    .line 667
    .local v4, "tunetype":I
    const/16 v7, 0x8

    invoke-virtual {p0, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->checkReservationConflict(II)V

    goto :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public preStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;I)V
    .locals 10
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aUserParam"    # I

    .prologue
    const v9, 0xa306

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 137
    const/4 v1, 0x1

    .line 141
    .local v1, "errorflag":Z
    const/4 v4, 0x0

    .line 142
    .local v4, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    const/4 v0, 0x0

    .line 143
    .local v0, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v4

    .line 144
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v3

    .line 147
    .local v3, "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setServiceId(I)V

    .line 148
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setStLogServiceId(I)V

    .line 150
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setTuneType(I)V

    .line 152
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setStartViewUserParam(I)V

    .line 154
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setReservationUserParam(I)V

    .line 156
    iget-boolean v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbExecutionSelectStart:Z

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setExceSelectStart(Z)V

    .line 158
    iget-boolean v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbIsBmlDraw:Z

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setBmlDraw(Z)V

    .line 160
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 163
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbSuperimposeLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 167
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setStarterFlag()V

    .line 170
    const/16 v5, 0x30

    invoke-virtual {p0, v6, v5, v6, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setPausingInformation(IIZZ)V

    .line 172
    const/16 v5, 0x38

    invoke-virtual {p0, v6, v5, v6, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setPausingInformation(IIZZ)V

    .line 177
    invoke-virtual {p0, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setSuperImposeCaptionLanguage(II)V

    .line 179
    invoke-virtual {p0, v6, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setSuperImposeCaptionLanguage(II)V

    .line 183
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->initializeAntennaLevel()V

    .line 186
    invoke-virtual {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setExecuteStartCaptionFlag(Z)V

    .line 189
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->initializeUsbConnectState()V

    .line 192
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setAudioMuteByDevice()V

    .line 195
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    if-ne v6, v5, :cond_0

    .line 196
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setScheduleIntentData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V

    .line 201
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->preStartActual(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    if-nez v1, :cond_1

    .line 237
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v5, v6, v9, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 241
    :cond_1
    iget v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    invoke-virtual {p0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->asyncCallReservationConclusion(ZI)V

    .line 246
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 204
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const/4 v1, 0x0

    .line 208
    :try_start_1
    const-string v5, "ServiceArgumentException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v6, -0x3

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v5

    if-nez v1, :cond_2

    .line 237
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v7

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v6, v7, v9, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 241
    :cond_2
    iget v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    invoke-virtual {p0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->asyncCallReservationConclusion(ZI)V

    throw v5

    .line 210
    :catch_1
    move-exception v2

    .line 211
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const/4 v1, 0x0

    .line 214
    :try_start_2
    const-string v5, "ServiceBatteryException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x3e8

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 216
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_2
    move-exception v2

    .line 217
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const/4 v1, 0x0

    .line 220
    const-string v5, "ServiceInternalException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x3e8

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 222
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v2

    .line 223
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const/4 v1, 0x0

    .line 226
    const-string v5, "ServiceConnectionException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x12

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 228
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_4
    move-exception v2

    .line 229
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const/4 v1, 0x0

    .line 232
    const-string v5, "ServiceFatalException"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x12

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public prepPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;)V
    .locals 17
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;

    .prologue
    .line 719
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v6

    .line 720
    .local v6, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v11

    .line 724
    .local v11, "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v13

    const v14, 0x8a1c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v12, v13, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 727
    const/4 v8, 0x1

    .line 730
    .local v8, "listenerflg":Z
    const v12, 0x8a1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v6, v12, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkConflict(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v10

    .line 735
    .local v10, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 737
    .local v3, "conflictresult":I
    if-eqz v3, :cond_1

    .line 738
    const-string v12, "conflict(%d)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    const/4 v8, 0x0

    .line 741
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v13, 0x2

    invoke-direct {v12, v13, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v12
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    .end local v3    # "conflictresult":I
    .end local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v4

    .line 745
    .local v4, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_1
    const-string v12, "ServiceArgumentException"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    const/4 v8, 0x0

    .line 747
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    .end local v4    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v12

    if-nez v8, :cond_0

    .line 766
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v14

    const v15, 0x8a1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    :cond_0
    throw v12

    .line 765
    .restart local v3    # "conflictresult":I
    .restart local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :cond_1
    if-nez v8, :cond_2

    .line 766
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v13

    const v14, 0x8a1c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v12, v13, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 771
    :cond_2
    const/16 v5, -0x12

    .line 772
    .local v5, "exceptionDetail":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v9

    .line 775
    .local v9, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->copyStreamingInfoToRecInfo()V

    .line 779
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getBmlDisplay()Z

    move-result v1

    .line 780
    .local v1, "bmlstarterflag":Z
    invoke-virtual {v9, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlStarterFlag(Z)V

    .line 784
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSuperImposeCaptionDisplay(I)Z

    move-result v2

    .line 787
    .local v2, "captionstarterflag":Z
    invoke-virtual {v9, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setCaptionStarterFlag(Z)V

    .line 790
    const/4 v12, 0x1

    const/16 v13, 0x30

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setPausingInformation(IIZZ)V

    .line 796
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setSuperImposeCaptionLanguage(II)V

    .line 801
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setExecuteStartCaptionFlag(Z)V

    .line 804
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->initializeUsbConnectState()V

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->setRecPlayAudioMuteByDevice()V

    .line 810
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->initializeRecPlay(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;Z)V

    .line 812
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v0, p1

    iget v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbPrgNoSetting:I

    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->prepPlay(I)I

    move-result v7

    .line 814
    .local v7, "lRet":I
    packed-switch v7, :pswitch_data_0

    .line 828
    const/16 v5, -0x3e8

    .line 832
    :goto_0
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbIsBmlDraw:Z

    invoke-virtual {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlDraw(Z)V

    .line 834
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlaySettingDataSv;->mmbSubtitleLibrarySetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;

    iget-object v12, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeSettingDataSv;->mmbSuperimposeDrawSetting:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    invoke-virtual {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 841
    if-eqz v5, :cond_3

    .line 842
    const v12, 0x8a1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->clearApplicationStatus(IIZ)V

    .line 843
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v12, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v12

    .line 748
    .end local v1    # "bmlstarterflag":Z
    .end local v2    # "captionstarterflag":Z
    .end local v3    # "conflictresult":I
    .end local v5    # "exceptionDetail":I
    .end local v7    # "lRet":I
    .end local v9    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    .end local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v4

    .line 749
    .local v4, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :try_start_3
    const-string v12, "ServiceBatteryException"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    const/4 v8, 0x0

    .line 751
    throw v4

    .line 752
    .end local v4    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_2
    move-exception v4

    .line 753
    .local v4, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v12, "ServiceInternalException"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 754
    const/4 v8, 0x0

    .line 755
    throw v4

    .line 756
    .end local v4    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v4

    .line 757
    .local v4, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v12, "ServiceConnectionException"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    const/4 v8, 0x0

    .line 759
    throw v4

    .line 760
    .end local v4    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_4
    move-exception v4

    .line 761
    .local v4, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v12, "ServiceFatalException"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    const/4 v8, 0x0

    .line 763
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 816
    .end local v4    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v1    # "bmlstarterflag":Z
    .restart local v2    # "captionstarterflag":Z
    .restart local v3    # "conflictresult":I
    .restart local v5    # "exceptionDetail":I
    .restart local v7    # "lRet":I
    .restart local v9    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    .restart local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :pswitch_0
    const/4 v5, 0x0

    .line 817
    goto :goto_0

    .line 819
    :pswitch_1
    const/16 v5, -0x3e8

    .line 820
    goto :goto_0

    .line 822
    :pswitch_2
    const/4 v5, -0x2

    .line 823
    goto :goto_0

    .line 825
    :pswitch_3
    const/16 v5, -0x19

    .line 826
    goto :goto_0

    .line 846
    :cond_3
    sget-object v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_INIT:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 851
    return-void

    .line 836
    .end local v1    # "bmlstarterflag":Z
    .end local v2    # "captionstarterflag":Z
    .end local v7    # "lRet":I
    :catch_5
    move-exception v4

    .line 837
    .local v4, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopLibraryForRecPlay()V

    .line 838
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v5

    .line 839
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 841
    .end local v4    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catchall_1
    move-exception v12

    if-eqz v5, :cond_4

    .line 842
    const v12, 0x8a1c

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->clearApplicationStatus(IIZ)V

    .line 843
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v12, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v12

    .line 846
    :cond_4
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_INIT:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v12

    .line 814
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scan(I)V
    .locals 12
    .param p1, "aUserParam"    # I

    .prologue
    const/16 v11, -0x12

    const/16 v10, -0x3e8

    const/4 v9, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v4

    .line 564
    .local v4, "selectchannelInformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setScanUserParam(I)V

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    .line 574
    .local v2, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const v5, 0xa10a

    const v6, 0x8000

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkConflict(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 579
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 581
    .local v0, "conflictresult":I
    if-eqz v0, :cond_0

    .line 582
    const-string v5, "conflict(%d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 585
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->saveServiceListFromNitInfo()V

    .line 588
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v5
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_5

    .line 605
    .end local v0    # "conflictresult":I
    .end local v2    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v1

    .line 608
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "ServiceArgumentException"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 595
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v0    # "conflictresult":I
    .restart local v2    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->scan(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_5

    .line 603
    :try_start_2
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->SCANNING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 630
    return-void

    .line 596
    :catch_1
    move-exception v1

    .line 597
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v5, "setApplicationStatus(false) did for scan err"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 599
    const v5, 0xa10a

    const v6, 0x8000

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->clearApplicationStatus(IIZ)V

    .line 600
    throw v1
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_5

    .line 610
    .end local v0    # "conflictresult":I
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v2    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_2
    move-exception v1

    .line 612
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "ServiceInternalException"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 614
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 616
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v5, "ServiceBatteryException"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 618
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_4
    move-exception v1

    .line 620
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v5, "ServiceConnectionException"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 622
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_5
    move-exception v1

    .line 624
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v5, "ServiceFatalException"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5
.end method

.method protected setRecPlayAudioMuteByDevice()V
    .locals 7

    .prologue
    const/16 v4, 0x1000

    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 907
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 908
    .local v0, "audioFlg":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    .line 911
    .local v2, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    and-int/lit16 v3, v0, 0x100

    if-ne v6, v3, :cond_0

    .line 913
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    shr-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 917
    invoke-virtual {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v5, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->changeBitStatus(III)I

    move-result v1

    .line 921
    .local v1, "audioStatus":I
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 925
    .end local v1    # "audioStatus":I
    :cond_0
    const/16 v3, 0x200

    and-int/lit16 v4, v0, 0x200

    if-ne v3, v4, :cond_1

    .line 927
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    shr-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 930
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v5, v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->changeBitStatus(III)I

    move-result v1

    .line 934
    .restart local v1    # "audioStatus":I
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 941
    .end local v1    # "audioStatus":I
    :cond_1
    return-void
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
    .locals 5
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    .prologue
    const/4 v4, 0x0

    .line 498
    :try_start_0
    iget-boolean v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->mmbIsDraw:Z

    .line 499
    .local v1, "isdraw":Z
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .line 502
    .local v2, "tvlinkinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->initializeBmlBrowserCommonWrapped()V

    .line 504
    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    .line 507
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->TVLINK:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    return-void

    .line 508
    .end local v1    # "isdraw":Z
    .end local v2    # "tvlinkinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;
    :catch_0
    move-exception v0

    .line 509
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "startBmlBrowser exception"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v4, -0x3

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 511
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 512
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "startBmlBrowser exception"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    .locals 14
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v8

    .line 383
    .local v8, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    const/16 v1, 0x8

    .line 384
    .local v1, "errordetail":I
    const/4 v2, 0x1

    .line 388
    .local v2, "errorflag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->initializeBmlBrowserCommonWrapped()V

    .line 389
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 395
    .local v4, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkRequiresTierUpdating(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v7

    .line 396
    .local v7, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    :try_start_2
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v11, 0x1

    const/4 v12, 0x1

    move/from16 v0, p3

    invoke-virtual {v10, p1, v11, v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->initialize(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;ZZI)V

    .line 413
    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    if-nez v2, :cond_0

    .line 446
    move v6, v1

    .line 447
    .local v6, "result":I
    move/from16 v9, p3

    .line 448
    .local v9, "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$1;

    invoke-direct {v11, p0, v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;II)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    invoke-virtual {v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 461
    const v10, 0xa306

    iget v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->clearApplicationStatus(IIZ)V

    .line 469
    .end local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v6    # "result":I
    .end local v7    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    .end local v9    # "uparam":I
    :cond_0
    :goto_0
    return-void

    .line 397
    .restart local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :catch_0
    move-exception v3

    .line 398
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_3
    const-string v10, "checkRequiresTierUpdating exception"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v11, -0x3

    invoke-direct {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v10
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 414
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 416
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_4
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopLibrary()V

    .line 418
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->deleteBmlBrowserCommonWrapped()V

    .line 419
    throw v3
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :catch_2
    move-exception v3

    .line 422
    .restart local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_5
    const-string v10, "MmbStInnerException"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    const/4 v2, 0x0

    .line 426
    const/4 v10, 0x1

    iget v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbMode:I

    if-ne v10, v11, :cond_1

    .line 428
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->callReservationConclusion(I)V

    .line 431
    :cond_1
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v5

    .line 433
    .local v5, "innererror":I
    const/16 v10, -0x13

    if-ne v10, v5, :cond_4

    .line 435
    const/16 v1, 0xa

    .line 445
    :cond_2
    if-nez v2, :cond_0

    .line 446
    move v6, v1

    .line 447
    .restart local v6    # "result":I
    move/from16 v9, p3

    .line 448
    .restart local v9    # "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$1;

    invoke-direct {v11, p0, v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;II)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    invoke-virtual {v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 461
    const v10, 0xa306

    iget v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    const/4 v12, 0x0

    invoke-virtual {p0, v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->clearApplicationStatus(IIZ)V

    goto :goto_0

    .line 401
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v5    # "innererror":I
    .end local v6    # "result":I
    .end local v9    # "uparam":I
    .restart local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :catch_3
    move-exception v3

    .line 402
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :try_start_6
    const-string v10, "checkRequiresTierUpdating error"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v11, -0x12

    invoke-direct {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v10
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 445
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    .end local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :catchall_0
    move-exception v10

    if-nez v2, :cond_3

    .line 446
    move v6, v1

    .line 447
    .restart local v6    # "result":I
    move/from16 v9, p3

    .line 448
    .restart local v9    # "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$1;

    invoke-direct {v12, p0, v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;II)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    invoke-virtual {v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 461
    const v11, 0xa306

    iget v12, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->mmbServiceId:I

    const/4 v13, 0x0

    invoke-virtual {p0, v11, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerInIdleSv;->clearApplicationStatus(IIZ)V

    .line 464
    .end local v6    # "result":I
    .end local v9    # "uparam":I
    :cond_3
    throw v10

    .line 405
    .restart local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :catch_4
    move-exception v3

    .line 406
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_7
    const-string v10, "checkRequiresTierUpdating error"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v11, -0x12

    invoke-direct {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v10
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 436
    .end local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .restart local v5    # "innererror":I
    :cond_4
    const/16 v10, -0x12

    if-ne v10, v5, :cond_5

    .line 438
    :try_start_8
    throw v3

    .line 439
    :cond_5
    const/16 v10, -0x16

    if-ne v10, v5, :cond_2

    .line 441
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
