.class public Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;
.source "MmbCfConflictSessionSv.java"


# instance fields
.field private cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .line 55
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->getServiceManager()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    .line 59
    return-void
.end method


# virtual methods
.method public checkConflict(IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrId"    # Ljava/lang/String;
    .param p4, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v1

    .line 136
    .local v1, "ret":I
    return v1

    .line 119
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 121
    throw v0

    .line 123
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 125
    throw v0

    .line 127
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_2
    move-exception v0

    .line 128
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 129
    throw v0
.end method

.method public checkConnectionInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConnectionInfo()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    .local v1, "ret":I
    return v1

    .line 439
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 440
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 441
    throw v0
.end method

.method public checkForeignMode(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aDoMeasure"    # Z
    .param p2, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode(Z)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 244
    .local v1, "ret":I
    return v1

    .line 233
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 235
    throw v0

    .line 237
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_1
    move-exception v0

    .line 238
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 239
    throw v0
.end method

.method public checkSdCardFreeSpace(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardFreeSpace()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 304
    .local v1, "ret":I
    return v1

    .line 297
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 299
    throw v0
.end method

.method public checkSdCardMount(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 3
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 266
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkSdCardMount()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 275
    .local v1, "ret":Z
    return v1

    .line 268
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 270
    throw v0
.end method

.method public checkTunerConflict(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aServiceId"    # I
    .param p2, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 506
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkTunerConflict(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 517
    .local v1, "ret":I
    return v1

    .line 507
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 509
    throw v0

    .line 510
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_1
    move-exception v0

    .line 511
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 512
    throw v0
.end method

.method public cleanupSession()V
    .locals 0

    .prologue
    .line 560
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->cleanupSession()V

    .line 564
    return-void
.end method

.method public clearServiceStatus(IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aCrId"    # Ljava/lang/String;
    .param p4, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 85
    throw v0
.end method

.method public getBatteryLevel(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 2
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 410
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryLevel()I

    move-result v0

    .line 414
    .local v0, "ret":I
    return v0
.end method

.method public getMemoryFreeSpace(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 382
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getMemoryFreeSpace()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 391
    .local v1, "ret":I
    return v1

    .line 384
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 386
    throw v0
.end method

.method public isUimService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 3
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 353
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isUimService()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 362
    .local v1, "ret":Z
    return v1

    .line 355
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 357
    throw v0
.end method

.method public isUimStatus(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 2
    .param p1, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 326
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->isUimStatus()Z

    move-result v0

    .line 331
    .local v0, "ret":Z
    return v0
.end method

.method public registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    .param p3, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 163
    throw v0

    .line 165
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 166
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 167
    throw v0
.end method

.method public releaseTunerResouce(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 3
    .param p1, "aServiceId"    # I
    .param p2, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->releaseTunerResouce(I)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 480
    .local v1, "ret":I
    return v1

    .line 473
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 475
    throw v0
.end method

.method public startupSession()V
    .locals 0

    .prologue
    .line 537
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSessionSv;->startupSession()V

    .line 542
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbCfConflictSessionSv [cfManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aServiceType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    .param p3, "aFwCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->cfManager:Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 206
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 197
    throw v0

    .line 199
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 200
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 201
    throw v0
.end method
