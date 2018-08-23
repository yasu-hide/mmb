.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInBackgroundPlaySv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;
.source "MmbFcPlayerInBackgroundPlaySv.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;-><init>()V

    return-void
.end method


# virtual methods
.method public chapterForward()I
    .locals 1

    .prologue
    .line 413
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public chapterRewind()I
    .locals 1

    .prologue
    .line 434
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public end()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInBackgroundPlaySv;->resetFcMp4Content()V

    .line 115
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->release()V

    .line 121
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 125
    return-void
.end method

.method public fastForward(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 367
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public getModuleState()I
    .locals 1

    .prologue
    .line 541
    const/16 v0, 0xa

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
    .line 343
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public resetFcMp4Content()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInBackgroundPlaySv;->stop()V

    .line 181
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->reset()V

    .line 187
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strEntityId:Ljava/lang/String;

    .line 193
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPrepareFlag:Z

    .line 196
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->INITIALIZED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 200
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public rewind(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 391
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public seek(I)I
    .locals 1
    .param p1, "aMsec"    # I

    .prologue
    .line 457
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
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
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 246
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->stop()V

    .line 252
    const/16 v1, 0xc

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->waitAsyncResults(I)I

    .line 255
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->STOPPED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 258
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 265
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/16 v1, 0x216

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 272
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->getCurrentPlayPosition()I

    move-result v7

    .line 278
    .local v7, "intmsec":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->getSequenceLabel(I)I

    move-result v8

    .line 287
    .local v8, "intresid":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 297
    .local v2, "lngtime":J
    const/16 v1, 0x66

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 305
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->controlThread(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 323
    return-void

    .line 306
    .end local v0    # "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v2    # "lngtime":J
    .end local v7    # "intmsec":I
    .end local v8    # "intresid":I
    :catch_0
    move-exception v6

    .line 307
    .local v6, "ex":Ljava/lang/IllegalStateException;
    const-string v1, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v9

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 310
    .end local v6    # "ex":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 311
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v9

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 314
    .end local v6    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v6

    .line 315
    .local v6, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v6, v4, v9

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    throw v6
.end method

.method public suspend()V
    .locals 3

    .prologue
    .line 474
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-boolean v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    .line 476
    .local v0, "flg":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    .line 478
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->pause()I

    .line 479
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-boolean v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    .line 485
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInStartedSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->suspend()V

    .line 493
    return-void
.end method
