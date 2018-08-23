.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
.super Ljava/lang/Object;
.source "MmbFcContentScheduleSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$1;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;
    }
.end annotation


# instance fields
.field public final RESCH_RESCHDULES_RECT_TIME:I

.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 196
    const/16 v0, 0x2710

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->RESCH_RESCHDULES_RECT_TIME:I

    .line 229
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 233
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschAfterUpdateMeta(Ljava/lang/String;)V

    return-void
.end method

.method private calcAutoComplementFdtTime(JJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;)J
    .locals 19
    .param p1, "aCurrentTime"    # J
    .param p3, "aLastStopTime"    # J
    .param p5, "aPostFileRepair"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .prologue
    .line 2479
    const-wide/16 v8, -0x1

    .line 2480
    .local v8, "result":J
    const-wide/16 v14, 0x0

    cmp-long v5, p1, v14

    if-lez v5, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v5, p3, v14

    if-lez v5, :cond_0

    if-nez p5, :cond_1

    .line 2481
    :cond_0
    const-string v5, "illegal argument."

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v5, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v10, v8

    .line 2522
    .end local v8    # "result":J
    .local v10, "result":J
    :goto_0
    return-wide v10

    .line 2494
    .end local v10    # "result":J
    .restart local v8    # "result":J
    :cond_1
    const-wide/32 v14, 0x15f90

    add-long v12, p1, v14

    .line 2495
    .local v12, "startTime":J
    move-object/from16 v0, p5

    iget-wide v14, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 2496
    move-wide/from16 v0, p3

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 2498
    const-wide/32 v14, 0x1499700

    add-long v2, v12, v14

    .line 2499
    .local v2, "endTime":J
    move-object/from16 v0, p5

    iget-wide v14, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 2505
    cmp-long v5, v12, v2

    if-lez v5, :cond_2

    move-wide v10, v8

    .line 2510
    .end local v8    # "result":J
    .restart local v10    # "result":J
    goto :goto_0

    .line 2514
    .end local v10    # "result":J
    .restart local v8    # "result":J
    :cond_2
    sub-long v6, v2, v12

    .line 2515
    .local v6, "randomSpan":J
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 2516
    .local v4, "rand":Ljava/util/Random;
    long-to-double v14, v6

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v16

    mul-double v14, v14, v16

    double-to-long v6, v14

    .line 2517
    add-long v8, v12, v6

    move-wide v10, v8

    .line 2522
    .end local v8    # "result":J
    .restart local v10    # "result":J
    goto :goto_0
.end method

.method private checkComplementReschedule(Ljava/lang/String;IIZ)Z
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDownloadProgress"    # I
    .param p3, "aReserveType"    # I
    .param p4, "aIsSdMount"    # Z

    .prologue
    .line 4545
    const/4 v5, 0x0

    .line 4548
    .local v5, "result":Z
    if-eqz p2, :cond_0

    if-nez p4, :cond_1

    .line 4549
    :cond_0
    const/4 v5, 0x1

    move v6, v5

    .line 4597
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 4552
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_1
    const/4 v3, 0x0

    .line 4554
    .local v3, "percentageThreshold":I
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 4556
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v0, 0x0

    .line 4557
    .local v0, "contentMeta":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    const/4 v4, 0x0

    .line 4558
    .local v4, "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v0

    .line 4559
    if-eqz v0, :cond_2

    iget-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v7, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v7, :cond_3

    .line 4562
    :cond_2
    const-string v7, "Bad meta data![%s]"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v5

    .line 4563
    .restart local v6    # "result":I
    goto :goto_0

    .line 4565
    .end local v6    # "result":I
    :cond_3
    iget-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v4, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .line 4568
    const/4 v7, 0x2

    if-ne p3, v7, :cond_5

    .line 4569
    iget-byte v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    iget-byte v8, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairManualStorePercentage:B

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4578
    :goto_1
    if-lt p2, v3, :cond_4

    .line 4579
    const/4 v5, 0x1

    :cond_4
    move v6, v5

    .line 4597
    .restart local v6    # "result":I
    goto :goto_0

    .line 4573
    .end local v6    # "result":I
    :cond_5
    iget-byte v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    iget-byte v8, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairAutoStorePercentage:B

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    goto :goto_1

    .line 4581
    .end local v0    # "contentMeta":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v1    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v4    # "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    :catch_0
    move-exception v2

    .line 4582
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_1
    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v5

    .line 4583
    .restart local v6    # "result":I
    goto :goto_0

    .line 4584
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v6    # "result":I
    :catch_1
    move-exception v2

    .line 4585
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v5

    .line 4586
    .restart local v6    # "result":I
    goto :goto_0

    .line 4587
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v6    # "result":I
    :catch_2
    move-exception v2

    .line 4590
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "%s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4591
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4593
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    throw v7
.end method

.method private checkDoubleBooking(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x1

    .line 1427
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1430
    .local v4, "listSize":I
    if-ge v10, v4, :cond_2

    .line 1432
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getBroadcastSameTransact()I

    move-result v5

    .line 1435
    .local v5, "max":I
    if-ge v5, v4, :cond_0

    .line 1436
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    const-string v9, "Schedule double booking"

    invoke-direct {v8, v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    throw v8

    .line 1441
    :cond_0
    add-int/lit8 v8, v4, -0x1

    :try_start_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v9, 0x4

    invoke-virtual {p0, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v6

    .line 1444
    .local v6, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getTsFromServiceId(I)I

    move-result v0

    .line 1446
    .local v0, "comparisonTs":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1447
    .local v1, "crid":Ljava/lang/String;
    const/4 v8, 0x4

    invoke-virtual {p0, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v6

    .line 1449
    iget v8, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getTsFromServiceId(I)I

    move-result v7

    .line 1450
    .local v7, "ts":I
    if-eq v0, v7, :cond_1

    .line 1451
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    const-string v9, "Schedule double booking"

    invoke-direct {v8, v9, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    throw v8
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v0    # "comparisonTs":I
    .end local v1    # "crid":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v7    # "ts":I
    :catch_0
    move-exception v2

    .line 1456
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v8, "%s"

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1463
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v5    # "max":I
    :cond_2
    return-void
.end method

.method private checkDownloadCount(Ljava/lang/String;II)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aScheduleCount"    # I
    .param p3, "aRemainder"    # I

    .prologue
    .line 939
    const/16 v4, -0x13

    .line 942
    .local v4, "ret":I
    const/4 v7, 0x0

    .line 944
    .local v7, "statemap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadStateAll()Ljava/util/Map;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 951
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 952
    .local v6, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 954
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 955
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 956
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 957
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 959
    .local v8, "value":I
    const/4 v9, 0x1

    if-eq v9, v8, :cond_1

    const/4 v9, 0x2

    if-eq v9, v8, :cond_1

    const/4 v9, 0x3

    if-eq v9, v8, :cond_1

    const/4 v9, 0x4

    if-ne v9, v8, :cond_0

    .line 963
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 945
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v8    # "value":I
    :catch_0
    move-exception v0

    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    move v5, v4

    .line 980
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v4    # "ret":I
    .local v5, "ret":I
    :goto_1
    return v5

    .line 967
    .end local v5    # "ret":I
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v4    # "ret":I
    .restart local v6    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_2
    if-gtz p3, :cond_3

    .line 968
    const/16 v4, -0x28

    :goto_2
    move v5, v4

    .line 980
    .end local v4    # "ret":I
    .restart local v5    # "ret":I
    goto :goto_1

    .line 971
    .end local v5    # "ret":I
    .restart local v4    # "ret":I
    :cond_3
    if-le p3, p2, :cond_4

    .line 972
    const/4 v4, 0x0

    goto :goto_2

    .line 975
    :cond_4
    const/16 v4, -0x13

    goto :goto_2
.end method

.method private checkRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1004
    const/4 v1, 0x1

    .line 1005
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v2

    .line 1009
    .local v2, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->isFcScheduleTimerFinished(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1021
    return v1

    .line 1010
    :catch_0
    move-exception v0

    .line 1011
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1012
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1013
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 1014
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1015
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private checkReserveSchedule(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 22
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p3, "aPackageName"    # Ljava/lang/String;
    .param p4, "aSeriesIdList"    # [Ljava/lang/String;

    .prologue
    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isEncrypted(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 273
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkScheduleCount(Ljava/lang/String;)I

    move-result v5

    .line 274
    .local v5, "countcheckret":I
    if-eqz v5, :cond_0

    .line 400
    .end local v5    # "countcheckret":I
    :goto_0
    return v5

    .line 283
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    .line 285
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const-string v20, "crid://"

    aput-object v20, v15, v19

    .line 286
    .local v15, "seriesIdList":[Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 287
    move-object/from16 v15, p4

    .line 290
    :cond_1
    const/4 v12, 0x0

    .line 291
    .local v12, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 295
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 296
    .local v13, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v19, 0x4

    move/from16 v0, v19

    iput v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 297
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 298
    move-object v4, v15

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v11, :cond_3

    aget-object v14, v4, v8

    .line 299
    .local v14, "seriesId":Ljava/lang/String;
    if-eqz v14, :cond_2

    .line 301
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13, v12, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->attachSeriesToSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 298
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 303
    :catch_0
    move-exception v6

    .line 304
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 305
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v6

    .line 306
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 308
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v6

    .line 309
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v19, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v6, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v19

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 318
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v14    # "seriesId":Ljava/lang/String;
    :cond_3
    const/16 v5, -0x1e

    goto/16 :goto_0

    .line 322
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "packageName":Ljava/lang/String;
    .end local v13    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v15    # "seriesIdList":[Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    .line 323
    .local v3, "accumulateState":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadProgress(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_5

    .line 326
    const/16 v19, 0x33

    iget v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbState:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 330
    const/16 v5, -0x1f

    goto/16 :goto_0

    .line 335
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->infoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-object/from16 v19, v0

    sget-object v20, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->INFORMATION_TYPE_DOWNLOAD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    invoke-virtual/range {v19 .. v20}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 339
    const/16 v5, -0x1b

    goto/16 :goto_0

    .line 343
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isAvailableBookContent(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 348
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 353
    :cond_7
    const/16 v17, 0x0

    .line 354
    .local v17, "version":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 355
    move-object/from16 v0, p2

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v4, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v11, v4

    .restart local v11    # "len$":I
    const/4 v8, 0x0

    .restart local v8    # "i$":I
    :goto_3
    if-ge v8, v11, :cond_8

    aget-object v9, v4, v8

    .line 357
    .local v9, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "other"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 358
    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, ".*Version|.*Base:.*"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 359
    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    const-string v20, "Base:"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .line 360
    .local v16, "startindex":I
    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    .line 361
    .local v10, "lastindex":I
    move/from16 v0, v16

    if-lt v0, v10, :cond_9

    .line 363
    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 375
    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v8    # "i$":I
    .end local v9    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v10    # "lastindex":I
    .end local v11    # "len$":I
    .end local v16    # "startindex":I
    :cond_8
    :goto_4
    const/16 v18, 0x0

    .line 376
    .local v18, "versionflg":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->checkContentVersion(Ljava/lang/String;)Z

    move-result v18

    .line 379
    if-nez v18, :cond_b

    .line 383
    const/16 v5, -0x1b

    goto/16 :goto_0

    .line 366
    .end local v18    # "versionflg":Z
    .restart local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v8    # "i$":I
    .restart local v9    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v10    # "lastindex":I
    .restart local v11    # "len$":I
    .restart local v16    # "startindex":I
    :cond_9
    iget-object v0, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 368
    goto :goto_4

    .line 355
    .end local v10    # "lastindex":I
    .end local v16    # "startindex":I
    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 386
    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v8    # "i$":I
    .end local v9    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v11    # "len$":I
    .restart local v18    # "versionflg":Z
    :cond_b
    const/4 v7, 0x0

    .line 387
    .local v7, "formatflg":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCompatibility(Ljava/lang/String;)Z

    move-result v7

    .line 390
    if-nez v7, :cond_c

    .line 394
    const/16 v5, -0x1b

    goto/16 :goto_0

    .line 400
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private checkScheduleCount(Ljava/lang/String;)I
    .locals 11
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 863
    const/16 v2, -0x13

    .line 866
    .local v2, "ret":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    .line 867
    .local v4, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/4 v1, 0x0

    .line 869
    .local v1, "remainder":I
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->countCridInfo()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 882
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v6, "scheduledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v5, -0x1

    .line 884
    .local v5, "schedulecount":I
    const/16 v7, 0x14

    .line 887
    .local v7, "scheduletype":I
    :try_start_1
    invoke-virtual {v4, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getReservedSchedule(ILjava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_3

    .line 903
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 907
    invoke-direct {p0, p1, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkDownloadCount(Ljava/lang/String;II)I

    move-result v2

    move v3, v2

    .line 911
    .end local v2    # "ret":I
    .end local v5    # "schedulecount":I
    .end local v6    # "scheduledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v7    # "scheduletype":I
    .local v3, "ret":I
    :goto_1
    return v3

    .line 870
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    :catch_0
    move-exception v0

    .line 871
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v8, "%s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/4 v9, -0x5

    if-eq v8, v9, :cond_0

    iget v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/16 v9, -0x16

    if-ne v8, v9, :cond_1

    .line 874
    :cond_0
    const/4 v2, 0x0

    :cond_1
    move v3, v2

    .line 879
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_1

    .line 888
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v3    # "ret":I
    .restart local v2    # "ret":I
    .restart local v5    # "schedulecount":I
    .restart local v6    # "scheduledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v7    # "scheduletype":I
    :catch_1
    move-exception v0

    .line 890
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v8, "%s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 892
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 894
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v8, "%s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 895
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 896
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v0

    .line 901
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private deleteContents(Ljava/lang/String;)V
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1790
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1791
    .local v11, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput v2, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1792
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1794
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v10, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v0

    invoke-virtual {v0, v11, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 1796
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v13, v0, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 1804
    .local v9, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1805
    .local v7, "cridlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1806
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentAuto(Ljava/util/List;I)Ljava/util/List;

    .line 1809
    iget v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    if-eq v3, v0, :cond_2

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v0

    iget-object v1, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v0, p1, v1, v13, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistoryForContentsDeletion(Ljava/lang/String;Ljava/lang/String;II)I

    .line 1819
    const-string v0, "DeleteContents CRID:%s Reason:%d"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v12

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v13

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1822
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    if-eqz v0, :cond_0

    .line 1823
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->mDownloadStateListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;

    const/4 v2, 0x0

    const/16 v3, 0x4b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;->onComplementProgressChange(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1828
    :catch_0
    move-exception v8

    .line 1829
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "%s"

    new-array v1, v13, [Ljava/lang/Object;

    aput-object v8, v1, v12

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private deleteContentsThreshold(Ljava/lang/String;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1856
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1857
    .local v4, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v5, 0x4

    iput v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1858
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1860
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1862
    .local v3, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1884
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v6, v5, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-void

    .line 1863
    :catch_0
    move-exception v1

    .line 1864
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1869
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 1870
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1871
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1872
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v1

    .line 1873
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1874
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1875
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 1882
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    goto :goto_0

    .line 1890
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 1891
    .local v2, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/4 v5, 0x2

    iget v6, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    if-eq v5, v6, :cond_0

    .line 1892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1893
    .local v0, "cridList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1895
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->deleteContentByCrid(Ljava/util/List;)Ljava/util/List;

    .line 1898
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->broadcastContentRemoved(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getComplementPossibleTimeList(JJ[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)Ljava/util/List;
    .locals 17
    .param p1, "aPeriodStart"    # J
    .param p3, "aPeriodEnd"    # J
    .param p5, "aLicenseInfoList"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ[",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4334
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 4336
    .local v11, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;>;"
    const-wide/16 v8, 0x0

    .line 4337
    .local v8, "issueStartTime":J
    const-wide/16 v6, 0x0

    .line 4339
    .local v6, "issueEndTime":J
    move-object/from16 v2, p5

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_8

    aget-object v10, v2, v4

    .line 4341
    .local v10, "licenseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    iget-object v12, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    if-eqz v12, :cond_0

    iget-object v12, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    if-nez v12, :cond_1

    .line 4339
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4349
    :cond_1
    iget-object v12, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->startTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_2

    .line 4350
    const-wide/16 v8, 0x0

    .line 4354
    :goto_2
    iget-object v12, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-nez v12, :cond_3

    .line 4355
    const-wide v6, 0x7fffffffffffffffL

    .line 4360
    :goto_3
    cmp-long v12, v8, v6

    if-gtz v12, :cond_0

    .line 4370
    cmp-long v12, v6, p1

    if-lez v12, :cond_0

    cmp-long v12, v8, p3

    if-gez v12, :cond_0

    .line 4377
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$1;)V

    .line 4380
    .local v3, "complementPossibleTime":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;
    cmp-long v12, v8, p1

    if-gtz v12, :cond_4

    cmp-long v12, v6, p3

    if-gtz v12, :cond_4

    .line 4381
    move-wide/from16 v0, p1

    iput-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    .line 4382
    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->endTime:J

    .line 4404
    :goto_4
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4352
    .end local v3    # "complementPossibleTime":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;
    :cond_2
    iget-object v12, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v8, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->startTime:J

    goto :goto_2

    .line 4357
    :cond_3
    iget-object v12, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v12, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v6, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    goto :goto_3

    .line 4384
    .restart local v3    # "complementPossibleTime":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;
    :cond_4
    cmp-long v12, v8, p1

    if-ltz v12, :cond_5

    cmp-long v12, v6, p3

    if-gtz v12, :cond_5

    .line 4385
    iput-wide v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    .line 4386
    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->endTime:J

    goto :goto_4

    .line 4388
    :cond_5
    cmp-long v12, v8, p1

    if-ltz v12, :cond_6

    cmp-long v12, v6, p3

    if-ltz v12, :cond_6

    .line 4389
    iput-wide v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    .line 4390
    move-wide/from16 v0, p3

    iput-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->endTime:J

    goto :goto_4

    .line 4392
    :cond_6
    cmp-long v12, v8, p1

    if-gtz v12, :cond_7

    cmp-long v12, v6, p3

    if-ltz v12, :cond_7

    .line 4393
    move-wide/from16 v0, p1

    iput-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    .line 4394
    move-wide/from16 v0, p3

    iput-wide v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->endTime:J

    goto :goto_4

    .line 4397
    :cond_7
    const-string v12, "license data error"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 4409
    .end local v3    # "complementPossibleTime":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;
    .end local v10    # "licenseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_8
    return-object v11
.end method

.method private getCompleteOnlyTriggerTime(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)J
    .locals 30
    .param p1, "aMetainfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .prologue
    .line 4163
    const-wide/16 v12, 0x0

    .line 4166
    .local v12, "completeOnlyTriggerTime":J
    if-nez p1, :cond_0

    .line 4167
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4305
    .end local v12    # "completeOnlyTriggerTime":J
    .local v14, "completeOnlyTriggerTime":J
    :goto_0
    return-wide v14

    .line 4175
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_0
    const-wide/16 v24, 0x0

    .line 4176
    .local v24, "periodStartAvailability":J
    const-wide/16 v22, 0x0

    .line 4177
    .local v22, "periodEndAvailability":J
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    if-eqz v5, :cond_1

    .line 4178
    const/4 v4, 0x0

    .local v4, "cnt":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 4179
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v5, v5, v4

    if-eqz v5, :cond_2

    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v5, v5, v4

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v5, v5, v4

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    const-string v27, "availability"

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4182
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v5, v5, v4

    iget-wide v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    move-wide/from16 v24, v0

    .line 4183
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v5, v5, v4

    iget-wide v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v22, v0

    .line 4188
    .end local v4    # "cnt":I
    :cond_1
    const-wide/16 v28, 0x0

    cmp-long v5, v28, v24

    if-ltz v5, :cond_3

    .line 4189
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4193
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto :goto_0

    .line 4178
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v4    # "cnt":I
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4196
    .end local v4    # "cnt":I
    :cond_3
    const-wide/16 v28, 0x0

    cmp-long v5, v28, v22

    if-ltz v5, :cond_4

    .line 4197
    const-wide v22, 0x7fffffffffffffffL

    .line 4201
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v5, :cond_5

    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v5, :cond_6

    .line 4202
    :cond_5
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4206
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto :goto_0

    .line 4208
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_6
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    move-wide/from16 v18, v0

    .line 4209
    .local v18, "manualRepairStart":J
    move-object/from16 v0, p1

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v16, v0

    .line 4210
    .local v16, "manualRepairEnd":J
    const-wide/16 v28, 0x0

    cmp-long v5, v18, v28

    if-eqz v5, :cond_7

    const-wide/16 v28, 0x0

    cmp-long v5, v16, v28

    if-nez v5, :cond_8

    .line 4211
    :cond_7
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4215
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0

    .line 4226
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_8
    move-wide/from16 v0, v24

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 4227
    .local v6, "periodStart":J
    move-wide/from16 v0, v22

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 4228
    .local v8, "periodEnd":J
    cmp-long v5, v6, v8

    if-ltz v5, :cond_9

    .line 4229
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4233
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0

    .line 4240
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_9
    const/4 v10, 0x0

    .line 4242
    .local v10, "licenseInfoList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 4255
    if-eqz v10, :cond_a

    array-length v5, v10

    if-nez v5, :cond_b

    .line 4256
    :cond_a
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4260
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0

    .line 4244
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :catch_0
    move-exception v11

    .line 4245
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4246
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4250
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0

    .line 4251
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :catch_1
    move-exception v11

    .line 4252
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4253
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :cond_b
    move-object/from16 v5, p0

    .line 4264
    invoke-direct/range {v5 .. v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getComplementPossibleTimeList(JJ[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)Ljava/util/List;

    move-result-object v26

    .line 4266
    .local v26, "timeList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;>;"
    if-eqz v26, :cond_c

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_d

    .line 4267
    :cond_c
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4271
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0

    .line 4275
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_d
    const-wide/16 v20, 0x0

    .line 4278
    .local v20, "nowTime":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-wide v20

    .line 4289
    const-wide v12, 0x7fffffffffffffffL

    .line 4290
    const/4 v4, 0x0

    .restart local v4    # "cnt":I
    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_10

    .line 4291
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;

    iget-wide v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    move-wide/from16 v28, v0

    cmp-long v5, v20, v28

    if-gtz v5, :cond_f

    .line 4292
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;

    iget-wide v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->startTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 4290
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4279
    .end local v4    # "cnt":I
    :catch_2
    move-exception v11

    .line 4280
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v5, "%s"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aput-object v11, v27, v28

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4281
    const-wide/16 v12, 0x0

    move-wide v14, v12

    .line 4285
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0

    .line 4294
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v14    # "completeOnlyTriggerTime":J
    .restart local v4    # "cnt":I
    .restart local v12    # "completeOnlyTriggerTime":J
    :cond_f
    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;

    iget-wide v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcComplementPossibleTimeList;->endTime:J

    move-wide/from16 v28, v0

    cmp-long v5, v20, v28

    if-gez v5, :cond_e

    .line 4295
    move-wide/from16 v12, v20

    .line 4299
    :cond_10
    const-wide v28, 0x7fffffffffffffffL

    cmp-long v5, v12, v28

    if-nez v5, :cond_11

    .line 4300
    const-wide/16 v12, 0x0

    :cond_11
    move-wide v14, v12

    .line 4305
    .end local v12    # "completeOnlyTriggerTime":J
    .restart local v14    # "completeOnlyTriggerTime":J
    goto/16 :goto_0
.end method

.method private getMetadataByCridFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 678
    const/4 v4, 0x0

    .line 679
    .local v4, "result":Z
    const/4 v1, 0x0

    .line 681
    .local v1, "foreignMode":I
    if-nez p1, :cond_0

    move v5, v4

    .line 722
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .line 689
    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v2

    .line 690
    .local v2, "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkForeignMode()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 705
    if-nez v1, :cond_1

    .line 707
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 709
    .local v3, "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :try_start_1
    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvByCridFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .line 710
    .local v6, "ret":I
    if-nez v6, :cond_1

    .line 711
    const/4 v4, 0x1

    .end local v3    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v6    # "ret":I
    :cond_1
    :goto_1
    move v5, v4

    .line 722
    .restart local v5    # "result":I
    goto :goto_0

    .line 691
    .end local v2    # "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v5    # "result":I
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v7, "%s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v4

    .line 696
    .restart local v5    # "result":I
    goto :goto_0

    .line 697
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .end local v5    # "result":I
    :catch_1
    move-exception v0

    .line 698
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v7, "%s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v4

    .line 702
    .restart local v5    # "result":I
    goto :goto_0

    .line 713
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v5    # "result":I
    .restart local v2    # "mConflict":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v3    # "metadatactl":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :catch_2
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 715
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getScheduledData(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;JZ)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .param p3, "aCurrentTime"    # J
    .param p5, "aIsLast"    # Z

    .prologue
    .line 2025
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v1

    .line 2028
    .local v1, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2029
    .local v4, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2030
    const/4 v5, 0x4

    iput v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2033
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2038
    .local v2, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    invoke-virtual {v1, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2056
    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 2060
    const/4 v3, 0x0

    .line 2079
    :cond_0
    :goto_0
    return-object v3

    .line 2039
    :catch_0
    move-exception v0

    .line 2040
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2045
    const/4 v3, 0x0

    goto :goto_0

    .line 2046
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_1
    move-exception v0

    .line 2047
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2049
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2050
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 2051
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2053
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 2064
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 2065
    .local v3, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-wide v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    const-wide/16 v8, 0x2710

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 2066
    iget-wide v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 2067
    iget-wide v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 2069
    const/4 v5, 0x2

    iget v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    if-ne v5, p5, :cond_0

    .line 2071
    iget v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v5, v5, -0x100

    iput v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2072
    iget v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v5, v5, 0x6

    iput v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_0
.end method

.method private registerSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 15
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aContentsInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .param p3, "aIsLast"    # Z
    .param p4, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 1936
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v12

    .line 1937
    .local v12, "metadatamodule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v11, 0x0

    .line 1938
    .local v11, "metadatainfobase":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v3, 0x1

    const-string v4, "ja"

    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v11

    .line 1940
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    invoke-virtual {v3, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isEncrypted(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1942
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkScheduleCount(Ljava/lang/String;)I

    move-result v2

    .line 1943
    .local v2, "countcheckret":I
    if-eqz v2, :cond_1

    .line 1944
    move-object/from16 v0, p4

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1945
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistoryMaximumNumberOver(Ljava/lang/String;)I

    .line 1997
    .end local v2    # "countcheckret":I
    :cond_0
    :goto_0
    return-void

    .line 1955
    :cond_1
    const-wide/16 v6, 0x0

    .line 1957
    .local v6, "currenttime":J
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 1962
    const-wide/16 v4, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    .line 1970
    invoke-direct/range {v3 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getScheduledData(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;JZ)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v14

    .line 1975
    .local v14, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-eqz v14, :cond_0

    .line 1976
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1977
    .local v13, "packageName":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1978
    .local v9, "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    invoke-virtual {v3, v14, v13, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 1981
    .end local v9    # "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1982
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1983
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1958
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .end local v14    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_1
    move-exception v10

    .line 1959
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1960
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1984
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v14    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_2
    move-exception v10

    .line 1985
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1986
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1987
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v10

    .line 1988
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1989
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1990
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_4
    move-exception v10

    .line 1991
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private registerScheduleComplementFdtInner(Ljava/lang/String;Z)Z
    .locals 22
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aIsRandom"    # Z

    .prologue
    .line 2370
    const/4 v14, 0x0

    .line 2373
    .local v14, "result":Z
    const/4 v11, 0x0

    .line 2375
    .local v11, "fdtSchedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v3, 0x2000

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 2383
    :goto_0
    if-eqz v11, :cond_0

    .line 2385
    :try_start_1
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v20, "schedule exists"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2446
    :catch_0
    move-exception v10

    .line 2447
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v10, v20, v21

    move-object/from16 v0, v20

    invoke-static {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2453
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :goto_1
    return v14

    .line 2389
    :cond_0
    :try_start_2
    new-instance v17, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Ljava/lang/String;)V

    .line 2392
    .local v17, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->hasFdtInstance()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2393
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v20, "FDT instance exists"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2397
    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isManualRepairPercentageZero()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2398
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v20, "manualRepairPercentage is not zero"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2402
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getTime()J

    move-result-wide v4

    .line 2403
    .local v4, "currentTime":J
    const-wide/16 v20, 0x0

    cmp-long v3, v20, v4

    if-ltz v3, :cond_3

    .line 2404
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v20, "failed to get current time"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2408
    :cond_3
    const-wide/16 v18, 0x0

    .line 2409
    .local v18, "triggerTime":J
    if-eqz p2, :cond_4

    .line 2410
    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->getLastBroadcastStopTime()J

    move-result-wide v6

    .line 2411
    .local v6, "lastStopTime":J
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbTransmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .local v8, "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    move-object/from16 v3, p0

    .line 2413
    invoke-direct/range {v3 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->calcAutoComplementFdtTime(JJLmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;)J

    move-result-wide v18

    .line 2419
    .end local v6    # "lastStopTime":J
    .end local v8    # "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    :goto_2
    invoke-virtual/range {v17 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setTime(J)V

    .line 2420
    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->checkManualComplementPeriod(Z)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2421
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v20, "triggerTime is out of period"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2416
    :cond_4
    const-wide/32 v20, 0x1499700

    add-long v18, v4, v20

    goto :goto_2

    .line 2428
    :cond_5
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 2429
    .local v15, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    move-object/from16 v0, p1

    iput-object v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 2430
    move-wide/from16 v0, v18

    iput-wide v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 2431
    const/16 v3, 0x2000

    iput v3, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 2432
    const/4 v3, 0x1

    iput v3, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 2433
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->mmbInfoBase:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v9, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    .line 2435
    .local v9, "basicDescription":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;
    if-eqz v9, :cond_6

    iget-object v3, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    if-eqz v3, :cond_6

    .line 2436
    iget-object v2, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v13, v2

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_3
    if-ge v12, v13, :cond_6

    aget-object v16, v2, v12

    .line 2437
    .local v16, "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    if-eqz v16, :cond_7

    const-string v3, "main"

    move-object/from16 v0, v16

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2438
    move-object/from16 v0, v16

    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    iput-object v3, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 2443
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v16    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->setScheduleInternal(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2445
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 2436
    .restart local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v16    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2377
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v4    # "currentTime":J
    .end local v9    # "basicDescription":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v16    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v17    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    .end local v18    # "triggerTime":J
    :catch_1
    move-exception v3

    goto/16 :goto_0
.end method

.method private reschAfterUpdateMeta(Ljava/lang/String;)V
    .locals 21
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 3392
    .local v4, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v5

    .line 3393
    .local v5, "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    .line 3396
    .local v6, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkLastBroadcastFromSchedule(Ljava/lang/String;)I

    move-result v11

    .line 3400
    .local v11, "isLastBradcast":I
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerLastSchduleStateMap(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3404
    :try_start_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v15

    .line 3407
    .local v15, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    iget v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    move/from16 v17, v0

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 3408
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    .line 3413
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->updateScheduleStateInfo(Ljava/lang/String;I)I

    .line 3415
    const/4 v8, -0x1

    .line 3416
    .local v8, "downloadState":I
    const/4 v12, 0x0

    .line 3417
    .local v12, "isStateStore":Z
    iget-object v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3418
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v8

    .line 3423
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v8, v0, :cond_1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v8, v0, :cond_2

    .line 3425
    :cond_1
    const/4 v12, 0x1

    .line 3426
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeDownloadContentState(Ljava/lang/String;)I

    .line 3427
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 3431
    .local v16, "stateList":[I
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getProcessingList([I)Ljava/util/List;

    move-result-object v7

    .line 3432
    .local v7, "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_2

    .line 3433
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifySignalLevelOff()V

    .line 3436
    .end local v7    # "downloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "stateList":[I
    :cond_2
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3437
    if-eqz v12, :cond_4

    .line 3439
    :try_start_2
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->releaseDownloadingCrid(Ljava/lang/String;)V

    .line 3440
    const v17, 0x7f040004

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNotice(Ljava/lang/String;IZ)V

    .line 3441
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_3

    .line 3442
    new-instance v13, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;

    invoke-direct {v13}, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;-><init>()V

    .line 3443
    .local v13, "notice":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;
    move-object/from16 v0, p1

    iput-object v0, v13, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    .line 3444
    sget-object v17, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->DOWNLOAD_FAILED_INTERRUPTION:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;

    invoke-virtual/range {v17 .. v17}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadReason;->getInt()I

    move-result v17

    move/from16 v0, v17

    iput v0, v13, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->reason:I

    .line 3445
    invoke-virtual {v6, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getHistoryReason(Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;)I

    move-result v10

    .line 3446
    .local v10, "historyReason":I
    const/4 v9, 0x1

    .line 3447
    .local v9, "historyCategory":I
    iget-object v0, v13, Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;->crid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;II)I

    .line 3449
    .end local v9    # "historyCategory":I
    .end local v10    # "historyReason":I
    .end local v13    # "notice":Lmmb/android/MmbFcContMw/MmbFcContMwDownloadNoticeEnd;
    :cond_3
    const-string v17, "DownloadFailed CRID:%s Reason:%d"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p1, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x10

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3459
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeLastSchduleStateMap(Ljava/lang/String;)V

    .line 3465
    return-void

    .line 3436
    :catchall_0
    move-exception v17

    :try_start_3
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3459
    .end local v8    # "downloadState":I
    .end local v12    # "isStateStore":Z
    .end local v15    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :catchall_1
    move-exception v17

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->removeLastSchduleStateMap(Ljava/lang/String;)V

    throw v17

    .line 3452
    .restart local v8    # "downloadState":I
    .restart local v12    # "isStateStore":Z
    .restart local v15    # "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;

    move-result-object v14

    .line 3454
    .local v14, "repairNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;
    const/16 v17, 0x49

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementNoticeSv;->getRepairCallback(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 3427
    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private setReserveTime(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;J)V
    .locals 6
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aCurrentTime"    # J

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1367
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1368
    .local v2, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    const/4 v3, 0x4

    iput v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1369
    iget-object v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v1, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1390
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1392
    iput-wide p2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    .line 1401
    :goto_1
    return-void

    .line 1376
    :catch_0
    move-exception v0

    .line 1377
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1378
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1379
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 1380
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v3, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1381
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1382
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 1386
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1395
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :cond_0
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-wide v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    iput-wide v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork2:J

    goto :goto_1
.end method

.method private setScheduleDataCommon(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V
    .locals 10
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p3, "aType"    # I
    .param p4, "aProgramList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .prologue
    .line 1157
    const/4 v5, 0x4

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 1158
    const/4 v5, 0x2

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 1159
    const/16 v5, 0xb

    if-ne v5, p3, :cond_2

    .line 1161
    const/4 v5, 0x2

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    .line 1176
    :goto_0
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    if-eqz v5, :cond_5

    .line 1177
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 1178
    .local v4, "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    const-string v6, "main"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1179
    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 1180
    iget-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    iput-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 1190
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_0
    :goto_2
    if-eqz p4, :cond_6

    .line 1191
    move-object v0, p4

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_3
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .line 1193
    .local v3, "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    const-wide/16 v8, 0x2710

    add-long/2addr v6, v8

    iget-wide v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_1

    iget-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    iget-wide v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 1195
    iget-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    iput-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 1196
    iget-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    iput-wide v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 1191
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1165
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_2
    const/16 v5, 0xc

    if-ne v5, p3, :cond_3

    .line 1167
    const/4 v5, 0x1

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    goto :goto_0

    .line 1173
    :cond_3
    const/4 v5, 0x4

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    goto :goto_0

    .line 1177
    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1187
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_5
    const-string v5, "aPgInfo.basicDescription.title null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1200
    :cond_6
    const-string v5, "aprogramList null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    :cond_7
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    if-eqz v5, :cond_c

    .line 1205
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "\u97f3\u58f0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1207
    const/4 v5, 0x2

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    .line 1227
    :goto_4
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    if-eqz v5, :cond_d

    .line 1229
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->onDemandService:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;

    iget v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwOnDemandService;->serviceId:I

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbServiceId:I

    .line 1237
    :goto_5
    return-void

    .line 1208
    :cond_8
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "\u6620\u50cf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1211
    const/4 v5, 0x1

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_4

    .line 1212
    :cond_9
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "\u753b\u50cf"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1215
    const/16 v5, 0x8

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_4

    .line 1216
    :cond_a
    iget-object v5, p2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->contentProperty:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;

    iget-object v5, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwContentProperty;->contentType:Ljava/lang/String;

    const-string v6, "HTML\u6587\u66f8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1218
    const/16 v5, 0x10

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_4

    .line 1221
    :cond_b
    const/16 v5, 0x20

    iput v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentMedia:I

    goto :goto_4

    .line 1224
    :cond_c
    const-string v5, "aPgInfo.basicDescription.contentProperty null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1231
    :cond_d
    const-string v5, "aPgInfo.onDemandService null"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method

.method private setScheduleDataWork(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IJZ[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V
    .locals 14
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p3, "aType"    # I
    .param p4, "aCurrentTime"    # J
    .param p6, "aIsCompleteOnly"    # Z
    .param p7, "aProgramList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .prologue
    .line 1271
    if-eqz p6, :cond_0

    .line 1273
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v10, v10, 0x0

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 1342
    :goto_0
    return-void

    .line 1281
    :cond_0
    const/16 v10, 0xb

    move/from16 v0, p3

    if-ne v10, v0, :cond_5

    .line 1283
    if-eqz p7, :cond_4

    .line 1284
    move-object/from16 v0, p7

    array-length v10, v0

    add-int/lit8 v4, v10, -0x1

    .line 1285
    .local v4, "end":I
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v10, v10, -0x100

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 1286
    if-ltz v4, :cond_1

    aget-object v10, p7, v4

    iget-wide v10, v10, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    iget-wide v12, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_3

    .line 1288
    :cond_1
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v10, v10, 0x6

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 1334
    .end local v4    # "end":I
    :cond_2
    :goto_1
    const/4 v9, 0x0

    .line 1335
    .local v9, "state":I
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/2addr v10, v9

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 1337
    move-wide/from16 v0, p4

    invoke-direct {p0, p1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->setReserveTime(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;J)V

    goto :goto_0

    .line 1292
    .end local v9    # "state":I
    .restart local v4    # "end":I
    :cond_3
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v10, v10, 0x5

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 1296
    .end local v4    # "end":I
    :cond_4
    const-string v10, "aprogramList null"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 1298
    :cond_5
    const/16 v10, 0xc

    move/from16 v0, p3

    if-ne v10, v0, :cond_b

    .line 1300
    const/4 v5, 0x0

    .line 1301
    .local v5, "forceflg":Z
    const/4 v3, 0x0

    .line 1302
    .local v3, "autoflg":Z
    move-object/from16 v0, p2

    iget-object v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v10, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-eqz v10, :cond_8

    .line 1303
    move-object/from16 v0, p2

    iget-object v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v2, v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v8, :cond_8

    aget-object v7, v2, v6

    .line 1304
    .local v7, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v10, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v11, "other"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1305
    iget-object v10, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".*force_receive:ON.*"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1307
    const/4 v5, 0x1

    .line 1309
    :cond_6
    iget-object v10, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".*auto_receive:ON.*"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 1311
    const/4 v3, 0x1

    .line 1313
    :cond_7
    if-eqz v5, :cond_9

    if-eqz v3, :cond_9

    .line 1319
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v6    # "i$":I
    .end local v7    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v8    # "len$":I
    :cond_8
    if-eqz v5, :cond_a

    .line 1321
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v10, v10, 0x4

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 1303
    .restart local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v6    # "i$":I
    .restart local v7    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v8    # "len$":I
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1323
    .end local v2    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v6    # "i$":I
    .end local v7    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v8    # "len$":I
    :cond_a
    if-eqz v3, :cond_2

    .line 1325
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v10, v10, 0x2

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 1328
    .end local v3    # "autoflg":Z
    .end local v5    # "forceflg":Z
    :cond_b
    const/16 v10, 0xd

    move/from16 v0, p3

    if-ne v10, v0, :cond_2

    .line 1330
    iget v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v10, v10, 0x3

    iput v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto/16 :goto_1
.end method

.method private setScheduleInternal(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 4
    .param p1, "aScheduledata"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2603
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2622
    :goto_0
    return-void

    .line 2604
    :catch_0
    move-exception v0

    .line 2605
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2606
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2607
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2608
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2609
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 2610
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2611
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 2612
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v0

    .line 2613
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2614
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_4
    move-exception v0

    .line 2615
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2616
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    :catch_5
    move-exception v0

    .line 2617
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v1, "%s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method commonReserveSchedule(Ljava/lang/String;JIILjava/lang/String;[Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 22
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCurrentTime"    # J
    .param p4, "aType"    # I
    .param p5, "aCount"    # I
    .param p6, "aPackageName"    # Ljava/lang/String;
    .param p7, "aSeriesIdList"    # [Ljava/lang/String;
    .param p8, "aIsCompleteOnly"    # Z
    .param p9, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 528
    const/4 v15, -0x1

    .line 531
    .local v15, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mmbScheduleType = SCHEDULE_TYPE_FC_ACCUMULATION AND mmbCrid = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " AND mmbWork1 & "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x100

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 535
    .local v20, "searchstring":Ljava/lang/String;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v16, "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_6

    .line 562
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 566
    const/16 v4, -0x1e

    .line 656
    :goto_1
    return v4

    .line 538
    :catch_0
    move-exception v12

    .line 539
    .local v12, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v4, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    invoke-static {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v15

    .line 543
    goto :goto_1

    .line 544
    .end local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v12

    .line 545
    .local v12, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v4, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    invoke-static {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v15

    .line 549
    goto :goto_1

    .line 550
    .end local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v12

    .line 551
    .local v12, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v4, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    invoke-static {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v15

    .line 555
    goto :goto_1

    .line 571
    .end local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v14

    .line 572
    .local v14, "metadatamodule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v13, 0x0

    .line 573
    .local v13, "metadatainfobase":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v6, 0x0

    .line 575
    .local v6, "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    const/4 v4, 0x1

    :try_start_1
    const-string v7, "ja"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v13

    .line 581
    if-eqz v13, :cond_1

    instance-of v4, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    if-nez v4, :cond_4

    .line 583
    :cond_1
    const/16 v17, 0x0

    .line 584
    .local v17, "ret":Z
    const/16 v4, 0xd

    move/from16 v0, p4

    if-ne v0, v4, :cond_2

    .line 585
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getMetadataByCridFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v17

    .line 586
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_2

    .line 588
    const/4 v4, 0x1

    :try_start_2
    const-string v7, "ja"

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v13

    .line 596
    :cond_2
    if-eqz v13, :cond_3

    instance-of v4, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_4

    :cond_3
    move v4, v15

    .line 602
    goto :goto_1

    .line 576
    .end local v17    # "ret":Z
    :catch_3
    move-exception v12

    .line 577
    .local v12, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    const-string v4, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    invoke-static {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 589
    .end local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    .restart local v17    # "ret":Z
    :catch_4
    move-exception v12

    .line 590
    .restart local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    const-string v4, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v7, v8

    invoke-static {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .end local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    .end local v17    # "ret":Z
    :cond_4
    move-object v6, v13

    .line 605
    check-cast v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 609
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkReserveSchedule(Ljava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_5

    move-result v15

    .line 616
    if-eqz v15, :cond_5

    move v4, v15

    .line 620
    goto/16 :goto_1

    .line 610
    :catch_5
    move-exception v12

    .local v12, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    move v4, v15

    .line 614
    goto/16 :goto_1

    .line 623
    .end local v12    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_5
    const-wide/16 v18, 0x0

    .line 624
    .local v18, "scheduletime":J
    if-eqz p8, :cond_6

    .line 625
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getCompleteOnlyTriggerTime(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)J

    move-result-wide v18

    .line 633
    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v4, v8, v18

    if-nez v4, :cond_7

    .line 634
    const/4 v15, -0x1

    move v4, v15

    .line 638
    goto/16 :goto_1

    .line 629
    :cond_6
    invoke-virtual/range {p0 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->getOnDemandTime(Ljava/lang/String;J)J

    move-result-wide v18

    goto :goto_2

    .line 642
    :cond_7
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 643
    .local v5, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 644
    move-wide/from16 v0, v18

    iput-wide v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 645
    move-object/from16 v0, p7

    iput-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbSeriesId:[Ljava/lang/String;

    .line 646
    const/16 v4, 0xd

    move/from16 v0, p4

    if-ne v4, v0, :cond_8

    .line 647
    add-int/lit8 v4, p5, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork3:Ljava/lang/String;

    :cond_8
    move-object/from16 v4, p0

    move/from16 v7, p4

    move-wide/from16 v8, p2

    move-object/from16 v10, p6

    move/from16 v11, p8

    .line 650
    invoke-virtual/range {v4 .. v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reserveSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IJLjava/lang/String;Z)I

    move-result v15

    move v4, v15

    .line 656
    goto/16 :goto_1

    .line 556
    .end local v5    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v6    # "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v13    # "metadatainfobase":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v14    # "metadatamodule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .end local v18    # "scheduletime":J
    :catch_6
    move-exception v4

    goto/16 :goto_0
.end method

.method deleteScheduleComplementFdt(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2545
    const/4 v1, 0x0

    .line 2549
    .local v1, "fdtSchedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {p0, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 2556
    :goto_0
    if-eqz v1, :cond_0

    .line 2558
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v2

    .line 2560
    .local v2, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_1
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3

    .line 2583
    .end local v2    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_0
    return-void

    .line 2561
    .restart local v2    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_0
    move-exception v0

    .line 2563
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2564
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 2565
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2567
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2568
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 2569
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 2571
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2572
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v3

    .line 2573
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_3
    move-exception v0

    .line 2575
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2576
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 2550
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v2    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method executeTaskReschedule(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3363
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V

    .line 3364
    .local v1, "scheduleProcessThread":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunReschedule;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3367
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    :goto_0
    return-void

    .line 3368
    :catch_0
    move-exception v0

    .line 3370
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method executeTaskUpdateProgramInformation(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3339
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;Ljava/lang/String;)V

    .line 3340
    .local v1, "scheduleProcessThread":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbRunUpdateProgramInformation;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3343
    .local v2, "thread":Ljava/lang/Thread;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3348
    :goto_0
    return-void

    .line 3344
    :catch_0
    move-exception v0

    .line 3346
    .local v0, "e":Ljava/lang/IllegalThreadStateException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method getOnDemandTime(Ljava/lang/String;J)J
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCurrentTime"    # J

    .prologue
    .line 745
    const-wide/16 v8, 0x0

    .line 748
    .local v8, "scheduletime":J
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 751
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v6

    .line 753
    .local v6, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v6, :cond_0

    .line 754
    move-object v0, v6

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 756
    .local v5, "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    cmp-long v7, p2, v10

    if-gez v7, :cond_2

    .line 759
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    const-wide/16 v12, 0x2710

    sub-long v8, v10, v12

    .line 775
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v1    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v6    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_0
    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v7, v10, v8

    if-ltz v7, :cond_1

    .line 776
    const-wide/16 v8, 0x0

    .line 782
    :cond_1
    return-wide v8

    .line 761
    .restart local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v1    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v6    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_2
    iget-wide v10, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v7, p2, v10

    if-gez v7, :cond_3

    .line 762
    move-wide/from16 v8, p2

    .line 763
    goto :goto_1

    .line 754
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 767
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v1    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v6    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :catch_0
    move-exception v2

    .line 768
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 769
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v2

    .line 770
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 771
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v10, "meta middle regist error"

    invoke-direct {v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method getOnDemandTime(Ljava/lang/String;J[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)J
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCurrentTime"    # J
    .param p4, "aProgramList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .prologue
    .line 805
    const-wide/16 v6, 0x0

    .line 808
    .local v6, "scheduletime":J
    if-eqz p4, :cond_0

    .line 809
    move-object/from16 v0, p4

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 811
    .local v4, "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    iget-wide v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    cmp-long v5, p2, v8

    if-gez v5, :cond_2

    .line 814
    iget-wide v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    const-wide/16 v10, 0x2710

    sub-long v6, v8, v10

    .line 830
    .end local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_0
    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v5, v8, v6

    if-ltz v5, :cond_1

    .line 831
    const-wide/16 v6, 0x0

    .line 837
    :cond_1
    return-wide v6

    .line 816
    .restart local v0    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_2
    iget-wide v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v5, p2, v8

    if-gez v5, :cond_3

    .line 817
    move-wide v6, p2

    .line 818
    goto :goto_1

    .line 809
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 822
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 824
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 825
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 826
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v8, "meta middle regist error"

    invoke-direct {v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method getScheduleList(I)Ljava/util/List;
    .locals 5
    .param p1, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2880
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2882
    .local v1, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getSchedule(ILjava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2897
    :goto_0
    return-object v1

    .line 2883
    :catch_0
    move-exception v0

    .line 2884
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2885
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2886
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 2887
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v2, "%s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2888
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2889
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method isCompleteOnlySchedule(Ljava/lang/String;)Z
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 3229
    const/4 v2, 0x0

    .line 3230
    .local v2, "result":Z
    const/4 v4, 0x4

    .line 3231
    .local v4, "scheduleType":I
    const/4 v3, 0x0

    .line 3233
    .local v3, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_start_0
    invoke-virtual {p0, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3238
    iget v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v0, v5, 0xff

    .line 3239
    .local v0, "downloadPriorityType":I
    if-nez v0, :cond_0

    .line 3240
    const/4 v2, 0x1

    .line 3245
    :cond_0
    return v2

    .line 3234
    .end local v0    # "downloadPriorityType":I
    :catch_0
    move-exception v1

    .line 3235
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3236
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method notifyDownloaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadProgressOff(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reservePublishSchedule(Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->broadcastContentAdded(Ljava/lang/String;)V

    .line 1694
    return-void
.end method

.method processUnexpectedDownloadSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 18
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2950
    const-wide/16 v12, 0x0

    .line 2953
    .local v12, "time":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v12

    .line 2959
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v14

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    .line 2960
    .local v4, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v11

    .line 2962
    .local v11, "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mmbScheduleType = SCHEDULE_TYPE_FC_ACCUMULATION AND mmbTriggerTime < "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND mmbWork1 & "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x100

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2967
    .local v10, "searchstring":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2970
    .local v8, "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v10, v15, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2985
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 2986
    .local v9, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual/range {p1 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 3029
    .end local v4    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v9    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v10    # "searchstring":Ljava/lang/String;
    .end local v11    # "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_0
    :goto_1
    return-void

    .line 2954
    :catch_0
    move-exception v5

    .line 2955
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2971
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v4    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v8    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v10    # "searchstring":Ljava/lang/String;
    .restart local v11    # "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_1
    move-exception v5

    .line 2972
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2974
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v5

    .line 2975
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2977
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v5

    .line 2978
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2980
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v5

    .line 2981
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2990
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v9    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_1
    const/4 v14, 0x2

    iget v15, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    if-ne v14, v15, :cond_2

    const/16 v14, 0x1000

    iget v15, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v16, 0xf000

    and-int v15, v15, v16

    if-eq v14, v15, :cond_2

    .line 2992
    iget-object v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iget-object v15, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setHistory(Ljava/lang/String;Ljava/lang/String;II)I

    .line 2996
    :cond_2
    const/16 v14, 0x1000

    iget v15, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v16, 0xf000

    and-int v15, v15, v16

    if-eq v14, v15, :cond_3

    .line 2997
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 2998
    .local v2, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentNotification()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;

    move-result-object v3

    .line 2999
    .local v3, "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    iget-object v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const v15, 0x7f040004

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v14, v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;->notifyDownloadFailedNoticeToWakeup(Ljava/lang/String;IZ)V

    .line 3001
    .end local v2    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v3    # "contentNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentNotificationSv;
    :cond_3
    const-string v14, "DownloadFailed CRID:%s Reason:%d"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3003
    iget v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v15, -0xff01

    and-int/2addr v14, v15

    or-int/lit8 v14, v14, 0x0

    iput v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 3007
    :try_start_2
    iget-object v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3008
    .local v7, "packageName":Ljava/lang/String;
    invoke-virtual {v11, v9, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->updateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_2 .. :try_end_2} :catch_7

    .line 3023
    iget-object v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3009
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 3010
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3011
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v14, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 3012
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_6
    move-exception v5

    .line 3013
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3014
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v14, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v14

    .line 3015
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_7
    move-exception v5

    .line 3016
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v14, "%s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method processUnexpectedRepairFdtSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 13
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3143
    const-wide/16 v6, 0x0

    .line 3147
    .local v6, "time":J
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 3153
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    .line 3155
    .local v8, "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mmbScheduleType = SCHEDULE_TYPE_FC_ACCUMULATION AND mmbTriggerTime < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND mmbWork1 & "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/high16 v10, 0x10000

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3160
    .local v5, "searchstring":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3163
    .local v3, "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_1
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3178
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 3179
    .local v4, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3209
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v5    # "searchstring":Ljava/lang/String;
    .end local v8    # "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_0
    :goto_1
    return-void

    .line 3148
    :catch_0
    move-exception v0

    .line 3149
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3164
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v3    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v5    # "searchstring":Ljava/lang/String;
    .restart local v8    # "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_1
    move-exception v0

    .line 3165
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3167
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 3168
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3170
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v0

    .line 3171
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3173
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v0

    .line 3174
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3184
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_1
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtRandom(Ljava/lang/String;)Z

    .line 3187
    iget v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v10, -0xf0001

    and-int/2addr v9, v10

    iput v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 3189
    :try_start_2
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3190
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->updateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 3191
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 3192
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3193
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 3194
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_6
    move-exception v0

    .line 3195
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3196
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 3197
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_7
    move-exception v0

    .line 3198
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method processUnexpectedRepairSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 13
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 3053
    const-wide/16 v6, 0x0

    .line 3057
    .local v6, "time":J
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 3063
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    .line 3065
    .local v8, "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mmbScheduleType = SCHEDULE_TYPE_FC_ACCUMULATION AND mmbTriggerTime < "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND mmbWork1 & "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x200

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3070
    .local v5, "searchstring":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3073
    .local v3, "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_1
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_4

    .line 3088
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 3089
    .local v4, "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3120
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v5    # "searchstring":Ljava/lang/String;
    .end local v8    # "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_0
    :goto_1
    return-void

    .line 3058
    :catch_0
    move-exception v0

    .line 3059
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3074
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v3    # "resultlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v5    # "searchstring":Ljava/lang/String;
    .restart local v8    # "tmScheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_1
    move-exception v0

    .line 3075
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3077
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 3078
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3080
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v0

    .line 3081
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3083
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v0

    .line 3084
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 3094
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v4    # "scheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_1
    iget v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v10, -0xff01

    and-int/2addr v9, v10

    or-int/lit8 v9, v9, 0x0

    iput v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 3098
    :try_start_2
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3099
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->updateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_2 .. :try_end_2} :catch_7

    .line 3114
    iget-object v9, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {p0, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    goto :goto_0

    .line 3100
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 3101
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3102
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 3103
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_6
    move-exception v0

    .line 3104
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3105
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v9, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 3106
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_7
    move-exception v0

    .line 3107
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v9, "%s"

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method processUnexpectedSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 0
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2920
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->processUnexpectedDownloadSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2921
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->processUnexpectedRepairSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2922
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->processUnexpectedRepairFdtSchedules(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2927
    return-void
.end method

.method registerRetrySchedule(Ljava/lang/String;JLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    .locals 20
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCurrenttime"    # J
    .param p4, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 3270
    const/4 v9, -0x1

    .line 3271
    .local v9, "result":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f030002

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    int-to-long v14, v11

    add-long v12, p2, v14

    .line 3275
    .local v12, "retrytime":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    .line 3276
    .local v2, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v8

    .line 3277
    .local v8, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    const/4 v7, 0x0

    .line 3278
    .local v7, "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v11, v8

    if-ge v5, v11, :cond_1

    .line 3280
    aget-object v11, v8, v5

    iget-wide v14, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-lez v11, :cond_0

    aget-object v11, v8, v5

    iget-wide v14, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v18, 0x2710

    add-long v16, v16, v18

    cmp-long v11, v14, v16

    if-gtz v11, :cond_3

    :cond_0
    move-object/from16 v0, p4

    iget-wide v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    aget-object v11, v8, v5

    iget-wide v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    move-wide/from16 v16, v0

    cmp-long v11, v14, v16

    if-gez v11, :cond_3

    .line 3285
    aget-object v7, v8, v5

    .line 3290
    :cond_1
    if-eqz v7, :cond_2

    iget-wide v14, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    cmp-long v11, v14, v12

    if-gez v11, :cond_4

    :cond_2
    move v10, v9

    .line 3323
    .end local v9    # "result":I
    .local v10, "result":I
    :goto_1
    return v10

    .line 3278
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3298
    :cond_4
    move-object/from16 v0, p4

    iput-wide v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 3302
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3303
    .local v6, "packageName":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3304
    .local v3, "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0, v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3306
    const/4 v9, 0x0

    .end local v3    # "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    :goto_2
    move v10, v9

    .line 3323
    .end local v9    # "result":I
    .restart local v10    # "result":I
    goto :goto_1

    .line 3307
    .end local v10    # "result":I
    .restart local v9    # "result":I
    :catch_0
    move-exception v4

    .line 3308
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v11, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3309
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v11, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 3310
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v4

    .line 3311
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v11, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3312
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v11, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 3313
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v4

    .line 3314
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v11, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3315
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v11, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 3316
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v4

    .line 3317
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v11, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v11, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method registerScheduleComplement(Ljava/lang/String;I)Z
    .locals 40
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aRetryAfter"    # I

    .prologue
    .line 2106
    const/4 v6, -0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_0

    .line 2110
    const/4 v6, 0x1

    .line 2294
    :goto_0
    return v6

    .line 2113
    :cond_0
    const/16 v22, 0x0

    .line 2116
    .local v22, "fcSchedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v6, 0x10

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v22

    .line 2123
    :goto_1
    if-eqz v22, :cond_1

    .line 2128
    const/4 v6, 0x0

    goto :goto_0

    .line 2131
    :cond_1
    const-wide/16 v32, 0x0

    .line 2133
    .local v32, "secureClock":J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v32

    .line 2138
    const-wide/16 v6, 0x0

    cmp-long v6, v6, v32

    if-ltz v6, :cond_2

    .line 2139
    const-string v6, "secureClock is %d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2143
    const/4 v6, 0x0

    goto :goto_0

    .line 2134
    :catch_0
    move-exception v21

    .line 2135
    .local v21, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2136
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2147
    .end local v21    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_2
    const/16 v20, 0x0

    .line 2148
    .local v20, "contentsInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    const/16 v19, 0x0

    .line 2150
    .local v19, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    const/16 v35, 0x0

    .line 2151
    .local v35, "transmitInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    const/16 v18, 0x0

    .line 2154
    .local v18, "basicDescription":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v6

    const/4 v7, 0x1

    const-string v10, "ja"

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v20

    .line 2158
    if-eqz v20, :cond_3

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-eqz v6, :cond_3

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v6, :cond_3

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v6, :cond_3

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-nez v6, :cond_6

    .line 2163
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v19

    .line 2166
    if-eqz v19, :cond_4

    move-object/from16 v0, v19

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v6, :cond_4

    move-object/from16 v0, v19

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-eqz v6, :cond_4

    move-object/from16 v0, v19

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-nez v6, :cond_5

    .line 2170
    :cond_4
    const-string v6, "no Contents data."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2174
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2176
    :cond_5
    move-object/from16 v0, v19

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    move-object/from16 v35, v0

    .line 2177
    move-object/from16 v0, v19

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2200
    :goto_2
    const-wide/16 v36, 0x0

    .line 2201
    .local v36, "triggerTime":J
    const/4 v6, -0x1

    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    .line 2202
    move-object/from16 v0, v35

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v6, :cond_7

    .line 2203
    const-string v6, "postFileRepair null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2204
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2180
    .end local v36    # "triggerTime":J
    :cond_6
    :try_start_3
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v0, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    move-object/from16 v35, v0

    .line 2181
    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v6, v6, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v0, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v18, v0
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 2183
    :catch_1
    move-exception v21

    .line 2184
    .local v21, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2185
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2186
    .end local v21    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    :catch_2
    move-exception v21

    .line 2187
    .local v21, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2191
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2192
    .end local v21    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v21

    .line 2193
    .local v21, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2197
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2206
    .end local v21    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .restart local v36    # "triggerTime":J
    :cond_7
    move-object/from16 v0, v35

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    move-object/from16 v23, v0

    .line 2208
    .local v23, "fileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    const-wide/16 v8, 0x0

    .line 2211
    .local v8, "lastStartDate":J
    :try_start_4
    new-instance v30, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    move-object/from16 v0, v35

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    move-object/from16 v0, v30

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 2212
    .local v30, "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v6, "t="

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v0, v6

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object/from16 v31, v0

    .line 2215
    .local v31, "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    const/4 v6, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->getStartTime(Z)J
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-wide v8

    .line 2226
    const-wide/16 v14, -0x1

    .line 2227
    .local v14, "startTime":J
    const-wide/16 v16, -0x1

    .line 2229
    .local v16, "endTime":J
    const/16 v28, 0x0

    .line 2230
    .local v28, "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    move-object/from16 v0, v23

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    if-eqz v6, :cond_8

    move-object/from16 v0, v23

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    array-length v6, v6

    if-nez v6, :cond_a

    .line 2249
    :cond_8
    :goto_3
    const-wide/16 v26, 0x0

    .line 2251
    .local v26, "margin":J
    move-object/from16 v0, v23

    iget-wide v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->offsetTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long/2addr v6, v8

    cmp-long v6, v6, v32

    if-gtz v6, :cond_9

    .line 2252
    const-wide/32 v26, 0x15f90

    .line 2256
    :cond_9
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    add-long v6, v32, v26

    move-object/from16 v0, v23

    iget-wide v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->offsetTime:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, v23

    iget-wide v12, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->randomTimePeriod:J

    const-wide/16 v38, 0x3e8

    mul-long v12, v12, v38

    invoke-direct/range {v5 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;-><init>(JJJJJJ)V

    .line 2260
    .local v5, "mTimeCalc":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->getResult()J

    move-result-wide v36

    .line 2269
    .end local v5    # "mTimeCalc":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
    .end local v8    # "lastStartDate":J
    .end local v14    # "startTime":J
    .end local v16    # "endTime":J
    .end local v23    # "fileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    .end local v26    # "margin":J
    .end local v28    # "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    .end local v30    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v31    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :goto_4
    cmp-long v6, v36, v32

    if-gez v6, :cond_d

    .line 2273
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2216
    .restart local v8    # "lastStartDate":J
    .restart local v23    # "fileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    :catch_4
    move-exception v21

    .line 2217
    .local v21, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2218
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2219
    .end local v21    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_5
    move-exception v21

    .line 2220
    .local v21, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2221
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2239
    .end local v21    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v14    # "startTime":J
    .restart local v16    # "endTime":J
    .restart local v28    # "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    .restart local v30    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .restart local v31    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :cond_a
    move-object/from16 v0, v23

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    const/4 v7, 0x0

    aget-object v28, v6, v7

    .line 2240
    move-object/from16 v0, v28

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    if-eqz v6, :cond_b

    .line 2241
    move-object/from16 v0, v28

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    iget-wide v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->startTime:J

    const-wide/16 v10, 0x3e8

    mul-long v14, v6, v10

    .line 2242
    move-object/from16 v0, v28

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    iget-wide v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->endTime:J

    const-wide/16 v10, 0x3e8

    mul-long v16, v6, v10

    goto :goto_3

    .line 2244
    :cond_b
    const-string v6, "receptionTime is nothing"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2245
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 2263
    .end local v8    # "lastStartDate":J
    .end local v14    # "startTime":J
    .end local v16    # "endTime":J
    .end local v23    # "fileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    .end local v28    # "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    .end local v30    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v31    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :cond_c
    move/from16 v0, p2

    int-to-long v6, v0

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    add-long v36, v32, v6

    goto :goto_4

    .line 2276
    :cond_d
    new-instance v29, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct/range {v29 .. v29}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 2277
    .local v29, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v29

    iput-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 2278
    move-wide/from16 v0, v36

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 2279
    const/16 v6, 0x10

    move-object/from16 v0, v29

    iput v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 2280
    const/4 v6, 0x1

    move-object/from16 v0, v29

    iput v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 2281
    move-object/from16 v0, v18

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    if-eqz v6, :cond_e

    .line 2282
    move-object/from16 v0, v18

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->title:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;

    .local v4, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    array-length v0, v4

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v24, 0x0

    .local v24, "i$":I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v34, v4, v24

    .line 2283
    .local v34, "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    move-object/from16 v0, v34

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->type:Ljava/lang/String;

    const-string v7, "main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 2284
    move-object/from16 v0, v34

    iget-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;->title:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 2290
    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v24    # "i$":I
    .end local v25    # "len$":I
    .end local v34    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->setScheduleInternal(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 2294
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2282
    .restart local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .restart local v24    # "i$":I
    .restart local v25    # "len$":I
    .restart local v34    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    :cond_f
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 2117
    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v18    # "basicDescription":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;
    .end local v19    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v20    # "contentsInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v24    # "i$":I
    .end local v25    # "len$":I
    .end local v29    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v32    # "secureClock":J
    .end local v34    # "title":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTitle;
    .end local v35    # "transmitInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .end local v36    # "triggerTime":J
    :catch_6
    move-exception v6

    goto/16 :goto_1
.end method

.method registerScheduleComplementFdtFixed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2315
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtInner(Ljava/lang/String;Z)Z

    move-result v0

    .line 2319
    .local v0, "result":Z
    return v0
.end method

.method registerScheduleComplementFdtRandom(Ljava/lang/String;)Z
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2340
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtInner(Ljava/lang/String;Z)Z

    move-result v0

    .line 2344
    .local v0, "result":Z
    return v0
.end method

.method reschedAcquisition(Ljava/lang/String;)I
    .locals 36
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v10

    .line 1492
    .local v10, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v30

    .line 1494
    .local v30, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    const/16 v21, 0x4

    .line 1497
    .local v21, "lRet":I
    move-object/from16 v0, v30

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    move/from16 v31, v0

    const/16 v32, 0x64

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_5

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v28

    .line 1504
    .local v28, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_0
    new-instance v20, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1505
    .local v20, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1507
    .local v8, "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/16 v31, 0x14

    move/from16 v0, v31

    move-object/from16 v1, v20

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1510
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1511
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 1512
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v31

    if-nez v31, :cond_0

    .line 1514
    const-string v31, "search CRID not find."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1515
    new-instance v31, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;

    invoke-direct/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;-><init>()V

    throw v31
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1534
    .end local v8    # "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v20    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :catch_0
    move-exception v14

    .line 1535
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    new-instance v31, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    move-object/from16 v0, v31

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v31

    .line 1518
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .restart local v8    # "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v20    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :cond_0
    const/16 v31, 0x0

    :try_start_1
    move/from16 v0, v31

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 1520
    .local v7, "aScheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v31, 0x10

    iget v0, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_4

    .line 1522
    const/16 v31, 0x3e9

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_1

    .line 1524
    const-string v31, "delete Failed."

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1543
    .end local v7    # "aScheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v8    # "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v20    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v11

    .line 1551
    .local v11, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->isEncrypted(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 1552
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getEntityId(Ljava/lang/String;)B

    move-result v16

    .line 1554
    .local v16, "entityId":B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->insertCridInfo(BLjava/lang/String;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1586
    .end local v16    # "entityId":B
    :cond_2
    const/16 v21, 0x1

    .line 1655
    .end local v28    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :goto_1
    const/16 v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1656
    const-string v31, "reschedAcquisition return:%d"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v34

    aput-object v34, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    move/from16 v22, v21

    .line 1661
    .end local v11    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v21    # "lRet":I
    .local v22, "lRet":I
    :goto_2
    return v22

    .line 1529
    .end local v22    # "lRet":I
    .restart local v7    # "aScheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v8    # "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v20    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .restart local v21    # "lRet":I
    .restart local v28    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_4
    :try_start_3
    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1532
    .local v6, "aPackageName":Ljava/lang/String;
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteFcSchedule(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1537
    .end local v6    # "aPackageName":Ljava/lang/String;
    .end local v7    # "aScheduledData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v8    # "aScheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v20    # "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :catch_1
    move-exception v14

    .line 1539
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1556
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_2
    move-exception v14

    .line 1558
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1560
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteContents(Ljava/lang/String;)V

    move/from16 v22, v21

    .line 1561
    .end local v21    # "lRet":I
    .restart local v22    # "lRet":I
    goto :goto_2

    .line 1562
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v22    # "lRet":I
    .restart local v21    # "lRet":I
    :catch_3
    move-exception v14

    .line 1564
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1566
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteContents(Ljava/lang/String;)V

    move/from16 v22, v21

    .line 1567
    .end local v21    # "lRet":I
    .restart local v22    # "lRet":I
    goto :goto_2

    .line 1568
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v22    # "lRet":I
    .restart local v21    # "lRet":I
    :catch_4
    move-exception v14

    .line 1569
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1571
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteContents(Ljava/lang/String;)V

    .line 1572
    throw v14

    .line 1573
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_5
    move-exception v14

    .line 1574
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1576
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteContents(Ljava/lang/String;)V

    .line 1577
    new-instance v31, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    move-object/from16 v0, v31

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v31

    .line 1578
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_6
    move-exception v14

    .line 1580
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1582
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteContents(Ljava/lang/String;)V

    .line 1583
    throw v14

    .line 1591
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v28    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_5
    const/16 v29, 0x4

    .line 1592
    .local v29, "scheduleType":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v27

    .line 1594
    .local v27, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v11

    .line 1596
    .restart local v11    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v26

    .line 1600
    .local v26, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    const/16 v25, 0x0

    .line 1602
    .local v25, "programInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    const/16 v18, 0x0

    .line 1604
    .local v18, "isLast":Z
    if-eqz v26, :cond_6

    .line 1606
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v31, v0

    add-int/lit8 v15, v31, -0x1

    .line 1607
    .local v15, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v12

    .line 1608
    .local v12, "currentTime":J
    if-ltz v15, :cond_6

    const-wide/16 v32, 0x0

    cmp-long v31, v32, v12

    if-gtz v31, :cond_6

    .line 1609
    move-object/from16 v9, v26

    .local v9, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    array-length v0, v9

    move/from16 v23, v0

    .local v23, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    aget-object v24, v9, v17

    .line 1611
    .local v24, "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-gez v31, :cond_7

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStop:J

    move-wide/from16 v32, v0

    cmp-long v31, v12, v32

    if-gez v31, :cond_7

    .line 1613
    move-object/from16 v25, v24

    .line 1615
    aget-object v31, v26, v15

    move-object/from16 v0, v31

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    move-wide/from16 v34, v0

    cmp-long v31, v32, v34

    if-nez v31, :cond_6

    .line 1616
    const/16 v18, 0x1

    .line 1624
    .end local v9    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v12    # "currentTime":J
    .end local v15    # "end":I
    .end local v17    # "i$":I
    .end local v23    # "len$":I
    .end local v24    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_6
    if-eqz v25, :cond_8

    .line 1627
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move/from16 v3, v18

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 1628
    const/16 v21, 0x2

    goto/16 :goto_1

    .line 1609
    .restart local v9    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v12    # "currentTime":J
    .restart local v15    # "end":I
    .restart local v17    # "i$":I
    .restart local v23    # "len$":I
    .restart local v24    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1631
    .end local v9    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v12    # "currentTime":J
    .end local v15    # "end":I
    .end local v17    # "i$":I
    .end local v23    # "len$":I
    .end local v24    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_8
    const/16 v19, 0x0

    .line 1633
    .local v19, "isMount":Z
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageMount()Z
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_4 .. :try_end_4} :catch_7

    move-result v19

    .line 1640
    :goto_4
    move-object/from16 v0, v30

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    move/from16 v31, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkComplementReschedule(Ljava/lang/String;IIZ)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 1643
    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplement(Ljava/lang/String;I)Z

    .line 1645
    invoke-virtual/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtRandom(Ljava/lang/String;)Z

    .line 1646
    const/16 v21, 0x3

    goto/16 :goto_1

    .line 1635
    :catch_7
    move-exception v14

    .line 1636
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v31, "%s"

    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    aput-object v14, v32, v33

    invoke-static/range {v31 .. v32}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 1649
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :cond_9
    invoke-direct/range {p0 .. p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->deleteContentsThreshold(Ljava/lang/String;)V

    .line 1650
    const/16 v21, 0x4

    goto/16 :goto_1
.end method

.method reservePublishSchedule(Ljava/lang/String;)V
    .locals 20
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1715
    const/4 v5, 0x0

    .line 1716
    .local v5, "contentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v17

    const/16 v18, 0x0

    const-string v19, "ja"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v5

    .line 1720
    const-wide/16 v12, 0x0

    .line 1721
    .local v12, "openTime":J
    if-eqz v5, :cond_2

    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1723
    iget-object v0, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    .local v4, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    array-length v10, v4

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v14, v4, v9

    .line 1724
    .local v14, "peroid":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    if-eqz v14, :cond_0

    iget-object v0, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 1723
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1727
    :cond_1
    iget-object v0, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "availability"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1728
    iget-wide v12, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    .line 1734
    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "peroid":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v15

    .line 1735
    .local v15, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v6

    .line 1738
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v16

    .line 1740
    .local v16, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 1741
    .local v11, "openSchedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v17, 0x8

    move/from16 v0, v17

    iput v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 1742
    move-object/from16 v0, p1

    iput-object v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 1743
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 1745
    cmp-long v17, v6, v12

    if-gez v17, :cond_3

    .line 1746
    iput-wide v12, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 1752
    :goto_1
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1770
    :goto_2
    return-void

    .line 1748
    :cond_3
    iput-wide v6, v11, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    goto :goto_1

    .line 1753
    :catch_0
    move-exception v8

    .line 1754
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1755
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v8

    .line 1756
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1757
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v8

    .line 1758
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1759
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v8

    .line 1760
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1761
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_4
    move-exception v8

    .line 1762
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 1763
    .end local v8    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;
    :catch_5
    move-exception v8

    .line 1764
    .local v8, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v17, "%s"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method reserveSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IJLjava/lang/String;Z)I
    .locals 20
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p3, "aType"    # I
    .param p4, "aCurrentTime"    # J
    .param p6, "aPackageName"    # Ljava/lang/String;
    .param p7, "aIsCompleteOnly"    # Z

    .prologue
    .line 1065
    const/16 v16, 0x0

    .line 1067
    .local v16, "result":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v12

    .line 1069
    .local v12, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v12, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v11

    .line 1073
    .local v11, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->setScheduleDataCommon(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p7

    .line 1075
    invoke-direct/range {v4 .. v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->setScheduleDataWork(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IJZ[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V

    .line 1077
    if-eqz p7, :cond_0

    .line 1079
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 1080
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 1084
    :cond_0
    new-instance v18, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)V

    .line 1086
    .local v18, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 1088
    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->entryContents()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1089
    const/16 v16, -0x1

    move/from16 v17, v16

    .line 1130
    .end local v16    # "result":I
    .local v17, "result":I
    :goto_0
    return v17

    .line 1097
    .end local v17    # "result":I
    .restart local v16    # "result":I
    :cond_1
    const/4 v15, 0x0

    .line 1098
    .local v15, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1103
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1105
    .local v13, "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v4, 0xb

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    .line 1107
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/ArrayList;)I

    .line 1109
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->checkDoubleBooking(Ljava/util/ArrayList;)V

    :goto_1
    move/from16 v17, v16

    .line 1130
    .end local v16    # "result":I
    .restart local v17    # "result":I
    goto :goto_0

    .line 1113
    .end local v17    # "result":I
    .restart local v16    # "result":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v15, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1116
    :catch_0
    move-exception v14

    .line 1117
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1119
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v14

    .line 1120
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v4, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1122
    .end local v14    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v14

    .line 1123
    .local v14, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const/16 v16, -0x13

    goto :goto_1
.end method

.method searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aScheduleType"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2727
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    .line 2729
    .local v4, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2730
    .local v3, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2731
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2732
    iput-object p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 2735
    :try_start_0
    invoke-virtual {v4, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2746
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2747
    const-string v5, "Get schedule error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2748
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v6, "Get schedule error"

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2736
    :catch_0
    move-exception v0

    .line 2737
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2738
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2739
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2740
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2741
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2742
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 2743
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2744
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 2750
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :cond_0
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 2754
    .local v2, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    return-object v2
.end method

.method searchScheduleAll(I)Ljava/util/ArrayList;
    .locals 7
    .param p1, "aScheduleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2777
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    .line 2779
    .local v3, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2780
    .local v2, "scheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 2781
    .local v1, "keyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 2784
    :try_start_0
    invoke-virtual {v3, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2797
    :goto_0
    return-object v2

    .line 2785
    :catch_0
    move-exception v0

    .line 2786
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v4, "%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2787
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2788
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2789
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v4, "%s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2790
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2791
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method startScheduleAuto(Ljava/util/List;II)J
    .locals 8
    .param p2, "aType"    # I
    .param p3, "aAutoType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)J"
        }
    .end annotation

    .prologue
    .line 428
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/16 v0, 0x0

    .line 430
    .local v0, "currenttime":J
    packed-switch p2, :pswitch_data_0

    .line 465
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 432
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    .line 452
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 434
    :pswitch_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForAutoReceive()I

    move-result v5

    if-nez v5, :cond_0

    move-wide v2, v0

    .line 481
    .end local v0    # "currenttime":J
    .local v2, "currenttime":J
    :goto_0
    return-wide v2

    .line 443
    .end local v2    # "currenttime":J
    .restart local v0    # "currenttime":J
    :pswitch_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForForceReceive()I

    move-result v5

    if-nez v5, :cond_0

    move-wide v2, v0

    .line 448
    .end local v0    # "currenttime":J
    .restart local v2    # "currenttime":J
    goto :goto_0

    .line 456
    .end local v2    # "currenttime":J
    .restart local v0    # "currenttime":J
    :pswitch_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForRecommend()I

    move-result v5

    if-nez v5, :cond_0

    move-wide v2, v0

    .line 461
    .end local v0    # "currenttime":J
    .restart local v2    # "currenttime":J
    goto :goto_0

    .line 470
    .end local v2    # "currenttime":J
    .restart local v0    # "currenttime":J
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 475
    const-wide/16 v6, 0x0

    cmp-long v5, v6, v0

    if-ltz v5, :cond_1

    .line 476
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v2, v0

    .line 481
    .end local v0    # "currenttime":J
    .restart local v2    # "currenttime":J
    goto :goto_0

    .line 471
    .end local v2    # "currenttime":J
    .restart local v0    # "currenttime":J
    :catch_0
    move-exception v4

    .line 472
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v5, "%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 430
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 432
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method updateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V
    .locals 12
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aProgramList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    .prologue
    .line 4433
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v5

    .line 4434
    .local v5, "metadatamodule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    const/4 v4, 0x0

    .line 4435
    .local v4, "metadatainfobase":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v3, 0x0

    .line 4437
    .local v3, "metadatainfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_start_0
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    const/4 v9, 0x1

    const-string v10, "ja"

    invoke-virtual {v5, v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 4442
    if-eqz v4, :cond_0

    instance-of v8, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    if-nez v8, :cond_1

    .line 4515
    :cond_0
    :goto_0
    return-void

    .line 4438
    :catch_0
    move-exception v1

    .line 4439
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessTimeoutException;
    :cond_1
    move-object v3, v4

    .line 4449
    check-cast v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .line 4451
    const/4 v6, 0x0

    .line 4452
    .local v6, "operationType":I
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    packed-switch v8, :pswitch_data_0

    .line 4476
    :goto_1
    :pswitch_0
    invoke-direct {p0, p1, v3, v6, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->setScheduleDataCommon(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)V

    .line 4478
    const/4 v8, 0x2

    iget v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    if-ne v8, v9, :cond_2

    .line 4479
    array-length v8, p2

    add-int/lit8 v2, v8, -0x1

    .line 4480
    .local v2, "end":I
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v8, v8, -0x100

    iput v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 4481
    aget-object v8, p2, v2

    iget-wide v8, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J

    iget-wide v10, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 4483
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v8, v8, 0x6

    iput v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 4494
    .end local v2    # "end":I
    :cond_2
    :goto_2
    :try_start_1
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4496
    .local v7, "packageName":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4497
    .local v0, "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    invoke-virtual {v8, p1, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/util/ArrayList;)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 4499
    .end local v0    # "doubleBookingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 4500
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4501
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 4454
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :pswitch_1
    const/16 v6, 0xb

    .line 4455
    goto :goto_1

    .line 4458
    :pswitch_2
    const/16 v6, 0xc

    .line 4459
    goto :goto_1

    .line 4461
    :pswitch_3
    const/16 v6, 0xd

    .line 4462
    goto :goto_1

    .line 4487
    .restart local v2    # "end":I
    :cond_3
    iget v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit8 v8, v8, 0x5

    iput v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_2

    .line 4502
    .end local v2    # "end":I
    :catch_2
    move-exception v1

    .line 4503
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4504
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 4505
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v1

    .line 4506
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4507
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 4508
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v1

    .line 4509
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 4452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method updateScheduleStateInfo(Ljava/lang/String;I)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # I

    .prologue
    const v7, -0xf0001

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2645
    const/4 v3, -0x1

    .line 2647
    .local v3, "result":I
    const/4 v6, 0x4

    invoke-virtual {p0, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchSchedule(Ljava/lang/String;I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-result-object v1

    .line 2649
    .local v1, "newSchedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    if-nez v1, :cond_0

    .line 2650
    const-string v6, "Null schedule"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2651
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v7, "Null schedule"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2654
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move v4, v3

    .line 2705
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 2656
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :pswitch_1
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v6, v6, -0xf01

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2657
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2685
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v5

    .line 2686
    .local v5, "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getFcPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2687
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->updateFcSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_5

    .line 2688
    const/4 v3, 0x0

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v5    # "scheduler":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :goto_2
    move v4, v3

    .line 2705
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 2660
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :pswitch_2
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/lit16 v6, v6, -0xf01

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2661
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 2664
    :pswitch_3
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v7, -0xff01

    and-int/2addr v6, v7

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 2667
    :pswitch_4
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/2addr v6, v7

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2668
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const/high16 v7, 0x10000

    or-int/2addr v6, v7

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 2671
    :pswitch_5
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    and-int/2addr v6, v7

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 2674
    :pswitch_6
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    const v7, -0xf001

    and-int/2addr v6, v7

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    .line 2675
    iget v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbWork1:I

    goto :goto_1

    .line 2689
    :catch_0
    move-exception v0

    .line 2690
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2691
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 2692
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2693
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 2694
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2695
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v0

    .line 2696
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2697
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_4
    move-exception v0

    .line 2698
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2699
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :catch_5
    move-exception v0

    .line 2700
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v6, "%s"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2654
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
