.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;
.source "MmbStRecPlayerInPlayingSv.java"


# instance fields
.field private mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 0
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "recPlayingInfoInstance"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    .line 66
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 70
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    .line 71
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 75
    return-void
.end method


# virtual methods
.method public fastForwardPlay()I
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->fastForwardPlay()I

    move-result v0

    .line 189
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 191
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_FASTFORWARDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 196
    :cond_0
    return v0
.end method

.method public onPlayToEnd(I)V
    .locals 4
    .param p1, "aResult"    # I

    .prologue
    const/4 v3, 0x0

    .line 420
    const/4 v1, -0x2

    if-ne v1, p1, :cond_0

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->endCommonWrapped()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$1;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 460
    :goto_1
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "endCommonWrapped Exception error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 437
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$2;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;->backgroundPictCtl(Z)V

    .line 448
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->controlThread(Z)V

    .line 450
    const/4 v1, 0x2

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->suspendBmlBrowser(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 455
    :goto_2
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_PLAYBACKCOMPLETED:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto :goto_1

    .line 451
    :catch_1
    move-exception v0

    .line 452
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onUpdatePmt()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 348
    invoke-virtual {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 353
    return-void
.end method

.method public pausePlay()I
    .locals 2

    .prologue
    .line 155
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pausePlay()I

    move-result v0

    .line 157
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 158
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->controlThread(Z)V

    .line 160
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_SUSPENDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 165
    :cond_0
    return v0
.end method

.method public resumePlay()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public rewindPlay()I
    .locals 2

    .prologue
    .line 218
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->rewindPlay()I

    move-result v0

    .line 220
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 222
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_REWINDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 227
    :cond_0
    return v0
.end method

.method public seek(JI)I
    .locals 3
    .param p1, "aMsec"    # J
    .param p3, "aUserParam"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->seekTo(J)I

    move-result v0

    .line 102
    .local v0, "lRet":I
    if-nez v0, :cond_0

    .line 104
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->REC_PLAY_SUSPENDING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 109
    :cond_0
    return v0
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    const/16 v0, 0x30

    .line 319
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->setCaptionDisplayArea(I)V

    .line 326
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->resumeCaption(I)V

    .line 331
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    const/16 v0, 0x30

    .line 281
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 284
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->setCaptionDisplayArea(I)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->resumeCaption(I)V

    .line 292
    return-void
.end method

.method public setVideoDisplayAreaInfo(IIII)V
    .locals 3
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 382
    invoke-super {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setVideoDisplayAreaInfo(IIII)V

    .line 385
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->getVideoStatus()I

    move-result v0

    .line 386
    .local v0, "videoDecodetSatus":I
    and-int/lit8 v0, v0, 0x1

    .line 388
    if-nez v0, :cond_0

    .line 390
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 391
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingControllerSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 248
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->getVideoStatus()I

    move-result v0

    .line 249
    .local v0, "videoDecodetSatus":I
    and-int/lit8 v0, v0, 0x1

    .line 251
    if-nez v0, :cond_0

    .line 252
    if-eqz p1, :cond_1

    .line 253
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayerInPlayingSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDisplayControl(I)V

    goto :goto_0
.end method
