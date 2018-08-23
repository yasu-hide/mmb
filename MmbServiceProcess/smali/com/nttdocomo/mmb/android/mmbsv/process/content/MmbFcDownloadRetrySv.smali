.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;
.super Ljava/lang/Object;
.source "MmbFcDownloadRetrySv.java"


# instance fields
.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mRetryContentStateMap:Ljava/util/Map;
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
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    .line 74
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 75
    return-void
.end method


# virtual methods
.method downloadRetryJudgment(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;Z)I
    .locals 22
    .param p1, "aNotice"    # Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;
    .param p2, "aIsManual"    # Z

    .prologue
    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    .line 100
    .local v6, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v7

    .line 101
    .local v7, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v5

    .line 102
    .local v5, "conflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v8

    .line 104
    .local v8, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v14, 0x2

    .line 107
    .local v14, "lRet":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->getRetryDownloadState(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 109
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->registerRetryDownloadContentCount(Ljava/lang/String;I)I

    .line 112
    :cond_0
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v4

    .line 114
    .local v4, "batteryStatus":I
    const/16 v16, 0x0

    .line 115
    .local v16, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v17, 0x4

    .line 116
    .local v17, "scheduleType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v16

    .line 117
    if-nez v16, :cond_1

    .line 118
    const-string v18, "Null schedule"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v19, "Null schedule"

    invoke-direct/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 123
    :cond_1
    const-wide/16 v10, 0x0

    .line 126
    .local v10, "currenttime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 132
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->getRetryDownloadCount(Ljava/lang/String;)I

    move-result v15

    .line 133
    .local v15, "retryCount":I
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getHistoryReason(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;)I

    move-result v13

    .line 134
    .local v13, "historyReason":I
    const/4 v12, 0x1

    .line 137
    .local v12, "historyCategory":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f030001

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v18

    if-ge v15, v0, :cond_6

    .line 140
    :cond_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_4

    .line 142
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->registerRetryDownloadContentCount(Ljava/lang/String;I)I

    .line 153
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v7, v0, v10, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerRetrySchedule(Ljava/lang/String;JLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I

    move-result v18

    if-eqz v18, :cond_5

    .line 159
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->removeRetryDownloadContentCount(Ljava/lang/String;)I

    .line 160
    if-eqz p2, :cond_3

    .line 161
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 163
    :cond_3
    const-string v18, "RegisterRetryScheduleFailed CRID:%s Reason:%d"

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

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    move-result v14

    .line 189
    :goto_1
    return v14

    .line 127
    .end local v12    # "historyCategory":I
    .end local v13    # "historyReason":I
    .end local v15    # "retryCount":I
    :catch_0
    move-exception v9

    .line 128
    .local v9, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v9, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 147
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v12    # "historyCategory":I
    .restart local v13    # "historyReason":I
    .restart local v15    # "retryCount":I
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->registerRetryDownloadContentCount(Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 169
    :cond_5
    const/4 v14, 0x5

    goto :goto_1

    .line 177
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->removeRetryDownloadContentCount(Ljava/lang/String;)I

    .line 179
    if-eqz p2, :cond_7

    .line 180
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 182
    :cond_7
    const-string v18, "DownloadFailed CRID:%s Reason:%d"

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

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    move-result v14

    goto :goto_1
.end method

.method getRetryDownloadCount(Ljava/lang/String;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 210
    const/4 v2, 0x0

    .line 212
    .local v2, "value":Ljava/lang/Integer;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v2, v0

    .line 214
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    if-nez v2, :cond_0

    .line 222
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 227
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 214
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    .line 215
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method getRetryDownloadState(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v1, 0x0

    .line 332
    .local v1, "value":Z
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    .line 334
    monitor-exit v3

    .line 344
    return v1

    .line 334
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 335
    :catch_0
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method registerRetryDownloadContentCount(Ljava/lang/String;I)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCount"    # I

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 250
    .local v1, "ret":I
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const/4 v2, -0x1

    .line 268
    :goto_0
    return v2

    .line 257
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit v3

    :goto_1
    move v2, v1

    .line 268
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const/4 v1, -0x1

    goto :goto_1
.end method

.method removeRetryDownloadContentCount(Ljava/lang/String;)I
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 288
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 292
    :cond_0
    const/4 v1, 0x0

    .line 295
    .local v1, "ret":I
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :try_start_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadRetrySv;->mRetryContentStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    monitor-exit v3

    .line 306
    :goto_0
    return v1

    .line 297
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    const/4 v1, -0x2

    goto :goto_0
.end method
