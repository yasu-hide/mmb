.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPausedSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;
.source "MmbFcPlayerInPausedSv.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;-><init>()V

    return-void
.end method


# virtual methods
.method public chapterForward()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 460
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/16 v3, 0x11

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I

    .line 466
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->chapterForward()V

    .line 472
    const/16 v2, 0x11

    invoke-super {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    move-result v1

    .line 476
    .local v1, "intresult":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    return v1

    .line 483
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "%s"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 486
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2
.end method

.method public chapterRewind()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 505
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/16 v3, 0x12

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I

    .line 511
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->chapterRewind()V

    .line 517
    const/16 v2, 0x12

    invoke-super {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    move-result v1

    .line 520
    .local v1, "intresult":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    return v1

    .line 527
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 528
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "%s"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2
.end method

.method public end()V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPausedSv;->resetFcMp4Content()V

    .line 117
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->release()V

    .line 123
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 128
    return-void
.end method

.method public fastForward(I)I
    .locals 3
    .param p1, "aExtra"    # I

    .prologue
    .line 401
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 404
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->trickplay(II)I

    move-result v0

    .line 411
    .local v0, "intresult":I
    return v0
.end method

.method public getModuleState()I
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x5

    return v0
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public pause()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return v0
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-wide v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mOpenDateTime:J

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->syncStart(J)V

    .line 243
    :goto_0
    const/16 v1, 0xb

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    .line 246
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 249
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V

    .line 258
    return-void

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1
.end method

.method public resetFcMp4Content()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPausedSv;->stop()V

    .line 185
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->reset()V

    .line 191
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strEntityId:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPrepareFlag:Z

    .line 200
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 205
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->resume()V

    .line 634
    return-void
.end method

.method public rewind(I)I
    .locals 3
    .param p1, "aExtra"    # I

    .prologue
    .line 432
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 435
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->trickplay(II)I

    move-result v0

    .line 442
    .local v0, "intresult":I
    return v0
.end method

.method public seek(I)I
    .locals 5
    .param p1, "aMsec"    # I

    .prologue
    const/4 v4, 0x1

    .line 551
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/16 v3, 0xe

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mAsyncType:I

    .line 557
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->seekTo(I)V

    .line 563
    const/16 v2, 0xe

    invoke-super {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    move-result v1

    .line 566
    .local v1, "intresult":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    return v1

    .line 573
    .end local v1    # "intresult":I
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "%s"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2
.end method

.method public setFcMp4Content(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p4, "aScheduleEnable"    # Z
    .param p5, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    .line 158
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->stop()V

    .line 291
    const/16 v1, 0xc

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    .line 294
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 297
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 304
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/16 v1, 0x216

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 311
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getCurrentPlayPosition()I

    move-result v7

    .line 317
    .local v7, "intmsec":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v8

    .line 326
    .local v8, "intresid":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 336
    .local v2, "lngtime":J
    const/16 v1, 0x66

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 344
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 362
    return-void

    .line 345
    .end local v0    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v2    # "lngtime":J
    .end local v7    # "intmsec":I
    .end local v8    # "intresid":I
    :catch_0
    move-exception v6

    .line 346
    .local v6, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v9

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 348
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 349
    .end local v6    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 350
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v9

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 352
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 353
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v6

    .line 354
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v9

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    throw v6
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->suspend()V

    .line 606
    return-void
.end method
