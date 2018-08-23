.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;
.super Ljava/lang/Object;
.source "MmbSiMetadataUtilitySv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method public static canGatherSiInfFromNetImpl(I)Z
    .locals 2
    .param p0, "aResult"    # I

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, "result":Z
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    if-ne v1, p0, :cond_1

    .line 380
    const/4 v0, 0x1

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    if-ne v1, p0, :cond_2

    .line 383
    const/4 v0, 0x1

    goto :goto_0

    .line 384
    :cond_2
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_DB_THRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v1

    if-ne v1, p0, :cond_0

    .line 386
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static checkAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z
    .locals 4
    .param p0, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 446
    if-nez p0, :cond_0

    .line 447
    const/4 v2, 0x0

    .line 474
    :goto_0
    return v2

    .line 450
    :cond_0
    const/4 v0, -0x1

    .line 451
    .local v0, "autoReception":I
    const/4 v2, 0x0

    .line 455
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForForceReceive()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 461
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 463
    :pswitch_0
    const/4 v2, 0x0

    .line 464
    goto :goto_0

    .line 456
    :catch_0
    move-exception v1

    .line 458
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 459
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 466
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :pswitch_1
    const/4 v2, 0x1

    .line 467
    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkAutoReceptionAirB(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z
    .locals 4
    .param p0, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 497
    if-nez p0, :cond_1

    .line 498
    const/4 v2, 0x0

    .line 524
    :cond_0
    :goto_0
    return v2

    .line 502
    :cond_1
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v2

    .line 503
    .local v2, "result":Z
    if-nez v2, :cond_0

    .line 504
    const/4 v0, -0x1

    .line 508
    .local v0, "autoReception":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForAutoReceive()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 514
    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    .line 515
    const/4 v2, 0x1

    goto :goto_0

    .line 509
    :catch_0
    move-exception v1

    .line 511
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 512
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 517
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static checkMetaDataState(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Z)V
    .locals 3
    .param p0, "aMetaDataState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p1, "aIgnoreScan"    # Z

    .prologue
    const/4 v2, 0x0

    .line 557
    if-nez p0, :cond_0

    .line 611
    :goto_0
    :pswitch_0
    return-void

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getMetaDataState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 569
    :pswitch_1
    const-string v1, "middle error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 570
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getPossibleRetry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 571
    const/4 v0, 0x1

    .line 575
    .local v0, "nErrCode":I
    :goto_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>(I)V

    throw v1

    .line 573
    .end local v0    # "nErrCode":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "nErrCode":I
    goto :goto_1

    .line 578
    .end local v0    # "nErrCode":I
    :pswitch_2
    const-string v1, "cancel error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 579
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/CancelbyUserException;-><init>()V

    throw v1

    .line 582
    :pswitch_3
    const-string v1, "register schedule error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 586
    :pswitch_4
    const-string v1, "battery error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;-><init>()V

    throw v1

    .line 590
    :pswitch_5
    const-string v1, "fatal error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 594
    :pswitch_6
    const-string v1, "middle error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 595
    if-nez p1, :cond_3

    .line 596
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->getPossibleRetry()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    const/4 v0, 0x1

    .line 604
    .restart local v0    # "nErrCode":I
    :goto_2
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>(I)V

    throw v1

    .line 599
    .end local v0    # "nErrCode":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "nErrCode":I
    goto :goto_2

    .line 602
    .end local v0    # "nErrCode":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "nErrCode":I
    goto :goto_2

    .line 563
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static checkMmbFcPgInfoMwReturnType(IZ)V
    .locals 2
    .param p0, "aResult"    # I
    .param p1, "aArgument"    # Z

    .prologue
    const/4 v1, 0x0

    .line 143
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 145
    const-string v0, "middle register error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0

    .line 147
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 150
    if-eqz p1, :cond_1

    .line 151
    const-string v0, "middle parameter error: aArgument = true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 154
    :cond_1
    const-string v0, "middle parameter error: aArgument = false"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v0

    .line 157
    :cond_2
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_3

    .line 159
    const-string v0, "middle memory error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0

    .line 161
    :cond_3
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_5

    .line 163
    const-string v0, "middle other error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :cond_4
    :goto_0
    return-void

    .line 164
    :cond_5
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_DB_THRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_4

    .line 166
    const-string v0, "DB is full"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static checkSaveMetadataReturnType(IZ)V
    .locals 2
    .param p0, "aResult"    # I
    .param p1, "aArgument"    # Z

    .prologue
    const/4 v1, 0x0

    .line 198
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 200
    const-string v0, "middle register error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0

    .line 202
    :cond_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 205
    if-eqz p1, :cond_1

    .line 206
    const-string v0, "middle parameter error: aArgument = true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 209
    :cond_1
    const-string v0, "middle parameter error: aArgument = false"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v0

    .line 212
    :cond_2
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_4

    .line 214
    const-string v0, "middle memory error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_3
    :goto_0
    return-void

    .line 215
    :cond_4
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_5

    .line 217
    const-string v0, "middle other error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_5
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_DB_THRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_3

    .line 220
    const-string v0, "DB is full"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getNextBroadcast(Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .locals 8
    .param p0, "aCrid"    # Ljava/lang/String;
    .param p1, "aSort"    # Z
    .param p2, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const/4 v7, 0x0

    .line 328
    if-nez p0, :cond_0

    .line 329
    const-string v4, "parameter error : null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 333
    :cond_0
    const/4 v2, 0x0

    .line 334
    .local v2, "sdpTagData":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "ja"

    invoke-virtual {v4, p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 338
    .local v0, "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    if-eqz v0, :cond_1

    .line 339
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v4, "t="

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v3, v4

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    .line 346
    .local v3, "sdpTagSv":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->getListSortStart(Z)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v2

    .line 349
    .end local v1    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v3    # "sdpTagSv":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :cond_1
    if-nez v2, :cond_2

    .line 350
    new-array v2, v7, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .line 356
    :cond_2
    return-object v2
.end method

.method public static isOtherError(I)V
    .locals 2
    .param p0, "aResult"    # I

    .prologue
    .line 413
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 418
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    const-string v1, "middle other error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    return-void
.end method

.method public static joinContinuousScheduledBroadcast([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .locals 12
    .param p0, "aSrc"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .prologue
    .line 247
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_2

    .line 251
    :cond_0
    const/4 v4, 0x0

    .line 297
    :cond_1
    return-object v4

    .line 255
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v3, "lstSch":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_7

    .line 257
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 258
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    .line 261
    .local v1, "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    aget-object v5, p0, v0

    iget-wide v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6

    aget-object v5, p0, v0

    iget-wide v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    iget-wide v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    const-wide/32 v10, 0x493e0

    add-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6

    .line 265
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    aget-object v5, p0, v0

    iget-wide v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_3

    .line 266
    aget-object v5, p0, v0

    iget-wide v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    iput-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    .line 268
    :cond_3
    iget v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    .line 274
    .end local v1    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_5

    .line 276
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;-><init>()V

    .line 277
    .restart local v1    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    aget-object v5, p0, v0

    iget-wide v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    iput-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    .line 278
    aget-object v5, p0, v0

    iget-wide v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    iput-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    .line 279
    const/4 v5, 0x1

    iput v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    .line 280
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v1    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    .restart local v1    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 285
    .end local v1    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .end local v2    # "j":I
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    .line 286
    .local v4, "ret":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    const/4 v0, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 287
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    .line 288
    .restart local v1    # "item":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;-><init>()V

    aput-object v5, v4, v0

    .line 289
    aget-object v5, v4, v0

    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    iput-wide v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    .line 290
    aget-object v5, v4, v0

    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    iput-wide v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    .line 291
    aget-object v5, v4, v0

    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    iput v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbCount:I

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static linkDictionary(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    .locals 3
    .param p0, "aDictionaryType"    # I

    .prologue
    .line 729
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 730
    .local v0, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;
    packed-switch p0, :pswitch_data_0

    .line 825
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 826
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 733
    :pswitch_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 831
    :goto_0
    return-object v0

    .line 737
    :pswitch_1
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ALL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 738
    goto :goto_0

    .line 741
    :pswitch_2
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_GENRE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 742
    goto :goto_0

    .line 745
    :pswitch_3
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_GENRE2:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 746
    goto :goto_0

    .line 749
    :pswitch_4
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_PARENTAL_RATING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 750
    goto :goto_0

    .line 753
    :pswitch_5
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_HOW_RELATED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 754
    goto :goto_0

    .line 757
    :pswitch_6
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_HOW_RELATED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 758
    goto :goto_0

    .line 761
    :pswitch_7
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_PURCHASE_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 762
    goto :goto_0

    .line 765
    :pswitch_8
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_UNIT_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 766
    goto :goto_0

    .line 769
    :pswitch_9
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_PROMOTIONAL_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 770
    goto :goto_0

    .line 773
    :pswitch_a
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_ROLE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 774
    goto :goto_0

    .line 777
    :pswitch_b
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_AUDIO_COMPONENT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 778
    goto :goto_0

    .line 781
    :pswitch_c
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_AUDIO_CODING_FORMAT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 782
    goto :goto_0

    .line 785
    :pswitch_d
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_AUDIO_VISUAL_CODING_FORMAT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 786
    goto :goto_0

    .line 789
    :pswitch_e
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_FILE_FORMAT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 790
    goto :goto_0

    .line 793
    :pswitch_f
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_FILE_FORMAT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 794
    goto :goto_0

    .line 797
    :pswitch_10
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_OUTPUT_PORT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 798
    goto :goto_0

    .line 801
    :pswitch_11
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ARIB_COPY_CONTROL_METHOD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 802
    goto :goto_0

    .line 805
    :pswitch_12
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_CONTENT_TYPE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 806
    goto :goto_0

    .line 809
    :pswitch_13
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_DELIVERYSTATUS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 810
    goto :goto_0

    .line 813
    :pswitch_14
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_ITEM_CATEGORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 814
    goto :goto_0

    .line 817
    :pswitch_15
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_INTENDED_AUDIENCE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 818
    goto :goto_0

    .line 821
    :pswitch_16
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;->DICTIONARY_TYPE_ISDBTMM_STEREO_VIDEO_FORMAT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDictionaryType;

    .line 822
    goto :goto_0

    .line 730
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public static linkFragmentVersionType(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    .locals 3
    .param p0, "aType"    # I

    .prologue
    .line 926
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_UNDEFINED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 929
    .local v0, "fragmentVersionType":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    packed-switch p0, :pswitch_data_0

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 931
    :pswitch_0
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_REALTIME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 946
    :goto_0
    return-object v0

    .line 934
    :pswitch_1
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_DOWNLOAD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 935
    goto :goto_0

    .line 937
    :pswitch_2
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_GROUP:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 938
    goto :goto_0

    .line 929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static logSearchMethod([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    .locals 0
    .param p0, "aRecord"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .prologue
    .line 1115
    return-void
.end method
