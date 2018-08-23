.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;
.super Ljava/lang/Object;
.source "MmbFcExtCheckContentDetailsSv.java"


# instance fields
.field private final mExtContentInfoList:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

.field private final mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mScheduleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation
.end field

.field private mTime:J


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;)V
    .locals 6
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aExtContentInfoList"    # [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mTime:J

    .line 71
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mScheduleMap:Ljava/util/HashMap;

    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v5, "aMainService == null"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 96
    :cond_0
    if-nez p2, :cond_1

    .line 97
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v5, "aExtContentInfoList == null"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_1
    move-object v0, p2

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v1, v0, v2

    .line 100
    .local v1, "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v4, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v4, v4, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 104
    :cond_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v5, "illegal extContentInfo"

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 99
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    :cond_4
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 108
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mExtContentInfoList:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    .line 112
    return-void
.end method


# virtual methods
.method checkComplementState()V
    .locals 22

    .prologue
    .line 358
    sget-object v18, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->FDT_INSTANCE_IS_NOTHING:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;

    invoke-virtual/range {v18 .. v18}, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwFdtInstanceState;->getInt()I

    move-result v2

    .line 360
    .local v2, "FDT_INSTANCE_IS_NOTHING":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->getTime()J

    move-result-wide v16

    .line 362
    .local v16, "time":J
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->getScheduleMap()Ljava/util/HashMap;

    move-result-object v14

    .line 365
    .local v14, "scheduleMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mExtContentInfoList:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    .local v3, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_9

    aget-object v6, v3, v7

    .line 366
    .local v6, "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    iget-object v9, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .line 367
    .local v9, "mwContentsInfo":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    iget-object v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 369
    .local v13, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-object v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    iget-object v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 371
    :cond_0
    const-string v18, "illegal transmitInfo"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    const/16 v18, 0x2b

    move/from16 v0, v18

    iput v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbComplementState:I

    .line 365
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 376
    :cond_1
    iget-object v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 377
    const-string v18, "contentsState == null"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    const/16 v18, 0x2b

    move/from16 v0, v18

    iput v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbComplementState:I

    goto :goto_1

    .line 382
    :cond_2
    if-nez v13, :cond_3

    .line 386
    const/16 v18, 0x2b

    move/from16 v0, v18

    iput v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbComplementState:I

    goto :goto_1

    .line 391
    :cond_3
    iget-object v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v11, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;->postFileRepair:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;

    .line 394
    .local v11, "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    const/16 v4, 0x2b

    .line 398
    .local v4, "complementState":I
    :try_start_0
    iget-wide v0, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairStartDate:J

    move-wide/from16 v18, v0

    cmp-long v18, v16, v18

    if-gez v18, :cond_6

    .line 400
    const/16 v4, 0x2a

    .line 428
    :cond_4
    :goto_2
    iget v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 429
    iget-byte v10, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairManualStorePercentage:B

    .line 434
    .local v10, "percentageThreshold":I
    :goto_3
    iget-object v0, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v12, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contProgress:I

    .line 440
    .local v12, "progress":I
    if-ge v12, v10, :cond_5

    .line 444
    packed-switch v4, :pswitch_data_0

    .line 458
    const-string v18, "state error"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 471
    .end local v10    # "percentageThreshold":I
    .end local v12    # "progress":I
    :cond_5
    :goto_4
    iput v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbComplementState:I

    goto :goto_1

    .line 401
    :cond_6
    const-wide/16 v18, 0x0

    :try_start_1
    iget-wide v0, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_7

    iget-wide v0, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairEndDate:J

    move-wide/from16 v18, v0

    cmp-long v18, v16, v18

    if-lez v18, :cond_7

    .line 404
    const/16 v4, 0x2b

    goto :goto_2

    .line 407
    :cond_7
    const/16 v4, 0x29

    .line 410
    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbFdtInstanceState:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v0, v2, :cond_4

    .line 411
    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;)V

    .line 414
    .local v15, "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    invoke-virtual {v15, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 415
    invoke-virtual/range {v15 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->setTime(J)V

    .line 418
    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isRepairPercentageZero()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;->isOverLastBroadcast()Z

    move-result v18

    if-nez v18, :cond_4

    .line 421
    const/16 v4, 0x2a

    goto :goto_2

    .line 431
    .end local v15    # "zeroSymbolsHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcZeroSymbolsComplementContentsHelperSv;
    :cond_8
    iget-byte v10, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;->manualRepairAutoStorePercentage:B
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v10    # "percentageThreshold":I
    goto :goto_3

    .line 446
    .restart local v12    # "progress":I
    :pswitch_0
    const/16 v4, 0x2c

    .line 448
    goto :goto_4

    .line 450
    :pswitch_1
    const/16 v4, 0x2d

    .line 452
    goto :goto_4

    .line 454
    :pswitch_2
    const/16 v4, 0x2e

    .line 456
    goto :goto_4

    .line 462
    .end local v10    # "percentageThreshold":I
    .end local v12    # "progress":I
    :catch_0
    move-exception v5

    .line 463
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    const/16 v4, 0x2b

    .line 468
    goto :goto_4

    .line 465
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v5

    .line 466
    .local v5, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v18, "%s"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput-object v5, v19, v20

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    throw v5

    .line 477
    .end local v4    # "complementState":I
    .end local v5    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v6    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v9    # "mwContentsInfo":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    .end local v11    # "postFileRepair":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPostFileRepair;
    .end local v13    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_9
    return-void

    .line 444
    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method checkContentState()V
    .locals 9

    .prologue
    .line 258
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentUtility()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;

    move-result-object v2

    .line 261
    .local v2, "fcUtility":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mExtContentInfoList:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 262
    .local v1, "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    iget-object v5, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .line 263
    .local v5, "mwContentsInfo":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    iget-object v7, v5, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    if-nez v7, :cond_0

    .line 264
    const-string v7, "contentsState == null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const/16 v7, 0x38

    iput v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbContentState:I

    .line 261
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    iget-object v7, v5, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    iget-object v7, v7, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getMmbFcContSvDownloadStatus(Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)I

    move-result v6

    .line 274
    .local v6, "svDownloadStatus":I
    iget-object v7, v5, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v7, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->crid:Ljava/lang/String;

    invoke-virtual {v2, v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcUtilitySv;->getContentDetailsState(Ljava/lang/String;I)I

    move-result v7

    iput v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbContentState:I

    goto :goto_1

    .line 283
    .end local v1    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v5    # "mwContentsInfo":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    .end local v6    # "svDownloadStatus":I
    :cond_1
    return-void
.end method

.method checkOpenState()V
    .locals 18

    .prologue
    .line 308
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->getTime()J

    move-result-wide v12

    .line 311
    .local v12, "time":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mExtContentInfoList:[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    .local v2, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_3

    aget-object v4, v2, v6

    .line 313
    .local v4, "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    const/16 v10, 0x29

    .line 315
    .local v10, "openState":I
    iget-object v14, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    iget-object v14, v14, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    iget-object v9, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    .line 316
    .local v9, "mwPeriods":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    if-eqz v9, :cond_2

    .line 317
    move-object v3, v9

    .local v3, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_1
    if-ge v5, v8, :cond_2

    aget-object v11, v3, v5

    .line 318
    .local v11, "period":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    if-eqz v11, :cond_0

    const-string v14, "display"

    iget-object v15, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 319
    iget-wide v14, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->start:J

    cmp-long v14, v12, v14

    if-gez v14, :cond_1

    .line 320
    const/16 v10, 0x2a

    .line 317
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 321
    :cond_1
    const-wide/16 v14, 0x0

    iget-wide v0, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    iget-wide v14, v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;->end:J

    cmp-long v14, v12, v14

    if-lez v14, :cond_0

    .line 322
    const/16 v10, 0x2b

    goto :goto_2

    .line 328
    .end local v3    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v11    # "period":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    :cond_2
    iput v10, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbOpenState:I

    .line 311
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_0

    .line 334
    .end local v4    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v9    # "mwPeriods":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;
    .end local v10    # "openState":I
    :cond_3
    return-void
.end method

.method public execute(I)V
    .locals 1
    .param p1, "aColumnFlg"    # I

    .prologue
    .line 225
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->checkContentState()V

    .line 228
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->checkOpenState()V

    .line 231
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->checkComplementState()V

    .line 238
    :cond_2
    return-void
.end method

.method getScheduleMap()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mScheduleMap:Ljava/util/HashMap;

    .line 175
    .local v3, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    if-nez v3, :cond_1

    .line 178
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getInstanceContentSchedule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;

    move-result-object v0

    .line 180
    .local v0, "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;->searchScheduleAll(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 185
    .local v6, "scheduleDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/HashMap;-><init>(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .local v4, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 187
    .local v5, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    iget-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 188
    iget-object v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 193
    .end local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .end local v6    # "scheduleDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v7, 0x0

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 195
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .restart local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :goto_2
    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mScheduleMap:Ljava/util/HashMap;

    .line 200
    :cond_1
    return-object v3

    .end local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v6    # "scheduleDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :cond_2
    move-object v3, v4

    .line 194
    .end local v4    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    .restart local v3    # "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    goto :goto_2

    .line 191
    .end local v0    # "contentSchedule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentScheduleSv;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "scheduleDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method getTime()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 136
    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mTime:J

    .line 137
    .local v2, "result":J
    cmp-long v1, v2, v8

    if-gtz v1, :cond_1

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 144
    cmp-long v1, v2, v8

    if-gtz v1, :cond_0

    .line 145
    const-string v1, "illegal time. [%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    const-string v4, "illegal time"

    invoke-direct {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v1, "%s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 148
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtCheckContentDetailsSv;->mTime:J

    .line 153
    :cond_1
    return-wide v2
.end method
