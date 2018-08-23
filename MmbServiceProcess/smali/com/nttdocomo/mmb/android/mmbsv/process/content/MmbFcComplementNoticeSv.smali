.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
.super Ljava/lang/Object;
.source "MmbFcComplementNoticeSv.java"


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ">;"
        }
    .end annotation
.end field

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mCallbackMap:Ljava/util/Map;

    .line 66
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 67
    return-void
.end method


# virtual methods
.method getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mCallbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 404
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    return-object v0
.end method

.method onRepairCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)V
    .locals 16
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p4, "aType"    # Z

    .prologue
    .line 329
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    .line 330
    .local v9, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v11

    .line 333
    .local v11, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v14

    .line 334
    .local v14, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v14, :cond_0

    iget-object v1, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    if-eqz v1, :cond_0

    .line 335
    iget v1, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 336
    iget-object v1, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I

    .line 339
    :cond_0
    iget-object v15, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v15

    .line 340
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v13

    .line 341
    .local v13, "state":I
    const/4 v1, 0x3

    if-eq v13, v1, :cond_1

    const/4 v1, 0x4

    if-eq v13, v1, :cond_1

    const/16 v1, 0x4a

    if-ne v13, v1, :cond_5

    .line 345
    :cond_1
    const/16 v12, 0x380c

    .line 346
    .local v12, "serviceType":I
    if-nez p4, :cond_2

    .line 347
    const/16 v12, 0x3c0c

    .line 349
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 351
    iget-object v1, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 353
    :try_start_1
    iget-object v1, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/16 v4, 0x4a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v1

    const v2, 0x7f04001b

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyComplementProgress(Ljava/lang/String;I)V

    .line 363
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 364
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelComplementShutdownFlg()Z

    move-result v8

    .line 368
    .local v8, "cancelComplementShutdownFlg":Z
    if-nez v8, :cond_4

    .line 369
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 373
    :cond_4
    const/16 v1, -0xb

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mCallbackMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .end local v8    # "cancelComplementShutdownFlg":Z
    .end local v12    # "serviceType":I
    :cond_5
    monitor-exit v15

    .line 380
    return-void

    .line 356
    .restart local v12    # "serviceType":I
    :catch_0
    move-exception v10

    .line 357
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 376
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "serviceType":I
    .end local v13    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onRepairFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V
    .locals 16
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .param p4, "aErrInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;
    .param p5, "aNotify"    # Z

    .prologue
    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    .line 248
    .local v8, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v10

    .line 251
    .local v10, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v14

    .line 252
    .local v14, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v14, :cond_0

    iget-object v1, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    if-eqz v1, :cond_0

    .line 253
    iget v1, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 254
    iget-object v1, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I

    .line 257
    :cond_0
    iget-object v15, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v15

    .line 258
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v13

    .line 259
    .local v13, "state":I
    const/4 v11, -0x1

    .line 260
    .local v11, "result":I
    const/4 v1, 0x3

    if-eq v13, v1, :cond_1

    const/4 v1, 0x4

    if-eq v13, v1, :cond_1

    const/16 v1, 0x4a

    if-ne v13, v1, :cond_6

    .line 265
    :cond_1
    const/16 v12, 0x380c

    .line 266
    .local v12, "serviceType":I
    const/4 v1, 0x4

    if-ne v13, v1, :cond_2

    .line 267
    const/16 v12, 0x3c0c

    .line 269
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v12, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 271
    const/4 v5, 0x0

    .line 272
    .local v5, "serverRetCode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 273
    .local v6, "serverErrDetail":Ljava/lang/String;
    const/4 v7, 0x0

    .line 274
    .local v7, "serverRetMsg":Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 275
    move-object/from16 v0, p4

    iget v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbErrCode:I

    .line 276
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbHttpRetCode:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p4

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbHttpErrDetail:Ljava/lang/String;

    .line 278
    move-object/from16 v0, p4

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;->mmbRetMessage:Ljava/lang/String;

    .line 280
    :cond_3
    iget-object v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    .line 282
    :try_start_1
    iget-object v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/16 v4, 0x49

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_4
    :goto_0
    if-eqz p5, :cond_5

    .line 290
    :try_start_2
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v1

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyComplementProgress(Ljava/lang/String;I)V

    .line 294
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 295
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 298
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mCallbackMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v5    # "serverRetCode":Ljava/lang/String;
    .end local v6    # "serverErrDetail":Ljava/lang/String;
    .end local v7    # "serverRetMsg":Ljava/lang/String;
    .end local v12    # "serviceType":I
    :cond_6
    monitor-exit v15

    .line 305
    return-void

    .line 285
    .restart local v5    # "serverRetCode":Ljava/lang/String;
    .restart local v6    # "serverErrDetail":Ljava/lang/String;
    .restart local v7    # "serverRetMsg":Ljava/lang/String;
    .restart local v12    # "serviceType":I
    :catch_0
    move-exception v9

    .line 286
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 301
    .end local v5    # "serverRetCode":Ljava/lang/String;
    .end local v6    # "serverErrDetail":Ljava/lang/String;
    .end local v7    # "serverRetMsg":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "result":I
    .end local v12    # "serviceType":I
    .end local v13    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method onRepairProgress(Ljava/lang/String;I)V
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    .line 88
    .local v7, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v9

    .line 89
    .local v9, "state":I
    const/4 v0, 0x3

    if-eq v9, v0, :cond_0

    const/4 v0, 0x4

    if-ne v9, v0, :cond_1

    .line 91
    :cond_0
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v0, :cond_1

    .line 93
    :try_start_0
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/16 v3, 0x47

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v8

    .line 96
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method onRepairStarted(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    .line 126
    .local v7, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    iget-object v10, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v10

    .line 127
    :try_start_0
    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v9

    .line 128
    .local v9, "state":I
    const/4 v0, 0x3

    if-eq v9, v0, :cond_0

    const/4 v0, 0x4

    if-ne v9, v0, :cond_2

    .line 130
    :cond_0
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 132
    :try_start_1
    iget-object v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/16 v3, 0x47

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move v2, p2

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mCallbackMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_2
    monitor-exit v10

    .line 146
    return-void

    .line 135
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "state":I
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method onRepairSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 17
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aProgress"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    .line 167
    .local v8, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v12

    .line 170
    .local v12, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v15

    .line 171
    .local v15, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v15, :cond_0

    iget-object v1, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    if-eqz v1, :cond_0

    .line 172
    iget v1, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 173
    iget-object v1, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I

    .line 176
    :cond_0
    iget-object v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 177
    :try_start_0
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v9

    .line 178
    .local v9, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v14

    .line 179
    .local v14, "state":I
    const/4 v1, 0x3

    if-eq v14, v1, :cond_1

    const/4 v1, 0x4

    if-ne v14, v1, :cond_5

    .line 181
    :cond_1
    iget-object v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 183
    :try_start_1
    iget-object v1, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/16 v4, 0x48

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-interface/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :cond_2
    :goto_0
    const/16 v13, 0x380c

    .line 194
    .local v13, "serviceType":I
    const/4 v1, 0x4

    if-ne v14, v1, :cond_3

    .line 195
    const/16 v13, 0x3c0c

    .line 197
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v13, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 199
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 202
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    move-result v10

    .line 206
    .local v10, "downloadResult":I
    const/4 v1, 0x1

    if-ne v1, v10, :cond_4

    .line 207
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkAutoPlay(Ljava/lang/String;)V

    .line 208
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->isCompleteOnlySchedule(Ljava/lang/String;)Z

    move-result v2

    if-ne v1, v2, :cond_6

    .line 211
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->notifyDownloaded(Ljava/lang/String;)V

    .line 217
    :cond_4
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->mCallbackMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .end local v10    # "downloadResult":I
    .end local v13    # "serviceType":I
    :cond_5
    monitor-exit v16

    .line 224
    return-void

    .line 186
    :catch_0
    move-exception v11

    .line 187
    .local v11, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    .end local v9    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v14    # "state":I
    :catchall_0
    move-exception v1

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 213
    .restart local v9    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v10    # "downloadResult":I
    .restart local v13    # "serviceType":I
    .restart local v14    # "state":I
    :cond_6
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reservePublishSchedule(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
