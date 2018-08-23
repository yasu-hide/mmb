.class public Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbStReccontentControllerSv.java"


# static fields
.field private static final SEARCH_STRING_LIST:[Ljava/lang/String;


# instance fields
.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mSearchRecModule:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mmbScheduleType = SCHEDULE_TYPE_ST_REC AND mmbContentStartTime > "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmbScheduleType = SCHEDULE_TYPE_ST_REC AND mmbContentStartTime < "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmbScheduleType = SCHEDULE_TYPE_ST_REC AND mmbContentEndTime > "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmbScheduleType = SCHEDULE_TYPE_ST_REC AND mmbContentEndTime < "

    aput-object v2, v0, v1

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->SEARCH_STRING_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 87
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mSearchRecModule:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    .line 242
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    move-result-object v0

    .line 243
    .local v0, "poInfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->hasRecordingFunction()Z

    move-result v1

    .line 244
    .local v1, "recodingAvailability":Z
    if-nez v1, :cond_0

    .line 245
    const-string v2, "Recoding Module Unsupported"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;

    const-string v3, "Recoding Module Unsupported"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public checkRecBroadcastTimeChanged()V
    .locals 20

    .prologue
    .line 823
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v14

    .line 826
    .local v14, "scheduleIns":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 827
    .local v7, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v2, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/16 v15, 0x1000

    iput v15, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 832
    :try_start_0
    invoke-virtual {v14, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 847
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 833
    :catch_0
    move-exception v5

    .line 834
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 839
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v5

    .line 840
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 854
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 857
    .local v13, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v4, 0x0

    .line 858
    .local v4, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v12, 0x0

    .line 859
    .local v12, "realtimeinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v8

    .line 860
    .local v8, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const-wide/16 v10, 0x0

    .line 862
    .local v10, "newTriggerTime":J
    iget-object v15, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/16 v16, 0x1

    const-string v17, "ja"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v8, v15, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v4

    .line 864
    if-eqz v4, :cond_2

    instance-of v15, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    if-eqz v15, :cond_2

    .line 866
    move-object v0, v4

    check-cast v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    move-object v12, v0

    .line 867
    iget-object v15, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    const/16 v16, 0x0

    aget-object v3, v15, v16

    .line 870
    .local v3, "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    iget-wide v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    move-wide/from16 v16, v0

    const-wide/32 v18, 0xea60

    sub-long v10, v16, v18

    .line 873
    iget-wide v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    move-wide/from16 v16, v0

    cmp-long v15, v16, v10

    if-eqz v15, :cond_2

    .line 874
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v15

    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getRecPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 876
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v15

    const-string v16, "com.nttdocomo.mmb.android.mmbsv.process.recording"

    const-string v17, "MmbStRecordingControllerSv"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v15, v13, v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setStRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 881
    .end local v3    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .end local v8    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "newTriggerTime":J
    :catch_2
    move-exception v5

    .line 882
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 883
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v5

    .line 884
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 885
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_4
    move-exception v5

    .line 886
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 887
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_5
    move-exception v5

    .line 888
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 889
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_6
    move-exception v5

    .line 890
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 891
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_7
    move-exception v5

    .line 892
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 893
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_8
    move-exception v5

    .line 894
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method public checkRecOverlapSchedule(Ljava/lang/String;)Ljava/util/List;
    .locals 22
    .param p1, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v19, "aCrid null"

    invoke-direct/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 490
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v11, "overlapList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 492
    .local v5, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v12, 0x0

    .line 493
    .local v12, "realtimeinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v9

    .line 496
    .local v9, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/16 v18, 0x0

    :try_start_0
    const-string v19, "ja"

    move-object/from16 v0, p1

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v9, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v5

    .line 498
    if-eqz v5, :cond_16

    instance-of v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    move/from16 v18, v0

    if-eqz v18, :cond_16

    .line 500
    move-object v0, v5

    check-cast v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    move-object v12, v0

    .line 501
    iget-object v0, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget-object v4, v18, v19

    .line 503
    .local v4, "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 504
    .local v16, "startResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 505
    .local v7, "endResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v10, "overTimeResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v17, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 510
    .local v13, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v18, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->SEARCH_STRING_LIST:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_5

    .line 511
    const/4 v15, 0x0

    .line 512
    .local v15, "searchString":Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v14, "schList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    if-eqz v8, :cond_1

    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v8, v0, :cond_3

    .line 515
    :cond_1
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->SEARCH_STRING_LIST:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v15

    .line 521
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v15, v1, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    :try_start_2
    invoke-virtual {v13, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 510
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 516
    :cond_3
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v8, v0, :cond_4

    const/16 v18, 0x3

    move/from16 v0, v18

    if-ne v8, v0, :cond_2

    .line 517
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v19, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->SEARCH_STRING_LIST:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->endTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_1

    .line 523
    :catch_0
    move-exception v18

    .line 526
    invoke-virtual {v13, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 581
    .end local v4    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .end local v7    # "endResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "overTimeResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;>;"
    .end local v14    # "schList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v15    # "searchString":Ljava/lang/String;
    .end local v16    # "startResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v6

    .line 582
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 583
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 526
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    .restart local v4    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .restart local v7    # "endResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v10    # "overTimeResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;>;"
    .restart local v14    # "schList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v15    # "searchString":Ljava/lang/String;
    .restart local v16    # "startResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v18

    :try_start_3
    invoke-virtual {v13, v8, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    throw v18
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_2

    .line 584
    .end local v4    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .end local v7    # "endResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "overTimeResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;>;"
    .end local v14    # "schList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v15    # "searchString":Ljava/lang/String;
    .end local v16    # "startResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_2
    move-exception v6

    .line 585
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 586
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 530
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v4    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .restart local v7    # "endResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "i":I
    .restart local v10    # "overTimeResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;>;"
    .restart local v16    # "startResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v8, 0x0

    :goto_3
    const/16 v18, 0x0

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_6

    .line 531
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 533
    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_9

    .line 534
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    iget-wide v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    move-wide/from16 v20, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v20, v18

    if-nez v18, :cond_8

    .line 537
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 541
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 542
    const/4 v8, 0x0

    :goto_5
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_a

    .line 543
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 542
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 545
    :cond_a
    const/4 v8, 0x0

    :goto_6
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_d

    .line 546
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    iget-wide v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->endTime:J

    move-wide/from16 v20, v0

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v20, v18

    if-nez v18, :cond_c

    .line 549
    :cond_b
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 553
    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 554
    const/4 v8, 0x0

    :goto_7
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_f

    .line 555
    iget-wide v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->endTime:J

    move-wide/from16 v20, v0

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    move-wide/from16 v18, v0

    cmp-long v18, v20, v18

    if-eqz v18, :cond_e

    .line 557
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 560
    :cond_f
    const/4 v8, 0x0

    :goto_8
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_11

    .line 561
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 562
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 566
    :cond_11
    const/4 v8, 0x0

    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_12

    .line 567
    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 569
    :cond_12
    const/4 v8, 0x0

    :goto_a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_14

    .line 570
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 571
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    :cond_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 574
    :cond_14
    const/4 v8, 0x0

    :goto_b
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v8, v0, :cond_16

    .line 575
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_15

    .line 576
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_4 .. :try_end_4} :catch_2

    .line 574
    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 589
    .end local v4    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    .end local v7    # "endResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "i":I
    .end local v10    # "overTimeResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;>;"
    .end local v16    # "startResultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_16
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_17

    .line 591
    const/4 v11, 0x0

    .line 597
    :cond_17
    return-object v11
.end method

.method public cleanupModule()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->cleanupModule()V

    .line 316
    return-void
.end method

.method public deleteRecContents(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "aPrgNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v12, 0x14

    .line 396
    if-nez p1, :cond_0

    .line 397
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v9, "aPrgNoList null"

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 401
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v7, "skipList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 403
    .local v5, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .line 404
    .local v4, "listSize":I
    const/4 v1, 0x0

    .line 405
    .local v1, "delBlockNum":I
    if-gt v4, v12, :cond_2

    .line 406
    const/4 v1, 0x1

    .line 413
    :goto_0
    const/4 v0, 0x0

    .local v0, "delBlock":I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 414
    const/4 v6, 0x0

    .line 415
    .local v6, "prgNoList":[I
    mul-int/lit8 v8, v0, 0x14

    sub-int v8, v4, v8

    if-le v12, v8, :cond_4

    .line 416
    mul-int/lit8 v8, v0, 0x14

    sub-int v8, v4, v8

    new-array v6, v8, [I

    .line 421
    :goto_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    array-length v8, v6

    if-ge v3, v8, :cond_5

    .line 422
    mul-int/lit8 v8, v0, 0x14

    add-int/2addr v8, v3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_1

    mul-int/lit8 v8, v0, 0x14

    add-int/2addr v8, v3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0x7fffffff

    if-gt v8, v9, :cond_1

    .line 424
    mul-int/lit8 v8, v0, 0x14

    add-int/2addr v8, v3

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v6, v3

    .line 421
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 407
    .end local v0    # "delBlock":I
    .end local v3    # "i":I
    .end local v6    # "prgNoList":[I
    :cond_2
    rem-int/lit8 v8, v4, 0x14

    if-nez v8, :cond_3

    .line 408
    div-int/lit8 v1, v4, 0x14

    goto :goto_0

    .line 410
    :cond_3
    div-int/lit8 v8, v4, 0x14

    add-int/lit8 v1, v8, 0x1

    goto :goto_0

    .line 418
    .restart local v0    # "delBlock":I
    .restart local v6    # "prgNoList":[I
    :cond_4
    new-array v6, v12, [I

    goto :goto_2

    .line 435
    .restart local v3    # "i":I
    :cond_5
    :try_start_0
    invoke-virtual {v5, v6}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->deleteContents([I)V
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 441
    const/4 v3, 0x0

    :goto_4
    array-length v8, v6

    if-ge v3, v8, :cond_7

    .line 442
    aget v8, v6, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    const-string v8, "Failed to delete reccontent and skip[%d]"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget v11, v6, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 445
    :cond_7
    invoke-virtual {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getError()I

    move-result v8

    const/4 v9, -0x2

    if-ne v8, v9, :cond_6

    .line 446
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 451
    .end local v2    # "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    .end local v3    # "i":I
    .end local v6    # "prgNoList":[I
    :cond_8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 453
    const/4 v7, 0x0

    .line 459
    :cond_9
    return-object v7
.end method

.method public deleteRecSchedule(Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    .line 694
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 695
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aCrid or aPackageName null"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_1
    const/16 v13, 0x3e9

    .line 699
    .local v13, "result":I
    const/4 v9, 0x0

    .line 700
    .local v9, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v12, 0x0

    .line 701
    .local v12, "realtimeinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v11

    .line 704
    .local v11, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "ja"

    invoke-virtual {v11, p1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v9

    .line 706
    if-eqz v9, :cond_2

    instance-of v2, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    if-eqz v2, :cond_2

    .line 708
    move-object v0, v9

    check-cast v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    move-object v12, v0

    .line 709
    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    const/4 v3, 0x0

    aget-object v8, v2, v3

    .line 712
    .local v8, "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    iget-wide v2, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    const-wide/32 v6, 0xea60

    sub-long v4, v2, v6

    .line 714
    .local v4, "triggerTime":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteStRecScheduleByUser(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 728
    .end local v4    # "triggerTime":J
    .end local v8    # "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    :cond_2
    return v13

    .line 717
    :catch_0
    move-exception v10

    .line 718
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 719
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 720
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_1
    move-exception v10

    .line 721
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 722
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected getBytes(Ljava/io/InputStream;)[B
    .locals 5
    .param p1, "aInput"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    if-nez p1, :cond_0

    .line 1037
    const/4 v2, 0x0

    .line 1063
    :goto_0
    return-object v2

    .line 1042
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1043
    .local v0, "byteArrayStream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1046
    .local v1, "outputStream":Ljava/io/OutputStream;
    :goto_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .local v3, "size":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 1047
    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1050
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 1051
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1052
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    :cond_1
    throw v4

    .line 1050
    .restart local v3    # "size":I
    :cond_2
    if-eqz v1, :cond_3

    .line 1051
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 1052
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1059
    :cond_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1063
    .local v2, "ret":[B
    goto :goto_0
.end method

.method public getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mSearchRecModule:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    return-object v0
.end method

.method protected getSecureClock()J
    .locals 6

    .prologue
    .line 995
    const-wide/16 v0, 0x0

    .line 998
    .local v0, "clock":J
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 1000
    .local v3, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1007
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 1008
    const-string v4, "error getSecureClock(clock < 0)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1009
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v4

    .line 1001
    :catch_0
    move-exception v2

    .line 1003
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1004
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1015
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    return-wide v0
.end method

.method protected getThumbnailFromMw(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;)I
    .locals 5
    .param p1, "aPrgNo"    # I
    .param p2, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    .prologue
    .line 1085
    const/4 v3, 0x1

    .line 1086
    .local v3, "ret":I
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 1092
    .local v2, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :try_start_0
    invoke-virtual {v2, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getContentsInfoThumbnail(I)[B

    move-result-object v4

    iput-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    :goto_0
    return v3

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-virtual {v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getError()I

    move-result v1

    .line 1103
    .local v1, "err":I
    const/4 v4, -0x5

    if-eq v1, v4, :cond_0

    .line 1104
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1106
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1118
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_0

    .line 1108
    :pswitch_1
    const/4 v3, 0x1

    .line 1109
    goto :goto_0

    .line 1112
    :pswitch_2
    const/4 v3, 0x0

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_3
    const/4 v3, 0x2

    .line 1116
    goto :goto_0

    .line 1106
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getThumbnailFromServer(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;)V
    .locals 14
    .param p1, "aPrgNo"    # I
    .param p2, "aUri"    # Ljava/lang/String;
    .param p3, "aData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    .prologue
    .line 1151
    const/4 v11, 0x0

    .line 1153
    .local v11, "uri":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1155
    .local v4, "foreignMode":I
    :try_start_0
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v6

    .line 1156
    .local v6, "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 1157
    if-eqz v4, :cond_1

    .line 1239
    .end local v6    # "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 1163
    :catch_0
    move-exception v3

    .line 1164
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1169
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_1
    move-exception v3

    .line 1170
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1177
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v6    # "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_1
    if-nez p2, :cond_2

    .line 1179
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mSearchRecModule:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    invoke-virtual {v13, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;->searchDetail(I)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    move-result-object v2

    .line 1180
    .local v2, "contDetail":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    if-eqz v2, :cond_0

    iget-object v13, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    if-eqz v13, :cond_0

    .line 1186
    iget-object v11, v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;->mMediaTitleImage:Ljava/lang/String;

    .line 1192
    .end local v2    # "contDetail":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    :goto_1
    const-string v13, "http"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1193
    const/16 v13, -0x24

    move-object/from16 v0, p3

    iput v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 1195
    const/4 v5, 0x0

    .line 1197
    .local v5, "is":Ljava/io/InputStream;
    :try_start_1
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1198
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    .line 1200
    .local v8, "oc":Ljava/net/URLConnection;
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v9

    .line 1202
    .local v9, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v13, 0x4

    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1207
    .local v1, "connectiontimeout":I
    const/4 v13, 0x5

    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1212
    .local v10, "readtimeout":I
    invoke-virtual {v8, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1213
    invoke-virtual {v8, v10}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1216
    invoke-virtual {v8}, Ljava/net/URLConnection;->connect()V

    .line 1218
    invoke-virtual {v8}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v7

    .line 1219
    .local v7, "ob":Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/io/InputStream;

    move-object v5, v0

    .line 1221
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v13

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1226
    if-eqz v5, :cond_0

    .line 1228
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1229
    :catch_2
    move-exception v3

    .line 1230
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1188
    .end local v1    # "connectiontimeout":I
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "ob":Ljava/lang/Object;
    .end local v8    # "oc":Ljava/net/URLConnection;
    .end local v9    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v10    # "readtimeout":I
    .end local v12    # "url":Ljava/net/URL;
    :cond_2
    move-object/from16 v11, p2

    goto :goto_1

    .line 1222
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    .line 1223
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1224
    const/4 v13, 0x0

    move-object/from16 v0, p3

    iput-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1226
    if-eqz v5, :cond_0

    .line 1228
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 1229
    :catch_4
    move-exception v3

    .line 1230
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1226
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    if-eqz v5, :cond_3

    .line 1228
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1231
    :cond_3
    :goto_2
    throw v13

    .line 1229
    :catch_5
    move-exception v3

    .line 1230
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 340
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    :cond_0
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 347
    .local v1, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->setSdMountState(I)V

    .line 372
    .end local v1    # "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :cond_1
    :goto_0
    return-void

    .line 351
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 356
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 357
    .restart local v1    # "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->setSdMountState(I)V
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 362
    .end local v1    # "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 364
    invoke-virtual {v0}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getError()I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_1

    .line 365
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public reserveRec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;
    .param p3, "aSeriesIdList"    # [Ljava/lang/String;

    .prologue
    .line 626
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 627
    :cond_0
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v9, "aCrid or aPackageName null"

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 631
    :cond_1
    const/4 v6, -0x1

    .line 632
    .local v6, "result":I
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 633
    .local v7, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v2, 0x0

    .line 634
    .local v2, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v5, 0x0

    .line 635
    .local v5, "realtimeinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v4

    .line 638
    .local v4, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v8, 0x1

    :try_start_0
    const-string v9, "ja"

    invoke-virtual {v4, p1, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v2

    .line 639
    if-eqz v2, :cond_2

    instance-of v8, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    if-eqz v8, :cond_2

    .line 641
    move-object v0, v2

    check-cast v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    move-object v5, v0

    .line 643
    invoke-virtual {p0, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;)V

    .line 644
    iput-object p3, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 645
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getSecureClock()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    .line 647
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    const-string v9, "com.nttdocomo.mmb.android.mmbsv.process.recording"

    const-string v10, "MmbStRecordingControllerSv"

    invoke-virtual {v8, v7, p2, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setStRecSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_2

    .line 649
    const/4 v6, 0x0

    .line 665
    :cond_2
    :goto_0
    return v6

    .line 651
    :catch_0
    move-exception v3

    .line 652
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 653
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 654
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_1
    move-exception v3

    .line 655
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 656
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 657
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v3

    .line 658
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 659
    const/16 v6, -0x13

    goto :goto_0
.end method

.method protected saveThumbnailData(I[B)V
    .locals 2
    .param p1, "aPrgNo"    # I
    .param p2, "aThumbnailData"    # [B

    .prologue
    .line 1262
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;I[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1288
    return-void
.end method

.method protected setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;)V
    .locals 12
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aRealtimeInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 923
    const/16 v5, 0x1000

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 924
    iput v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 925
    iput v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 927
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->broadcastEvent:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;

    aget-object v1, v5, v10

    .line 928
    .local v1, "broadcastEvent":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;
    iget-wide v6, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    const-wide/32 v8, 0xea60

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 929
    iget-object v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->crid:Ljava/lang/String;

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 930
    iget-wide v6, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->startTime:J

    iput-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 931
    iget-wide v6, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->endTime:J

    iput-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 932
    iget v5, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBroadcastEvent;->serviceId:I

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 934
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    if-eqz v5, :cond_2

    .line 935
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 936
    .local v4, "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    const-string v6, "main"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 937
    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 938
    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 948
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_0
    :goto_1
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    if-eqz v5, :cond_7

    .line 950
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "\u97f3\u58f0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 953
    iput v11, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 977
    :goto_2
    return-void

    .line 935
    .restart local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 945
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_2
    const-string v5, "aPgInfo.basicDescription.title null"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 954
    :cond_3
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "\u6620\u50cf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 957
    const/4 v5, 0x1

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_2

    .line 958
    :cond_4
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "\u753b\u50cf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 961
    const/16 v5, 0x8

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_2

    .line 962
    :cond_5
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRealTimeContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "HTML\u6587\u66f8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 965
    const/16 v5, 0x10

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_2

    .line 968
    :cond_6
    const/16 v5, 0x20

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_2

    .line 971
    :cond_7
    const-string v5, "aPgInfo.basicDescription.contentProperty null"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public setupModule()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->setupModule()V

    .line 289
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 290
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->mSearchRecModule:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    .line 294
    return-void
.end method

.method public startExportRecThumbnail(ILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    .locals 4
    .param p1, "aPrgNo"    # I
    .param p2, "aUri"    # Ljava/lang/String;

    .prologue
    .line 776
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 777
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "aPrgNo abnormal"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 780
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;-><init>()V

    .line 781
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;
    const/4 v2, -0x1

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbReturnValue:I

    .line 782
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    .line 783
    const/4 v0, 0x1

    .line 785
    .local v0, "mwGetResult":I
    invoke-virtual {p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getThumbnailFromMw(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;)I

    move-result v0

    .line 787
    if-nez v0, :cond_2

    .line 788
    invoke-virtual {p0, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getThumbnailFromServer(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;)V

    .line 789
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    if-eqz v2, :cond_1

    .line 790
    iget-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;->mmbByteData:[B

    invoke-virtual {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->saveThumbnailData(I[B)V

    .line 805
    :cond_1
    :goto_0
    return-object v1

    .line 792
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 793
    invoke-virtual {p0, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getThumbnailFromServer(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndivdDataSv;)V

    goto :goto_0
.end method

.method public startupModule()V
    .locals 0

    .prologue
    .line 266
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->startupModule()V

    .line 273
    return-void
.end method
