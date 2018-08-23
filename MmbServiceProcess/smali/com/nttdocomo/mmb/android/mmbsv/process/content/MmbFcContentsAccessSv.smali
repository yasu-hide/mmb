.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;
.super Ljava/lang/Object;
.source "MmbFcContentsAccessSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$MmbFcContSvReturnType;
    }
.end annotation


# instance fields
.field private mAutoDeletionContinue:Z

.field private mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

.field private mDeletionContinueFlag:Z

.field private mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mMmbFcMfestMw:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

.field private mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

.field private usedServiceIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 2
    .param p1, "aServiceManager"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 157
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    .line 162
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    .line 167
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMmbFcMfestMw:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

    .line 172
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mAutoDeletionContinue:Z

    .line 177
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mDeletionContinueFlag:Z

    .line 3923
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->usedServiceIdMap:Ljava/util/Map;

    .line 208
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 212
    return-void
.end method

.method private cancelCurrentAndDownload(Ljava/lang/String;IZZ)I
    .locals 27
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aServiceId"    # I
    .param p3, "aIsManual"    # Z
    .param p4, "aIsSameTs"    # Z

    .prologue
    .line 2510
    const/16 v18, -0x1

    .line 2512
    .local v18, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    .line 2513
    .local v9, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v10

    .line 2514
    .local v10, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    .line 2517
    .local v12, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v11, 0x0

    .line 2518
    .local v11, "contentToCancel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkDownloadPriority(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v11

    .line 2519
    if-nez v11, :cond_1

    .line 2521
    const/16 v18, -0x13

    .line 2525
    const v21, 0xa900

    .line 2526
    .local v21, "serviceType":I
    if-nez p3, :cond_0

    .line 2527
    const v21, 0xad00

    .line 2529
    :cond_0
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, p2

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I

    move/from16 v19, v18

    .line 2640
    .end local v18    # "result":I
    .end local v21    # "serviceType":I
    .local v19, "result":I
    :goto_0
    return v19

    .line 2533
    .end local v19    # "result":I
    .restart local v18    # "result":I
    :cond_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2535
    .local v13, "crid":Ljava/lang/String;
    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getServiceIdFromMetadata(Ljava/lang/String;)I

    move-result v20

    .line 2537
    .local v20, "serviceId":I
    const/16 v17, 0x0

    .line 2539
    .local v17, "regResult":Z
    :try_start_0
    new-instance v24, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbMaxCancelDownloadTerminationSv;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, v24

    invoke-direct {v0, v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbMaxCancelDownloadTerminationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v9, v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerCancelDownloadTermination(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;)Z

    move-result v17

    .line 2542
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-result-object v6

    .line 2544
    .local v6, "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    const/4 v5, 0x0

    .line 2547
    .local v5, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/16 v24, 0x1

    move/from16 v0, v24

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 2548
    const/4 v7, 0x0

    .line 2549
    .local v7, "cancelRet":I
    iget-object v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2550
    :try_start_1
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v24

    const/16 v26, -0x15

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 2552
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2586
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2587
    :try_start_2
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2589
    :catch_0
    move-exception v14

    .line 2590
    .local v14, "e":Ljava/lang/Exception;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2555
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelDownload(Ljava/lang/String;)I

    move-result v7

    .line 2556
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2558
    if-nez v7, :cond_6

    .line 2559
    :try_start_4
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-result-object v6

    .line 2561
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    .line 2562
    if-eqz v5, :cond_4

    .line 2563
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2586
    .end local v7    # "cancelRet":I
    :cond_4
    :goto_2
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2587
    :try_start_5
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 2589
    :catch_1
    move-exception v14

    .line 2590
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2556
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v7    # "cancelRet":I
    :catchall_0
    move-exception v24

    :try_start_6
    monitor-exit v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2585
    .end local v5    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v6    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    .end local v7    # "cancelRet":I
    :catchall_1
    move-exception v24

    .line 2586
    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 2587
    :try_start_8
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 2591
    :cond_5
    :goto_3
    throw v24

    .line 2566
    .restart local v5    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v6    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    .restart local v7    # "cancelRet":I
    :cond_6
    const/16 v18, -0x1

    .line 2570
    const v21, 0xa900

    .line 2571
    .restart local v21    # "serviceType":I
    if-nez p3, :cond_7

    .line 2572
    const v21, 0xad00

    .line 2574
    :cond_7
    const/16 v24, 0x0

    :try_start_9
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v24

    move/from16 v3, v20

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2586
    const/16 v24, 0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 2587
    :try_start_a
    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :cond_8
    :goto_4
    move/from16 v19, v18

    .line 2591
    .end local v18    # "result":I
    .restart local v19    # "result":I
    goto/16 :goto_0

    .line 2589
    .end local v19    # "result":I
    .restart local v18    # "result":I
    :catch_2
    move-exception v14

    .line 2590
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2579
    .end local v7    # "cancelRet":I
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v21    # "serviceType":I
    :cond_9
    :try_start_b
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    .line 2580
    if-eqz v5, :cond_4

    .line 2581
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getIntResult()I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_2

    .line 2589
    .end local v5    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v6    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    :catch_3
    move-exception v14

    .line 2590
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2595
    .end local v13    # "crid":Ljava/lang/String;
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v17    # "regResult":Z
    .end local v20    # "serviceId":I
    :cond_a
    const v23, 0xa900

    .line 2596
    .local v23, "type":I
    if-nez p3, :cond_b

    .line 2597
    const v23, 0xad00

    .line 2600
    :cond_b
    const/16 v24, -0x15

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 2603
    const/16 v22, 0x1

    .line 2604
    .local v22, "state":I
    if-nez p3, :cond_c

    .line 2605
    const/16 v22, 0x2

    .line 2609
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkLastBroadcastFromSchedule(Ljava/lang/String;)I

    move-result v16

    .line 2613
    .local v16, "isLastBradcast":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerLastSchduleStateMap(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2615
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerDownloadContentState(Ljava/lang/String;I)I

    .line 2617
    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 2630
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, p2

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I

    move-result v8

    .line 2631
    .local v8, "conflictRet":I
    if-nez v8, :cond_e

    .line 2633
    invoke-direct/range {p0 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->startNewDownload(Ljava/lang/String;IZ)I

    move-result v18

    :goto_5
    move/from16 v19, v18

    .line 2640
    .end local v18    # "result":I
    .restart local v19    # "result":I
    goto/16 :goto_0

    .line 2621
    .end local v8    # "conflictRet":I
    .end local v16    # "isLastBradcast":I
    .end local v19    # "result":I
    .end local v22    # "state":I
    .restart local v18    # "result":I
    :cond_d
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, p2

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I

    .line 2622
    const/16 v18, -0x13

    move/from16 v19, v18

    .line 2626
    .end local v18    # "result":I
    .restart local v19    # "result":I
    goto/16 :goto_0

    .line 2635
    .end local v19    # "result":I
    .restart local v8    # "conflictRet":I
    .restart local v16    # "isLastBradcast":I
    .restart local v18    # "result":I
    .restart local v22    # "state":I
    :cond_e
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->convertConflictReason(I)I

    move-result v18

    goto :goto_5
.end method

.method private checkAndDeleteContent(Ljava/lang/String;JJ)V
    .locals 20
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPeriodEnd"    # J
    .param p4, "aCurrentTime"    # J

    .prologue
    .line 3428
    const/16 v15, -0x15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    if-eq v15, v0, :cond_1

    .line 3430
    const-string v15, "Skip duo to State Error [%s]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3558
    :cond_0
    :goto_0
    return-void

    .line 3433
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v6

    .line 3435
    .local v6, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->isComplementFdt(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3436
    const-string v15, "Skip duo to State Error(Complement FDT now) [%s]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3442
    .end local v6    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    :catch_0
    move-exception v5

    .line 3443
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v15, "Skip duo to Argument Error [%s]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3448
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v6    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    move-result-object v15

    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->NONE:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    move-object/from16 v0, v18

    if-ne v15, v0, :cond_0

    .line 3458
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isExportCompleted(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v15

    if-nez v15, :cond_0

    .line 3472
    const/4 v9, 0x1

    .line 3474
    .local v9, "isOpenPeroid":Z
    const/4 v10, 0x1

    .line 3476
    .local v10, "isValidLicense":Z
    const/4 v8, 0x1

    .line 3478
    .local v8, "isLicenseIssuePeroid":Z
    const/4 v7, 0x0

    .line 3484
    .local v7, "isFcNoLimitLicense":Z
    cmp-long v15, p4, p2

    if-gez v15, :cond_4

    const/4 v9, 0x1

    .line 3489
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getCasLicenseInfoForAutoDeletion(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-result-object v11

    .line 3492
    .local v11, "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    iget-object v15, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    if-nez v15, :cond_9

    .line 3503
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getMwLicenseInfoForAutoDeletion(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v14

    .line 3507
    .local v14, "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    if-eqz v14, :cond_3

    array-length v15, v14

    if-nez v15, :cond_5

    .line 3508
    :cond_3
    const-string v15, "Null license"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3509
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v18, "Null license"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 3465
    .end local v7    # "isFcNoLimitLicense":Z
    .end local v8    # "isLicenseIssuePeroid":Z
    .end local v9    # "isOpenPeroid":Z
    .end local v10    # "isValidLicense":Z
    .end local v11    # "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .end local v14    # "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :catch_1
    move-exception v5

    .line 3466
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 3467
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v5

    .line 3468
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 3484
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v7    # "isFcNoLimitLicense":Z
    .restart local v8    # "isLicenseIssuePeroid":Z
    .restart local v9    # "isOpenPeroid":Z
    .restart local v10    # "isValidLicense":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 3512
    .restart local v11    # "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .restart local v14    # "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getLicenseIssueEnd([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)J

    move-result-wide v12

    .line 3513
    .local v12, "issueEnd":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getValidityIntervalEnd([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)J

    move-result-wide v16

    .line 3516
    .local v16, "validityIntervalEnd":J
    cmp-long v15, p4, v16

    if-gez v15, :cond_7

    const/4 v10, 0x1

    .line 3518
    :goto_2
    cmp-long v15, p4, v12

    if-gez v15, :cond_8

    const/4 v8, 0x1

    .line 3554
    .end local v12    # "issueEnd":J
    .end local v14    # "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v16    # "validityIntervalEnd":J
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v10, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->executeAutoDeletion(Ljava/lang/String;ZZZ)V

    goto/16 :goto_0

    .line 3516
    .restart local v12    # "issueEnd":J
    .restart local v14    # "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v16    # "validityIntervalEnd":J
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 3518
    :cond_8
    const/4 v8, 0x0

    goto :goto_3

    .line 3520
    .end local v12    # "issueEnd":J
    .end local v14    # "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v16    # "validityIntervalEnd":J
    :cond_9
    iget-object v15, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget-boolean v15, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseFlag:Z

    if-nez v15, :cond_0

    .line 3528
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    invoke-direct {v0, v11, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isValidLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;J)Z

    move-result v10

    .line 3530
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isFcNoLimitLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)Z

    move-result v7

    .line 3531
    if-eqz v7, :cond_6

    if-nez v9, :cond_6

    .line 3533
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v15

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    .line 3537
    .local v4, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isEncrypted(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 3539
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getEntityId(Ljava/lang/String;)B

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteLicenseInfo(Ljava/lang/String;B)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_3

    .line 3541
    :catch_3
    move-exception v5

    .line 3542
    .restart local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v15, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3543
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v15, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 3544
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_4
    move-exception v5

    .line 3545
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v15, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3546
    throw v5

    .line 3547
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_5
    move-exception v5

    .line 3548
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v15, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3549
    throw v5
.end method

.method private convertConflictReason(I)I
    .locals 1
    .param p1, "aConflictType"    # I

    .prologue
    .line 2368
    const/16 v0, -0x13

    .line 2369
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 2387
    :goto_0
    return v0

    .line 2372
    :pswitch_0
    const/16 v0, -0xd

    .line 2373
    goto :goto_0

    .line 2376
    :pswitch_1
    const/16 v0, -0x12

    .line 2377
    goto :goto_0

    .line 2380
    :pswitch_2
    const/16 v0, -0x2e

    .line 2381
    goto :goto_0

    .line 2369
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private deleteCridInfo(Ljava/lang/String;B)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # B

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2757
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 2760
    .local v0, "casdrm":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->removeCridInfo(BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2784
    :goto_0
    return-void

    .line 2761
    :catch_0
    move-exception v1

    .line 2763
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 2774
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2777
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 2778
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2779
    throw v1
.end method

.method private deleteLicenseHistory(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2805
    if-nez p1, :cond_0

    .line 2825
    :goto_0
    return-void

    .line 2813
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 2814
    .local v0, "casDrmClient":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->clearLicenseDeleteHistory(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2815
    .end local v0    # "casDrmClient":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :catch_0
    move-exception v1

    .line 2816
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2817
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 2818
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2819
    throw v1
.end method

.method private deleteLicenseInfo(Ljava/lang/String;B)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # B

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2845
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 2847
    .local v0, "casdrm":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :try_start_0
    invoke-virtual {v0, p2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->removeLicenseInfo(BLjava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2871
    :goto_0
    return-void

    .line 2848
    :catch_0
    move-exception v1

    .line 2850
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 2861
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2864
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 2865
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2866
    throw v1
.end method

.method private deleteSchedule(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2716
    const/4 v1, 0x0

    .line 2718
    .local v1, "result":Z
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v2

    .line 2720
    .local v2, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcScheduleAll(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2721
    const/4 v1, 0x1

    .line 2736
    :goto_0
    return v1

    .line 2722
    :catch_0
    move-exception v0

    .line 2723
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2724
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2725
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2726
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 2727
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2728
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method private executeAutoDeletion(Ljava/lang/String;ZZZ)V
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aIsOpenPeriod"    # Z
    .param p3, "aIsValidLicense"    # Z
    .param p4, "aIsLicenseIssuePeriod"    # Z

    .prologue
    .line 3583
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 3586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3587
    .local v0, "contentToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3588
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentAuto(Ljava/util/List;I)Ljava/util/List;

    .line 3599
    .end local v0    # "contentToDelete":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 3589
    :cond_1
    if-nez p4, :cond_0

    .line 3592
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3593
    .local v1, "contentToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3594
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentAuto(Ljava/util/List;I)Ljava/util/List;

    goto :goto_0
.end method

.method private getAllContentsPeriodEnd()Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3035
    new-instance v21, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3036
    .local v21, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 3038
    .local v4, "downloadStatus":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    const/4 v6, 0x2

    if-ge v15, v6, :cond_5

    .line 3041
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v2

    .line 3044
    .local v2, "searchModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 3045
    .local v3, "target":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    const/4 v6, 0x2

    new-array v5, v6, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v6, 0x0

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v7, v5, v6

    .line 3050
    .local v5, "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "ja"

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v22

    .line 3053
    .local v22, "searchRet":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-nez v22, :cond_0

    .line 3057
    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 3038
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 3061
    :cond_0
    move-object/from16 v9, v22

    .local v9, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v9    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .local v17, "i$":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v11, v9, v17

    .line 3062
    .local v11, "content":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    const/4 v12, 0x0

    .line 3063
    .local v12, "crid":Ljava/lang/String;
    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 3064
    .local v20, "periodEnd":Ljava/lang/Long;
    iget-object v10, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v10, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_3
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v14, v10, v16

    .line 3065
    .local v14, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v7, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v6, v7, :cond_2

    .line 3066
    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    instance-of v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    if-eqz v6, :cond_1

    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v6, v7, :cond_1

    .line 3068
    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v12, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 3064
    :cond_1
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 3071
    :cond_2
    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v7, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v6, v7, :cond_1

    .line 3072
    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    instance-of v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    if-eqz v6, :cond_1

    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v6, v7, :cond_1

    .line 3074
    iget-object v6, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    iget-wide v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    goto :goto_4

    .line 3079
    .end local v14    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_3
    :try_start_0
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-interface {v0, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3061
    :goto_5
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_2

    .line 3080
    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :catch_0
    move-exception v13

    .line 3081
    .local v13, "e":Ljava/lang/UnsupportedOperationException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3082
    .end local v13    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v13

    .line 3083
    .local v13, "e":Ljava/lang/ClassCastException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3084
    .end local v13    # "e":Ljava/lang/ClassCastException;
    :catch_2
    move-exception v13

    .line 3085
    .local v13, "e":Ljava/lang/IllegalArgumentException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3086
    .end local v13    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v13

    .line 3087
    .local v13, "e":Ljava/lang/NullPointerException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 3090
    .end local v10    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v11    # "content":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v12    # "crid":Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/NullPointerException;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "periodEnd":Ljava/lang/Long;
    .restart local v17    # "i$":I
    :cond_4
    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    goto/16 :goto_1

    .line 3096
    .end local v2    # "searchModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .end local v3    # "target":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .end local v5    # "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .end local v17    # "i$":I
    .end local v22    # "searchRet":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_5
    return-object v21
.end method

.method private getCasLicenseInfoForAutoDeletion(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3118
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getEntityId(Ljava/lang/String;)B

    move-result v2

    .line 3122
    .local v2, "entityId":B
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 3124
    .local v0, "casDrmClient":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    .line 3125
    .local v3, "licenseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    iput-object p1, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 3130
    const/4 v4, 0x1

    :try_start_0
    new-array v4, v4, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {v0, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3150
    return-object v3

    .line 3131
    :catch_0
    move-exception v1

    .line 3132
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    .line 3140
    const-string v4, "Getlicense error[%s]"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3141
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v5, "Null license"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3143
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 3144
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v4, "%s"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3145
    throw v1
.end method

.method private getCridListFromScheduleData(Ljava/util/List;J)Ljava/util/List;
    .locals 6
    .param p2, "aCurrentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4155
    .local p1, "aScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4157
    .local v0, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 4174
    :cond_0
    return-object v0

    .line 4165
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 4166
    .local v2, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v3, 0x4

    iget v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    if-ne v3, v4, :cond_2

    iget-wide v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    cmp-long v3, p2, v4

    if-lez v3, :cond_2

    .line 4168
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getCridListFromSearchRecord([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Ljava/util/List;
    .locals 11
    .param p1, "aMetaList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4194
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4196
    .local v2, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 4228
    :cond_0
    return-object v2

    .line 4204
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v8, v0, v5

    .line 4205
    .local v8, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v8, :cond_2

    iget-object v9, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-nez v9, :cond_3

    .line 4204
    .end local v5    # "i$":I
    :cond_2
    :goto_1
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0

    .line 4211
    :cond_3
    iget-object v1, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v1, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v3, v1, v4

    .line 4212
    .local v3, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    if-eqz v3, :cond_4

    sget-object v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v10, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-eq v9, v10, :cond_5

    .line 4211
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4218
    :cond_5
    iget-object v9, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    instance-of v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    if-eqz v9, :cond_4

    iget-object v9, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 4220
    iget-object v9, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getInvalidScheduleList(Ljava/util/List;J)Ljava/util/Set;
    .locals 12
    .param p2, "aCurrentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;J)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "aScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 3620
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3622
    .local v3, "ignitedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3624
    .local v5, "unIgnitedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 3625
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 3626
    .local v4, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isAutoDeletionContinue()Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move-object v3, v6

    .line 3670
    .end local v3    # "ignitedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :goto_1
    return-object v3

    .line 3635
    .restart local v3    # "ignitedList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_1
    iget-wide v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    cmp-long v7, v8, p2

    if-lez v7, :cond_2

    .line 3641
    :try_start_0
    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3642
    :catch_0
    move-exception v1

    .line 3643
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v6

    .line 3647
    goto :goto_1

    .line 3655
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_1
    iget-object v7, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 3656
    :catch_1
    move-exception v1

    .line 3657
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "%s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v6

    .line 3661
    goto :goto_1

    .line 3666
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method private getLicenseIssueEnd([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)J
    .locals 10
    .param p1, "aLicenseList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    .prologue
    .line 3168
    const-wide/high16 v2, -0x8000000000000000L

    .line 3169
    .local v2, "issueEnd":J
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 3170
    .local v5, "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    if-eqz v5, :cond_0

    iget-object v8, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    if-eqz v8, :cond_0

    iget-object v8, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    if-nez v8, :cond_1

    .line 3169
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3174
    :cond_1
    iget-object v8, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v6, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    .line 3175
    .local v6, "tempIssueEnd":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v6

    if-nez v8, :cond_3

    .line 3176
    const-wide v2, 0x7fffffffffffffffL

    .line 3187
    .end local v5    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v6    # "tempIssueEnd":J
    :cond_2
    return-wide v2

    .line 3179
    .restart local v5    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v6    # "tempIssueEnd":J
    :cond_3
    cmp-long v8, v6, v2

    if-lez v8, :cond_0

    .line 3181
    move-wide v2, v6

    goto :goto_1
.end method

.method static getMmbFcContSvReturnType(I)I
    .locals 2
    .param p0, "aMwRet"    # I

    .prologue
    .line 3809
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->OK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_0

    .line 3810
    const/4 v0, 0x0

    .line 3825
    .local v0, "result":I
    :goto_0
    return v0

    .line 3811
    .end local v0    # "result":I
    :cond_0
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_1

    .line 3812
    const/4 v0, -0x1

    .restart local v0    # "result":I
    goto :goto_0

    .line 3813
    .end local v0    # "result":I
    :cond_1
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_2

    .line 3814
    const/4 v0, -0x2

    .restart local v0    # "result":I
    goto :goto_0

    .line 3815
    .end local v0    # "result":I
    :cond_2
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_3

    .line 3816
    const/4 v0, -0x3

    .restart local v0    # "result":I
    goto :goto_0

    .line 3817
    .end local v0    # "result":I
    :cond_3
    sget-object v1, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v1

    if-ne p0, v1, :cond_4

    .line 3818
    const/4 v0, -0x4

    .restart local v0    # "result":I
    goto :goto_0

    .line 3820
    .end local v0    # "result":I
    :cond_4
    const/4 v0, -0x5

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method private getValidityIntervalEnd([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)J
    .locals 10
    .param p1, "aLicenseList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    .prologue
    .line 3205
    const-wide/high16 v6, -0x8000000000000000L

    .line 3206
    .local v6, "validityIntervalEnd":J
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 3207
    .local v3, "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    if-eqz v3, :cond_0

    iget-object v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    if-nez v8, :cond_1

    .line 3206
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3210
    :cond_1
    iget-object v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-wide v4, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->validityIntervalEnd:J

    .line 3211
    .local v4, "tempIntervalEnd":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v4

    if-nez v8, :cond_3

    .line 3212
    const-wide v6, 0x7fffffffffffffffL

    .line 3223
    .end local v3    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v4    # "tempIntervalEnd":J
    :cond_2
    return-wide v6

    .line 3215
    .restart local v3    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v4    # "tempIntervalEnd":J
    :cond_3
    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    .line 3217
    move-wide v6, v4

    goto :goto_1
.end method

.method private isAutoDeletionContinue()Z
    .locals 1

    .prologue
    .line 4009
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mAutoDeletionContinue:Z

    .line 4013
    .local v0, "result":Z
    return v0
.end method

.method private isFcNoLimitLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)Z
    .locals 6
    .param p1, "aLicenseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    .prologue
    .line 3690
    const/4 v0, 0x0

    .line 3692
    .local v0, "result":Z
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmPeriodDate:Ljava/util/Date;

    if-nez v1, :cond_0

    const-wide/16 v2, 0x0

    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-wide v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmSpanSec:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3695
    const/4 v0, 0x1

    .line 3701
    :cond_0
    return v0
.end method

.method private isValidLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;J)Z
    .locals 10
    .param p1, "aLicenseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .param p2, "aCurrentTime"    # J

    .prologue
    .line 3375
    const/4 v6, 0x0

    .line 3377
    .local v6, "result":Z
    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-wide v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmSpanSec:J

    .line 3379
    .local v0, "canUseOffset":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 3381
    .local v2, "currentDate":Ljava/util/Date;
    invoke-direct {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isValidPeriod(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;Ljava/util/Date;)Z

    move-result v3

    .line 3383
    .local v3, "isValidPeriodRet":Z
    invoke-direct {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isValidSpan(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;Ljava/util/Date;)Z

    move-result v4

    .line 3385
    .local v4, "isValidSpanRet":Z
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isValidUseCount(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)Z

    move-result v5

    .line 3388
    .local v5, "isValidUseCountRet":Z
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 3390
    const/4 v6, 0x1

    .line 3404
    :cond_0
    :goto_0
    return v6

    .line 3391
    :cond_1
    if-nez v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 3395
    const-wide/16 v8, 0x0

    cmp-long v7, v8, v0

    if-eqz v7, :cond_0

    .line 3397
    const/4 v6, 0x1

    goto :goto_0
.end method

.method private isValidPeriod(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;Ljava/util/Date;)Z
    .locals 3
    .param p1, "aLicenseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .param p2, "aCurrentClock"    # Ljava/util/Date;

    .prologue
    .line 3244
    const/4 v1, 0x1

    .line 3246
    .local v1, "result":Z
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmPeriodDate:Ljava/util/Date;

    .line 3249
    .local v0, "licenseEnd":Ljava/util/Date;
    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3254
    const/4 v1, 0x0

    .line 3259
    :cond_0
    return v1
.end method

.method private isValidSpan(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;Ljava/util/Date;)Z
    .locals 12
    .param p1, "aLicenseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;
    .param p2, "aCurrentClock"    # Ljava/util/Date;

    .prologue
    .line 3280
    const/4 v1, 0x1

    .line 3282
    .local v1, "result":Z
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-wide v2, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmSpanSec:J

    .line 3283
    .local v2, "canUseOffset":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    move v4, v1

    .line 3313
    .end local v1    # "result":Z
    .local v4, "result":I
    :goto_0
    return v4

    .line 3291
    .end local v4    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseStartDate:Ljava/util/Date;

    if-nez v5, :cond_1

    move v4, v1

    .line 3295
    .restart local v4    # "result":I
    goto :goto_0

    .line 3298
    .end local v4    # "result":I
    :cond_1
    new-instance v0, Ljava/util/Date;

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseStartDate:Ljava/util/Date;

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget-wide v8, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmSpanSec:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 3303
    .local v0, "canUseEnd":Ljava/util/Date;
    invoke-virtual {p2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3308
    const/4 v1, 0x0

    :cond_2
    move v4, v1

    .line 3313
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method private isValidUseCount(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)Z
    .locals 5
    .param p1, "aLicenseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    .prologue
    .line 3333
    const/4 v0, 0x1

    .line 3335
    .local v0, "result":Z
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmRmpi:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;

    iget v3, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmRmpiInfoSv;->mmbCaCasDrmLimitCount:I

    .line 3336
    .local v3, "useCountLimit":I
    if-nez v3, :cond_0

    move v1, v0

    .line 3354
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 3343
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmUseSatate:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;

    iget v2, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUseStateInfoSv;->mmbCaCasDrmUseCount:I

    .line 3346
    .local v2, "useCount":I
    if-ge v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 3354
    .restart local v1    # "result":I
    goto :goto_0

    .line 3346
    .end local v1    # "result":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processDownloadConfliction(ILjava/lang/String;IZ)I
    .locals 2
    .param p1, "aConflictType"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aServiceId"    # I
    .param p4, "aIsManual"    # Z

    .prologue
    .line 2317
    const/4 v0, -0x1

    .line 2318
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 2344
    :goto_0
    :pswitch_0
    return v0

    .line 2321
    :pswitch_1
    const/16 v0, -0xd

    .line 2322
    goto :goto_0

    .line 2325
    :pswitch_2
    const/16 v0, -0x12

    .line 2326
    goto :goto_0

    .line 2328
    :pswitch_3
    const/16 v0, -0x2e

    .line 2330
    goto :goto_0

    .line 2333
    :pswitch_4
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelCurrentAndDownload(Ljava/lang/String;IZZ)I

    move-result v0

    .line 2334
    goto :goto_0

    .line 2337
    :pswitch_5
    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->cancelCurrentAndDownload(Ljava/lang/String;IZZ)I

    move-result v0

    .line 2338
    goto :goto_0

    .line 2318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method static processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V
    .locals 4
    .param p0, "aMwException"    # Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;

    .prologue
    const/4 v3, 0x0

    .line 2094
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcContMw$MmbFcContMwClient$MmbFcContMwReturnType:[I

    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;->getError()Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    move-result-object v1

    invoke-virtual {v1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2109
    const-string v0, "MW Unknown Error %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;->getError()Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2110
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v1, "MW Unknown Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2096
    :pswitch_0
    const-string v0, "MW Listener Error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2097
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "MW Listener Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :pswitch_1
    const-string v0, "MW Argument Error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2100
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "MW Argument Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2102
    :pswitch_2
    const-string v0, "MW Memory Error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2103
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v1, "MW Memory Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2105
    :pswitch_3
    const-string v0, "MW Other Error"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2106
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v1, "MW Other Error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static processMwReturn(I)I
    .locals 3
    .param p0, "aMwReturn"    # I

    .prologue
    const/4 v2, 0x0

    .line 2135
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2158
    const-string v1, "MW Unknown Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2159
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Unknown Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2138
    :pswitch_0
    const/4 v0, 0x0

    .line 2164
    .local v0, "result":I
    :goto_0
    return v0

    .line 2142
    .end local v0    # "result":I
    :pswitch_1
    const-string v1, "MW Listener Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    const/16 v0, -0x1c

    .line 2144
    .restart local v0    # "result":I
    goto :goto_0

    .line 2147
    .end local v0    # "result":I
    :pswitch_2
    const-string v1, "MW Argument Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    const/4 v0, -0x2

    .line 2149
    .restart local v0    # "result":I
    goto :goto_0

    .line 2151
    .end local v0    # "result":I
    :pswitch_3
    const-string v1, "MW Memory Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2152
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Memory Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2154
    :pswitch_4
    const-string v1, "MW Other Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2155
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Other Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2135
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static processMwReturnOtherFailed(I)I
    .locals 3
    .param p0, "aMwReturn"    # I

    .prologue
    const/4 v2, 0x0

    .line 2245
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2269
    const-string v1, "MW Unknown Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2270
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Unknown Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2248
    :pswitch_0
    const/4 v0, 0x0

    .line 2275
    .local v0, "result":I
    :goto_0
    return v0

    .line 2252
    .end local v0    # "result":I
    :pswitch_1
    const-string v1, "MW Listener Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2253
    const/16 v0, -0x1c

    .line 2254
    .restart local v0    # "result":I
    goto :goto_0

    .line 2257
    .end local v0    # "result":I
    :pswitch_2
    const-string v1, "MW Argument Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2258
    const/4 v0, -0x2

    .line 2259
    .restart local v0    # "result":I
    goto :goto_0

    .line 2261
    .end local v0    # "result":I
    :pswitch_3
    const-string v1, "MW Memory Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2262
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Memory Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2264
    :pswitch_4
    const-string v1, "MW Other Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2265
    const/4 v0, -0x1

    .line 2266
    .restart local v0    # "result":I
    goto :goto_0

    .line 2245
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static processMwReturnOtherIgnore(I)I
    .locals 3
    .param p0, "aMwReturn"    # I

    .prologue
    const/4 v2, 0x0

    .line 2189
    invoke-static {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2213
    const-string v1, "MW Unknown Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2214
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Unknown Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2192
    :pswitch_0
    const/4 v0, 0x0

    .line 2219
    .local v0, "result":I
    :goto_0
    return v0

    .line 2196
    .end local v0    # "result":I
    :pswitch_1
    const-string v1, "MW Listener Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2197
    const/16 v0, -0x1c

    .line 2198
    .restart local v0    # "result":I
    goto :goto_0

    .line 2201
    .end local v0    # "result":I
    :pswitch_2
    const-string v1, "MW Argument Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2202
    const/4 v0, -0x2

    .line 2203
    .restart local v0    # "result":I
    goto :goto_0

    .line 2205
    .end local v0    # "result":I
    :pswitch_3
    const-string v1, "MW Memory Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2206
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v2, "MW Memory Error"

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2208
    :pswitch_4
    const-string v1, "MW Other Error"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2209
    const/4 v0, 0x0

    .line 2210
    .restart local v0    # "result":I
    goto :goto_0

    .line 2189
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setAutoDeletionContinue(Z)V
    .locals 0
    .param p1, "aValue"    # Z

    .prologue
    .line 3991
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mAutoDeletionContinue:Z

    .line 3995
    return-void
.end method

.method private startNewDownload(Ljava/lang/String;IZ)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aServiceId"    # I
    .param p3, "aIsManual"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2413
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 2414
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v1

    .line 2420
    .local v1, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const-string v6, "[%s] MmbFcContMwClient startDownload Start"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2422
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v6, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->startDownload(Ljava/lang/String;)I

    move-result v3

    .line 2424
    .local v3, "mwRet":I
    const-string v6, "[%s] MmbFcContMwClient startDownload End"

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2429
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v2

    .line 2430
    .local v2, "downloadRet":I
    if-nez v2, :cond_0

    .line 2434
    const/4 v4, 0x0

    .line 2473
    .local v4, "result":I
    :goto_0
    return v4

    .line 2436
    .end local v4    # "result":I
    :cond_0
    const-string v6, "MMmbFcContMwClientW startDownload Error [%d]"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2438
    invoke-virtual {v1, p1, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 2441
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 2443
    const v5, 0xa900

    .line 2444
    .local v5, "type":I
    if-nez p3, :cond_1

    .line 2445
    const v5, 0xad00

    .line 2447
    :cond_1
    invoke-virtual {p0, v5, v9, p2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I

    .line 2448
    packed-switch v2, :pswitch_data_0

    .line 2466
    :pswitch_0
    const-string v6, "MW startdownload error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2467
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v7, "MW start download error"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2451
    :pswitch_1
    const-string v6, "MW Listener Error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2452
    const/16 v4, -0x1c

    .line 2453
    .restart local v4    # "result":I
    goto :goto_0

    .line 2456
    .end local v4    # "result":I
    :pswitch_2
    const-string v6, "MW Argument Error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2457
    const/4 v4, -0x2

    .line 2458
    .restart local v4    # "result":I
    goto :goto_0

    .line 2461
    .end local v4    # "result":I
    :pswitch_3
    const-string v6, "MW Other Error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2462
    const/4 v4, -0x1

    .line 2463
    .restart local v4    # "result":I
    goto :goto_0

    .line 2448
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method cancelAutoDeletion()V
    .locals 1

    .prologue
    .line 662
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setAutoDeletionContinue(Z)V

    .line 666
    return-void
.end method

.method cancelDeletion()V
    .locals 1

    .prologue
    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mDeletionContinueFlag:Z

    .line 690
    return-void
.end method

.method cancelDownload(Ljava/lang/String;)I
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v3, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->cancelDownload(Ljava/lang/String;)I

    move-result v2

    .line 530
    .local v2, "ret":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-result-object v0

    .line 532
    .local v0, "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->clearConflictStatus()V

    .line 537
    :cond_0
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturn(I)I

    move-result v1

    .line 542
    .local v1, "result":I
    return v1
.end method

.method checkContentVersion(Ljava/lang/String;)Z
    .locals 11
    .param p1, "aVersion"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1764
    const/4 v5, 0x1

    .line 1766
    .local v5, "result":Z
    if-nez p1, :cond_1

    .line 1769
    const-string p1, "1.0"

    .line 1773
    :goto_0
    const/4 v3, 0x0

    .line 1775
    .local v3, "mobileVersion":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getBaseVersion()Ljava/lang/String;

    move-result-object v3

    .line 1778
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Base:"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1781
    const-string v6, "\\."

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1782
    .local v4, "mobileVersions":[Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1785
    .local v0, "aVersions":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 1786
    array-length v6, v4

    if-lt v2, v6, :cond_2

    .line 1788
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lez v6, :cond_3

    .line 1789
    const/4 v5, 0x0

    .line 1810
    .end local v0    # "aVersions":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "mobileVersions":[Ljava/lang/String;
    :cond_0
    :goto_2
    return v5

    .line 1771
    .end local v3    # "mobileVersion":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Base:"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1792
    .restart local v0    # "aVersions":[Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "mobileVersion":Ljava/lang/String;
    .restart local v4    # "mobileVersions":[Ljava/lang/String;
    :cond_2
    :try_start_1
    aget-object v6, v0, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    if-le v6, v7, :cond_3

    .line 1795
    const/4 v5, 0x0

    .line 1796
    goto :goto_2

    .line 1785
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1799
    .end local v0    # "aVersions":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "mobileVersions":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1801
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1802
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1803
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 1804
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v1, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1805
    const/4 v5, 0x0

    goto :goto_2
.end method

.method closeClient()V
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->close()V

    .line 1743
    return-void
.end method

.method deleteContent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2662
    const/4 v1, 0x0

    .line 2666
    .local v1, "result":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->removeContents(Ljava/lang/String;)I

    move-result v0

    .line 2670
    .local v0, "mwRet":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2691
    const-string v2, "MW Unknown Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2692
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Unknown Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2672
    :pswitch_0
    const/4 v1, 0x1

    .line 2697
    :goto_0
    return v1

    .line 2676
    :pswitch_1
    const-string v2, "MW Listener Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2677
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v3, "MW Listener Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2680
    :pswitch_2
    const-string v2, "MW Argument Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2683
    :pswitch_3
    const-string v2, "MW Memory Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2684
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Memory Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2686
    :pswitch_4
    const-string v2, "MW Other Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2687
    const/4 v1, 0x0

    .line 2688
    goto :goto_0

    .line 2670
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method deleteContentAuto(Ljava/util/List;I)Ljava/util/List;
    .locals 14
    .param p2, "aType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1295
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 1297
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v1

    .line 1300
    .local v1, "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1301
    .local v8, "skipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1303
    .local v3, "crid":Ljava/lang/String;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isAutoDeletionContinue()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1304
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    .line 1307
    .local v2, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1309
    .local v9, "title":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isExportCompleted(Ljava/lang/String;)Z

    move-result v4

    .line 1311
    .local v4, "exported":Z
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentCommon(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1313
    const-string v10, "Failed and skipped deleting[%s]!"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1314
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1318
    :cond_1
    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->broadcastContentRemoved(Ljava/lang/String;)V

    .line 1321
    const/4 v6, 0x2

    .line 1322
    .local v6, "logCategory":I
    const/16 v7, 0x9

    .line 1323
    .local v7, "logReason":I
    packed-switch p2, :pswitch_data_0

    .line 1336
    const-string v10, "Unknown deleting reason!"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1326
    :pswitch_0
    const/4 v6, 0x2

    .line 1327
    const/16 v7, 0x9

    .line 1340
    :goto_1
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v10

    invoke-virtual {v10, v3, v9, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistoryForContentsDeletion(Ljava/lang/String;Ljava/lang/String;II)I

    .line 1342
    const-string v10, "DeleteContents CRID:%s Reason:%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1345
    if-eqz v4, :cond_0

    .line 1346
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceIndividualEventManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualEventManagerSv;->notifyIndividualDeletedAll(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1330
    :pswitch_1
    const/4 v6, 0x3

    .line 1331
    const/16 v7, 0xa

    .line 1332
    goto :goto_1

    .line 1357
    .end local v2    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v3    # "crid":Ljava/lang/String;
    .end local v4    # "exported":Z
    .end local v6    # "logCategory":I
    .end local v7    # "logReason":I
    .end local v9    # "title":Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    .line 1359
    const/4 v8, 0x0

    .line 1364
    :cond_3
    return-object v8

    .line 1323
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method deleteContentByCrid(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1246
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1247
    .local v2, "skipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1249
    .local v0, "crid":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mDeletionContinueFlag:Z

    if-nez v3, :cond_3

    .line 1259
    .end local v0    # "crid":Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1261
    const/4 v2, 0x0

    .line 1266
    :cond_2
    return-object v2

    .line 1253
    .restart local v0    # "crid":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentCommon(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1255
    const-string v3, "Failed to delete content and skip[%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1256
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method deleteContentCommon(Ljava/lang/String;)Z
    .locals 20
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2893
    const/4 v14, 0x1

    .line 2894
    .local v14, "result":Z
    const/4 v10, 0x0

    .line 2895
    .local v10, "isExistLicense":Z
    const/4 v5, -0x1

    .line 2899
    .local v5, "entityId":B
    const/16 v17, -0x15

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 2901
    const-string v17, "State Error"

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2902
    const/4 v14, 0x0

    move v15, v14

    .line 3013
    .end local v14    # "result":Z
    .local v15, "result":I
    :goto_0
    return v15

    .line 2908
    .end local v15    # "result":I
    .restart local v14    # "result":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v6

    .line 2910
    .local v6, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->isComplementFdt(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 2911
    const-string v17, "State Error(Complement FDT now) [%s]"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2912
    const/4 v14, 0x0

    move v15, v14

    .line 2916
    .restart local v15    # "result":I
    goto :goto_0

    .line 2918
    .end local v6    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v15    # "result":I
    :catch_0
    move-exception v4

    .line 2919
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2920
    const/4 v14, 0x0

    move v15, v14

    .line 2924
    .restart local v15    # "result":I
    goto :goto_0

    .line 2927
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v15    # "result":I
    .restart local v6    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    :cond_1
    const/4 v13, 0x0

    .line 2929
    .local v13, "licenseList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getLicenseInfo(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v13

    .line 2940
    if-eqz v13, :cond_2

    .line 2941
    move-object v2, v13

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v11, :cond_2

    aget-object v12, v2, v7

    .line 2942
    .local v12, "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    iget-object v0, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->crid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2944
    iget-object v0, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->mainId:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    int-to-byte v5, v0

    .line 2945
    const/4 v10, 0x1

    .line 2951
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_2
    const/4 v9, 0x0

    .line 2953
    .local v9, "isEncrypt":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    .line 2955
    .local v3, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isEncrypted(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v9

    .line 2968
    const/4 v8, 0x0

    .line 2970
    .local v8, "isContentExist":Z
    :try_start_3
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v16

    .line 2971
    .local v16, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    const/16 v17, 0x33

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v17, 0x35

    move-object/from16 v0, v16

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    move/from16 v18, v0
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_3 .. :try_end_3} :catch_6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 2973
    :cond_3
    const/4 v8, 0x1

    .line 2983
    :cond_4
    if-eqz v8, :cond_6

    .line 2985
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContent(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2986
    const/4 v14, 0x0

    move v15, v14

    .line 2990
    .restart local v15    # "result":I
    goto/16 :goto_0

    .line 2930
    .end local v3    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v8    # "isContentExist":Z
    .end local v9    # "isEncrypt":Z
    .end local v15    # "result":I
    .end local v16    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :catch_1
    move-exception v4

    .line 2931
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2932
    const/4 v14, 0x0

    move v15, v14

    .line 2936
    .restart local v15    # "result":I
    goto/16 :goto_0

    .line 2941
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v15    # "result":I
    .restart local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v7    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2956
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v7    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "license":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v9    # "isEncrypt":Z
    :catch_2
    move-exception v4

    .line 2957
    .restart local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2958
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 2959
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v4

    .line 2960
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2961
    throw v4

    .line 2962
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v4

    .line 2963
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2964
    throw v4

    .line 2975
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v3    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v8    # "isContentExist":Z
    :catch_5
    move-exception v4

    .line 2976
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2977
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 2978
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_6
    move-exception v4

    .line 2979
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2980
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v17

    .line 2993
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .restart local v16    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :cond_6
    const/4 v14, 0x0

    .line 2997
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteSchedule(Ljava/lang/String;)Z

    .line 3000
    if-eqz v9, :cond_8

    if-eqz v10, :cond_8

    .line 3002
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteLicenseHistory(Ljava/lang/String;)V

    .line 3004
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteCridInfo(Ljava/lang/String;B)V

    .line 3007
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteLicenseInfo(Ljava/lang/String;B)V

    :cond_8
    move v15, v14

    .line 3013
    .restart local v15    # "result":I
    goto/16 :goto_0
.end method

.method deleteDeficientContents(Ljava/util/List;J)V
    .locals 26
    .param p2, "aCurrentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 4037
    .local p1, "aScheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 4132
    :cond_0
    :goto_0
    return-void

    .line 4044
    :cond_1
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 4045
    .local v24, "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4047
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v21

    .line 4048
    .local v21, "fcContentsModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v14, 0x0

    .line 4049
    .local v14, "accumulatedList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    const/16 v18, 0x0

    .line 4052
    .local v18, "deficientList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 4053
    .local v5, "target":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    const/4 v6, 0x1

    new-array v7, v6, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v6, 0x0

    sget-object v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v8, v7, v6

    .line 4055
    .local v7, "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    invoke-virtual/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v4

    .line 4056
    .local v4, "fcContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    sget-object v6, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v14

    .line 4062
    sget-object v6, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v18

    .line 4069
    const/16 v23, 0x0

    .line 4070
    .local v23, "scheduleCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getCridListFromScheduleData(Ljava/util/List;J)Ljava/util/List;

    move-result-object v23

    .line 4071
    const/4 v13, 0x0

    .line 4072
    .local v13, "accumulatedCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v14, :cond_2

    .line 4073
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getCridListFromSearchRecord([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Ljava/util/List;

    move-result-object v13

    .line 4074
    move-object/from16 v0, v23

    invoke-interface {v0, v13}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4076
    :cond_2
    const/16 v17, 0x0

    .line 4077
    .local v17, "deficientCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_3

    .line 4078
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getCridListFromSearchRecord([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Ljava/util/List;

    move-result-object v17

    .line 4079
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 4083
    :cond_3
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 4084
    .local v19, "deleteCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v25

    .line 4085
    .local v25, "siMetadataController":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 4086
    .local v16, "crid":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isAutoDeletionContinue()Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v6

    if-eqz v6, :cond_0

    .line 4097
    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_1
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v15

    .line 4099
    .local v15, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    if-nez v15, :cond_4

    .line 4100
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 4102
    .end local v15    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :catch_0
    move-exception v20

    .line 4103
    .local v20, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_2
    const-string v6, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    invoke-static {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 4109
    .end local v4    # "fcContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .end local v5    # "target":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .end local v7    # "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .end local v13    # "accumulatedCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "crid":Ljava/lang/String;
    .end local v17    # "deficientCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "deleteCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "scheduleCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "siMetadataController":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :catch_1
    move-exception v20

    .line 4110
    .restart local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    invoke-static {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4108
    .end local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v4    # "fcContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .restart local v5    # "target":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .restart local v7    # "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .restart local v13    # "accumulatedCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "deficientCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "deleteCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "i$":Ljava/util/Iterator;
    .restart local v23    # "scheduleCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "siMetadataController":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_5
    const/4 v6, -0x1

    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentAuto(Ljava/util/List;I)Ljava/util/List;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_6

    goto/16 :goto_0

    .line 4112
    .end local v4    # "fcContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .end local v5    # "target":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .end local v7    # "fields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .end local v13    # "accumulatedCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "deficientCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "deleteCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "i$":Ljava/util/Iterator;
    .end local v23    # "scheduleCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "siMetadataController":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :catch_2
    move-exception v20

    .line 4113
    .local v20, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v6, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    invoke-static {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4115
    .end local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_3
    move-exception v20

    .line 4116
    .local v20, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v6, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v20, v8, v9

    invoke-static {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4118
    .end local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v20

    .line 4119
    .local v20, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4120
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v6

    .line 4121
    .end local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_5
    move-exception v20

    .line 4122
    .local v20, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4123
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v6

    .line 4124
    .end local v20    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_6
    move-exception v20

    .line 4125
    .local v20, "err":Ljava/lang/UnsupportedOperationException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method deleteIndivContents(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4407
    const/4 v0, 0x0

    .line 4411
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v1, p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->deleteExportFile(Ljava/lang/String;)Z

    move-result v0

    .line 4416
    if-nez v0, :cond_0

    .line 4417
    const-string v1, "Failed to delete individual contents file."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4422
    :cond_0
    return v0
.end method

.method deleteInvalidSchedule()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 3721
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    .line 3724
    .local v3, "fcContentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v7, 0x0

    .line 3725
    .local v7, "scheduleList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/16 v9, 0x2014

    invoke-virtual {v3, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getScheduleList(I)Ljava/util/List;

    move-result-object v7

    .line 3731
    const-wide/16 v10, 0x0

    .line 3734
    .local v10, "time":J
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 3741
    invoke-virtual {p0, v7, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteDeficientContents(Ljava/util/List;J)V

    .line 3743
    invoke-direct {p0, v7, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getInvalidScheduleList(Ljava/util/List;J)Ljava/util/Set;

    move-result-object v4

    .line 3744
    .local v4, "ignitedSchedule":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v4, :cond_1

    .line 3794
    .end local v4    # "ignitedSchedule":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 3735
    :catch_0
    move-exception v2

    .line 3736
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v9, "%s"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v2, v12, v13

    invoke-static {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3751
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v4    # "ignitedSchedule":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 3752
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 3753
    .local v6, "ite":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3754
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isAutoDeletionContinue()Z

    move-result v9

    if-nez v9, :cond_4

    .line 3756
    :cond_3
    const-string v9, "Stop Auto Operation."

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3759
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3764
    .local v1, "crid":Ljava/lang/String;
    const/4 v5, 0x1

    .line 3765
    .local v5, "isContentExist":Z
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v8

    .line 3767
    .local v8, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    const/16 v9, 0x38

    :try_start_1
    iget v12, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-ne v9, v12, :cond_6

    .line 3768
    const/4 v5, 0x0

    .line 3783
    :cond_5
    :goto_2
    if-nez v5, :cond_2

    .line 3785
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteSchedule(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 3769
    :cond_6
    const/16 v9, 0x33

    :try_start_2
    iget v12, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    if-ne v9, v12, :cond_5

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isDownloaded(Ljava/lang/String;)Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    if-nez v9, :cond_5

    .line 3771
    const/4 v5, 0x0

    goto :goto_2

    .line 3773
    :catch_1
    move-exception v2

    .line 3774
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v9, "%s"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v2, v12, v13

    invoke-static {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3776
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v2

    .line 3777
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v9, "%s"

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v2, v12, v13

    invoke-static {v9, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method executeApk(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z

    .prologue
    .line 1861
    const/4 v0, 0x0

    .line 1867
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v1, p1, p2, p3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->startExport(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1871
    if-nez v0, :cond_0

    .line 1872
    const-string v1, "Failed to execute apk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1877
    :cond_0
    return v0
.end method

.method executeIndivContents(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPath"    # Ljava/lang/String;
    .param p3, "aIsRewrite"    # Z

    .prologue
    const/4 v3, 0x0

    .line 4256
    const/4 v1, 0x0

    .line 4262
    .local v1, "result":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v2, p1, p2, p3}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->startExportAll(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 4266
    .local v0, "mwRet":I
    packed-switch v0, :pswitch_data_0

    .line 4279
    const/4 v1, -0x1

    .line 4280
    const-string v2, "MW Unknown Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4286
    :goto_0
    return v1

    .line 4268
    :pswitch_0
    const/4 v1, 0x0

    .line 4269
    goto :goto_0

    .line 4271
    :pswitch_1
    const/4 v1, -0x1

    .line 4272
    const-string v2, "Failed to export individual contents."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4275
    :pswitch_2
    const/16 v1, -0x13

    .line 4276
    const-string v2, "Failed to export due to excess requests."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4266
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getBaseVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1960
    const/4 v1, 0x0

    .line 1965
    .local v1, "mobileVersion":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-virtual {v2}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1976
    return-object v1

    .line 1969
    :catch_0
    move-exception v0

    .line 1970
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1971
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method getBroadcastSameTransact()I
    .locals 2

    .prologue
    .line 1929
    const/4 v0, 0x0

    .line 1933
    .local v0, "result":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-virtual {v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getBroadcastSameTransact()I

    move-result v0

    .line 1941
    return v0
.end method

.method getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aIsTranslated"    # Z
    .param p3, "aLang"    # Ljava/lang/String;

    .prologue
    .line 836
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;-><init>()V

    .line 841
    .local v0, "contentdetails":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1, p2, p3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getContentsDetail(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-result-object v2

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    return-object v0

    .line 846
    :catch_0
    move-exception v1

    .line 848
    .local v1, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 880
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;-><init>()V

    .line 885
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v3, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getDownloadProgress(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-result-object v2

    .line 889
    .local v2, "status":Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbCrid:Ljava/lang/String;

    .line 890
    iget v3, v2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contProgress:I

    iput v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    .line 891
    iget v3, v2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contSize:I

    iput v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbSize:I

    .line 892
    iget-object v3, v2, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getMmbFcContSvDownloadStatus(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)I

    move-result v3

    iput v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .end local v2    # "status":Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;
    :goto_0
    return-object v1

    .line 893
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method getFdtInstanceState(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1601
    const/4 v1, 0x0

    .line 1606
    .local v1, "fdtState":Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getFdtInstanceState(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1618
    :goto_0
    return-object v1

    .line 1610
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method getIndividualAcceptableCount()I
    .locals 2

    .prologue
    .line 4441
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->getAcceptableCount()I

    move-result v0

    .line 4446
    .local v0, "result":I
    return v0
.end method

.method getLicenseInfo(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1478
    const/4 v1, 0x0

    .line 1483
    .local v1, "licenseInfoList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1494
    :goto_0
    return-object v1

    .line 1487
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aVersion"    # Ljava/lang/String;

    .prologue
    .line 2001
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMmbFcMfestMw:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;->getFirstType(Ljava/lang/String;Ljava/lang/String;)Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;

    move-result-object v1

    .line 2005
    .local v1, "ret":Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;
    const/16 v0, 0x15

    .line 2006
    .local v0, "manifestoFirstInfo":I
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv$1;->$SwitchMap$mmb$android$MmbFcMfestMw$MmbFcMfestMw$MmbContentType:[I

    invoke-virtual {v1}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw$MmbContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2036
    const-string v2, "Manifest accquire error result[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2037
    const/16 v0, 0x18

    .line 2042
    :goto_0
    return v0

    .line 2008
    :pswitch_0
    const/16 v0, 0x15

    .line 2009
    goto :goto_0

    .line 2011
    :pswitch_1
    const/16 v0, 0x16

    .line 2012
    goto :goto_0

    .line 2014
    :pswitch_2
    const/16 v0, 0x17

    .line 2015
    goto :goto_0

    .line 2017
    :pswitch_3
    const/16 v0, 0x19

    .line 2018
    goto :goto_0

    .line 2020
    :pswitch_4
    const/16 v0, 0x1a

    .line 2021
    goto :goto_0

    .line 2023
    :pswitch_5
    const/16 v0, 0x1b

    .line 2024
    goto :goto_0

    .line 2026
    :pswitch_6
    const/16 v0, 0x1c

    .line 2027
    goto :goto_0

    .line 2029
    :pswitch_7
    const/16 v0, 0x1d

    .line 2030
    goto :goto_0

    .line 2032
    :pswitch_8
    const/16 v0, 0x1e

    .line 2033
    goto :goto_0

    .line 2006
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method getMissingPartsInfo(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1065
    const/4 v1, 0x0

    .line 1072
    .local v1, "repairinfo":Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getRepairInformation(Ljava/lang/String;)Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1083
    :goto_0
    return-object v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1078
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method getPurchaseInfo(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 1522
    const/4 v1, 0x0

    .line 1528
    .local v1, "purchaseInfo":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1, p2, p3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1540
    :goto_0
    return-object v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1535
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method getThumbnailData(Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aUri"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1427
    const/4 v1, 0x0

    .line 1428
    .local v1, "ret":Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;-><init>()V

    .line 1433
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->startExportThumbnail(Ljava/lang/String;Ljava/lang/String;)Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;

    move-result-object v1

    .line 1443
    sget-object v2, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;->ENDVALUE_COMPLETE:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    iget-object v3, v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;->mmbReturnValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;

    iget-object v3, v3, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd;->mmbEndValue:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwNoticeEnd$MmbFcIndivdMwEndValue;

    if-ne v2, v3, :cond_0

    .line 1444
    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 1445
    iget-object v2, v1, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwData;->mmbData:[B

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    .line 1455
    :goto_0
    return-object v0

    .line 1448
    :cond_0
    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 1449
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    goto :goto_0
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-direct {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v0}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMoInfoMw:Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    if-nez v0, :cond_2

    .line 248
    new-instance v0, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-direct {v0}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMmbFcMfestMw:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

    if-nez v0, :cond_3

    .line 255
    new-instance v0, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

    invoke-direct {v0}, Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMmbFcMfestMw:Lmmb/android/MmbFcMfestMw/MmbFcMfestMw;

    .line 260
    :cond_3
    return-void
.end method

.method isDownloaded(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 984
    const/4 v1, 0x0

    .line 990
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isDownloaded(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1001
    :goto_0
    return v1

    .line 994
    :catch_0
    move-exception v0

    .line 996
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method isExportCompleted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3850
    const/4 v1, 0x0

    .line 3855
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isExportCompleted(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3866
    :goto_0
    return v1

    .line 3859
    :catch_0
    move-exception v0

    .line 3861
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method isPlaybacked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1025
    const/4 v1, 0x0

    .line 1031
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->isPlayed(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmmb/android/MmbFcContMw/MmbFcContMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1042
    :goto_0
    return v1

    .line 1035
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwException(Lmmb/android/MmbFcContMw/MmbFcContMwReturnException;)V

    goto :goto_0
.end method

.method notifyFdtInstanceSaveCompleted(Ljava/lang/String;)I
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1700
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->entryFdtInstance(Ljava/lang/String;)I

    move-result v0

    .line 1706
    .local v0, "mwRet":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturnOtherFailed(I)I

    move-result v1

    .line 1711
    .local v1, "result":I
    return v1
.end method

.method notifyIndividualExecutionFinish(Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 4345
    const/4 v1, 0x0

    .line 4346
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 4351
    .local v0, "mwRet":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->exportComplete(Ljava/lang/String;Z)I

    move-result v0

    .line 4356
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v2

    .line 4357
    .local v2, "svRetType":I
    if-nez v2, :cond_0

    .line 4361
    const/4 v1, 0x1

    .line 4387
    :goto_0
    return v1

    .line 4363
    :cond_0
    packed-switch v2, :pswitch_data_0

    .line 4379
    const-string v3, "MW Unknown Error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4380
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "MW Unknown Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4365
    :pswitch_0
    const-string v3, "MW Listener Error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4366
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    const-string v4, "MW Listener Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4368
    :pswitch_1
    const-string v3, "MW Argument Error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4369
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "MW Argument Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4371
    :pswitch_2
    const-string v3, "MW Memory Error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4372
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v4, "MW Memory Error"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4375
    :pswitch_3
    const-string v3, "MW Other Error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4376
    const/4 v1, 0x0

    .line 4377
    goto :goto_0

    .line 4363
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method notifyMediaMount()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v0}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->receiveMountState()V

    .line 2073
    return-void
.end method

.method notifyRepairCompleted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aLocation"    # Ljava/lang/String;

    .prologue
    .line 1212
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->completeAllRepair(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1218
    .local v0, "mwRet":I
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturn(I)I

    move-result v1

    .line 1223
    .local v1, "result":I
    return v1
.end method

.method registerApkStateListener(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;

    .prologue
    .line 1833
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->registListener(Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMwListener;)V

    .line 1840
    return-void
.end method

.method registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I
    .locals 4
    .param p1, "aListener"    # Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->registListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v1

    .line 289
    .local v1, "ret":I
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 307
    const-string v2, "MW Unknown Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Unknown Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    :pswitch_0
    const/4 v0, 0x0

    .line 313
    .local v0, "result":I
    :goto_0
    return v0

    .line 294
    .end local v0    # "result":I
    :pswitch_1
    const-string v2, "MW Listener Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Listener Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :pswitch_2
    const-string v2, "MW Argument Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    const/4 v0, -0x2

    .line 299
    .restart local v0    # "result":I
    goto :goto_0

    .line 301
    .end local v0    # "result":I
    :pswitch_3
    const-string v2, "MW Memory Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Memory Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 304
    :pswitch_4
    const-string v2, "MW Other Error"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v3, "MW Other Error"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method saveFdtInstanceData(Ljava/lang/String;[BZ)I
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aData"    # [B
    .param p3, "aFirst"    # Z

    .prologue
    .line 1652
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v2, p1, p2, p3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->acceptFdtInstance(Ljava/lang/String;[BZ)I

    move-result v0

    .line 1657
    .local v0, "mwRet":I
    const/4 v1, 0x0

    .line 1658
    .local v1, "result":I
    sget-object v2, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->ERROR_GENERAL:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;

    invoke-virtual {v2}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwReturnType;->getInt()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 1660
    const/16 v1, -0xa

    .line 1669
    :goto_0
    return v1

    .line 1663
    :cond_0
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturnOtherFailed(I)I

    move-result v1

    goto :goto_0
.end method

.method saveLossBlockData(Ljava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[BZ)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aRepairParts"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .param p3, "aData"    # [B
    .param p4, "aIsCompleteOnly"    # Z

    .prologue
    .line 1115
    const/4 v1, 0x0

    .line 1116
    .local v1, "mwRet":I
    const/4 v3, 0x0

    .line 1118
    .local v3, "retryCount":I
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    .line 1124
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mContClientMw:Lmmb/android/MmbFcContMw/MmbFcContMwClient;

    invoke-virtual {v4, p1, p2, p3, p4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient;->acceptRepairData(Ljava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;[BZ)I

    move-result v1

    .line 1130
    const/4 v4, -0x3

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getMmbFcContSvReturnType(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1143
    :cond_0
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processMwReturn(I)I

    move-result v2

    .line 1148
    .local v2, "result":I
    return v2

    .line 1136
    .end local v2    # "result":I
    :cond_1
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method setConflictStatus(IZILjava/lang/String;)I
    .locals 7
    .param p1, "aServiceType"    # I
    .param p2, "aServiceStatus"    # Z
    .param p3, "aServiceId"    # I
    .param p4, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3951
    const/4 v2, 0x0

    .line 3953
    .local v2, "lRet":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->usedServiceIdMap:Ljava/util/Map;

    monitor-enter v4

    .line 3954
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 3956
    .local v0, "conflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    if-eqz p2, :cond_1

    .line 3957
    invoke-virtual {v0, p1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I

    move-result v2

    .line 3958
    if-nez v2, :cond_0

    .line 3959
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->usedServiceIdMap:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3970
    :cond_0
    :goto_0
    monitor-exit v4

    .line 3976
    return v2

    .line 3963
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->usedServiceIdMap:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3964
    .local v1, "getKey":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 3965
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 3966
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->usedServiceIdMap:Ljava/util/Map;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3967
    invoke-virtual {v0, p1, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    goto :goto_0

    .line 3970
    .end local v0    # "conflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v1    # "getKey":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method startAutoDeletion()V
    .locals 18

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v14

    .line 575
    .local v14, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v10

    .line 577
    .local v10, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    .line 580
    .local v8, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkBattery()Z

    move-result v2

    if-nez v2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setAutoDeletionContinue(Z)V

    .line 592
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getAllContentsPeriodEnd()Ljava/util/Map;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 610
    .local v9, "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_1
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v6

    .line 617
    .local v6, "currentTime":J
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 619
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->isAutoDeletionContinue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 620
    :cond_2
    const-string v2, "Stop Auto Operation."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v2, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 593
    .end local v6    # "currentTime":J
    .end local v9    # "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 594
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v2, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 599
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v11

    .line 600
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v2, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 611
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .restart local v9    # "contentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_2
    move-exception v11

    .line 612
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v2, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v2, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 624
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v6    # "currentTime":J
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 626
    .local v3, "crid":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 627
    .local v4, "periodEnd":J
    const-wide/16 v16, 0x0

    cmp-long v2, v16, v4

    if-nez v2, :cond_4

    .line 628
    const-wide v4, 0x7fffffffffffffffL

    :cond_4
    move-object/from16 v2, p0

    .line 633
    :try_start_2
    invoke-direct/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->checkAndDeleteContent(Ljava/lang/String;JJ)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 634
    :catch_3
    move-exception v11

    .line 635
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v2, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v11, v15, v16

    invoke-static {v2, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method declared-synchronized startDownload(Ljava/lang/String;I)I
    .locals 24
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 350
    monitor-enter p0

    const/4 v15, -0x1

    .line 351
    .local v15, "result":I
    const/4 v13, 0x1

    .line 353
    .local v13, "isManual":Z
    const v18, 0xa900

    .line 354
    .local v18, "serviceType":I
    const/16 v19, 0x1

    .line 355
    .local v19, "state":I
    const/16 v20, 0xb

    move/from16 v0, v20

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 356
    const/4 v13, 0x0

    .line 357
    const v18, 0xad00

    .line 358
    const/16 v19, 0x2

    .line 361
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    .line 362
    .local v6, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v7

    .line 363
    .local v7, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 366
    .local v8, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCompatibility(Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v20

    if-nez v20, :cond_1

    .line 367
    const/16 v15, -0x1b

    move/from16 v16, v15

    .line 452
    .end local v15    # "result":I
    .local v16, "result":I
    :goto_0
    monitor-exit p0

    return v16

    .line 374
    .end local v16    # "result":I
    .restart local v15    # "result":I
    :cond_1
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getServiceIdFromMetadata(Ljava/lang/String;)I

    move-result v17

    .line 375
    .local v17, "serviceId":I
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    .line 376
    .local v5, "conflictRet":I
    const/4 v14, 0x0

    .line 377
    .local v14, "multiple":Z
    if-nez v5, :cond_2

    .line 379
    :try_start_3
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->canMoreDownloading(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v20

    if-nez v20, :cond_2

    .line 380
    const/4 v5, 0x2

    .line 387
    :cond_2
    :goto_1
    if-eqz v14, :cond_4

    .line 389
    :try_start_4
    const-string v20, "ignore multiple downloading."

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v5    # "conflictRet":I
    .end local v14    # "multiple":Z
    .end local v17    # "serviceId":I
    :cond_3
    :goto_2
    move/from16 v16, v15

    .line 452
    .end local v15    # "result":I
    .restart local v16    # "result":I
    goto :goto_0

    .line 382
    .end local v16    # "result":I
    .restart local v5    # "conflictRet":I
    .restart local v14    # "multiple":Z
    .restart local v15    # "result":I
    .restart local v17    # "serviceId":I
    :catch_0
    move-exception v11

    .line 383
    .local v11, "err":Ljava/lang/IllegalStateException;
    const/4 v14, 0x1

    goto :goto_1

    .line 390
    .end local v11    # "err":Ljava/lang/IllegalStateException;
    :cond_4
    if-nez v5, :cond_6

    .line 391
    iget-object v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 393
    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v9

    .line 394
    .local v9, "downloadState":I
    const/16 v20, -0x15

    move/from16 v0, v20

    if-eq v9, v0, :cond_5

    .line 396
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v17

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I

    .line 400
    monitor-exit v21

    move/from16 v16, v15

    .end local v15    # "result":I
    .restart local v16    # "result":I
    goto :goto_0

    .line 404
    .end local v16    # "result":I
    .restart local v15    # "result":I
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkLastBroadcastFromSchedule(Ljava/lang/String;)I

    move-result v12

    .line 411
    .local v12, "isLastBradcast":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerLastSchduleStateMap(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerDownloadContentState(Ljava/lang/String;I)I

    .line 415
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 417
    monitor-exit v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 419
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->entryContents(Ljava/lang/String;)V

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->startNewDownload(Ljava/lang/String;IZ)I

    move-result v15

    .line 423
    if-nez v15, :cond_3

    .line 424
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignDownloadingCrid(Ljava/lang/String;)Z
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 434
    .end local v5    # "conflictRet":I
    .end local v9    # "downloadState":I
    .end local v12    # "isLastBradcast":I
    .end local v14    # "multiple":Z
    .end local v17    # "serviceId":I
    :catch_1
    move-exception v10

    .line 436
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_7
    const-string v20, "%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 437
    const/4 v15, -0x2

    .line 447
    goto :goto_2

    .line 417
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v5    # "conflictRet":I
    .restart local v14    # "multiple":Z
    .restart local v17    # "serviceId":I
    :catchall_0
    move-exception v20

    :try_start_8
    monitor-exit v21
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v20
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 438
    .end local v5    # "conflictRet":I
    .end local v14    # "multiple":Z
    .end local v17    # "serviceId":I
    :catch_2
    move-exception v10

    .line 440
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :try_start_a
    const-string v20, "%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 441
    const/16 v15, -0x2e

    .line 447
    goto/16 :goto_2

    .line 427
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .restart local v5    # "conflictRet":I
    .restart local v14    # "multiple":Z
    .restart local v17    # "serviceId":I
    :cond_6
    :try_start_b
    const-string v20, "conflictRet:%d"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v5, v1, v2, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->processDownloadConfliction(ILjava/lang/String;IZ)I

    move-result v15

    .line 430
    if-nez v15, :cond_3

    .line 431
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->assignDownloadingCrid(Ljava/lang/String;)Z
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 442
    .end local v5    # "conflictRet":I
    .end local v14    # "multiple":Z
    .end local v17    # "serviceId":I
    :catch_3
    move-exception v10

    .line 444
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_c
    const-string v20, "%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_2

    .line 350
    .end local v6    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v7    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v8    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catchall_1
    move-exception v20

    monitor-exit p0

    throw v20

    .line 445
    .restart local v6    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v7    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v8    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :catch_4
    move-exception v10

    .line 446
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :try_start_d
    const-string v20, "%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v10, v21, v22

    invoke-static/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2
.end method

.method terminateApk()Z
    .locals 3

    .prologue
    .line 1896
    const/4 v0, 0x0

    .line 1901
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->cancelExport()Z

    move-result v0

    .line 1905
    if-nez v0, :cond_0

    .line 1906
    const-string v1, "Failed to terminate apk execution"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1911
    :cond_0
    return v0
.end method

.method terminateIndivContents(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 4306
    const/4 v0, 0x0

    .line 4310
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->mFcInidvdMw:Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;

    invoke-virtual {v1, p1}, Lmmb/android/MmbFcIndivdMw/MmbFcIndivdMw;->cancelExport(Ljava/lang/String;)Z

    move-result v0

    .line 4314
    if-nez v0, :cond_0

    .line 4315
    const-string v1, "Failed to request to cancel exporting."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4320
    :cond_0
    return v0
.end method
