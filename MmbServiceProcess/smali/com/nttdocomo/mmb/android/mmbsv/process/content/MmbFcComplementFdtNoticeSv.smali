.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
.super Ljava/lang/Object;
.source "MmbFcComplementFdtNoticeSv.java"


# instance fields
.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 57
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 58
    return-void
.end method

.method private notifyComplementProgressChange(Ljava/lang/String;II)V
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aState"    # I

    .prologue
    const/4 v9, 0x1

    .line 315
    if-ne p2, v9, :cond_1

    .line 316
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    .line 317
    .local v7, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v0, :cond_1

    .line 318
    const/4 v2, -0x1

    .line 319
    .local v2, "progress":I
    const/16 v0, 0x47

    if-ne p3, v0, :cond_2

    .line 320
    const/4 v2, 0x0

    .line 327
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p3

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v2    # "progress":I
    .end local v7    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_1
    :goto_1
    return-void

    .line 321
    .restart local v2    # "progress":I
    .restart local v7    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_2
    const/16 v0, 0x48

    if-ne p3, v0, :cond_0

    .line 322
    const/16 v2, 0x64

    goto :goto_0

    .line 329
    :catch_0
    move-exception v8

    .line 330
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "%s"

    new-array v1, v9, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method clearServiceStatus(Ljava/lang/String;I)V
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 363
    const/16 v0, 0x381e

    .line 364
    .local v0, "serviceType":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 365
    const/16 v0, 0x3c1e

    .line 369
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 374
    return-void

    .line 366
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 367
    const/16 v0, 0x3c1e

    goto :goto_0
.end method

.method onRepairFdtCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 245
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 246
    .local v1, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v2

    .line 248
    .local v2, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 249
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v3

    .line 250
    .local v3, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v3, v4, :cond_2

    .line 255
    :cond_0
    const/16 v4, 0x4a

    invoke-direct {p0, p1, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->notifyComplementProgressChange(Ljava/lang/String;II)V

    .line 259
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->clearServiceStatus(Ljava/lang/String;I)V

    .line 262
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->removeState(Ljava/lang/String;)V

    .line 265
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 266
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelComplementShutdownFlg()Z

    move-result v0

    .line 271
    .local v0, "cancelComplementShutdownFlg":Z
    if-nez v0, :cond_1

    .line 272
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v4

    const/4 v6, 0x4

    invoke-virtual {v4, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 278
    .end local v0    # "cancelComplementShutdownFlg":Z
    :cond_1
    const/16 v4, -0xb

    invoke-virtual {p3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 280
    :cond_2
    monitor-exit v5

    .line 284
    return-void

    .line 280
    .end local v3    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 187
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 188
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v1

    .line 190
    .local v1, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v4

    .line 191
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v2

    .line 192
    .local v2, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v2, v3, :cond_2

    .line 197
    :cond_0
    const/16 v3, 0x49

    invoke-direct {p0, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->notifyComplementProgressChange(Ljava/lang/String;II)V

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->clearServiceStatus(Ljava/lang/String;I)V

    .line 204
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 205
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 210
    :cond_1
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->removeState(Ljava/lang/String;)V

    .line 213
    const/4 v3, -0x1

    invoke-virtual {p3, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 215
    :cond_2
    monitor-exit v4

    .line 219
    return-void

    .line 215
    .end local v2    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method onRepairFdtStarted(Ljava/lang/String;I)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 82
    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    .line 103
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 90
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v1

    .line 92
    .local v1, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v4

    .line 93
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v2

    .line 94
    .local v2, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v2, v3, :cond_1

    .line 96
    const/16 v3, 0x47

    invoke-direct {p0, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->notifyComplementProgressChange(Ljava/lang/String;II)V

    .line 99
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v2    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method onRepairFdtSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 129
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 130
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v1

    .line 132
    .local v1, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v4

    .line 133
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v2

    .line 134
    .local v2, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v2, v3, :cond_2

    .line 138
    :cond_0
    const/16 v3, 0x48

    invoke-direct {p0, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->notifyComplementProgressChange(Ljava/lang/String;II)V

    .line 142
    invoke-virtual {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->clearServiceStatus(Ljava/lang/String;I)V

    .line 145
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 146
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    const/4 v5, 0x4

    invoke-virtual {v3, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 151
    :cond_1
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->removeState(Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 156
    :cond_2
    monitor-exit v4

    .line 160
    return-void

    .line 156
    .end local v2    # "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
