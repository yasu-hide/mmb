.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;
.super Ljava/lang/Object;
.source "MmbFcDownloadEventListenerSv.java"

# interfaces
.implements Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;


# instance fields
.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 80
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 81
    return-void
.end method

.method private notifyDownloadState(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I

    .prologue
    .line 816
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v1, :cond_0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    invoke-interface {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onDownloadStateChange(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 820
    :catch_0
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onDownloadEnd(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;)V
    .locals 22
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    .prologue
    .line 627
    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v18, v0

    sget-object v19, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v19 .. v19}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 628
    const-string v18, "onDownloadEnd crid:%s Reason:%d"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 631
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 632
    .local v4, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v7

    .line 633
    .local v7, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v5

    .line 634
    .local v5, "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v8

    .line 635
    .local v8, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentRetry()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;

    move-result-object v6

    .line 638
    .local v6, "contentRetry":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;
    const/16 v16, 0x21

    .line 640
    .local v16, "state":I
    const/4 v10, 0x0

    .line 642
    .local v10, "downloadResult":I
    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_OUTOF_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 645
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->removeRetryDownloadContentCount(Ljava/lang/String;)I

    .line 648
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v11

    .line 649
    .local v11, "downloadState":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v11, :cond_2

    const/4 v15, 0x1

    .line 652
    .local v15, "isManual":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-result-object v3

    .line 655
    .local v3, "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 661
    if-eqz v3, :cond_3

    .line 663
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_1
    const/16 v16, 0x22

    .line 728
    :goto_2
    packed-switch v10, :pswitch_data_0

    .line 748
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeLastSchduleStateMap(Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->notifyDownloadState(Ljava/lang/String;I)V

    .line 755
    return-void

    .line 649
    .end local v3    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    .end local v15    # "isManual":Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    .line 664
    .restart local v3    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    .restart local v15    # "isManual":Z
    :catch_0
    move-exception v12

    .line 665
    .local v12, "e":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 668
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v18, "cancelDownloadTermination null"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 671
    :cond_4
    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_INTERRUPTION:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 673
    const-string v18, "Broadcast plan changed.[%s]"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->removeConflictionState(Ljava/lang/String;Z)V

    .line 678
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->executeTaskUpdateProgramInformation(Ljava/lang/String;)V

    goto :goto_2

    .line 683
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 686
    iget-object v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 688
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 689
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 693
    .local v17, "stateList":[I
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v9

    .line 694
    .local v9, "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_6

    .line 695
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifySignalLevelOff()V

    .line 697
    :cond_6
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->removeConflictionState(Ljava/lang/String;Z)V

    .line 702
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseDownloadingCrid(Ljava/lang/String;)V

    .line 704
    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 707
    const/16 v16, 0x20

    .line 710
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_2

    .line 697
    .end local v9    # "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "stateList":[I
    :catchall_0
    move-exception v18

    :try_start_2
    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 711
    .restart local v9    # "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "stateList":[I
    :cond_7
    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_OUTOF_BROADCAST:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v18

    move-object/from16 v0, p1

    iget v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 714
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->downloadRetryJudgment(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;Z)I

    move-result v10

    goto/16 :goto_2

    .line 717
    :cond_9
    if-eqz v15, :cond_a

    .line 718
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getHistoryReason(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;)I

    move-result v14

    .line 719
    .local v14, "historyReason":I
    const/4 v13, 0x1

    .line 721
    .local v13, "historyCategory":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 724
    .end local v13    # "historyCategory":I
    .end local v14    # "historyReason":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_2

    .line 730
    .end local v9    # "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "stateList":[I
    :pswitch_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->checkAutoPlay(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->notifyDownloaded(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 738
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    const v19, 0x7f040004

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v5, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V

    goto/16 :goto_3

    .line 742
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadProgressOff(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 728
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 689
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private onDownloadProcess(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;)V
    .locals 4
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;

    .prologue
    .line 598
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v1, :cond_0

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    iget-object v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;->crid:Ljava/lang/String;

    iget v3, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;->progress:I

    invoke-interface {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onDownloadProgressChange(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 602
    :catch_0
    move-exception v0

    .line 603
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onDownloadStart(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;)V
    .locals 3
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;

    .prologue
    .line 568
    const/16 v0, 0x1f

    .line 574
    .local v0, "state":I
    iget-object v1, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;->crid:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->notifyDownloadState(Ljava/lang/String;I)V

    .line 575
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v1

    iget-object v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;->crid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadStart(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method private removeConflictionState(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aIsManual"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 776
    const/4 v1, 0x0

    .line 778
    .local v1, "serviceId":I
    const v2, 0xa900

    .line 780
    .local v2, "serviceType":I
    if-nez p2, :cond_0

    .line 781
    const v2, 0xad00

    .line 786
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->setConflictStatus(IZILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1

    .line 796
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 790
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 791
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v3, "%s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 23

    .prologue
    .line 103
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 104
    .local v4, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    .line 105
    .local v6, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 110
    .local v5, "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    const/4 v15, 0x0

    .line 112
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 120
    :goto_0
    :try_start_2
    invoke-interface {v15}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 121
    .local v16, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 124
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 125
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 126
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 128
    .local v18, "value":Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 130
    .local v12, "isManual":Z
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    goto :goto_1

    .line 132
    :pswitch_0
    const/4 v12, 0x1

    .line 136
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v20

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v21, 0xa

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 140
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const/16 v20, 0x1

    const/16 v21, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 149
    :pswitch_1
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->removeConflictionState(Ljava/lang/String;Z)V

    .line 150
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    const v20, 0x7f040004

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZZ)V

    .line 152
    const-string v19, "DownloadFailed CRID:%s Reason:%d"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 189
    .end local v4    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v5    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .end local v6    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "isManual":Z
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v18    # "value":Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 190
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_3
    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    .line 201
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :goto_2
    return-void

    .line 113
    .restart local v4    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v5    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .restart local v6    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_1
    move-exception v7

    .line 114
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 191
    .end local v4    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v5    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .end local v6    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_2
    move-exception v7

    .line 192
    .local v7, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v7, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_2

    .line 156
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v5    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .restart local v6    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "isManual":Z
    .restart local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v18    # "value":Ljava/lang/Integer;
    :pswitch_2
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v19

    const/16 v20, 0x380c

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 158
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v21

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyComplementProgress(Ljava/lang/String;I)V

    .line 160
    const-string v19, "ComplementFailed CRID:%s Reason:FATAL"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 194
    .end local v4    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v5    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .end local v6    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "isManual":Z
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v18    # "value":Ljava/lang/Integer;
    :catchall_0
    move-exception v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    throw v19

    .line 163
    .restart local v4    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v5    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    .restart local v6    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "isManual":Z
    .restart local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v18    # "value":Ljava/lang/Integer;
    :pswitch_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v19

    const/16 v20, 0x3c0c

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 165
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v21

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getComplementFailedReason(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyComplementProgress(Ljava/lang/String;I)V

    .line 167
    const-string v19, "ComplementFailed CRID:%s Reason:FATAL"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 175
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "isManual":Z
    .end local v18    # "value":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v10

    .line 177
    .local v10, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v9

    .line 179
    .local v9, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfoList()Ljava/util/List;

    move-result-object v14

    .line 180
    .local v14, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    .line 181
    .local v17, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->clearServiceStatus(Ljava/lang/String;I)V

    .line 182
    const-string v19, "Complement FDT Failed CRID:%s TYPE:%d Reason:FATAL"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbType:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 187
    .end local v17    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_1
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifySignalLevelOff()V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto/16 :goto_2

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public noticeBroadcastLevel(I)V
    .locals 5
    .param p1, "aLevel"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifySignalLevel(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0

    .line 229
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "%s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public noticeDownload(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;)V
    .locals 9
    .param p1, "aAnb"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;

    .prologue
    const/4 v8, 0x1

    .line 258
    if-nez p1, :cond_1

    .line 259
    :try_start_0
    const-string v4, "Parameter error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .end local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :cond_0
    :goto_0
    return-void

    .line 263
    .restart local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :cond_1
    iget-object v4, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    const-string v4, "Crid format error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    .end local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 316
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    goto :goto_0

    .line 269
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :cond_2
    :try_start_1
    instance-of v4, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;

    if-eqz v4, :cond_3

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_START:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->getInt()I

    move-result v4

    iget v5, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->type:I

    if-ne v4, v5, :cond_3

    .line 272
    const-string v4, "[%s] Download Start"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    check-cast p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;

    .end local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->onDownloadStart(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeStart;)V

    goto :goto_0

    .line 276
    .restart local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :cond_3
    instance-of v4, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;

    if-eqz v4, :cond_4

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->getInt()I

    move-result v4

    iget v5, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->type:I

    if-ne v4, v5, :cond_4

    .line 281
    check-cast p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;

    .end local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->onDownloadProcess(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeProgress;)V

    goto :goto_0

    .line 282
    .restart local p1    # "aAnb":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;
    :cond_4
    instance-of v4, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    if-eqz v4, :cond_0

    sget-object v4, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->DOWNLOAD_NOTICE_END:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;

    invoke-virtual {v4}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadNoticeType;->getInt()I

    move-result v4

    iget v5, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->type:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v4, v5, :cond_0

    .line 286
    :try_start_2
    const-string v4, "[%s] Download End"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    move-object v4, v0

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->onDownloadEnd(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 294
    :try_start_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    iget-object v5, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-result-object v2

    .line 298
    .local v2, "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    if-eqz v2, :cond_5

    .line 299
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 300
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v1, :cond_5

    .line 301
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    move-object v4, v0

    iget v4, v4, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 308
    .end local v1    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v2    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    :cond_5
    :goto_1
    :try_start_4
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    iget-object v5, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 309
    :catch_1
    move-exception v3

    .line 310
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 293
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move-object v5, v4

    .line 294
    :try_start_6
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    iget-object v6, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getCancelDownloadTermination(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;

    move-result-object v2

    .line 298
    .restart local v2    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    if-eqz v2, :cond_6

    .line 299
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;->getCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 300
    .restart local v1    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v1, :cond_6

    .line 301
    move-object v0, p1

    check-cast v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    move-object v4, v0

    iget v4, v4, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    invoke-virtual {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 308
    .end local v1    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v2    # "cancelDownloadTermination":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv$MmbCancelDownloadTerminationBaseSv;
    :cond_6
    :goto_2
    :try_start_7
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    iget-object v6, p1, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeBase;->crid:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeCancelDownloadTermination(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 311
    :goto_3
    :try_start_8
    throw v5

    .line 304
    :catch_3
    move-exception v3

    .line 305
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 309
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 310
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3
.end method

.method public noticeEntryFdtInstance(Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;)V
    .locals 13
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;

    .prologue
    .line 478
    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->COMPLEMENT_FDT_CANCEL_LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 481
    :try_start_0
    iget-object v8, p1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->crid:Ljava/lang/String;

    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 482
    const-string v8, "Crid format error"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 550
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_2
    iget-object v2, p1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->crid:Ljava/lang/String;

    .line 487
    .local v2, "crid":Ljava/lang/String;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v4

    .line 491
    .local v4, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getActiveInfo()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v6

    .line 492
    .local v6, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-nez v6, :cond_1

    .line 493
    const-string v8, "complement FDT info none"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    :try_start_3
    monitor-exit v9

    goto :goto_0

    .line 546
    .end local v2    # "crid":Ljava/lang/String;
    .end local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v6    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8

    .line 499
    .restart local v2    # "crid":Ljava/lang/String;
    .restart local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .restart local v6    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_1
    :try_start_4
    iget-object v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 500
    const-string v8, "Crid unmatch"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 508
    :cond_2
    :try_start_6
    iget-object v1, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 509
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-nez v1, :cond_4

    .line 510
    const-string v8, "callback is null [%s]"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 542
    .end local v1    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v6    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catch_0
    move-exception v3

    .line 543
    .local v3, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 544
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    .line 546
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_1
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 514
    .restart local v1    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v2    # "crid":Ljava/lang/String;
    .restart local v4    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .restart local v6    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_4
    const/4 v0, 0x0

    .line 515
    .local v0, "SUCCESS":I
    :try_start_8
    iget v8, p1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->result:I

    if-nez v8, :cond_5

    .line 518
    const-string v8, "[%s] Repair FDT Success"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    goto :goto_1

    .line 524
    :cond_5
    const-string v8, "crid[%s] result[%d]"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    iget v12, p1, Lmmb/android/MmbFcContMw/MmbFcContMwEntryFdtInstanceNotice;->result:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 526
    iget-object v5, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    .line 528
    .local v5, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v5, v8, :cond_6

    .line 529
    const-string v8, "crid[%s] Canceled"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    invoke-static {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 530
    const/16 v8, -0xb

    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    goto :goto_1

    .line 532
    :cond_6
    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v5, v8, :cond_3

    .line 533
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    .line 535
    .local v7, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const v8, 0x7f040023

    invoke-virtual {v7, v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 537
    const/4 v8, -0x1

    invoke-virtual {v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1
.end method

.method public noticeRepair(Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;)V
    .locals 16
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;

    .prologue
    .line 343
    sget-object v13, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->COMPLEMENT_CANCEL_LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 346
    :try_start_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 347
    const-string v3, "Crid format error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    :goto_0
    return-void

    .line 352
    :cond_0
    :try_start_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    .line 353
    .local v2, "crid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 354
    .local v1, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    move-object/from16 v0, p1

    iget v9, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->progress:I

    .line 357
    .local v9, "progress":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    move-result-object v10

    .line 359
    .local v10, "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    invoke-virtual {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v4

    .line 361
    .local v4, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-nez v4, :cond_1

    .line 362
    const-string v3, "unexpected call. [%s, %d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    aput-object v15, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget v15, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v14

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    :try_start_3
    monitor-exit v13

    goto :goto_0

    .line 453
    .end local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v4    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v9    # "progress":I
    .end local v10    # "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    :catchall_0
    move-exception v3

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 366
    .restart local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v2    # "crid":Ljava/lang/String;
    .restart local v4    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v9    # "progress":I
    .restart local v10    # "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    :cond_1
    :try_start_4
    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v11

    .line 368
    .local v11, "state":I
    const/16 v3, 0x4a

    if-ne v11, v3, :cond_3

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-ne v3, v5, :cond_2

    if-lez v9, :cond_2

    const/16 v3, 0x64

    if-lt v9, v3, :cond_3

    .line 371
    :cond_2
    const-string v3, "crid[%s] Canceled"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v5, v14

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/16 v3, -0xb

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 373
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 376
    :cond_3
    :try_start_6
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-ne v3, v5, :cond_6

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementCtrl()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    move-result-object v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->progress:I

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->setComplementProgress(I)V

    .line 382
    const/16 v3, 0x64

    if-ne v9, v3, :cond_5

    .line 384
    const-string v3, "[%s] Repair Success"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->crid:Ljava/lang/String;

    aput-object v15, v5, v14

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v3

    invoke-virtual {v10, v2, v9, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairSuccess(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 453
    .end local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v4    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v9    # "progress":I
    .end local v10    # "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    .end local v11    # "state":I
    :cond_4
    :goto_1
    :try_start_7
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 388
    .restart local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v2    # "crid":Ljava/lang/String;
    .restart local v4    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v9    # "progress":I
    .restart local v10    # "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    .restart local v11    # "state":I
    :cond_5
    if-lez v9, :cond_4

    const/16 v3, 0x64

    if-ge v9, v3, :cond_4

    .line 389
    :try_start_8
    invoke-virtual {v10, v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairProgress(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 449
    .end local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v4    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v9    # "progress":I
    .end local v10    # "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    .end local v11    # "state":I
    :catch_0
    move-exception v8

    .line 450
    .local v8, "e":Ljava/lang/Exception;
    :try_start_9
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 392
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .restart local v2    # "crid":Ljava/lang/String;
    .restart local v4    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v9    # "progress":I
    .restart local v10    # "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    .restart local v11    # "state":I
    :cond_6
    :try_start_a
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_DECODE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-eq v3, v5, :cond_7

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-eq v3, v5, :cond_7

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_FILECHECK:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-ne v3, v5, :cond_c

    .line 397
    :cond_7
    const-string v3, "crid[%s] result[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget v15, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v14

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_WRITE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-ne v3, v5, :cond_b

    .line 400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    .line 401
    .local v7, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    .line 402
    .local v12, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const v3, 0x7f040025

    invoke-virtual {v12, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 416
    :goto_2
    const/4 v3, 0x3

    if-eq v3, v11, :cond_8

    const/4 v3, 0x4

    if-ne v3, v11, :cond_a

    .line 418
    :cond_8
    const/4 v6, 0x0

    .line 419
    .local v6, "dispNotify":Z
    const/4 v3, 0x3

    if-ne v3, v11, :cond_9

    .line 420
    const/4 v6, 0x1

    .line 422
    :cond_9
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    const/4 v14, -0x1

    invoke-direct {v5, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    .line 428
    const/4 v3, 0x4

    if-ne v3, v11, :cond_a

    .line 429
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 434
    .end local v6    # "dispNotify":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->cancelJobAndWait(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto/16 :goto_1

    .line 405
    .end local v7    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v12    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    .line 406
    .restart local v7    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    .line 407
    .restart local v12    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const v3, 0x7f040023

    invoke-virtual {v12, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_2

    .line 435
    .end local v7    # "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v12    # "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_c
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_CANCELED:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-ne v3, v5, :cond_e

    .line 438
    const/4 v6, 0x0

    .line 439
    .restart local v6    # "dispNotify":Z
    const/4 v3, 0x3

    if-ne v3, v11, :cond_d

    .line 440
    const/4 v6, 0x1

    .line 442
    :cond_d
    invoke-virtual {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v3

    invoke-virtual {v10, v2, v9, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->onRepairCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Z)V

    goto/16 :goto_1

    .line 444
    .end local v6    # "dispNotify":Z
    :cond_e
    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->REPAIR_FAILED_RETRY:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;

    invoke-virtual {v3}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwRepairReason;->getInt()I

    move-result v3

    move-object/from16 v0, p1

    iget v5, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    if-ne v3, v5, :cond_4

    .line 445
    const-string v3, "crid[%s] result[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v5, v14

    const/4 v14, 0x1

    move-object/from16 v0, p1

    iget v15, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairNotice;->result:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v14

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    const/16 v3, -0x2f

    invoke-virtual {v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1
.end method
