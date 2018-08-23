.class public Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;
.super Ljava/lang/Object;
.source "MmbFcComplementControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcComplementFdtType;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;
    }
.end annotation


# static fields
.field private static mComplemenProgrres:I


# instance fields
.field private mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

.field private final mWifiSleepCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mComplemenProgrres:I

    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aServiceManager"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mWifiSleepCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    .line 169
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 170
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-direct {v0, p1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    .line 171
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->startTask()V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method private canWakeupWifi(I)Z
    .locals 3
    .param p1, "aType"    # I

    .prologue
    .line 2271
    const/4 v1, 0x0

    .line 2272
    .local v1, "result":Z
    const/16 v2, 0xb

    if-ne p1, v2, :cond_1

    .line 2273
    const/4 v1, 0x1

    .line 2285
    :cond_0
    :goto_0
    return v1

    .line 2276
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoCompletion()I

    move-result v0

    .line 2277
    .local v0, "autoCompletion":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 2279
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkAutoComplementPeriod(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)Z
    .locals 24
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .prologue
    .line 1561
    const/16 v21, 0x0

    .line 1563
    .local v21, "transmitInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v8, :cond_0

    move-object/from16 v0, p1

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 1566
    :cond_0
    const-string v8, "no Contents data."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1570
    const/16 v17, 0x0

    .line 1634
    :goto_0
    return v17

    .line 1572
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    move-object/from16 v21, v0

    .line 1575
    move-object/from16 v0, v21

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v8, :cond_2

    .line 1576
    const-string v8, "postFileRepair null"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1577
    const/16 v17, 0x0

    goto :goto_0

    .line 1579
    :cond_2
    move-object/from16 v0, v21

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    move-object/from16 v16, v0

    .line 1581
    .local v16, "fileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    const-wide/16 v6, 0x0

    .line 1584
    .local v6, "lastStartDate":J
    :try_start_0
    new-instance v19, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    move-object/from16 v0, v21

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v19, "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v8, "t="

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object v0, v8

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;

    move-object/from16 v20, v0

    .line 1588
    .local v20, "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;->getStartTime(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 1599
    const-wide/16 v12, -0x1

    .line 1600
    .local v12, "startTime":J
    const-wide/16 v14, -0x1

    .line 1602
    .local v14, "endTime":J
    const/16 v18, 0x0

    .line 1603
    .local v18, "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    move-object/from16 v0, v16

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    if-eqz v8, :cond_3

    move-object/from16 v0, v16

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    array-length v8, v8

    if-nez v8, :cond_4

    .line 1622
    :cond_3
    :goto_1
    const-wide/16 v4, 0x0

    .line 1623
    .local v4, "secureClock":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v4

    .line 1625
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;

    move-object/from16 v0, v16

    iget-wide v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->offsetTime:J

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    move-object/from16 v0, v16

    iget-wide v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->randomTimePeriod:J

    const-wide/16 v22, 0x3e8

    mul-long v10, v10, v22

    invoke-direct/range {v3 .. v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;-><init>(JJJJJJ)V

    .line 1629
    .local v3, "isWithinPeriod":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;->isWithinPeriod()Z

    move-result v17

    .line 1634
    .local v17, "result":Z
    goto :goto_0

    .line 1589
    .end local v3    # "isWithinPeriod":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv$MmbFcAutoCompletionTimeCalcSv;
    .end local v4    # "secureClock":J
    .end local v12    # "startTime":J
    .end local v14    # "endTime":J
    .end local v17    # "result":Z
    .end local v18    # "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    .end local v19    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v20    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :catch_0
    move-exception v2

    .line 1590
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1591
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1592
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v2

    .line 1593
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v8, "%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1594
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v8, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1612
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v12    # "startTime":J
    .restart local v14    # "endTime":J
    .restart local v18    # "schedule":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;
    .restart local v19    # "sdpParser":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .restart local v20    # "tagT":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv;
    :cond_4
    move-object/from16 v0, v16

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->receptionSchedule:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;

    const/4 v9, 0x0

    aget-object v18, v8, v9

    .line 1613
    move-object/from16 v0, v18

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    if-eqz v8, :cond_5

    .line 1614
    move-object/from16 v0, v18

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    iget-wide v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->startTime:J

    const-wide/16 v10, 0x3e8

    mul-long v12, v8, v10

    .line 1615
    move-object/from16 v0, v18

    iget-object v8, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionSchedule;->receptionTime:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;

    iget-wide v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReceptionTime;->endTime:J

    const-wide/16 v10, 0x3e8

    mul-long v14, v8, v10

    goto :goto_1

    .line 1617
    :cond_5
    const-string v8, "receptionTime is nothing"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1618
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method private checkComplement(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IZ)I
    .locals 8
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I
    .param p3, "aIsCompleteOnly"    # Z

    .prologue
    const v7, 0x7f040020

    const/16 v5, 0xb

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, "result":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    .line 996
    .local v2, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    if-ne p2, v5, :cond_0

    .line 998
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementManualCompletion(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)I

    move-result v0

    .line 1001
    if-eqz v0, :cond_0

    .line 1002
    const-string v3, "checkComplementManualCompletion result[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1003
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    move v1, v0

    .line 1091
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 1013
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementConflict(Ljava/lang/String;I)I

    move-result v0

    .line 1016
    if-eqz v0, :cond_1

    .line 1017
    const-string v3, "checkComplementConflict result[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v0

    .line 1021
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1025
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    if-nez p3, :cond_2

    .line 1027
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementSchedule(Ljava/lang/String;)I

    move-result v0

    .line 1030
    if-eqz v0, :cond_2

    .line 1031
    const-string v3, "checkComplementSchedule result[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1032
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-virtual {v2, v3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    move v1, v0

    .line 1037
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1042
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_2
    if-ne p2, v5, :cond_5

    .line 1044
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementPeriod(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I)I

    move-result v0

    .line 1047
    if-eqz v0, :cond_6

    .line 1048
    const-string v3, "checkComplementPeriod result[%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    const/16 v3, -0x16

    if-eq v0, v3, :cond_3

    const/16 v3, -0x29

    if-ne v0, v3, :cond_4

    .line 1051
    :cond_3
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    const v4, 0x7f040022

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    :goto_1
    move v1, v0

    .line 1060
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1054
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_4
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    const v4, 0x7f04001f

    invoke-virtual {v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    goto :goto_1

    .line 1064
    :cond_5
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkAutoComplementPeriod(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1065
    const-string v3, "checkAutoComplementPeriod false"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    const/4 v0, -0x1

    move v1, v0

    .line 1070
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 1075
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_6
    if-nez p3, :cond_7

    .line 1078
    iget-object v3, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-direct {p0, v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkLastBroadcast(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1079
    const-string v3, "checkLastBroadcast false"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    const/4 v0, -0x1

    move v1, v0

    .line 1084
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto/16 :goto_0

    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_7
    move v1, v0

    .line 1091
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto/16 :goto_0
.end method

.method private checkComplementAutoCompletion()I
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1171
    const/4 v4, -0x1

    .line 1174
    .local v4, "result":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 1175
    .local v3, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    .line 1178
    .local v1, "conflice":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoCompletion()I

    move-result v0

    .line 1179
    .local v0, "autoCompletion":I
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConnectionInfo()I

    move-result v2

    .line 1185
    .local v2, "connectionInfo":I
    packed-switch v0, :pswitch_data_0

    .line 1215
    const-string v5, "Auto Completion Error autoCompletion[%d]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1222
    :goto_0
    return v4

    .line 1187
    :pswitch_0
    const-string v5, "Auto Complement Off"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1191
    :pswitch_1
    packed-switch v2, :pswitch_data_1

    .line 1198
    const-string v5, "Connection Off connectionInfo[%d]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1195
    :pswitch_2
    const/4 v4, 0x0

    .line 1196
    goto :goto_0

    .line 1204
    :pswitch_3
    packed-switch v2, :pswitch_data_2

    .line 1210
    :pswitch_4
    const-string v5, "Wifi Only connectionInfo[%d]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1207
    :pswitch_5
    const/4 v4, 0x0

    .line 1208
    goto :goto_0

    .line 1185
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1191
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1204
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private checkComplementConflict(Ljava/lang/String;I)I
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    const v11, 0x7f040018

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1256
    const/4 v3, 0x0

    .line 1258
    .local v3, "result":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v1

    .line 1261
    .local v1, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/16 v5, 0x380c

    .line 1264
    .local v5, "serviceType":I
    const/16 v6, 0xc

    if-ne p2, v6, :cond_0

    .line 1265
    const/16 v5, 0x3c0c

    .line 1269
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I

    move-result v0

    .line 1271
    .local v0, "confResult":I
    packed-switch v0, :pswitch_data_0

    .line 1310
    :pswitch_0
    const/4 v3, -0x1

    :goto_0
    move v4, v3

    .line 1343
    .end local v0    # "confResult":I
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_1
    return v4

    .line 1274
    .end local v4    # "result":I
    .restart local v0    # "confResult":I
    .restart local v3    # "result":I
    :pswitch_1
    const/4 v3, 0x0

    .line 1275
    goto :goto_0

    .line 1277
    :pswitch_2
    const v6, 0x7f040014

    invoke-virtual {v1, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1279
    const/16 v3, -0x9

    .line 1280
    goto :goto_0

    .line 1282
    :pswitch_3
    const v6, 0x7f040021

    invoke-virtual {v1, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1284
    const/16 v3, -0x12

    .line 1285
    goto :goto_0

    .line 1287
    :pswitch_4
    const v6, 0x7f040016

    invoke-virtual {v1, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1289
    const/16 v3, -0xe

    .line 1290
    goto :goto_0

    .line 1292
    :pswitch_5
    const v6, 0x7f040017

    invoke-virtual {v1, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1294
    const/16 v3, -0xf

    .line 1295
    goto :goto_0

    .line 1297
    :pswitch_6
    const v6, 0x7f040018

    invoke-virtual {v1, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1299
    const/4 v3, -0x1

    .line 1300
    goto :goto_0

    .line 1302
    :pswitch_7
    const v6, 0x7f040019

    invoke-virtual {v1, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1304
    const/16 v3, -0x10

    .line 1305
    goto :goto_0

    .line 1313
    .end local v0    # "confResult":I
    :catch_0
    move-exception v2

    .line 1314
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1316
    const/4 v3, -0x1

    move v4, v3

    .line 1320
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_1

    .line 1321
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_1
    move-exception v2

    .line 1322
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1323
    invoke-virtual {v1, p1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 1325
    const/4 v3, -0x1

    move v4, v3

    .line 1329
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_1

    .line 1330
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catch_2
    move-exception v2

    .line 1331
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v6, "%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    const/4 v3, -0x1

    move v4, v3

    .line 1337
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_1

    .line 1271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private checkComplementFdt(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I)I
    .locals 9
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 2824
    const/4 v1, 0x0

    .line 2829
    .local v1, "result":I
    :try_start_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v4, v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2842
    .local v4, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    const/4 v3, 0x0

    .line 2843
    .local v3, "ret":Z
    if-eq p2, v7, :cond_0

    .line 2844
    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->checkScheduleAndRepairPercentageZero(Z)Z

    move-result v3

    .line 2848
    :goto_0
    if-nez v3, :cond_1

    .line 2849
    const-string v5, "checkScheduleAndRepairPercentageZero false"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2850
    const/4 v1, -0x1

    move v2, v1

    .line 2905
    .end local v1    # "result":I
    .end local v3    # "ret":Z
    .end local v4    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    .local v2, "result":I
    :goto_1
    return v2

    .line 2831
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 2833
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2834
    const/4 v1, -0x1

    move v2, v1

    .line 2838
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .line 2846
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v2    # "result":I
    .restart local v1    # "result":I
    .restart local v3    # "ret":Z
    .restart local v4    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    :cond_0
    invoke-virtual {v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->checkScheduleAndRepairPercentageZero(Z)Z

    move-result v3

    goto :goto_0

    .line 2858
    :cond_1
    if-eq p2, v7, :cond_2

    .line 2860
    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->checkManualComplementPeriod(Z)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2861
    const-string v5, "checkManualComplementPeriod false"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2862
    const/16 v1, -0x29

    move v2, v1

    .line 2866
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .line 2870
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkAutoComplementPeriod(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 2871
    const-string v5, "checkAutoComplementPeriod false"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2872
    const/4 v1, -0x1

    move v2, v1

    .line 2876
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .line 2880
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_3
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isOverLastBroadcast()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2881
    const-string v5, "checkLastBroadcast false"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2882
    const/4 v1, -0x1

    move v2, v1

    .line 2886
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .line 2891
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_4
    iget-object v5, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    invoke-direct {p0, v5, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementFdtConflict(Ljava/lang/String;I)I

    move-result v1

    .line 2894
    if-eqz v1, :cond_5

    .line 2895
    const-string v5, "checkComplementConflict result[%d]"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    .line 2899
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1

    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_5
    move v2, v1

    .line 2905
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_1
.end method

.method private checkComplementFdtConflict(Ljava/lang/String;I)I
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2941
    const/4 v2, 0x0

    .line 2945
    .local v2, "result":I
    const/16 v4, 0x381e

    .line 2946
    .local v4, "serviceType":I
    if-ne p2, v8, :cond_1

    .line 2947
    const/16 v4, 0x3c1e

    .line 2953
    :cond_0
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 2955
    .local v0, "confResult":I
    packed-switch v0, :pswitch_data_0

    .line 2988
    :pswitch_0
    const/4 v2, -0x1

    :goto_1
    move v3, v2

    .line 3020
    .end local v0    # "confResult":I
    .end local v2    # "result":I
    .local v3, "result":I
    :goto_2
    return v3

    .line 2948
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :cond_1
    const/4 v5, 0x2

    if-ne p2, v5, :cond_0

    .line 2949
    const/16 v4, 0x3c1e

    goto :goto_0

    .line 2958
    .restart local v0    # "confResult":I
    :pswitch_1
    const/4 v2, 0x0

    .line 2959
    goto :goto_1

    .line 2962
    :pswitch_2
    const/16 v2, -0x9

    .line 2963
    goto :goto_1

    .line 2966
    :pswitch_3
    const/16 v2, -0x12

    .line 2967
    goto :goto_1

    .line 2970
    :pswitch_4
    const/16 v2, -0xe

    .line 2971
    goto :goto_1

    .line 2974
    :pswitch_5
    const/16 v2, -0xf

    .line 2975
    goto :goto_1

    .line 2978
    :pswitch_6
    const/4 v2, -0x1

    .line 2979
    goto :goto_1

    .line 2982
    :pswitch_7
    const/16 v2, -0x10

    .line 2983
    goto :goto_1

    .line 2991
    .end local v0    # "confResult":I
    :catch_0
    move-exception v1

    .line 2992
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2994
    const/4 v2, -0x1

    move v3, v2

    .line 2998
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_2

    .line 2999
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :catch_1
    move-exception v1

    .line 3000
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v5, "%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3002
    const/4 v2, -0x1

    move v3, v2

    .line 3006
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_2

    .line 3007
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .end local v3    # "result":I
    .restart local v2    # "result":I
    :catch_2
    move-exception v1

    .line 3008
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "%s"

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3010
    const/4 v2, -0x1

    move v3, v2

    .line 3014
    .end local v2    # "result":I
    .restart local v3    # "result":I
    goto :goto_2

    .line 2955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private checkComplementManualCompletion(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)I
    .locals 8
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .prologue
    .line 1113
    const/4 v4, 0x0

    .line 1116
    .local v4, "result":I
    iget-object v6, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-nez v6, :cond_1

    :cond_0
    move v5, v4

    .line 1150
    .end local v4    # "result":I
    .local v5, "result":I
    :goto_0
    return v5

    .line 1127
    .end local v5    # "result":I
    .restart local v4    # "result":I
    :cond_1
    iget-object v6, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 1128
    .local v2, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v2, :cond_2

    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 1127
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1131
    :cond_3
    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v7, "other"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1132
    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".*ContAttributes\\|.*manual_complete:OK.*"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1134
    const/4 v4, 0x0

    .end local v2    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_4
    :goto_2
    move v5, v4

    .line 1150
    .end local v4    # "result":I
    .restart local v5    # "result":I
    goto :goto_0

    .line 1136
    .end local v5    # "result":I
    .restart local v2    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .restart local v4    # "result":I
    :cond_5
    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".*ContAttributes\\|.*manual_complete:NG.*"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1138
    const/4 v4, -0x1

    .line 1139
    goto :goto_2
.end method

.method private checkComplementPeriod(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I)I
    .locals 20
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .param p2, "aType"    # I

    .prologue
    .line 1444
    const/4 v11, 0x0

    .line 1446
    .local v11, "result":I
    if-nez p1, :cond_0

    .line 1447
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v16, "Null content Detail"

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1450
    :cond_0
    const-wide/16 v14, 0x0

    .line 1452
    .local v14, "time":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v14

    .line 1455
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    if-eqz v13, :cond_3

    .line 1456
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    array-length v13, v13

    if-ge v4, v13, :cond_3

    .line 1457
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v4

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v4

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    if-eqz v13, :cond_2

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v4

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    const-string v16, "availability"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1461
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v4

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_1

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v4

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-lez v13, :cond_2

    const-wide/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    aget-object v13, v13, v4

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v18, v0

    cmp-long v13, v16, v18

    if-gez v13, :cond_2

    .line 1465
    :cond_1
    const/16 v11, -0x16

    move v12, v11

    .line 1539
    .end local v4    # "i":I
    .end local v11    # "result":I
    .local v12, "result":I
    :goto_1
    return v12

    .line 1456
    .end local v12    # "result":I
    .restart local v4    # "i":I
    .restart local v11    # "result":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1476
    .end local v4    # "i":I
    :cond_3
    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-eqz v13, :cond_4

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v13, :cond_5

    .line 1478
    :cond_4
    const/4 v11, -0x1

    move v12, v11

    .line 1482
    .end local v11    # "result":I
    .restart local v12    # "result":I
    goto :goto_1

    .line 1484
    .end local v12    # "result":I
    .restart local v11    # "result":I
    :cond_5
    const-wide/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    move-wide/from16 v18, v0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_6

    const-wide/16 v16, 0x0

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v18, v0

    cmp-long v13, v16, v18

    if-eqz v13, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_6

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-lez v13, :cond_7

    .line 1488
    :cond_6
    const/16 v11, -0x29

    move v12, v11

    .line 1493
    .end local v11    # "result":I
    .restart local v12    # "result":I
    goto :goto_1

    .line 1496
    .end local v12    # "result":I
    .restart local v11    # "result":I
    :cond_7
    const/4 v10, 0x0

    .line 1499
    .local v10, "licenseInfoList":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->crid:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 1506
    const-wide/16 v6, 0x0

    .line 1507
    .local v6, "issueEndTime":J
    if-nez v10, :cond_8

    .line 1508
    const/16 v11, -0x16

    move v12, v11

    .line 1512
    .end local v11    # "result":I
    .restart local v12    # "result":I
    goto :goto_1

    .line 1501
    .end local v6    # "issueEndTime":J
    .end local v12    # "result":I
    .restart local v11    # "result":I
    :catch_0
    move-exception v3

    .line 1502
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v13, "%s"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1503
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v13, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 1514
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    .restart local v6    # "issueEndTime":J
    :cond_8
    move-object v2, v10

    .local v2, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v8, :cond_c

    aget-object v9, v2, v5

    .line 1515
    .local v9, "licenseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    iget-object v13, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    if-eqz v13, :cond_9

    iget-object v13, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    if-nez v13, :cond_a

    .line 1514
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1520
    :cond_a
    iget-object v13, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_b

    .line 1521
    const-wide v6, 0x7fffffffffffffffL

    .line 1525
    :goto_3
    iget-object v13, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v0, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->startTime:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_9

    cmp-long v13, v14, v6

    if-gtz v13, :cond_9

    move v12, v11

    .line 1531
    .end local v11    # "result":I
    .restart local v12    # "result":I
    goto/16 :goto_1

    .line 1523
    .end local v12    # "result":I
    .restart local v11    # "result":I
    :cond_b
    iget-object v13, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->rmpiDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;

    iget-object v13, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIDescription;->issueOption:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;

    iget-wide v6, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwRMPIIssueOption;->endTime:J

    goto :goto_3

    .line 1535
    .end local v9    # "licenseInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :cond_c
    const/16 v11, -0x16

    move v12, v11

    .line 1539
    .end local v11    # "result":I
    .restart local v12    # "result":I
    goto/16 :goto_1
.end method

.method private checkComplementSchedule(Ljava/lang/String;)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1365
    const/4 v1, 0x0

    .line 1368
    .local v1, "result":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    .line 1371
    .local v3, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1372
    .local v5, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1373
    const/4 v6, 0x4

    iput v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbScheduleType:I

    .line 1376
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1381
    .local v4, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    invoke-virtual {v3, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3

    move v2, v1

    .line 1411
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 1382
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 1383
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1385
    const/4 v1, -0x1

    move v2, v1

    .line 1389
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 1390
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_1
    move-exception v0

    .line 1391
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1393
    const/4 v1, -0x1

    move v2, v1

    .line 1397
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 1398
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_2
    move-exception v0

    .line 1399
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1401
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1402
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v0

    .line 1403
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1405
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private checkFreeSize(J)I
    .locals 13
    .param p1, "aRequireSize"    # J

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 649
    const/4 v1, 0x0

    .line 651
    .local v1, "result":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    .line 656
    .local v4, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :try_start_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkSaveStorageFreeSpace()J

    move-result-wide v2

    .line 662
    .local v2, "freeSize":J
    const-wide/16 v6, 0x400

    div-long v6, p1, v6

    cmp-long v5, v6, v2

    if-ltz v5, :cond_0

    .line 663
    const-string v5, "aRequireSize[%d] freeSize[%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-wide/16 v8, 0x400

    div-long v8, p1, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    const/16 v1, -0xa

    .line 674
    .end local v2    # "freeSize":J
    :cond_0
    :goto_0
    return v1

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "%s"

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v0, v6, v10

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 669
    const/16 v1, -0x12

    goto :goto_0
.end method

.method private checkLastBroadcast(Ljava/lang/String;I)Z
    .locals 16
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 1660
    const/4 v11, 0x1

    .line 1663
    .local v11, "result":Z
    const/16 v13, 0xc

    move/from16 v0, p2

    if-ne v0, v13, :cond_1

    .line 1666
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v4

    .line 1668
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v3

    .line 1671
    .local v3, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getBroadcastSchedule(Ljava/lang/String;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v10

    .line 1673
    .local v10, "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v10, :cond_0

    array-length v13, v10

    if-nez v13, :cond_2

    .line 1674
    :cond_0
    const/4 v11, 0x1

    .end local v3    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v4    # "currentTime":J
    .end local v10    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :cond_1
    :goto_0
    move v12, v11

    .line 1701
    .end local v11    # "result":Z
    .local v12, "result":I
    :goto_1
    return v12

    .line 1676
    .end local v12    # "result":I
    .restart local v3    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .restart local v4    # "currentTime":J
    .restart local v10    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v11    # "result":Z
    :cond_2
    move-object v2, v10

    .local v2, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v8, :cond_1

    aget-object v9, v2, v7

    .line 1677
    .local v9, "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    if-eqz v9, :cond_3

    iget-wide v14, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;->mStart:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException; {:try_start_0 .. :try_end_0} :catch_2

    cmp-long v13, v4, v14

    if-gez v13, :cond_3

    .line 1678
    const/4 v11, 0x0

    .line 1679
    goto :goto_0

    .line 1676
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1683
    .end local v2    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v3    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    .end local v4    # "currentTime":J
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "program":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v10    # "programList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    :catch_0
    move-exception v6

    .line 1684
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1685
    const/4 v11, 0x0

    move v12, v11

    .line 1689
    .restart local v12    # "result":I
    goto :goto_1

    .line 1690
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v12    # "result":I
    :catch_1
    move-exception v6

    .line 1691
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1692
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v14, "getSecureClock error"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1693
    .end local v6    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v6

    .line 1694
    .local v6, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;
    const-string v13, "%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1695
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    const-string v14, "meta middle regist error"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method private checkThresholdInner(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;IJ)Z
    .locals 23
    .param p1, "aTcm"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .param p2, "aDownloadPercent"    # I
    .param p3, "aSizeToRepair"    # J

    .prologue
    .line 1876
    move-object/from16 v0, p1

    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->crid:Ljava/lang/String;

    .line 1877
    .local v3, "crid":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1880
    .local v10, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v7

    .line 1882
    .local v7, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v5, 0x0

    .line 1884
    .local v5, "networkType":I
    :try_start_0
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getNetworkInfoType()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1900
    const/4 v9, 0x0

    .line 1901
    .local v9, "progressThreshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    const-wide/16 v16, 0x0

    .line 1902
    .local v16, "sizeAppThreshold":J
    const/4 v8, 0x0

    .line 1906
    .local v8, "progressAppThreshold":I
    :try_start_1
    invoke-virtual {v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCompletionThreshold(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    move-result-object v9

    .line 1908
    iget v0, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbSize:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/32 v20, 0x100000

    mul-long v16, v18, v20

    .line 1909
    iget v8, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;->mmbRate:I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1924
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v12

    .line 1927
    .local v12, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/4 v2, 0x0

    .line 1931
    .local v2, "contentState":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v2

    .line 1941
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    .line 1942
    .local v15, "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 1945
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1949
    .local v14, "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_3
    invoke-virtual {v12, v15, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_3 .. :try_end_3} :catch_5

    .line 1958
    const/4 v13, 0x0

    .line 1962
    .local v13, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v18, 0x0

    :try_start_4
    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 1972
    .restart local v13    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->getThresholdMeta(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)I

    move-result v6

    .line 1979
    .local v6, "percentageThreshold":I
    move/from16 v0, p2

    if-lt v0, v8, :cond_0

    cmp-long v18, p3, v16

    if-gtz v18, :cond_0

    move/from16 v0, p2

    if-lt v0, v6, :cond_0

    .line 1981
    const/4 v10, 0x1

    :goto_1
    move v11, v10

    .line 1994
    .end local v2    # "contentState":I
    .end local v6    # "percentageThreshold":I
    .end local v8    # "progressAppThreshold":I
    .end local v9    # "progressThreshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .end local v10    # "result":Z
    .end local v12    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v13    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v14    # "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v15    # "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    .end local v16    # "sizeAppThreshold":J
    .local v11, "result":I
    :goto_2
    return v11

    .line 1885
    .end local v11    # "result":I
    .restart local v10    # "result":Z
    :catch_0
    move-exception v4

    .line 1886
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 1890
    .restart local v11    # "result":I
    goto :goto_2

    .line 1891
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v11    # "result":I
    :catch_1
    move-exception v4

    .line 1892
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 1896
    .restart local v11    # "result":I
    goto :goto_2

    .line 1911
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v11    # "result":I
    .restart local v8    # "progressAppThreshold":I
    .restart local v9    # "progressThreshold":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .restart local v16    # "sizeAppThreshold":J
    :catch_2
    move-exception v4

    .line 1913
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-wide v16, 0x7fffffffffffffffL

    .line 1914
    const/4 v8, 0x0

    .line 1921
    goto/16 :goto_0

    .line 1915
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_3
    move-exception v4

    .line 1916
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 1920
    .restart local v11    # "result":I
    goto :goto_2

    .line 1932
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v11    # "result":I
    .restart local v2    # "contentState":I
    .restart local v12    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_4
    move-exception v4

    .line 1933
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 1937
    .restart local v11    # "result":I
    goto :goto_2

    .line 1950
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v11    # "result":I
    .restart local v14    # "scheduledDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v15    # "searchKeyword":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;
    :catch_5
    move-exception v4

    .line 1951
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 1955
    .restart local v11    # "result":I
    goto :goto_2

    .line 1963
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .end local v11    # "result":I
    :catch_6
    move-exception v4

    .line 1964
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v4, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v11, v10

    .line 1968
    .restart local v11    # "result":I
    goto/16 :goto_2

    .line 1983
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "result":I
    .restart local v6    # "percentageThreshold":I
    .restart local v13    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_0
    const-string v18, "aDownloadPercent[%d] progressAppThreshold[%d]"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1985
    const-string v18, "aSizeToRepair[%d] sizeAppThreshold[%d]"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1987
    const-string v18, "aDownloadPercent[%d] percentageThreshold[%d]"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private commonStartComplement(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 23
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 435
    const/16 v20, 0x0

    .line 438
    .local v20, "result":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->canWakeupWifi(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mWifiSleepCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->startWakeup()V

    .line 442
    const/16 v3, 0xc

    move/from16 v0, p2

    if-ne v0, v3, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->waitForWifiConnected()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v19, 0x1

    .line 445
    .local v19, "isTimedout":Z
    :goto_0
    if-eqz v19, :cond_0

    .line 446
    const-string v3, "waitForWifiConnected timed out."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    .end local v19    # "isTimedout":Z
    :cond_0
    const/16 v3, 0xb

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    .line 453
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementAutoCompletion()I

    move-result v20

    .line 456
    if-eqz v20, :cond_2

    move/from16 v21, v20

    .line 597
    .end local v20    # "result":I
    .local v21, "result":I
    :goto_1
    return v21

    .line 443
    .end local v21    # "result":I
    .restart local v20    # "result":I
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 466
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v14

    .line 469
    .local v14, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    iget-object v5, v14, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v5

    .line 470
    :try_start_0
    invoke-direct/range {p0 .. p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->setContentState(Ljava/lang/String;I)I

    move-result v20

    .line 472
    if-nez v20, :cond_3

    .line 473
    const/16 v3, 0x47

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v3, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 482
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v15

    .line 486
    .local v15, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v4, 0x0

    .line 489
    .local v4, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 499
    :goto_2
    if-nez v4, :cond_4

    .line 501
    const-string v3, "contentInfo null"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    const v3, 0x7f04001f

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->setComplementFailedReason(Ljava/lang/String;I)V

    .line 503
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    move/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v3, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 505
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v5, "Bad content meta"

    invoke-direct {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 476
    .end local v4    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v15    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :cond_3
    :try_start_2
    const-string v3, "setContentState false"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    monitor-exit v5

    move/from16 v21, v20

    .end local v20    # "result":I
    .restart local v21    # "result":I
    goto :goto_1

    .line 482
    .end local v21    # "result":I
    .restart local v20    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 490
    .restart local v4    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v15    # "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    :catch_0
    move-exception v16

    .line 491
    .local v16, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v3, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v5, v8

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 492
    .end local v16    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v16

    .line 493
    .local v16, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v5, v8

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    move/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v3, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 496
    throw v16

    .line 509
    .end local v16    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_4
    const/4 v7, 0x0

    .line 510
    .local v7, "isCompleteOnly":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->isCompleteOnly(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)Z

    move-result v7

    .line 513
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v4, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplement(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;IZ)I

    move-result v20

    .line 516
    if-eqz v20, :cond_5

    .line 518
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    move/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v3, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    move/from16 v21, v20

    .line 523
    .end local v20    # "result":I
    .restart local v21    # "result":I
    goto/16 :goto_1

    .line 527
    .end local v21    # "result":I
    .restart local v20    # "result":I
    :cond_5
    const/4 v6, 0x0

    .line 530
    .local v6, "repairInfo":Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    const/16 v18, 0x1

    .line 532
    .local v18, "hasFdt":Z
    :try_start_3
    invoke-virtual/range {p0 .. p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 535
    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->hasFdtInstance(Ljava/lang/String;)Z

    move-result v18

    .line 536
    if-nez v18, :cond_7

    .line 537
    const/16 v22, 0x0

    .line 538
    .local v22, "resultFdt":I
    const/16 v3, 0xb

    move/from16 v0, p2

    if-ne v0, v3, :cond_8

    .line 539
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->commonStartComplementFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v22

    .line 549
    :cond_6
    :goto_3
    if-eqz v22, :cond_7

    .line 550
    const-string v3, "commonStartComplementFdt result[%d]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    .end local v22    # "resultFdt":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContents(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    move/from16 v21, v20

    .line 597
    .end local v20    # "result":I
    .restart local v21    # "result":I
    goto/16 :goto_1

    .line 542
    .end local v21    # "result":I
    .restart local v20    # "result":I
    .restart local v22    # "resultFdt":I
    :cond_8
    const/16 v3, 0xc

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 543
    const/4 v3, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->commonStartComplementFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v22

    goto :goto_3

    .line 554
    .end local v22    # "resultFdt":I
    :catch_2
    move-exception v16

    .line 555
    .local v16, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    const-string v3, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v16, v5, v8

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    move-object/from16 v0, v16

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    packed-switch v3, :pswitch_data_0

    .line 572
    const/16 v20, -0x1

    .line 575
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    move/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v3, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    move/from16 v21, v20

    .line 580
    .end local v20    # "result":I
    .restart local v21    # "result":I
    goto/16 :goto_1

    .line 558
    .end local v21    # "result":I
    .restart local v20    # "result":I
    :pswitch_0
    const/16 v20, -0xb

    .line 559
    const/4 v13, 0x0

    .line 560
    .local v13, "notify":Z
    const/16 v3, 0xb

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 561
    const/4 v13, 0x1

    .line 563
    :cond_9
    const/16 v10, 0x4a

    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    move/from16 v0, v20

    invoke-direct {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    move-object v8, v14

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;Z)V

    move/from16 v21, v20

    .line 568
    .end local v20    # "result":I
    .restart local v21    # "result":I
    goto/16 :goto_1

    .line 581
    .end local v13    # "notify":Z
    .end local v16    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    .end local v21    # "result":I
    .restart local v20    # "result":I
    :catch_3
    move-exception v16

    .line 582
    .local v16, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    if-nez v18, :cond_a

    .line 583
    invoke-virtual {v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v17

    .line 584
    .local v17, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    const/16 v3, 0xb

    move/from16 v0, p2

    if-ne v0, v3, :cond_b

    .line 585
    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 590
    .end local v17    # "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    :cond_a
    :goto_4
    const/16 v3, 0x49

    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;

    move/from16 v0, v20

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;-><init>(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v3, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->noticeRepair(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementErrInfoSv;)V

    .line 592
    throw v16

    .line 586
    .restart local v17    # "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    :cond_b
    const/16 v3, 0xc

    move/from16 v0, p2

    if-ne v0, v3, :cond_a

    .line 587
    const/4 v3, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_4

    .line 556
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private commonStartComplementFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2614
    const/4 v5, 0x0

    .line 2617
    .local v5, "result":I
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 2618
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v7

    .line 2621
    .local v7, "utility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->hasFdtInstance(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2622
    const-string v8, "FDT instance exists."

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2623
    const/16 v5, -0x23

    move v6, v5

    .line 2724
    .end local v5    # "result":I
    .local v6, "result":I
    :goto_0
    return v6

    .line 2631
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :cond_0
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mWifiSleepCtrl:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv$MmbFcWifiSleepController;->startWakeup()V

    .line 2634
    if-eqz p2, :cond_1

    .line 2635
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->waitForWifiConnected()Z

    move-result v10

    if-nez v10, :cond_2

    move v4, v8

    .line 2637
    .local v4, "isTimedout":Z
    :goto_1
    if-eqz v4, :cond_1

    .line 2638
    const-string v10, "waitForWifiConnected timed out."

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2643
    .end local v4    # "isTimedout":Z
    :cond_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtNotice()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;

    move-result-object v3

    .line 2646
    .local v3, "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->setContentStateFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v5

    .line 2648
    if-nez v5, :cond_3

    .line 2649
    invoke-virtual {v3, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtStarted(Ljava/lang/String;I)V

    .line 2659
    const/4 v1, 0x0

    .line 2662
    .local v1, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_start_0
    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 2671
    :goto_2
    if-nez v1, :cond_4

    .line 2673
    const-string v8, "contentInfo null"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2674
    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2675
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v9, "Bad content meta"

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v1    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .end local v3    # "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    :cond_2
    move v4, v9

    .line 2635
    goto :goto_1

    .line 2651
    .restart local v3    # "fdtNotice":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;
    :cond_3
    const-string v8, "setContentStateFdt false"

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v5

    .line 2655
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_0

    .line 2663
    .end local v6    # "result":I
    .restart local v1    # "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    .restart local v5    # "result":I
    :catch_0
    move-exception v2

    .line 2664
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v10, "%s"

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v2, v11, v9

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 2665
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v2

    .line 2666
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v10, "%s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v10, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2667
    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2668
    throw v2

    .line 2679
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_4
    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkComplementFdt(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;I)I

    move-result v5

    .line 2682
    if-eqz v5, :cond_5

    .line 2684
    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    move v6, v5

    .line 2688
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_0

    .line 2693
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :cond_5
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkCancelFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2695
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-virtual {v10, v1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->repairContentsFdt(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_3

    move v6, v5

    .line 2724
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto :goto_0

    .line 2696
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :catch_2
    move-exception v2

    .line 2697
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    const-string v10, "%s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v10, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2698
    iget v8, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;->mmbErrorCode:I

    packed-switch v8, :pswitch_data_0

    .line 2709
    const/4 v5, -0x1

    .line 2712
    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    move v6, v5

    .line 2716
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 2700
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :pswitch_0
    const/16 v5, -0xb

    .line 2701
    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    move v6, v5

    .line 2705
    .end local v5    # "result":I
    .restart local v6    # "result":I
    goto/16 :goto_0

    .line 2717
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
    .end local v6    # "result":I
    .restart local v5    # "result":I
    :catch_3
    move-exception v2

    .line 2718
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-virtual {v3, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtNoticeSv;->onRepairFdtFailed(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2719
    throw v2

    .line 2698
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private reRegisterListener(Ljava/lang/String;I)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 2185
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterMethod([Ljava/lang/Object;)V

    .line 2188
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcDownloadEventListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->registerDownloadStateListener(Lmmb/android/MmbFcContMw/MmbFcContMwClientListener;)I

    move-result v0

    .line 2195
    .local v0, "ret":I
    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    .line 2197
    if-nez v0, :cond_0

    .line 2199
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 2202
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2205
    :cond_1
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeaveMethod()V

    .line 2206
    return-void
.end method

.method private setContentState(Ljava/lang/String;I)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 902
    const/4 v3, 0x0

    .line 905
    .local v3, "result":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 908
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/4 v1, 0x0

    .line 911
    .local v1, "contentState":I
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v1

    .line 914
    const/16 v6, -0x15

    if-eq v1, v6, :cond_0

    .line 915
    const-string v6, "Already Download or Complement contentState[%d]"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    const/4 v3, -0x1

    move v4, v3

    .line 950
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 924
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v2

    .line 928
    .local v2, "fdtStateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v2, :cond_1

    .line 929
    const-string v6, "Already Complement FDT. fdtStateInfo[%s]"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 930
    const/16 v3, -0x32

    move v4, v3

    .line 934
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 938
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_1
    const/16 v6, 0xb

    if-ne p2, v6, :cond_2

    .line 940
    const/4 v5, 0x3

    .line 945
    .local v5, "state":I
    :goto_1
    invoke-virtual {v0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registerDownloadContentState(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    .line 950
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 943
    .end local v4    # "result":I
    .end local v5    # "state":I
    .restart local v3    # "result":I
    :cond_2
    const/4 v5, 0x4

    .restart local v5    # "state":I
    goto :goto_1
.end method

.method private setContentStateFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v7, 0x1

    .line 2753
    const/4 v3, 0x0

    .line 2756
    .local v3, "result":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 2758
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->smContentStateMap:Ljava/util/Map;

    monitor-enter v6

    .line 2760
    if-ne p2, v7, :cond_0

    .line 2761
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v1

    .line 2764
    .local v1, "contentState":I
    const/16 v5, -0x15

    if-eq v1, v5, :cond_0

    .line 2765
    const-string v5, "Already Download or Complement contentState[%d]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2766
    const/4 v3, -0x1

    .line 2770
    monitor-exit v6

    move v4, v3

    .line 2786
    .end local v1    # "contentState":I
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 2775
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v2

    .line 2777
    .local v2, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v2, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->setInitialState(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2778
    const-string v5, "setInitialState false"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2779
    const/4 v3, -0x1

    .line 2781
    :cond_1
    monitor-exit v6

    move v4, v3

    .line 2786
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 2781
    .end local v2    # "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method


# virtual methods
.method cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 352
    const-string v4, "CRID parameter error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 356
    :cond_0
    const/4 v3, 0x0

    .line 358
    .local v3, "state":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 359
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v3

    .line 361
    const/4 v1, -0x1

    .line 362
    .local v1, "result":I
    const/4 v4, 0x3

    if-eq v4, v3, :cond_1

    const/4 v4, 0x4

    if-eq v4, v3, :cond_1

    move v2, v1

    .line 383
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 370
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->canCancel(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 371
    const/16 v1, -0x30

    move v2, v1

    .line 375
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 378
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->cancelRepair(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 379
    const/4 v1, 0x0

    move v2, v1

    .line 383
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method cancelComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2532
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2533
    const-string v4, "CRID parameter error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2534
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v4

    .line 2538
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v0

    .line 2540
    .local v0, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v3

    .line 2542
    .local v3, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    const/4 v1, -0x1

    .line 2543
    .local v1, "result":I
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v3, v4, :cond_1

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v3, v4, :cond_1

    move v2, v1

    .line 2565
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 2552
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->canCancelFdt(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2553
    const/16 v1, -0x30

    move v2, v1

    .line 2557
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 2560
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mTask:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;

    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTaskSv;->cancelRepairFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2561
    const/4 v1, 0x0

    move v2, v1

    .line 2565
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method checkCancel(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
        }
    .end annotation

    .prologue
    .line 848
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 851
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 852
    const/4 v1, -0x1

    .line 853
    .local v1, "reason":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v2

    .line 857
    .end local v1    # "reason":I
    :cond_0
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getDownloadState(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x4a

    if-ne v2, v3, :cond_1

    .line 858
    const/4 v1, -0x3

    .line 859
    .restart local v1    # "reason":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v2

    .line 863
    .end local v1    # "reason":I
    :cond_1
    const/16 v2, 0xc

    if-ne p2, v2, :cond_2

    .line 865
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v2

    if-nez v2, :cond_2

    .line 866
    const/4 v1, -0x2

    .line 867
    .restart local v1    # "reason":I
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v2

    .line 874
    .end local v1    # "reason":I
    :cond_2
    return-void
.end method

.method checkCancelFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;
        }
    .end annotation

    .prologue
    .line 3050
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 3053
    .local v0, "content":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3054
    const/4 v2, -0x1

    .line 3055
    .local v2, "reason":I
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v4

    .line 3059
    .end local v2    # "reason":I
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceComplementFdtStateManager()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;

    move-result-object v1

    .line 3061
    .local v1, "fdtStateManager":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move-result-object v3

    .line 3062
    .local v3, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v3, v4, :cond_1

    .line 3063
    const/4 v2, -0x3

    .line 3064
    .restart local v2    # "reason":I
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v4

    .line 3068
    .end local v2    # "reason":I
    :cond_1
    if-eqz p2, :cond_2

    .line 3070
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getAutoOperationEnvironmentFlag()Z

    move-result v4

    if-nez v4, :cond_2

    .line 3071
    const/4 v2, -0x2

    .line 3072
    .restart local v2    # "reason":I
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;

    invoke-direct {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementTerminatedException;-><init>(I)V

    throw v4

    .line 3079
    .end local v2    # "reason":I
    :cond_2
    return-void
.end method

.method checkRepairSize(Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)I
    .locals 24
    .param p1, "aRepairInfo"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;
    .param p2, "aTransmitCtrlInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .prologue
    .line 702
    const/16 v18, 0x0

    .line 705
    .local v18, "result":I
    const-wide/16 v8, 0x0

    .line 707
    .local v8, "contentSize":J
    :try_start_0
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    move-object/from16 v0, p2

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 708
    .local v6, "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v21, "a=storageDemand"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object/from16 v0, v21

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object/from16 v20, v0

    .line 711
    .local v20, "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;->getStorageDemand(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v8

    .line 732
    const-wide/16 v16, 0x0

    .line 733
    .local v16, "repairSize":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 734
    move-object/from16 v0, p1

    iget-object v4, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->repairParts:[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;

    .local v4, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    move v11, v10

    .end local v4    # "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .local v11, "i$":I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 735
    .local v15, "parts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    if-eqz v15, :cond_0

    iget-object v0, v15, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 734
    .end local v11    # "i$":I
    :cond_0
    add-int/lit8 v10, v11, 0x1

    .restart local v10    # "i$":I
    move v11, v10

    .end local v10    # "i$":I
    .restart local v11    # "i$":I
    goto :goto_0

    .line 715
    .end local v6    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v11    # "i$":I
    .end local v15    # "parts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .end local v16    # "repairSize":J
    .end local v20    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :catch_0
    move-exception v7

    .line 716
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v21, "%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    const/16 v18, -0x2a

    move/from16 v19, v18

    .line 755
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v18    # "result":I
    .local v19, "result":I
    :goto_1
    return v19

    .line 722
    .end local v19    # "result":I
    .restart local v18    # "result":I
    :catch_1
    move-exception v7

    .line 723
    .local v7, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v21, "%s"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v7, v22, v23

    invoke-static/range {v21 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    const/16 v18, -0x2a

    move/from16 v19, v18

    .line 728
    .end local v18    # "result":I
    .restart local v19    # "result":I
    goto :goto_1

    .line 738
    .end local v7    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v19    # "result":I
    .restart local v6    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .restart local v11    # "i$":I
    .restart local v15    # "parts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .restart local v16    # "repairSize":J
    .restart local v18    # "result":I
    .restart local v20    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :cond_1
    iget-object v5, v15, Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;->missingParts:[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;

    .local v5, "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v10, 0x0

    .end local v11    # "i$":I
    .restart local v10    # "i$":I
    :goto_2
    if-ge v10, v13, :cond_0

    aget-object v14, v5, v10

    .line 740
    .local v14, "missing":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    iget-wide v0, v14, Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;->size:J

    move-wide/from16 v22, v0

    add-long v16, v16, v22

    .line 738
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 746
    .end local v5    # "arr$":[Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .end local v10    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "missing":Lmmb/android/MmbFcContMw/MmbFcContMwMissingParts;
    .end local v15    # "parts":Lmmb/android/MmbFcContMw/MmbFcContMwRepairParts;
    .restart local v11    # "i$":I
    :cond_2
    add-long v22, v8, v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkFreeSize(J)I

    move-result v18

    .end local v11    # "i$":I
    :goto_3
    move/from16 v19, v18

    .line 755
    .end local v18    # "result":I
    .restart local v19    # "result":I
    goto :goto_1

    .line 748
    .end local v19    # "result":I
    .restart local v18    # "result":I
    :cond_3
    const-string v21, "repairParts null"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    const/16 v18, -0x1

    goto :goto_3
.end method

.method checkRepairSize(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)I
    .locals 14
    .param p1, "aTransmitCtrlInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 780
    const/4 v6, 0x0

    .line 783
    .local v6, "result":I
    const-wide/16 v4, 0x0

    .line 785
    .local v4, "contentSize":J
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    iget-object v9, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 786
    .local v2, "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v9, "a=storageDemand"

    invoke-virtual {v2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v0, v9

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v8, v0

    .line 789
    .local v8, "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;->getStorageDemand(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 811
    long-to-double v10, v4

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v12

    double-to-long v4, v10

    .line 813
    invoke-direct {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkFreeSize(J)I

    move-result v6

    move v7, v6

    .line 819
    .end local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v6    # "result":I
    .end local v8    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    .local v7, "result":I
    :goto_0
    return v7

    .line 793
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :catch_0
    move-exception v3

    .line 794
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v9, "%s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 795
    const/16 v6, -0x2a

    move v7, v6

    .line 799
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0

    .line 800
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v7    # "result":I
    .restart local v6    # "result":I
    :catch_1
    move-exception v3

    .line 801
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v9, "%s"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 802
    const/16 v6, -0x2a

    move v7, v6

    .line 806
    .end local v6    # "result":I
    .restart local v7    # "result":I
    goto :goto_0
.end method

.method checkThreshold(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;)Z
    .locals 18
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDownloadState"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    .prologue
    .line 1807
    const/4 v8, 0x0

    .line 1808
    .local v8, "result":Z
    if-nez p2, :cond_0

    .line 1810
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v14, "Getting downoad progress error"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1812
    :cond_0
    const/4 v12, 0x0

    .line 1814
    .local v12, "transmitCtlInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v4

    .line 1816
    .local v4, "contentUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    const/4 v3, 0x0

    .line 1819
    .local v3, "contentMeta":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v3

    .line 1820
    if-eqz v3, :cond_1

    iget-object v13, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    if-nez v13, :cond_2

    .line 1822
    :cond_1
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v14, "Bad content meta"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1824
    :cond_2
    iget-object v12, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 1826
    const-wide/16 v6, 0x0

    .line 1828
    .local v6, "fileSize":J
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    iget-object v13, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v2, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 1829
    .local v2, "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v13, "a=storageDemand"

    invoke-virtual {v2, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v0, v13

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v9, v0

    .line 1832
    .local v9, "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;->getStorageDemand(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    .line 1839
    move-object/from16 v0, p2

    iget v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbSize:I

    int-to-long v14, v13

    const-wide/16 v16, 0x400

    mul-long v14, v14, v16

    sub-long v10, v6, v14

    .line 1841
    .local v10, "sizeToRepair":J
    move-object/from16 v0, p2

    iget v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkThresholdInner(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;IJ)Z

    move-result v8

    .line 1845
    return v8

    .line 1833
    .end local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v9    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    .end local v10    # "sizeToRepair":J
    :catch_0
    move-exception v5

    .line 1834
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v14, "Bad content meta"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1835
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v5

    .line 1836
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v14, "Bad content meta"

    invoke-direct {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v13
.end method

.method checkThreshold(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;)Z
    .locals 16
    .param p1, "aTcm"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;
    .param p2, "aRepairInfo"    # Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;

    .prologue
    .line 1731
    const/4 v6, 0x0

    .line 1732
    .local v6, "result":Z
    if-nez p1, :cond_0

    .line 1734
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v13, "Bad transmit control metadata"

    invoke-direct {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1740
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v12

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentsAccess()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;

    move-result-object v12

    move-object/from16 v0, p1

    iget-object v13, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->crid:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsAccessSv;->getDownloadProgress(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v10

    .line 1743
    .local v10, "state":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    if-nez v10, :cond_1

    .line 1744
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v13, "Getting downoad progress error"

    invoke-direct {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1749
    :cond_1
    const-wide/16 v4, 0x0

    .line 1751
    .local v4, "contentSize":J
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;

    move-object/from16 v0, p1

    iget-object v12, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->sdp:Ljava/lang/String;

    invoke-direct {v2, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;-><init>(Ljava/lang/String;)V

    .line 1752
    .local v2, "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    const-string v12, "a=storageDemand"

    invoke-virtual {v2, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;->getTagClass(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v0, v12

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;

    move-object v11, v0

    .line 1755
    .local v11, "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;->getStorageDemand(Z)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v4

    .line 1761
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lmmb/android/MmbFcContMw/MmbFcContMwRepairInformation;->allRepair:Z

    if-eqz v12, :cond_2

    iget v12, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbSize:I

    if-nez v12, :cond_2

    .line 1762
    const/4 v6, 0x0

    move v7, v6

    .line 1775
    .end local v6    # "result":Z
    .local v7, "result":I
    :goto_0
    return v7

    .line 1756
    .end local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .end local v7    # "result":I
    .end local v11    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    .restart local v6    # "result":Z
    :catch_0
    move-exception v3

    .line 1757
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v13, "Bad transmit control metadata"

    invoke-direct {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1758
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 1759
    .local v3, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v13, "Bad transmit control metadata"

    invoke-direct {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1769
    .end local v3    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v2    # "classSdp":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv;
    .restart local v11    # "storageClass":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpStorageDemandTagSv;
    :cond_2
    iget v12, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbSize:I

    int-to-long v12, v12

    const-wide/16 v14, 0x400

    mul-long/2addr v12, v14

    sub-long v8, v4, v12

    .line 1771
    .local v8, "sizeToRepair":J
    iget v12, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;->mmbProgress:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->checkThresholdInner(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;IJ)Z

    move-result v6

    move v7, v6

    .line 1775
    .restart local v7    # "result":I
    goto :goto_0
.end method

.method getComplementProgress()I
    .locals 1

    .prologue
    .line 2250
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mComplemenProgrres:I

    return v0
.end method

.method getThresholdMeta(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;ILmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;)I
    .locals 6
    .param p1, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p2, "aContentState"    # I
    .param p3, "aTransmitCtrlInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 2020
    const/4 v0, 0x0

    .line 2022
    .local v0, "percentageThreshold":I
    if-eqz p3, :cond_0

    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    if-nez v2, :cond_1

    .line 2023
    :cond_0
    const/16 v0, 0x64

    move v1, v0

    .line 2065
    .end local v0    # "percentageThreshold":I
    .local v1, "percentageThreshold":I
    :goto_0
    return v1

    .line 2030
    .end local v1    # "percentageThreshold":I
    .restart local v0    # "percentageThreshold":I
    :cond_1
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 2032
    if-ne p2, v4, :cond_2

    .line 2033
    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    :goto_1
    move v1, v0

    .line 2065
    .end local v0    # "percentageThreshold":I
    .restart local v1    # "percentageThreshold":I
    goto :goto_0

    .line 2035
    .end local v1    # "percentageThreshold":I
    .restart local v0    # "percentageThreshold":I
    :cond_2
    if-ne p2, v5, :cond_3

    .line 2037
    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairManualStorePercentage:B

    goto :goto_1

    .line 2041
    :cond_3
    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    iget-object v3, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairManualStorePercentage:B

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 2048
    :cond_4
    if-ne p2, v4, :cond_5

    .line 2049
    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    goto :goto_1

    .line 2051
    :cond_5
    if-ne p2, v5, :cond_6

    .line 2053
    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairAutoStorePercentage:B

    goto :goto_1

    .line 2057
    :cond_6
    iget-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B

    iget-object v3, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    iget-byte v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->autoRepairAutoStorePercentage:B

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1
.end method

.method isCompleteOnly(Ljava/lang/String;)Z
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2092
    const/4 v1, 0x0

    .line 2093
    .local v1, "result":Z
    const/4 v0, 0x0

    .line 2095
    .local v0, "contentInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsFromMeta(Ljava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    move-result-object v0

    .line 2099
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->isCompleteOnly(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)Z

    move-result v1

    .line 2104
    return v1
.end method

.method isCompleteOnly(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;)Z
    .locals 8
    .param p1, "aContentInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;

    .prologue
    .line 2131
    const/4 v4, 0x0

    .line 2133
    .local v4, "result":Z
    if-nez p1, :cond_0

    .line 2134
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v7, "getMmbSiInfSv null"

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2137
    :cond_0
    iget-object v6, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v6, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-nez v6, :cond_2

    :cond_1
    move v5, v4

    .line 2159
    .end local v4    # "result":Z
    .local v5, "result":I
    :goto_0
    return v5

    .line 2145
    .end local v5    # "result":I
    .restart local v4    # "result":Z
    :cond_2
    iget-object v6, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwDownloadContentsInformation;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .line 2146
    .local v2, "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 2145
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2149
    :cond_4
    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v7, "other"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2150
    iget-object v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".*ContAttributes\\|.*complete_only:ON.*"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2151
    const/4 v4, 0x1

    .end local v2    # "keyword":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    :cond_5
    move v5, v4

    .line 2159
    .restart local v5    # "result":I
    goto :goto_0
.end method

.method setComplementProgress(I)V
    .locals 0
    .param p1, "aProgress"    # I

    .prologue
    .line 2225
    sput p1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mComplemenProgrres:I

    .line 2229
    return-void
.end method

.method startAutoComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 285
    const-string v2, "[%s] Auto Complement Start"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 289
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    const-string v2, "CRID parameter error"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 293
    :cond_0
    const/4 v1, -0x1

    .line 297
    .local v1, "result":I
    const/16 v2, 0xc

    :try_start_0
    invoke-direct {p0, p1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->commonStartComplement(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 300
    if-eqz v1, :cond_1

    .line 301
    const-string v2, "commonStartComplement result:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_1
    if-eqz v1, :cond_2

    .line 314
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    .line 320
    :cond_2
    :goto_0
    const-string v2, "[%s] Auto Complement End"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_1
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 314
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    :cond_3
    throw v2

    .line 307
    :catch_1
    move-exception v0

    .line 308
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 310
    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->reRegisterListener(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    if-eqz v1, :cond_2

    .line 314
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->reschedAcquisition(Ljava/lang/String;)I

    goto :goto_0
.end method

.method startAutoComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2468
    const-string v2, "[%s] Auto Single Complement FDT Start"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2472
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2473
    const-string v2, "CRID parameter error"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2474
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 2476
    :cond_0
    const/4 v1, -0x1

    .line 2480
    .local v1, "result":I
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->commonStartComplementFdt(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2481
    if-eqz v1, :cond_1

    .line 2482
    const-string v2, "commonStartComplementFdt result:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2494
    :cond_1
    if-eqz v1, :cond_2

    .line 2495
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    .line 2501
    :cond_2
    :goto_0
    const-string v2, "[%s] Auto Single Complement FDT End"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2506
    return-void

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_1
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2487
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2494
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 2495
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    :cond_3
    throw v2

    .line 2488
    :catch_1
    move-exception v0

    .line 2489
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :try_start_2
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 2491
    const/16 v2, 0xc

    invoke-direct {p0, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->reRegisterListener(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2494
    if-eqz v1, :cond_2

    .line 2495
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->registerScheduleComplementFdtFixed(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method startComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 220
    const-string v2, "[%s] Manual Complement Start"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    const-string v2, "CRID parameter error"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 229
    :cond_0
    const/4 v1, -0x1

    .line 233
    .local v1, "result":I
    const/16 v2, 0xb

    :try_start_0
    invoke-direct {p0, p1, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->commonStartComplement(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 236
    if-eqz v1, :cond_1

    .line 237
    const-string v2, "commonStartComplement result:%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 252
    :cond_1
    :goto_0
    const-string v2, "[%s] Manual Complement End"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->logFcDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v2, "%s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 243
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 244
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 246
    invoke-direct {p0, p1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementControllerSv;->reRegisterListener(Ljava/lang/String;I)V

    goto :goto_0

    .line 247
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
