.class Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;
.source "MmbFcPlayerInInitializedSv.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;-><init>()V

    return-void
.end method

.method private checkIOException(Ljava/io/IOException;)V
    .locals 12
    .param p1, "aEx"    # Ljava/io/IOException;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 264
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v1, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mErrInfo:Ljava/util/List;

    .line 267
    .local v1, "errInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 268
    .local v4, "starTime":J
    const-wide/16 v2, 0x0

    .line 270
    .local v2, "nowTime":J
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 273
    sub-long v6, v2, v4

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 274
    const-string v6, "%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v6

    .line 280
    :cond_1
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 281
    .local v0, "aErrCode":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mErrInfo:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 315
    :pswitch_0
    const-string v6, "%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v6

    .line 285
    :pswitch_1
    const/16 v6, -0x3ed

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 325
    :goto_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/ServiceFcPlayerException;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/ServiceFcPlayerException;-><init>(I)V

    throw v6

    .line 289
    :pswitch_2
    const/16 v6, -0x3e9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 293
    :pswitch_3
    const/16 v6, -0x3ea

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 294
    goto :goto_0

    .line 297
    :pswitch_4
    const/16 v6, -0x3eb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 298
    goto :goto_0

    .line 301
    :pswitch_5
    const/16 v6, -0x3ec

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 302
    goto :goto_0

    .line 305
    :pswitch_6
    const/16 v6, -0x3ee

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 306
    goto :goto_0

    .line 311
    :pswitch_7
    const-string v6, "%s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object p1, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;-><init>()V

    throw v6

    .line 282
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private selectionSetDataSource(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 0
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p3, "aScheduleEnable"    # Z
    .param p4, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    if-eqz p3, :cond_0

    .line 351
    invoke-direct {p0, p1, p2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;->setDataSourceOnSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V

    .line 359
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;->setDataSourceOnUser(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V

    goto :goto_0
.end method

.method private setDataSourceOnSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p3, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    if-nez p3, :cond_2

    .line 461
    if-nez p2, :cond_1

    .line 466
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDataSource(Ljava/lang/String;)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 475
    :cond_2
    iget-object v3, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    if-nez v3, :cond_3

    .line 477
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 480
    :cond_3
    iget-object v3, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget v1, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 482
    .local v1, "inttype":I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_5

    .line 483
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mMediaScheme:Z

    .line 484
    iget-object v3, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 485
    .local v0, "cntindex":Ljava/lang/String;
    iget-object v3, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayTime:J

    long-to-int v2, v4

    .line 486
    .local v2, "playtime":I
    if-gez v2, :cond_4

    .line 487
    const/4 v2, 0x0

    .line 494
    :cond_4
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 500
    iget-object v3, p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentPlayDate:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 505
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setTrickPlayForceDisable()V

    goto :goto_0

    .line 515
    .end local v0    # "cntindex":Ljava/lang/String;
    .end local v2    # "playtime":I
    :cond_5
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDataSource(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDataSourceOnUser(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p3, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 381
    if-nez p2, :cond_3

    .line 382
    if-nez p3, :cond_2

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 385
    .local v2, "mp4file":Z
    if-eqz v2, :cond_1

    .line 387
    const-string v6, "#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 388
    .local v1, "delimterPos":I
    move-object v3, p1

    .line 389
    .local v3, "param1":Ljava/lang/String;
    move-object v4, p1

    .line 391
    .local v4, "param2":Ljava/lang/String;
    const/4 v6, -0x1

    if-eq v6, v1, :cond_0

    .line 392
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 393
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 400
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v6, v3, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDataSource(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 438
    .end local v1    # "delimterPos":I
    .end local v2    # "mp4file":Z
    .end local v3    # "param1":Ljava/lang/String;
    .end local v4    # "param2":Ljava/lang/String;
    :goto_0
    return-void

    .line 409
    .restart local v2    # "mp4file":Z
    :cond_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    .end local v2    # "mp4file":Z
    :cond_2
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v6

    .line 419
    :cond_3
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mMediaScheme:Z

    .line 420
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->getParamCntIndex()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "cntindex":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->getParamPtime()J

    move-result-wide v6

    long-to-int v5, v6

    .line 422
    .local v5, "ptime":I
    if-gez v5, :cond_4

    .line 423
    const/4 v5, 0x0

    .line 429
    :cond_4
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v6, p1, v0, v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setDataSource(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method


# virtual methods
.method public chapterForward()I
    .locals 1

    .prologue
    .line 662
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public chapterRewind()I
    .locals 1

    .prologue
    .line 681
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public end()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->release()V

    .line 122
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->clear()V

    .line 123
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    .line 126
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strEntityId:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-boolean v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPrepareFlag:Z

    .line 135
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mPlaySpeed:I

    .line 138
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->IDLE:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V

    .line 143
    return-void
.end method

.method public fastForward(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 622
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public getModuleState()I
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x1

    return v0
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public onLeave()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public pause()I
    .locals 1

    .prologue
    .line 601
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public play()V
    .locals 1

    .prologue
    .line 562
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public resetFcMp4Content()V
    .locals 0

    .prologue
    .line 543
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 739
    return-void
.end method

.method public rewind(I)I
    .locals 1
    .param p1, "aExtra"    # I

    .prologue
    .line 643
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public seek(I)I
    .locals 1
    .param p1, "aMsec"    # I

    .prologue
    .line 702
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public setFcMp4Content(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p4, "aScheduleEnable"    # Z
    .param p5, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->checkParamNullAndEmpty([Ljava/lang/Object;)V

    .line 188
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mMediaScheme:Z

    .line 189
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mSyncPlayFlag:Z

    .line 192
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;->getParentalControlRate()I

    move-result v1

    .line 197
    .local v1, "parentalRate":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setParentalRate(I)V

    .line 206
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setAudioStreamType(I)V

    .line 212
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;->selectionSetDataSource(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V

    .line 218
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mFcMp4Player:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMp4MwPlayerWrapperSv;->setResumePlaying(Z)V

    .line 220
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->mResumeFlag:Z

    .line 226
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object p1, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strCrid:Ljava/lang/String;

    .line 229
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->mController:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    iput-object p2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->strEntityId:Ljava/lang/String;

    .line 232
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;->PREPARED:Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;

    invoke-super {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerBaseSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerStateSv;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 249
    .end local v1    # "parentalRate":I
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 237
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "ex":Ljava/lang/IllegalStateException;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 241
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 242
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerInInitializedSv;->checkIOException(Ljava/io/IOException;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 582
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 721
    return-void
.end method
