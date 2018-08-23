.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;
.source "MmbFcPlayerInPlaybackCompletedSv.java"


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
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 449
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v1, :cond_0

    .line 450
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 463
    :goto_0
    return v0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;->play()V

    .line 456
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1, v3, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->trickplay(II)I

    .line 458
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->trickplay(II)I

    move-result v0

    .line 463
    .local v0, "result":I
    goto :goto_0
.end method

.method public chapterRewind()I
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;->resetFcMp4Content()V

    .line 115
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->release()V

    .line 121
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 125
    return-void
.end method

.method public fastForward(I)I
    .locals 2
    .param p1, "aExtra"    # I

    .prologue
    const/4 v0, 0x1

    .line 397
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v1, :cond_0

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 410
    :goto_0
    return v0

    .line 402
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;->play()V

    .line 404
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->trickplay(II)I

    move-result v0

    .line 410
    .local v0, "result":I
    goto :goto_0
.end method

.method public getModuleState()I
    .locals 1

    .prologue
    .line 587
    const/16 v0, 0x8

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
    .line 377
    const/4 v0, 0x1

    return v0
.end method

.method public play()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-wide v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mOpenDateTime:J

    invoke-virtual {v1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->syncStart(J)V

    .line 238
    :goto_0
    const/16 v1, 0xb

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    .line 241
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STARTED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 244
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 247
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->getCurrentPlayPosition()I

    move-result v7

    .line 253
    .local v7, "intmsec":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v8

    .line 262
    .local v8, "intresid":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 273
    .local v2, "lngtime":J
    const/16 v1, 0x65

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 281
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V

    .line 290
    return-void

    .line 231
    .end local v0    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v2    # "lngtime":J
    .end local v7    # "intmsec":I
    .end local v8    # "intresid":I
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 282
    :catch_0
    move-exception v6

    .line 283
    .local v6, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "%s"

    new-array v4, v9, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1
.end method

.method public resetFcMp4Content()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;->stop()V

    .line 181
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->reset()V

    .line 187
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strEntityId:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPrepareFlag:Z

    .line 196
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 200
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 558
    return-void
.end method

.method public rewind(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 432
    const/4 v0, 0x1

    return v0
.end method

.method public seek(I)I
    .locals 6
    .param p1, "aMsec"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 501
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    if-eqz v2, :cond_0

    .line 502
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeavePublic(Ljava/lang/Object;)V

    .line 516
    :goto_0
    return v1

    .line 506
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInPlaybackCompletedSv;->play()V

    .line 508
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->trickplay(II)I

    .line 510
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->seek(I)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 516
    .local v1, "result":I
    goto :goto_0

    .line 517
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 518
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "%s"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
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
    .line 155
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
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->stop()V

    .line 321
    const/16 v2, 0xc

    invoke-super {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->waitAsyncResults(I)I

    .line 324
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 327
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 334
    .local v1, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/16 v2, 0x216

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 341
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 358
    return-void

    .line 342
    .end local v1    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :catch_0
    move-exception v0

    .line 343
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 346
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 347
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 350
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 351
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    throw v0
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 540
    return-void
.end method
