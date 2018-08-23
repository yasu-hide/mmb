.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.source "MmbStRecPlayingControllerSv.java"


# static fields
.field protected static mPositionFlag:Z

.field protected static mPositionThread:Ljava/lang/Thread;


# instance fields
.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionThread:Ljava/lang/Thread;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionFlag:Z

    return-void
.end method

.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 1
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "aRecPlayingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 79
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 84
    return-void
.end method

.method private checkParentalDo(II)V
    .locals 13
    .param p1, "aOldViewStatus"    # I
    .param p2, "aOldParental"    # I

    .prologue
    .line 2604
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v6

    .line 2606
    .local v6, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getInnerViewStatus()I

    move-result v5

    .line 2608
    .local v5, "nowviewstatus":I
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getParentalstatus()I

    move-result v4

    .line 2609
    .local v4, "nowparental":I
    const/4 v0, 0x0

    .line 2610
    .local v0, "calllistner":Z
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getContractstatus()I

    move-result v8

    .line 2613
    .local v8, "status":I
    if-eq p1, v5, :cond_3

    .line 2615
    if-nez v5, :cond_2

    .line 2617
    const/4 v0, 0x1

    .line 2618
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getContractstatus()I

    move-result v8

    .line 2638
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 2641
    .local v7, "result":I
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->onChangeViewingStatusProcess(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2656
    :goto_1
    const/4 v9, 0x1

    if-ne v9, v0, :cond_1

    .line 2657
    move v3, v8

    .line 2658
    .local v3, "fixstatus":I
    move v2, v7

    .line 2659
    .local v2, "fixresult":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;

    invoke-direct {v10, p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;II)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2674
    .end local v2    # "fixresult":I
    .end local v3    # "fixstatus":I
    :cond_1
    return-void

    .line 2621
    .end local v7    # "result":I
    :cond_2
    const/4 v8, 0x2

    .line 2622
    const/4 v0, 0x1

    goto :goto_0

    .line 2624
    :cond_3
    if-eqz v5, :cond_0

    .line 2627
    const/4 v9, 0x2

    if-ne v9, v4, :cond_4

    .line 2630
    const/4 v8, 0x2

    .line 2631
    const/4 v0, 0x1

    goto :goto_0

    .line 2632
    :cond_4
    const/4 v9, 0x2

    if-ne v9, p2, :cond_0

    const/4 v9, 0x1

    if-ne v9, v4, :cond_0

    .line 2634
    const/4 v0, 0x1

    goto :goto_0

    .line 2642
    .restart local v7    # "result":I
    :catch_0
    move-exception v1

    .line 2644
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getErrorFunction()I

    move-result v7

    .line 2646
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2651
    const-string v9, "error(%d)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2649
    :pswitch_0
    throw v1

    .line 2646
    :pswitch_data_0
    .packed-switch -0x15
        :pswitch_0
    .end packed-switch
.end method

.method private clearAudioMuteByDevice(Landroid/content/Intent;)V
    .locals 7
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x1000

    const/16 v3, 0x100

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 357
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 360
    .local v0, "audioFlg":I
    if-nez v0, :cond_5

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "muteoff":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    shr-int/lit8 v2, v2, 0xc

    if-ne v4, v2, :cond_0

    .line 366
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v6, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 370
    const/4 v1, 0x1

    .line 373
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    if-ne v4, v2, :cond_1

    .line 376
    invoke-virtual {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 380
    const/4 v1, 0x1

    .line 383
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 386
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->outDeviceSetAudio(I)V

    .line 423
    .end local v1    # "muteoff":Z
    :cond_3
    :goto_0
    return-void

    .line 389
    .restart local v1    # "muteoff":Z
    :cond_4
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->outDeviceSetAudio(I)V

    goto :goto_0

    .line 394
    .end local v1    # "muteoff":Z
    :cond_5
    and-int/lit16 v2, v0, 0x100

    if-ne v3, v2, :cond_6

    .line 396
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    if-ne v4, v2, :cond_3

    .line 400
    invoke-virtual {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    goto :goto_0

    .line 406
    :cond_6
    const/16 v2, 0x200

    and-int/lit16 v3, v0, 0x200

    if-ne v2, v3, :cond_3

    .line 408
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    shr-int/lit8 v2, v2, 0xc

    if-ne v4, v2, :cond_3

    .line 412
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v6, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    goto :goto_0
.end method

.method private createThread()Ljava/lang/Thread;
    .locals 2

    .prologue
    .line 2246
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$5;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method


# virtual methods
.method public audioDecode(I)V
    .locals 2
    .param p1, "aState"    # I

    .prologue
    const/4 v1, 0x1

    .line 2778
    invoke-virtual {p0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v0

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 2785
    return-void
.end method

.method public audioMute(I)V
    .locals 3
    .param p1, "aState"    # I

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x1

    .line 2803
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 2810
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 1650
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->captionNotifyExistCommonWrapped(IZ)V

    .line 1655
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 0
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 1535
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->captionNotifyLangNumSetEnableCommonWrapped(IB)V

    .line 1540
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1563
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->captionNotifyNothingFixedTimeCommonWrapped(I)V

    .line 1568
    return-void
.end method

.method protected captionNotifyNothingFixedTimeCommonWrapped(I)V
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 1247
    move v0, p1

    .line 1249
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$1;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1265
    return-void
.end method

.method public captionNotifyRecv(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->captionNotifyRecvCommonWrapped(I)V

    .line 1624
    return-void
.end method

.method protected captionNotifyRecvCommonWrapped(I)V
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 1287
    move v0, p1

    .line 1289
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$2;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1303
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 0
    .param p1, "aIndex"    # I

    .prologue
    .line 1591
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->captionNotifyRestartCommonWrapped(I)V

    .line 1596
    return-void
.end method

.method protected changeBitStatus(III)I
    .locals 4
    .param p1, "aTypeVideo"    # I
    .param p2, "aChangeBit"    # I
    .param p3, "aSetStatus"    # I

    .prologue
    .line 450
    if-nez p1, :cond_1

    .line 451
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getVideoStatus()I

    move-result v2

    .line 456
    .local v2, "parameterStatus":I
    :goto_0
    const/4 v1, 0x0

    .line 459
    .local v1, "movebit":I
    sparse-switch p2, :sswitch_data_0

    .line 476
    :goto_1
    :sswitch_0
    and-int v3, v2, p2

    shr-int v0, v3, v1

    .line 478
    .local v0, "maskedParameter":I
    if-nez p3, :cond_2

    .line 480
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 482
    xor-int/2addr v2, p2

    .line 498
    :cond_0
    :goto_2
    return v2

    .line 453
    .end local v0    # "maskedParameter":I
    .end local v1    # "movebit":I
    .end local v2    # "parameterStatus":I
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioStatus()I

    move-result v2

    .restart local v2    # "parameterStatus":I
    goto :goto_0

    .line 463
    .restart local v1    # "movebit":I
    :sswitch_1
    const/4 v1, 0x4

    .line 464
    goto :goto_1

    .line 466
    :sswitch_2
    const/16 v1, 0x8

    .line 467
    goto :goto_1

    .line 469
    :sswitch_3
    const/16 v1, 0xc

    .line 470
    goto :goto_1

    .line 488
    .restart local v0    # "maskedParameter":I
    :cond_2
    if-nez v0, :cond_0

    .line 490
    xor-int/2addr v2, p2

    goto :goto_2

    .line 459
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method

.method public changeParental()V
    .locals 2

    .prologue
    .line 3038
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 3043
    return-void
.end method

.method protected controlThread(Z)V
    .locals 1
    .param p1, "aStart"    # Z

    .prologue
    .line 2203
    sput-boolean p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionFlag:Z

    .line 2206
    if-eqz p1, :cond_1

    .line 2208
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 2210
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->createThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionThread:Ljava/lang/Thread;

    .line 2212
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2217
    :cond_1
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 2219
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 2220
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->mPositionThread:Ljava/lang/Thread;

    .line 2222
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->mSeekQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2223
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->notifyPositionCommonWrapped()V

    goto :goto_0
.end method

.method protected endCommonWrapped()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v6, -0x16

    const/16 v7, -0x12

    .line 2354
    const/4 v2, 0x0

    .line 2358
    .local v2, "exceptionFlag":I
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBluetoothState()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopRecPlayDisp(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2377
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopLibraryForRecPlay()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2393
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->initializeDrawSettingData()V

    .line 2396
    const/16 v4, 0x10

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setAudioLanguageValueCommonWrapped(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2400
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->stopBmlBrowserCommonWrapped()V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2416
    :goto_2
    :try_start_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->deleteBmlBrowserCommonWrapped()V

    .line 2418
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopPlay()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    .line 2419
    .local v3, "lRet":I
    if-eqz v3, :cond_7

    .line 2420
    const/4 v2, 0x2

    .line 2427
    :goto_3
    const v4, 0x8a1c

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_5
    invoke-virtual {p0, v4, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->clearApplicationStatus(IIZ)V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2442
    :goto_4
    :try_start_6
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->resetRecPlayingInformationParameter()V

    .line 2444
    if-ne v2, v8, :cond_a

    .line 2445
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v5, -0x12

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2451
    .end local v3    # "lRet":I
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    throw v4

    .line 2359
    :catch_0
    move-exception v0

    .line 2360
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_7
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 2361
    .local v1, "exceptionDeteil":I
    const/16 v4, -0x3e8

    if-ne v1, v4, :cond_0

    .line 2362
    const-string v4, "stopRecPlayDisp other error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2363
    :cond_0
    if-ne v1, v7, :cond_1

    .line 2364
    const-string v4, "stopRecPlayDisp fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2365
    const/4 v2, 0x1

    goto :goto_0

    .line 2366
    :cond_1
    if-ne v1, v6, :cond_2

    .line 2367
    const-string v4, "stopRecPlayDisp fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2368
    const/4 v2, 0x2

    goto :goto_0

    .line 2370
    :cond_2
    const-string v4, "stopRecPlayDisp unknow fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2371
    const/4 v2, 0x1

    goto :goto_0

    .line 2378
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    :catch_1
    move-exception v0

    .line 2379
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 2380
    .restart local v1    # "exceptionDeteil":I
    if-ne v1, v7, :cond_3

    .line 2381
    const-string v4, "stopLibraryForRecPlay fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2382
    const/4 v2, 0x1

    goto :goto_1

    .line 2383
    :cond_3
    if-ne v1, v6, :cond_4

    .line 2384
    const-string v4, "stopLibraryForRecPlay fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2385
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 2387
    :cond_4
    const-string v4, "stopLibraryForRecPlay unknow fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2388
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2401
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    :catch_2
    move-exception v0

    .line 2402
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 2403
    .restart local v1    # "exceptionDeteil":I
    if-ne v1, v7, :cond_5

    .line 2404
    const-string v4, "stopBmlBrowserCommonWrapped fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2405
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 2406
    :cond_5
    if-ne v1, v6, :cond_6

    .line 2407
    const-string v4, "stopBmlBrowserCommonWrapped fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2408
    const/4 v2, 0x2

    goto/16 :goto_2

    .line 2410
    :cond_6
    const-string v4, "stopBmlBrowserCommonWrapped unknow fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2411
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 2422
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    .restart local v3    # "lRet":I
    :cond_7
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->controlThread(Z)V

    goto/16 :goto_3

    .line 2428
    :catch_3
    move-exception v0

    .line 2429
    .restart local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    .line 2430
    .restart local v1    # "exceptionDeteil":I
    const/4 v4, -0x3

    if-ne v1, v4, :cond_8

    .line 2431
    const-string v4, "setApplicationStatus parameter error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2432
    :cond_8
    if-ne v1, v7, :cond_9

    .line 2433
    const-string v4, "setApplicationStatus fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2434
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 2436
    :cond_9
    const-string v4, "setApplicationStatus unknow fatal error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2437
    const/4 v2, 0x1

    goto/16 :goto_4

    .line 2446
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v1    # "exceptionDeteil":I
    :cond_a
    const/4 v4, 0x2

    if-ne v2, v4, :cond_b

    .line 2447
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v5, -0x16

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2451
    :cond_b
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 2456
    return-void
.end method

.method public getAudioInfo()I
    .locals 1

    .prologue
    .line 1707
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioInfoCommonWrapped()I

    move-result v0

    .line 1712
    .local v0, "result":I
    return v0
.end method

.method public getAudioLanguage()I
    .locals 1

    .prologue
    .line 2915
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioLanguageCommonWrapped()I

    move-result v0

    .line 2920
    .local v0, "languagevalue":I
    return v0
.end method

.method public getAudioLanguageCommonWrapped()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 818
    const/4 v0, 0x0

    .line 821
    .local v0, "languagevalue":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isPmtInformation()Z

    move-result v1

    .line 824
    .local v1, "pmtexist":Z
    if-nez v1, :cond_0

    .line 825
    const-string v3, "pmt null error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 828
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v2

    .line 831
    .local v2, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    const/16 v3, 0xff

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getPrimaryAudioComponentTag()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 834
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudiocomponenttag()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 851
    :goto_0
    :pswitch_0
    return v0

    .line 838
    :pswitch_1
    const/4 v0, 0x1

    .line 839
    goto :goto_0

    .line 844
    :cond_1
    const-string v3, "audio component value error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 845
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v4, -0x3e8

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAudioLanguageNum()I
    .locals 1

    .prologue
    .line 2032
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getComponentInfoCommonWrapped()I

    move-result v0

    .line 2037
    .local v0, "result":I
    return v0
.end method

.method protected getAudioStatus()I
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 591
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v0

    .line 595
    .local v0, "audiostatus":I
    return v0
.end method

.method protected getBmlState()Z
    .locals 2

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 231
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getBmlStarterFlag()Z

    move-result v1

    .line 235
    .local v1, "starter":Z
    return v1
.end method

.method public getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 2

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 948
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v0

    .line 952
    .local v0, "bmlViewSv":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    return-object v0
.end method

.method protected getCaptionState()Z
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 282
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getCaptionStarterFlag()Z

    move-result v1

    .line 286
    .local v1, "starter":Z
    return v1
.end method

.method public getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    .locals 2

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 1054
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    move-result-object v0

    .line 1058
    .local v0, "captionViewSv":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    return-object v0
.end method

.method public getCurrentPlayPosition()J
    .locals 3

    .prologue
    .line 156
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getCurrentTime()J

    move-result-wide v0

    .line 161
    .local v0, "currentTime":J
    return-wide v0
.end method

.method public getFileDuration()J
    .locals 3

    .prologue
    .line 178
    const-wide/16 v0, 0x0

    .line 179
    .local v0, "totalTime":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getDuration()J

    move-result-wide v0

    .line 184
    return-wide v0
.end method

.method protected getInnerViewStatus()I
    .locals 4

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 663
    .local v1, "ret":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 665
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getParentalstatus()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 673
    :cond_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getContractstatus()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 688
    :goto_0
    return v1

    .line 676
    :sswitch_0
    const/4 v1, 0x1

    .line 680
    goto :goto_0

    .line 673
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public getLanguageCount(I)I
    .locals 1
    .param p1, "aType"    # I

    .prologue
    .line 1766
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getLanguageCountCommonWrapped(I)I

    move-result v0

    .line 1771
    .local v0, "result":I
    return v0
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 1

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getVideoInfoCommonWrapped()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 1681
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method protected getVideoStatus()I
    .locals 2

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 541
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getVideoStatus()I

    move-result v1

    .line 545
    .local v1, "videostatus":I
    return v1
.end method

.method protected initializeDrawSettingData()V
    .locals 2

    .prologue
    .line 2473
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 2474
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 2478
    return-void
.end method

.method public isResumeInfoExist(I)Z
    .locals 2
    .param p1, "aPrgNo"    # I

    .prologue
    .line 134
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isResumeInfoExist(I)Z

    move-result v0

    .line 139
    .local v0, "hasResumeInfo":Z
    return v0
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 0
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 2054
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V

    .line 2058
    return-void
.end method

.method public notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 1319
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 1321
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

    .line 1323
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 1324
    .local v1, "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getUsbConnectState(Landroid/content/Intent;)I

    move-result v2

    .line 1327
    .local v2, "state":I
    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isConnectedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1329
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setAudioMuteByDeviceNotify()V

    .line 1339
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

    .line 1340
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$3;

    invoke-direct {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1355
    :cond_3
    return-void

    .line 1331
    .restart local v1    # "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .restart local v2    # "state":I
    :cond_4
    const/4 v3, 0x2

    if-eq v3, v2, :cond_5

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1334
    :cond_5
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->clearAudioMuteByDevice(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected notifyOnCompleteStartPlay(II)V
    .locals 4
    .param p1, "aStatus"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 2082
    move v0, p1

    .line 2083
    .local v0, "status":I
    move v1, p2

    .line 2085
    .local v1, "userParam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2101
    return-void
.end method

.method protected notifyPositionCommonWrapped()V
    .locals 9

    .prologue
    .line 2296
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getCurrentPlayPosition()J

    move-result-wide v0

    .line 2302
    .local v0, "lMsec":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v6

    .line 2303
    .local v6, "recInfoInstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getPosition()J

    move-result-wide v4

    .line 2305
    .local v4, "position":J
    cmp-long v7, v4, v0

    if-nez v7, :cond_0

    .line 2334
    :goto_0
    return-void

    .line 2315
    :cond_0
    invoke-virtual {v6, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setPosition(J)V

    .line 2317
    move-wide v2, v0

    .line 2318
    .local v2, "msec":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;

    invoke-direct {v8, p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;J)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onAudioInformation(I)V
    .locals 0
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 1477
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->onAudioInformationCommonWrapped(I)V

    .line 1482
    return-void
.end method

.method public onChangeAudioComponent(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1503
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->onChangeAudioComponentCommonWrapped(S)V

    .line 1508
    return-void
.end method

.method protected onChangeAudioComponentCommonWrapped(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 1226
    return-void
.end method

.method protected onChangeViewingStatusProcess(I)V
    .locals 8
    .param p1, "aViewsts"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 708
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v3

    .line 710
    .local v3, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    packed-switch p1, :pswitch_data_0

    .line 766
    const-string v4, "param error(%d)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :goto_0
    return-void

    .line 714
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioMode()I

    move-result v1

    .line 716
    .local v1, "audiomode":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;-><init>()V

    .line 717
    .local v0, "audioInformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioMode:I

    .line 718
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v4

    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioDecodeStatus:I

    .line 720
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioLanguageNum()I

    move-result v4

    if-ne v5, v4, :cond_1

    .line 721
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getPrimaryAudioComponentTag()I

    move-result v4

    int-to-short v4, v4

    iput-short v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    .line 726
    :goto_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBluetoothState()Z

    move-result v4

    iput-boolean v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->bluetoothStatus:Z

    .line 729
    iget-short v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 732
    iget-short v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 735
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getVideoStatus()I

    move-result v5

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v6

    invoke-virtual {v4, v0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onStartRecViewFinished(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V

    .line 740
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getBmlDraw()Z

    move-result v2

    .line 742
    .local v2, "isdraw":Z
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    goto :goto_0

    .line 723
    .end local v2    # "isdraw":Z
    :cond_1
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudiocomponenttag()S

    move-result v4

    iput-short v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    goto :goto_1

    .line 751
    .end local v0    # "audioInformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    .end local v1    # "audiomode":I
    :pswitch_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBluetoothState()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopRecDispPart(Z)V

    .line 754
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->stopBmlBrowserCommonWrapped()V

    goto :goto_0

    .line 762
    :pswitch_2
    const-string v4, "nothing to do(%d)"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 710
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFastForwardToEnd(I)V
    .locals 2
    .param p1, "aResult"    # I

    .prologue
    .line 2152
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2157
    return-void
.end method

.method public onPlayToEnd(I)V
    .locals 2
    .param p1, "aResult"    # I

    .prologue
    .line 2124
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2129
    return-void
.end method

.method public onRewindToTop(I)V
    .locals 2
    .param p1, "aResult"    # I

    .prologue
    .line 2180
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2185
    return-void
.end method

.method public onUpdatePmt()V
    .locals 2

    .prologue
    .line 1077
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1081
    return-void
.end method

.method protected onUpdatePmtCommonWrapped(ZZ)V
    .locals 12
    .param p1, "aCheckParental"    # Z
    .param p2, "aIsLisner"    # Z

    .prologue
    const/4 v10, 0x1

    .line 2532
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onPmtUpdated()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2547
    if-eqz p2, :cond_1

    .line 2549
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getCopyControlInfo()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;

    move-result-object v0

    .line 2551
    .local v0, "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    if-eqz v0, :cond_0

    .line 2552
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyCopyControlInformationForSt(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;)V

    .line 2555
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$7;

    invoke-direct {v9, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2568
    .end local v0    # "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getInnerViewStatus()I

    move-result v4

    .line 2569
    .local v4, "oldviewstatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v7

    .line 2571
    .local v7, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getParentalstatus()I

    move-result v3

    .line 2574
    .local v3, "oldparental":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getParetalSettingRate()I

    move-result v6

    .line 2575
    .local v6, "parentalrate":I
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->checkParentalRate(I)Z

    move-result v5

    .line 2577
    .local v5, "parentallock":Z
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setServiceParentalStatus(Z)V

    .line 2580
    if-ne v10, p1, :cond_2

    .line 2581
    invoke-direct {p0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->checkParentalDo(II)V

    .line 2587
    .end local v3    # "oldparental":I
    .end local v4    # "oldviewstatus":I
    .end local v5    # "parentallock":Z
    .end local v6    # "parentalrate":I
    .end local v7    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    :cond_2
    :goto_0
    return-void

    .line 2533
    :catch_0
    move-exception v1

    .line 2534
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    .line 2535
    .local v2, "errorstatus":I
    const/16 v8, -0x12

    if-ne v2, v8, :cond_3

    .line 2536
    throw v1

    .line 2537
    :cond_3
    const/16 v8, -0x16

    if-ne v2, v8, :cond_4

    .line 2538
    throw v1

    .line 2540
    :cond_4
    const-string v8, "onPmtUpdated err(%d)"

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 0
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 1448
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 1453
    return-void
.end method

.method public pause(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 1969
    const/16 v0, 0x30

    if-ne v0, p2, :cond_0

    .line 1971
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->pauseCommonWrapped(IIZZ)V

    .line 1976
    :cond_0
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 2005
    const/16 v0, 0x30

    if-ne v0, p2, :cond_0

    .line 2007
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->pauseInnerCommonWrapped(IIZZ)V

    .line 2013
    :cond_0
    return-void
.end method

.method protected pausePlayInner()I
    .locals 2

    .prologue
    .line 3012
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pausePlay()I

    move-result v0

    .line 3013
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 3014
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->controlThread(Z)V

    .line 3020
    :cond_0
    return v0
.end method

.method protected resetRecPlayingInformationParameter()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2492
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 2493
    .local v0, "recPlayInfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 2494
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setVideoStatus(I)V

    .line 2495
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setServiceContractStatus(I)V

    .line 2496
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setServiceParentalStatus(Z)V

    .line 2497
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudiocomponenttag(S)V

    .line 2499
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlStarterFlag(Z)V

    .line 2500
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setCaptionStarterFlag(Z)V

    .line 2501
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setPosition(J)V

    .line 2506
    return-void
.end method

.method protected resumeCaption(I)V
    .locals 5
    .param p1, "aType"    # I

    .prologue
    .line 1408
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v1

    .line 1409
    .local v1, "capstate":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeStatus(I)I

    move-result v3

    .line 1410
    .local v3, "status":I
    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    .line 1412
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeCanvas(I)Z

    move-result v0

    .line 1413
    .local v0, "canvas":Z
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposePidClear(I)Z

    move-result v2

    .line 1414
    .local v2, "pid":Z
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4, v3, p1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 1420
    .end local v0    # "canvas":Z
    .end local v2    # "pid":Z
    :cond_0
    return-void
.end method

.method public selectAudioLanguage(I)V
    .locals 2
    .param p1, "aComponentTag"    # I

    .prologue
    .line 2859
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 2862
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudiocomponenttag()S

    move-result v1

    if-eq p1, v1, :cond_0

    .line 2864
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selectAudioLanguage(I)V

    .line 2870
    :cond_0
    return-void
.end method

.method public selectAudioMode(I)V
    .locals 1
    .param p1, "aMode"    # I

    .prologue
    .line 2834
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->selectAudioMode(I)V

    .line 2839
    return-void
.end method

.method protected setAudioDecodeStatus(I)V
    .locals 4
    .param p1, "aDecodeStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 1877
    invoke-virtual {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v3, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeBitStatus(III)I

    move-result v0

    .line 1881
    .local v0, "audioStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 1882
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 1886
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 0
    .param p1, "aLanguage"    # I

    .prologue
    .line 2891
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 2895
    return-void
.end method

.method protected setAudioLanguageValueCommonWrapped(I)V
    .locals 2
    .param p1, "aLanguageValue"    # I

    .prologue
    .line 794
    int-to-short v0, p1

    .line 796
    .local v0, "audiocomponenttag":S
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 797
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudiocomponenttag(S)V

    .line 801
    return-void
.end method

.method setAudioMuteByDeviceNotify()V
    .locals 5

    .prologue
    const/16 v2, 0x1000

    const/16 v4, 0x100

    const/4 v3, 0x1

    .line 302
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 304
    .local v0, "audioFlg":I
    if-nez v0, :cond_1

    .line 305
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->outDeviceSetAudio(I)V

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    and-int/lit16 v1, v0, 0x100

    if-ne v4, v1, :cond_2

    .line 317
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    shr-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_2

    .line 321
    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v1

    invoke-virtual {p0, v3, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 327
    :cond_2
    const/16 v1, 0x200

    and-int/lit16 v2, v0, 0x200

    if-ne v1, v2, :cond_0

    .line 329
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudioStatus()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 332
    invoke-virtual {p0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v1

    invoke-virtual {p0, v3, v4, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    goto :goto_0
.end method

.method protected setAudioMuteStatus(I)V
    .locals 5
    .param p1, "aMuteStatus"    # I

    .prologue
    const/16 v4, 0x10

    .line 1905
    const/4 v2, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeBitStatus(III)I

    move-result v0

    .line 1909
    .local v0, "audioStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 1910
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 1914
    return-void
.end method

.method protected setAudioStatus(I)V
    .locals 1
    .param p1, "aAudioStatus"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 567
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setAudioStatus(I)V

    .line 571
    return-void
.end method

.method public setBmlState(Z)V
    .locals 3
    .param p1, "aState"    # Z

    .prologue
    .line 2947
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setBmlStateCommonWrapped(Z)V

    .line 2950
    if-nez p1, :cond_0

    .line 2952
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->stopBmlBrowserCommonWrapped()V

    .line 2963
    :goto_0
    return-void

    .line 2955
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v1

    .line 2957
    .local v1, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getBmlDraw()Z

    move-result v0

    .line 2958
    .local v0, "isdraw":Z
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    goto :goto_0
.end method

.method protected setBmlStateCommonWrapped(Z)V
    .locals 1
    .param p1, "aState"    # Z

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 207
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlStarterFlag(Z)V

    .line 211
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 1
    .param p1, "aMmbStBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 929
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 933
    return-void
.end method

.method protected setCaptionDisplayArea(I)V
    .locals 3
    .param p1, "aType"    # I

    .prologue
    .line 1375
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 1376
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    const/4 v1, 0x0

    .line 1378
    .local v1, "setting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    const/16 v2, 0x30

    if-ne v2, p1, :cond_0

    .line 1379
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v1

    .line 1380
    if-eqz v1, :cond_0

    .line 1381
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 1388
    :cond_0
    return-void
.end method

.method protected setCaptionStateCommonWrapped(Z)V
    .locals 1
    .param p1, "aState"    # Z

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 258
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setCaptionStarterFlag(Z)V

    .line 262
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 1
    .param p1, "aMmbStCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 1034
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 1035
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V

    .line 1039
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 0
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 1936
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 1941
    return-void
.end method

.method protected setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 1197
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 1199
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 1203
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 1797
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setLanguageIndexCommonWrapped(II)V

    .line 1802
    return-void
.end method

.method protected setServiceContractStatus(I)V
    .locals 1
    .param p1, "aContract"    # I

    .prologue
    .line 614
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 615
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setServiceContractStatus(I)V

    .line 619
    return-void
.end method

.method protected setServiceParentalStatus(Z)V
    .locals 1
    .param p1, "aParental"    # Z

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 639
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setServiceParentalStatus(Z)V

    .line 643
    return-void
.end method

.method public setState(IZ)V
    .locals 0
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 1738
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setStateCommonWrapped(IZ)V

    .line 1743
    return-void
.end method

.method protected setStateCommonWrapped(IZ)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 1009
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 1010
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setCaptionStateCommonWrapped(Z)V

    .line 1012
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setState(IZ)V

    .line 1018
    :cond_0
    return-void
.end method

.method protected setVideoDecodeStatus(I)V
    .locals 5
    .param p1, "aDecodeStatus"    # I

    .prologue
    const/4 v4, 0x1

    .line 1821
    const/4 v2, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeBitStatus(III)I

    move-result v1

    .line 1825
    .local v1, "videoStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 1826
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setVideoStatus(I)V

    .line 1830
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 1
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 2983
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setVideoDisplay(I)V

    .line 2988
    return-void
.end method

.method protected setVideoMuteStatus(I)V
    .locals 5
    .param p1, "aMuteStatus"    # I

    .prologue
    const/16 v4, 0x10

    .line 1849
    const/4 v2, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeBitStatus(III)I

    move-result v1

    .line 1853
    .local v1, "videoStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 1854
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setVideoStatus(I)V

    .line 1858
    return-void
.end method

.method protected setVideoStatus(I)V
    .locals 1
    .param p1, "aVideoStatus"    # I

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v0

    .line 519
    .local v0, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->setVideoStatus(I)V

    .line 523
    return-void
.end method

.method protected startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 7
    .param p1, "aIsBmlDraw"    # Z
    .param p2, "aTvLinkInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    const/4 v6, 0x0

    .line 874
    :try_start_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;-><init>()V

    .line 876
    .local v1, "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    iput-boolean p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbIsDraw:Z

    .line 879
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v3

    .line 880
    .local v3, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getBmlStarterFlag()Z

    move-result v4

    .line 883
    .local v4, "starterflag":Z
    if-eqz p2, :cond_1

    .line 885
    iput-object p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .line 886
    const/4 v5, 0x2

    iput v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    .line 888
    const/4 v4, 0x1

    .line 896
    :goto_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 897
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->startBmlBrowserForRec(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V

    .line 898
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v0

    .line 899
    .local v0, "bmlView":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    if-eqz v0, :cond_0

    .line 900
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V

    .line 912
    .end local v0    # "bmlView":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .end local v1    # "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    .end local v3    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    .end local v4    # "starterflag":Z
    :cond_0
    :goto_1
    return-void

    .line 891
    .restart local v1    # "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    .restart local v3    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    .restart local v4    # "starterflag":Z
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .line 892
    const/4 v5, 0x0

    iput v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 904
    .end local v1    # "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    .end local v3    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    .end local v4    # "starterflag":Z
    :catch_0
    move-exception v2

    .line 905
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "startBmlBrowser exception"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 906
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v2

    .line 907
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "startBmlBrowser exception"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected stopBmlBrowserCommonWrapped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 972
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->stopBmlBrowser()V

    .line 973
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v0

    .line 974
    .local v0, "bmlView":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    if-eqz v0, :cond_0

    .line 975
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 986
    .end local v0    # "bmlView":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    :cond_0
    :goto_0
    return-void

    .line 977
    :catch_0
    move-exception v1

    .line 978
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "ServiceStateException exception"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 979
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v1

    .line 980
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    const-string v2, "ServiceBmlBrowserException exception"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 981
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v3, -0x15

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v2
.end method

.method public stopPlay()V
    .locals 3

    .prologue
    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->endCommonWrapped()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v1, "endCommonWrapped fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    throw v0
.end method

.method protected videoAudioStatusChange(IIIZ)V
    .locals 9
    .param p1, "aTypeVideo"    # I
    .param p2, "aChangeBit"    # I
    .param p3, "aSetStatus"    # I
    .param p4, "aIsUi"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1112
    const/4 v2, 0x1

    .line 1113
    .local v2, "decodeflag":Z
    if-nez p3, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getInnerViewStatus()I

    move-result v3

    .line 1119
    .local v3, "innersts":I
    if-ne v7, v3, :cond_0

    .line 1124
    const/4 v2, 0x0

    .line 1128
    .end local v3    # "innersts":I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeBitStatus(III)I

    move-result v5

    .line 1130
    .local v5, "videoOrAudioStatus":I
    if-ne v7, v2, :cond_1

    .line 1131
    if-nez p1, :cond_3

    .line 1133
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 1166
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 1167
    if-nez p1, :cond_7

    .line 1168
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setVideoStatus(I)V

    .line 1176
    :cond_2
    :goto_1
    return-void

    .line 1136
    :cond_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioMode()I

    move-result v0

    .line 1137
    .local v0, "audiomode":I
    if-eq p2, v7, :cond_4

    .line 1139
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/16 v7, 0xff

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBluetoothState()Z

    move-result v8

    invoke-virtual {v6, v5, v7, v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    goto :goto_0

    .line 1144
    :cond_4
    const/16 v1, 0xff

    .line 1145
    .local v1, "componenttag":S
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioLanguageNum()I

    move-result v6

    if-ne v7, v6, :cond_6

    .line 1147
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getAudioLanguageCommonWrapped()I

    move-result v6

    int-to-short v1, v6

    .line 1149
    if-ne v1, v7, :cond_5

    .line 1150
    const/16 v1, 0x11

    .line 1161
    :goto_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getBluetoothState()Z

    move-result v7

    invoke-virtual {v6, v5, v1, v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    goto :goto_0

    .line 1152
    :cond_5
    const/16 v1, 0x10

    goto :goto_2

    .line 1155
    :cond_6
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->getRecPlayingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    move-result-object v4

    .line 1157
    .local v4, "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;->getAudiocomponenttag()S

    move-result v1

    goto :goto_2

    .line 1170
    .end local v0    # "audiomode":I
    .end local v1    # "componenttag":S
    .end local v4    # "recplayinginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;
    :cond_7
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setAudioStatus(I)V

    goto :goto_1
.end method

.method public videoDecode(I)V
    .locals 3
    .param p1, "aState"    # I

    .prologue
    const/4 v2, 0x1

    .line 2695
    const/4 v0, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 2702
    return-void
.end method

.method protected videoDecodeInner(I)V
    .locals 3
    .param p1, "aState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2723
    invoke-virtual {p0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v0

    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 2730
    return-void
.end method

.method public videoMute(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    const/16 v3, 0x10

    .line 2750
    const/4 v0, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->changeDefine(II)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 2757
    return-void
.end method
