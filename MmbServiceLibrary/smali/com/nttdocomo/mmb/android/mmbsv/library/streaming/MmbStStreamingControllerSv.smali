.class Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;
.source "MmbStStreamingControllerSv.java"


# static fields
.field public static final BIT_UPDATE:I = 0x1

.field public static final DEFALULT_SECURE_CLOCK:J = 0x0L

.field public static final IGNITION_FIXED_TIME:J = 0xea60L

.field public static final INNER_DECODE_NON:I = -0x1

.field public static final INNER_DECODE_START:I = 0x0

.field public static final INNER_DECODE_STOP:I = 0x1

.field public static final NIT_UPDATE:I = 0x0

.field protected static final NOT_OCCURED_FATAL_ERROR:I = 0x0

.field protected static final OCCURED_FATAL_ERROR:I = 0x1

.field protected static final OCCURED_MW_FATAL_ERROR:I = 0x2

.field public static final RESERVATION_CONFIGURATION_ERROR_NUM:J = -0x1L

.field public static final SDT_UPDATE:I = 0x2

.field public static final TIME_ADDED_TIMER:I = 0x1388


# instance fields
.field protected exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

.field private playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;


# direct methods
.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;)V
    .locals 1
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .prologue
    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 80
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 81
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 158
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    if-nez v0, :cond_0

    .line 160
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 161
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 164
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->initializeStControlStatus(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method protected constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V
    .locals 1
    .param p1, "aController"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;
    .param p2, "aPlayerFunc"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;
    .param p3, "aStreamingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .param p4, "aExIfListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;
    .param p5, "aRecPlayingInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStRecPlayingInformationSv;)V

    .line 80
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 81
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 194
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    .line 195
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->initializeStControlStatus(Z)V

    .line 203
    return-void
.end method

.method private changePreTuneException(I)I
    .locals 1
    .param p1, "aInnerException"    # I

    .prologue
    .line 781
    const/16 v0, 0x8

    .line 782
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 793
    :pswitch_0
    const/16 v0, 0x8

    .line 800
    :goto_0
    return v0

    .line 784
    :pswitch_1
    const/16 v0, 0xd

    .line 785
    goto :goto_0

    .line 787
    :pswitch_2
    const/16 v0, 0xe

    .line 788
    goto :goto_0

    .line 790
    :pswitch_3
    const/16 v0, 0xf

    .line 791
    goto :goto_0

    .line 782
    nop

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkChangeAntennaLevel(I)Z
    .locals 3
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 6827
    const/4 v1, 0x0

    .line 6830
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    .line 6831
    .local v2, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAntennaLevel()I

    move-result v0

    .line 6834
    .local v0, "antennalevel":I
    if-eq p1, v0, :cond_0

    .line 6835
    const/4 v1, 0x1

    .line 6836
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAntennaLevel(I)V

    .line 6842
    :cond_0
    return v1
.end method

.method private checkParentalDo(II)V
    .locals 16
    .param p1, "aOldViewStatus"    # I
    .param p2, "aOldParental"    # I

    .prologue
    .line 2499
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v11

    .line 2501
    .local v11, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getInnerViewStatus()I

    move-result v7

    .line 2503
    .local v7, "nowviewstatus":I
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getParentalstatus()I

    move-result v6

    .line 2504
    .local v6, "nowparental":I
    const/4 v1, 0x0

    .line 2505
    .local v1, "calllistner":Z
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getContractstatus()I

    move-result v10

    .line 2508
    .local v10, "status":I
    move/from16 v0, p1

    if-eq v0, v7, :cond_5

    .line 2510
    if-nez v7, :cond_4

    .line 2512
    const/4 v1, 0x1

    .line 2513
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getContractstatus()I

    move-result v10

    .line 2533
    :cond_0
    :goto_0
    const/4 v9, 0x0

    .line 2536
    .local v9, "result":I
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onChangeViewingStatusProcess(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    :goto_1
    const/4 v12, 0x1

    if-ne v1, v12, :cond_2

    .line 2551
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getViewingStatus()I

    move-result v8

    .line 2552
    .local v8, "oldviewingstatus":I
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getNgstatus()I

    move-result v5

    .line 2553
    .local v5, "ngstatus":I
    if-eq v8, v10, :cond_1

    const/4 v12, 0x4

    if-ne v12, v5, :cond_2

    .line 2555
    :cond_1
    const/4 v1, 0x0

    .line 2558
    .end local v5    # "ngstatus":I
    .end local v8    # "oldviewingstatus":I
    :cond_2
    const/4 v12, 0x1

    if-ne v12, v1, :cond_3

    .line 2559
    move v4, v10

    .line 2560
    .local v4, "fixstatus":I
    move v3, v9

    .line 2561
    .local v3, "fixresult":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v12

    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$7;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2572
    invoke-virtual {v11, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 2576
    .end local v3    # "fixresult":I
    .end local v4    # "fixstatus":I
    :cond_3
    if-nez v7, :cond_7

    .line 2577
    sget-object v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->WATCHING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 2584
    :goto_2
    return-void

    .line 2516
    .end local v9    # "result":I
    :cond_4
    const/16 v10, 0x9

    .line 2517
    const/4 v1, 0x1

    goto :goto_0

    .line 2519
    :cond_5
    if-eqz v7, :cond_0

    .line 2522
    const/4 v12, 0x4

    if-ne v12, v6, :cond_6

    .line 2525
    const/16 v10, 0x9

    .line 2526
    const/4 v1, 0x1

    goto :goto_0

    .line 2527
    :cond_6
    const/4 v12, 0x4

    move/from16 v0, p2

    if-ne v12, v0, :cond_0

    const/4 v12, 0x3

    if-ne v12, v6, :cond_0

    .line 2529
    const/4 v1, 0x1

    goto :goto_0

    .line 2537
    .restart local v9    # "result":I
    :catch_0
    move-exception v2

    .line 2539
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getErrorFunction()I

    move-result v9

    .line 2541
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 2546
    const-string v12, "error(%d)"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 2544
    :pswitch_0
    throw v2

    .line 2579
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_7
    sget-object v12, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    goto :goto_2

    .line 2541
    nop

    :pswitch_data_0
    .packed-switch -0x15
        :pswitch_0
    .end packed-switch
.end method

.method private checkReserveFailedDo(ZI)V
    .locals 12
    .param p1, "aLogflag"    # Z
    .param p2, "aReason"    # I

    .prologue
    const/16 v11, -0x3e8

    const/4 v10, 0x0

    .line 5212
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 5217
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSecureClock()J

    move-result-wide v6

    .line 5220
    .local v6, "secureclock":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 5222
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v9

    .line 5226
    .local v9, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    const/4 v2, 0x0

    iget-object v3, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    iget-object v4, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    move v5, p2

    invoke-virtual/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJ)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v8

    .line 5232
    .local v8, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5253
    .end local v1    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v6    # "secureclock":J
    .end local v8    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    .end local v9    # "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    :cond_0
    :goto_0
    return-void

    .line 5234
    :catch_0
    move-exception v0

    .line 5235
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v2, "ServiceArgumentException error"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5237
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v2

    .line 5238
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 5239
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v2, "ServiceIOException error"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5241
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v2

    .line 5242
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v0

    .line 5244
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v2, "ServiceConnectionException"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5245
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v3, -0x12

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v2

    .line 5246
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_3
    move-exception v0

    .line 5248
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v2, "ServiceInternalException"

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private checkUpDate(I)Z
    .locals 4
    .param p1, "aInformationNamber"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2926
    packed-switch p1, :pswitch_data_0

    .line 2940
    const-string v2, "info number error(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2950
    :goto_0
    return v0

    .line 2929
    :pswitch_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onNitUpdated()V

    :goto_1
    move v0, v1

    .line 2950
    goto :goto_0

    .line 2933
    :pswitch_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onBitUpdated()V

    goto :goto_1

    .line 2937
    :pswitch_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onSdtUpdated()V

    goto :goto_1

    .line 2926
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearAudioMuteByDevice(Landroid/content/Intent;)V
    .locals 7
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x1000

    const/16 v3, 0x100

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4125
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 4128
    .local v0, "audioFlg":I
    if-nez v0, :cond_5

    .line 4130
    const/4 v1, 0x0

    .line 4131
    .local v1, "muteoff":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    shr-int/lit8 v2, v2, 0xc

    if-ne v4, v2, :cond_0

    .line 4134
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v6, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 4138
    const/4 v1, 0x1

    .line 4141
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    if-ne v4, v2, :cond_1

    .line 4144
    invoke-virtual {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 4148
    const/4 v1, 0x1

    .line 4151
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4152
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4154
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->outDeviceSetAudio(I)V

    .line 4191
    .end local v1    # "muteoff":Z
    :cond_3
    :goto_0
    return-void

    .line 4157
    .restart local v1    # "muteoff":Z
    :cond_4
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->outDeviceSetAudio(I)V

    goto :goto_0

    .line 4162
    .end local v1    # "muteoff":Z
    :cond_5
    and-int/lit16 v2, v0, 0x100

    if-ne v3, v2, :cond_6

    .line 4164
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x100

    shr-int/lit8 v2, v2, 0x8

    if-ne v4, v2, :cond_3

    .line 4168
    invoke-virtual {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v3, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->videoAudioStatusChange(IIIZ)V

    goto :goto_0

    .line 4174
    :cond_6
    const/16 v2, 0x200

    and-int/lit16 v3, v0, 0x200

    if-ne v2, v3, :cond_3

    .line 4176
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v2

    and-int/lit16 v2, v2, 0x1000

    shr-int/lit8 v2, v2, 0xc

    if-ne v4, v2, :cond_3

    .line 4180
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v4, v6, v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->videoAudioStatusChange(IIIZ)V

    goto :goto_0
.end method

.method private convertServiceNgStatusDo(I)I
    .locals 4
    .param p1, "aResult"    # I

    .prologue
    .line 4519
    move v0, p1

    .line 4520
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 4523
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getParentalstatus()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 4524
    const/16 v0, 0x9

    .line 4529
    :cond_0
    return v0
.end method

.method private getReservationConfiguration()J
    .locals 14

    .prologue
    .line 6105
    const/4 v2, 0x1

    .line 6106
    .local v2, "errorflag":Z
    const/4 v5, 0x0

    .line 6109
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v4

    .line 6110
    .local v4, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/16 v7, 0x9

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getConfiguration(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v6

    .line 6112
    .local v6, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6123
    .end local v4    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v6    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    :goto_0
    const-wide/16 v8, -0x1

    .line 6124
    .local v8, "time":J
    if-nez v2, :cond_0

    .line 6125
    const-string v7, "getReservationConfiguration error"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6127
    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    move-wide v10, v8

    .line 6142
    .end local v8    # "time":J
    .local v10, "time":J
    :goto_1
    return-wide v10

    .line 6113
    .end local v10    # "time":J
    :catch_0
    move-exception v3

    .line 6114
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const/4 v2, 0x0

    .line 6121
    goto :goto_0

    .line 6115
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 6116
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const/4 v2, 0x0

    .line 6121
    goto :goto_0

    .line 6117
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v3

    .line 6118
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const/4 v2, 0x0

    .line 6121
    goto :goto_0

    .line 6119
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v3

    .line 6120
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const/4 v2, 0x0

    goto :goto_0

    .line 6134
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    .restart local v8    # "time":J
    :cond_0
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 6137
    const-wide/16 v12, 0x3e8

    mul-long/2addr v8, v12

    move-wide v10, v8

    .line 6142
    .end local v8    # "time":J
    .restart local v10    # "time":J
    goto :goto_1
.end method

.method private initializeDrawSettingData()V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 249
    .local v0, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 253
    return-void
.end method

.method private initializeStControlStatus(Z)V
    .locals 3
    .param p1, "aIsDecode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 220
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioDecodeStatus(I)V

    .line 222
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setVideoDecodeStatus(I)V

    .line 224
    :cond_0
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceNgStatus(I)V

    .line 225
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceContractStatus(I)V

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceParentalStatus(Z)V

    .line 227
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 232
    return-void
.end method

.method private preTuneCommonWrappedActual(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 10
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    const/4 v9, 0x1

    .line 872
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v4

    .line 873
    .local v4, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v3

    .line 875
    .local v3, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setStLogServiceId(I)V

    .line 878
    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setServiceId(I)V

    .line 879
    invoke-virtual {v3, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setTuneType(I)V

    .line 880
    invoke-virtual {v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setSelectChannelUserParam(I)V

    .line 881
    invoke-virtual {v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setReservationUserParam(I)V

    .line 884
    if-ne v9, p2, :cond_0

    .line 885
    invoke-virtual {v3, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setScheduleIntentData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V

    .line 889
    :cond_0
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 891
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 895
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/16 v5, 0x108

    const/4 v6, 0x0

    invoke-virtual {v1, v5, p1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkConflict(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 897
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 900
    .local v0, "conflictresult":I
    if-eqz v0, :cond_2

    .line 901
    const-string v5, "conflict(%d)"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    if-ne v9, p2, :cond_1

    .line 909
    invoke-virtual {p0, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkReservationConflict(II)V

    .line 912
    :cond_1
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v5

    .line 918
    :cond_2
    return-void
.end method

.method private reservationCancelConfirmation()V
    .locals 4

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 582
    .local v0, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getTuneType()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 583
    const/4 v1, 0x0

    .line 585
    .local v1, "status":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStatus()I

    move-result v1

    .line 586
    packed-switch v1, :pswitch_data_0

    .line 600
    .end local v1    # "status":I
    :cond_0
    :goto_0
    return-void

    .line 591
    .restart local v1    # "status":I
    :pswitch_0
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private resetStreamingInformationParameter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 549
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 550
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudioStatus(I)V

    .line 551
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setVideoStatus(I)V

    .line 552
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceNgStatus(I)V

    .line 553
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceContractStatus(I)V

    .line 554
    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceParentalStatus(Z)V

    .line 555
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudiocomponenttag(S)V

    .line 557
    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setBmlStarterFlag(Z)V

    .line 558
    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setCaptionStarterFlag(Z)V

    .line 559
    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setSuperimposeStarterFlag(Z)V

    .line 560
    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setSuperimposeAutoDisplayFlag(Z)V

    .line 561
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 566
    return-void
.end method

.method private saveServiceList(Z)V
    .locals 13
    .param p1, "aIsSdt"    # Z

    .prologue
    .line 2970
    const/4 v5, 0x0

    .line 2974
    .local v5, "retry":Z
    :cond_0
    const/4 v8, 0x0

    .line 2977
    .local v8, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    if-eqz p1, :cond_1

    .line 2978
    :try_start_0
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getServiceListForWatching()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v8

    .line 2984
    :goto_0
    if-eqz v8, :cond_3

    .line 2987
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v4

    .line 2990
    .local v4, "oldservicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    invoke-virtual {p0, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->complementServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V

    .line 2993
    invoke-virtual {p0, v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->compareServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3058
    .end local v4    # "oldservicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :goto_1
    return-void

    .line 2980
    :cond_1
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getServiceListForScan()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v8

    goto :goto_0

    .line 3000
    .restart local v4    # "oldservicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v3

    .line 3002
    .local v3, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 3004
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v9

    .line 3005
    .local v9, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v9, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V

    .line 3008
    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStatus()I

    move-result v11

    if-eq v10, v11, :cond_3

    .line 3010
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v6

    .line 3012
    .local v6, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getServiceId()I

    move-result v7

    .line 3015
    .local v7, "serviceid":I
    invoke-virtual {p0, v4, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkBroadcastTypeChange(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;I)I

    move-result v1

    .line 3018
    .local v1, "changetypetmp":I
    move v0, v1

    .line 3020
    .local v0, "changetype":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v11, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$9;

    invoke-direct {v11, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$9;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3053
    .end local v0    # "changetype":I
    .end local v1    # "changetypetmp":I
    .end local v3    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v4    # "oldservicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .end local v6    # "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    .end local v7    # "serviceid":I
    .end local v9    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :cond_3
    :goto_2
    const/4 v10, 0x1

    if-eq v10, v5, :cond_0

    goto :goto_1

    .line 3034
    :catch_0
    move-exception v2

    .line 3035
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v10, "ServiceIOException"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3037
    const/4 v10, 0x1

    if-ne v10, v5, :cond_4

    .line 3039
    const/4 v5, 0x0

    goto :goto_2

    .line 3042
    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 3045
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v2

    .line 3047
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v10, "ServiceArgumentException"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 3048
    .end local v2    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v2

    .line 3049
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v10, "ServiceConnectionException"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3050
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v11, -0x12

    const/16 v12, -0x12

    invoke-direct {v10, v11, v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v10
.end method

.method private setCaptionSuperimposeStatusForView(IZ)V
    .locals 3
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1705
    const/4 v0, 0x1

    .line 1706
    .local v0, "ecostatus":I
    if-ne p2, v2, :cond_0

    .line 1707
    const/4 v0, 0x0

    .line 1711
    :cond_0
    const/16 v1, 0x30

    if-ne p1, v1, :cond_2

    .line 1712
    if-ne v2, p2, :cond_1

    .line 1713
    const/4 v0, 0x0

    .line 1725
    :cond_1
    :goto_0
    return-void

    .line 1716
    :cond_2
    if-eq v2, p2, :cond_3

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSuperimposeAutoDisplay()Z

    move-result v1

    if-ne v2, v1, :cond_4

    .line 1717
    :cond_3
    const/4 v0, 0x0

    .line 1719
    :cond_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->changeEcoDispSurfaceView(I)V

    goto :goto_0
.end method

.method private setProgramInfoLog(Ljava/util/List;I)V
    .locals 8
    .param p2, "aCategory"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "aProgramInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    const/4 v6, 0x0

    .line 6354
    const/4 v4, 0x0

    .line 6357
    .local v4, "programinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6363
    :goto_0
    if-eqz v4, :cond_0

    .line 6364
    iget-wide v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    invoke-virtual {p0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getCrid(J)Ljava/lang/String;

    move-result-object v2

    .line 6366
    .local v2, "crid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 6367
    invoke-virtual {p0, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setStLog(Ljava/lang/String;I)V

    .line 6373
    .end local v2    # "crid":Ljava/lang/String;
    :cond_0
    return-void

    .line 6358
    :catch_0
    move-exception v3

    .line 6359
    .local v3, "exception":Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "get() Error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setReservationReschedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 10
    .param p1, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    .line 6054
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v5

    .line 6056
    .local v5, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContentOperator()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;

    move-result-object v1

    .line 6058
    .local v1, "contentoperatorinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;
    const/4 v2, 0x1

    .line 6059
    .local v2, "errorflag":Z
    const/4 v0, 0x5

    .line 6061
    .local v0, "cause":I
    const/4 v4, 0x0

    .line 6063
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v7, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbPackageName:Ljava/lang/String;

    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentPackageName:Ljava/lang/String;

    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentClassName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoContentOperatorSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v4

    .line 6067
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_4

    .line 6080
    :goto_0
    if-nez v2, :cond_0

    .line 6081
    const-string v6, "setReservationReschedule error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6082
    const/4 v0, 0x6

    .line 6086
    :cond_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    .line 6090
    return-void

    .line 6068
    :catch_0
    move-exception v3

    .line 6069
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const/4 v2, 0x0

    .line 6078
    goto :goto_0

    .line 6070
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 6071
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const/4 v2, 0x0

    .line 6078
    goto :goto_0

    .line 6072
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v3

    .line 6073
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const/4 v2, 0x0

    .line 6078
    goto :goto_0

    .line 6074
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v3

    .line 6075
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    const/4 v2, 0x0

    .line 6078
    goto :goto_0

    .line 6076
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_4
    move-exception v3

    .line 6077
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected asyncCallReservationConclusion(ZI)V
    .locals 3
    .param p1, "aErrorFlag"    # Z
    .param p2, "aMode"    # I

    .prologue
    .line 821
    if-nez p1, :cond_0

    .line 825
    const/4 v1, 0x1

    if-ne v1, p2, :cond_0

    .line 827
    const/16 v1, 0x8

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 839
    const-string v1, "callReservationConclusion exception occured! Ignore any exception without Fatal!!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 835
    :sswitch_0
    throw v0

    .line 830
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_0
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public audioDecode(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 1499
    const-string v0, "state error : state(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1500
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public audioMute(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 1518
    const-string v0, "state error : state(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected callReservationConclusion(I)V
    .locals 4
    .param p1, "aErrorStatus"    # I

    .prologue
    .line 6162
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v1

    .line 6164
    .local v1, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setReservationUserParam(I)V

    .line 6166
    move v0, p1

    .line 6167
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$18;

    invoke-direct {v3, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$18;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6180
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkReserveFailed(I)V

    .line 6184
    return-void
.end method

.method protected callReservationTimer(I)V
    .locals 12
    .param p1, "aUserParam"    # I

    .prologue
    .line 5808
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v3

    .line 5810
    .local v3, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    iget-object v8, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->mmbReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    iget-object v8, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-wide v0, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 5813
    .local v0, "contentstarttime":J
    const-wide/16 v6, 0x0

    .line 5816
    .local v6, "secureclock":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 5830
    sub-long v4, v0, v6

    .line 5831
    .local v4, "milliseconds":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_0

    .line 5832
    const-wide/16 v4, 0x0

    .line 5835
    :cond_0
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const-wide/16 v10, 0x1388

    add-long/2addr v10, v4

    invoke-direct {v8, v9, v10, v11, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStReservationTimerSv$MmbStReservationTimerListenerSv;JI)V

    .line 5840
    return-void

    .line 5817
    .end local v4    # "milliseconds":J
    :catch_0
    move-exception v2

    .line 5818
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v8, "callReservationTimererCommonWrapped error"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5820
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    .line 5822
    throw v2
.end method

.method public cancelScan()V
    .locals 2

    .prologue
    .line 1104
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    return-void
.end method

.method public captionNotifyExist(IZ)V
    .locals 2
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 3900
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3904
    return-void
.end method

.method protected captionNotifyExistCommonWrapped(IZ)V
    .locals 4
    .param p1, "aIndex"    # I
    .param p2, "aIsExist"    # Z

    .prologue
    .line 3930
    move v1, p1

    .line 3931
    .local v1, "index":I
    move v0, p2

    .line 3932
    .local v0, "exist":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$17;

    invoke-direct {v3, p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$17;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3946
    return-void
.end method

.method public captionNotifyLangNumSetEnable(IB)V
    .locals 2
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 3617
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3621
    return-void
.end method

.method protected captionNotifyLangNumSetEnableCommonWrapped(IB)V
    .locals 4
    .param p1, "aIndex"    # I
    .param p2, "aLangNum"    # B

    .prologue
    .line 3646
    move v0, p1

    .line 3647
    .local v0, "index":I
    move v1, p2

    .line 3648
    .local v1, "langnum":B
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$13;

    invoke-direct {v3, p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$13;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;IB)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3664
    return-void
.end method

.method public captionNotifyNothingFixedTime(I)V
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 3685
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3689
    return-void
.end method

.method protected captionNotifyNothingFixedTimeCommonWrapped(I)V
    .locals 5
    .param p1, "aIndex"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3710
    move v0, p1

    .line 3713
    .local v0, "index":I
    const/16 v2, 0x38

    if-ne v0, v2, :cond_1

    .line 3714
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSuperimposeAutoDisplay()Z

    move-result v2

    if-ne v4, v2, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSuperimposeState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3716
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v3, v0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 3718
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeAutoDisplay(Z)V

    .line 3719
    invoke-direct {p0, v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionSuperimposeStatusForView(IZ)V

    .line 3721
    :cond_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeAutoDisplay(Z)V

    .line 3723
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v1

    .line 3724
    .local v1, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getSuperimposeNotifyNothingTime()I

    move-result v2

    if-nez v2, :cond_1

    .line 3748
    .end local v1    # "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    :goto_0
    return-void

    .line 3732
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$14;

    invoke-direct {v3, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$14;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public captionNotifyRecv(I)V
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 3828
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3832
    return-void
.end method

.method protected captionNotifyRecvCommonWrapped(I)V
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    const/16 v2, 0x38

    const/4 v1, 0x1

    .line 3854
    move v0, p1

    .line 3856
    .local v0, "index":I
    if-ne v0, v2, :cond_0

    .line 3857
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeAutoDisplay(Z)V

    .line 3858
    invoke-direct {p0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionSuperimposeStatusForView(IZ)V

    .line 3861
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$16;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$16;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3875
    return-void
.end method

.method public captionNotifyRestart(I)V
    .locals 2
    .param p1, "aIndex"    # I

    .prologue
    .line 3769
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3773
    return-void
.end method

.method protected captionNotifyRestartCommonWrapped(I)V
    .locals 3
    .param p1, "aIndex"    # I

    .prologue
    .line 3792
    move v0, p1

    .line 3793
    .local v0, "index":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$15;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3807
    return-void
.end method

.method protected changeBitStatus(III)I
    .locals 4
    .param p1, "aTypeVideo"    # I
    .param p2, "aChangeBit"    # I
    .param p3, "aSetStatus"    # I

    .prologue
    .line 6401
    if-nez p1, :cond_1

    .line 6402
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getVideoStatus()I

    move-result v2

    .line 6407
    .local v2, "parameterStatus":I
    :goto_0
    const/4 v1, 0x0

    .line 6410
    .local v1, "movebit":I
    sparse-switch p2, :sswitch_data_0

    .line 6427
    :goto_1
    :sswitch_0
    and-int v3, v2, p2

    shr-int v0, v3, v1

    .line 6429
    .local v0, "maskedParameter":I
    if-nez p3, :cond_2

    .line 6431
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 6433
    xor-int/2addr v2, p2

    .line 6449
    :cond_0
    :goto_2
    return v2

    .line 6404
    .end local v0    # "maskedParameter":I
    .end local v1    # "movebit":I
    .end local v2    # "parameterStatus":I
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getAudioStatus()I

    move-result v2

    .restart local v2    # "parameterStatus":I
    goto :goto_0

    .line 6414
    .restart local v1    # "movebit":I
    :sswitch_1
    const/4 v1, 0x4

    .line 6415
    goto :goto_1

    .line 6417
    :sswitch_2
    const/16 v1, 0x8

    .line 6418
    goto :goto_1

    .line 6420
    :sswitch_3
    const/16 v1, 0xc

    .line 6421
    goto :goto_1

    .line 6439
    .restart local v0    # "maskedParameter":I
    :cond_2
    if-nez v0, :cond_0

    .line 6441
    xor-int/2addr v2, p2

    goto :goto_2

    .line 6410
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_2
        0x1000 -> :sswitch_3
    .end sparse-switch
.end method

.method public changeBmlDirection(I)V
    .locals 0
    .param p1, "aBmlDirection"    # I

    .prologue
    .line 5792
    return-void
.end method

.method public changeConflictResult(I)I
    .locals 1
    .param p1, "aConflictResult"    # I

    .prologue
    .line 6243
    const/4 v0, 0x2

    .line 6244
    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    .line 6264
    :goto_0
    :pswitch_0
    return v0

    .line 6248
    :pswitch_1
    const/4 v0, 0x2

    .line 6249
    goto :goto_0

    .line 6251
    :pswitch_2
    const/4 v0, 0x1

    .line 6252
    goto :goto_0

    .line 6255
    :pswitch_3
    const/4 v0, 0x0

    .line 6256
    goto :goto_0

    .line 6244
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected changeDefine(II)I
    .locals 4
    .param p1, "aChangeBit"    # I
    .param p2, "aSetStatus"    # I

    .prologue
    const/4 v3, 0x1

    const/16 v2, -0x3e8

    .line 6475
    move v0, p2

    .line 6478
    .local v0, "retStaus":I
    if-ne v3, p1, :cond_2

    .line 6481
    if-nez p2, :cond_0

    .line 6482
    const/4 v0, 0x0

    .line 6519
    :goto_0
    return v0

    .line 6485
    :cond_0
    if-ne v3, p2, :cond_1

    .line 6486
    const/4 v0, 0x1

    goto :goto_0

    .line 6490
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1

    .line 6494
    :cond_2
    const/16 v1, 0x10

    if-eq v1, p1, :cond_3

    const/16 v1, 0x100

    if-eq v1, p1, :cond_3

    const/16 v1, 0x1000

    if-ne v1, p1, :cond_6

    .line 6499
    :cond_3
    if-nez p2, :cond_4

    .line 6500
    const/4 v0, 0x0

    goto :goto_0

    .line 6503
    :cond_4
    if-ne v3, p2, :cond_5

    .line 6504
    const/4 v0, 0x1

    goto :goto_0

    .line 6508
    :cond_5
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1

    .line 6513
    :cond_6
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1
.end method

.method public changeParental()V
    .locals 2

    .prologue
    .line 5270
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5274
    return-void
.end method

.method public changeParentalCommonWrapped()V
    .locals 2

    .prologue
    .line 5288
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onUpdatePmtCommonWrapped(ZZ)V

    .line 5292
    return-void
.end method

.method protected checkBroadcastTypeChange(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;I)I
    .locals 8
    .param p1, "aOldServicelist"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .param p2, "aNewServicelist"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .param p3, "aServiceId"    # I

    .prologue
    .line 7296
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->BROADCAST_CHANGE_TYPE_NON:I

    .line 7299
    .local v3, "result":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-nez v6, :cond_1

    :cond_0
    move v4, v3

    .line 7340
    .end local v3    # "result":I
    .local v4, "result":I
    :goto_0
    return v4

    .line 7307
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "loopcnt1":I
    :goto_1
    iget-object v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 7309
    iget-object v6, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 7311
    .local v0, "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    const/4 v2, 0x0

    .local v2, "loopcnt2":I
    :goto_2
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 7312
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 7313
    .local v5, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    if-ne v6, p3, :cond_4

    .line 7315
    iget-boolean v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    invoke-virtual {p0, p1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPartialReceptionInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;I)Z

    move-result v7

    if-eq v6, v7, :cond_2

    .line 7318
    const/4 v6, 0x1

    iget-boolean v7, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    if-ne v6, v7, :cond_3

    .line 7320
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->BROADCAST_CHANGE_TYPE_PARTIAL:I

    :cond_2
    :goto_3
    move v4, v3

    .line 7329
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0

    .line 7323
    .end local v4    # "result":I
    .restart local v3    # "result":I
    :cond_3
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->BROADCAST_CHANGE_TYPE_NOT_PARTIAL:I

    goto :goto_3

    .line 7311
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7308
    .end local v5    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7335
    .end local v0    # "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v2    # "loopcnt2":I
    :cond_6
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->BROADCAST_CHANGE_TYPE_SERVICE_NON:I

    move v4, v3

    .line 7340
    .end local v3    # "result":I
    .restart local v4    # "result":I
    goto :goto_0
.end method

.method protected checkParentalRate(I)Z
    .locals 5
    .param p1, "aSettingParentalRate"    # I

    .prologue
    const/4 v4, -0x1

    .line 5024
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isPmtInformation()Z

    move-result v0

    .line 5027
    .local v0, "pmtexist":Z
    if-nez v0, :cond_1

    .line 5028
    const-string v3, "PMT IS NOT"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5032
    const/4 v2, 0x1

    .line 5055
    :cond_0
    :goto_0
    return v2

    .line 5036
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getParentalRate()I

    move-result v1

    .line 5038
    .local v1, "pmtparentalrate":I
    const/4 v2, 0x0

    .line 5039
    .local v2, "result":Z
    if-ne v1, v4, :cond_2

    .line 5041
    const/4 v2, 0x1

    goto :goto_0

    .line 5042
    :cond_2
    if-ne p1, v4, :cond_3

    .line 5045
    const/4 v2, 0x1

    goto :goto_0

    .line 5046
    :cond_3
    if-lt p1, v1, :cond_0

    .line 5049
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected checkReservationConflict(II)V
    .locals 4
    .param p1, "aMode"    # I
    .param p2, "aConflictResult"    # I

    .prologue
    const/4 v1, 0x1

    .line 6205
    if-ne v1, p1, :cond_1

    .line 6208
    const/16 v0, 0xa

    if-eq p2, v0, :cond_0

    const/16 v0, 0x8

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 6215
    :cond_0
    const-string v0, "checkReservationConflict(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6218
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeConflictResult(I)I

    move-result p2

    .line 6220
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    .line 6226
    :cond_1
    return-void
.end method

.method protected checkReserveFailed(I)V
    .locals 3
    .param p1, "aCause"    # I

    .prologue
    .line 5119
    const/4 v0, 0x1

    .line 5122
    .local v0, "logflag":Z
    const/4 v1, 0x0

    .line 5123
    .local v1, "reason":I
    packed-switch p1, :pswitch_data_0

    .line 5175
    :pswitch_0
    const/4 v0, 0x0

    .line 5182
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkReserveFailedDo(ZI)V

    .line 5185
    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 5195
    :cond_0
    return-void

    .line 5125
    :pswitch_1
    const/4 v1, 0x5

    .line 5129
    goto :goto_0

    .line 5131
    :pswitch_2
    const/4 v1, 0x6

    .line 5135
    goto :goto_0

    .line 5137
    :pswitch_3
    const/4 v1, 0x2

    .line 5141
    goto :goto_0

    .line 5143
    :pswitch_4
    const/4 v1, 0x1

    .line 5147
    goto :goto_0

    .line 5149
    :pswitch_5
    const/4 v0, 0x0

    .line 5153
    goto :goto_0

    .line 5155
    :pswitch_6
    const/16 v1, 0x8

    .line 5159
    goto :goto_0

    .line 5161
    :pswitch_7
    const/4 v1, 0x1

    .line 5163
    const/4 v0, 0x0

    .line 5167
    goto :goto_0

    .line 5169
    :pswitch_8
    const/16 v1, 0xc

    .line 5173
    goto :goto_0

    .line 5123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method protected checkViewStatus(I)Z
    .locals 5
    .param p1, "aContract"    # I

    .prologue
    .line 6780
    const/4 v0, 0x1

    .line 6782
    .local v0, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 6803
    const-string v1, "param error(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6809
    :goto_0
    return v0

    .line 6787
    :pswitch_0
    const/4 v0, 0x1

    .line 6791
    goto :goto_0

    .line 6797
    :pswitch_1
    const/4 v0, 0x0

    .line 6801
    goto :goto_0

    .line 6782
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public clearApplicationStatus(IIZ)V
    .locals 7
    .param p1, "aServiceType"    # I
    .param p2, "aServiceId"    # I
    .param p3, "aIsthrow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 6307
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 6310
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 6312
    .local v2, "statusresult":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    const v3, 0xa306

    if-eq v3, p1, :cond_0

    const v3, 0x8a1c

    if-ne v3, p1, :cond_1

    .line 6314
    :cond_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->exiflistner:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3, v4, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->unsetConflictEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)V

    .line 6318
    :cond_1
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_3

    .line 6339
    .end local v1    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v2    # "statusresult":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :cond_2
    :goto_0
    return-void

    .line 6319
    :catch_0
    move-exception v0

    .line 6321
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "ServiceArgumentException"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6322
    if-eqz p3, :cond_2

    .line 6323
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v4, -0x3

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 6325
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 6327
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v3, "ServiceBatteryException"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6328
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_2
    move-exception v0

    .line 6330
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "ServiceStateException"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6331
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v0

    .line 6333
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v3, "ServiceConnectionException"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6334
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v4, -0x12

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3
.end method

.method protected compareServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)Z
    .locals 6
    .param p1, "aServiceListA"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .param p2, "aServiceListB"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .prologue
    .line 7038
    const/4 v3, 0x0

    .line 7041
    .local v3, "ret":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 7045
    const/4 v4, 0x1

    .line 7103
    :goto_0
    return v4

    .line 7046
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7050
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 7054
    :cond_2
    iget-short v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    iget-short v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    if-ne v4, v5, :cond_3

    .line 7055
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 7056
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7057
    const/4 v3, 0x1

    .line 7066
    :cond_3
    :goto_1
    if-nez v3, :cond_5

    move v4, v3

    .line 7070
    goto :goto_0

    .line 7060
    :cond_4
    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 7061
    const/4 v3, 0x1

    goto :goto_1

    .line 7073
    :cond_5
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 7076
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 7078
    const/4 v2, 0x0

    .local v2, "loopcnt":I
    :goto_2
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 7080
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 7082
    .local v0, "broadcasterdataa":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 7085
    .local v1, "broadcasterdatab":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->compareServiceListBroadcaster(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7079
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7088
    :cond_6
    const/4 v3, 0x0

    .end local v0    # "broadcasterdataa":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v1    # "broadcasterdatab":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v2    # "loopcnt":I
    :cond_7
    :goto_3
    move v4, v3

    .line 7103
    goto :goto_0

    .line 7093
    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    .line 7095
    :cond_9
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-nez v4, :cond_a

    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 7097
    :cond_a
    const/4 v3, 0x0

    goto :goto_3
.end method

.method protected compareServiceListBroadcaster(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;)Z
    .locals 6
    .param p1, "aBroadcasterA"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .param p2, "aBroadcasterB"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .prologue
    .line 7123
    const/4 v1, 0x0

    .line 7126
    .local v1, "ret":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 7130
    const/4 v4, 0x1

    .line 7186
    :goto_0
    return v4

    .line 7131
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7135
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 7139
    :cond_2
    iget-short v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    iget-short v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    if-ne v4, v5, :cond_3

    .line 7140
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 7141
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7142
    const/4 v1, 0x1

    .line 7151
    :cond_3
    :goto_1
    if-nez v1, :cond_5

    move v4, v1

    .line 7155
    goto :goto_0

    .line 7145
    :cond_4
    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 7146
    const/4 v1, 0x1

    goto :goto_1

    .line 7158
    :cond_5
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-eqz v4, :cond_9

    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 7161
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 7163
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_2
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 7165
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 7166
    .local v2, "servicedataa":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 7168
    .local v3, "servicedatab":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->compareServiceListService(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 7164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7171
    :cond_6
    const/4 v1, 0x0

    .end local v0    # "loopcnt":I
    .end local v2    # "servicedataa":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    .end local v3    # "servicedatab":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_7
    :goto_3
    move v4, v1

    .line 7186
    goto :goto_0

    .line 7176
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 7178
    :cond_9
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-nez v4, :cond_a

    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-eqz v4, :cond_7

    .line 7180
    :cond_a
    const/4 v1, 0x0

    goto :goto_3
.end method

.method protected compareServiceListService(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;)Z
    .locals 3
    .param p1, "aServiceA"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    .param p2, "aServiceB"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .prologue
    .line 7206
    const/4 v0, 0x0

    .line 7209
    .local v0, "ret":Z
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 7213
    const/4 v1, 0x1

    .line 7274
    :goto_0
    return v1

    .line 7214
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7218
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 7222
    :cond_2
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    if-ne v1, v2, :cond_3

    iget-short v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    iget-short v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    if-ne v1, v2, :cond_3

    iget-boolean v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    iget-boolean v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    if-ne v1, v2, :cond_3

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    if-ne v1, v2, :cond_3

    .line 7226
    const/4 v0, 0x1

    .line 7229
    :cond_3
    if-nez v0, :cond_4

    move v1, v0

    .line 7233
    goto :goto_0

    .line 7237
    :cond_4
    const/4 v0, 0x0

    .line 7240
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 7241
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    iget-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7242
    const/4 v0, 0x1

    .line 7250
    :cond_5
    :goto_1
    if-nez v0, :cond_7

    move v1, v0

    .line 7254
    goto :goto_0

    .line 7245
    :cond_6
    iget-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 7246
    const/4 v0, 0x1

    goto :goto_1

    .line 7258
    :cond_7
    const/4 v0, 0x0

    .line 7261
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 7262
    iget-object v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    iget-object v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7263
    const/4 v0, 0x1

    :cond_8
    :goto_2
    move v1, v0

    .line 7274
    goto :goto_0

    .line 7266
    :cond_9
    iget-object v1, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 7267
    const/4 v0, 0x1

    goto :goto_2
.end method

.method protected complementServiceData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;)V
    .locals 7
    .param p1, "aOldBroadcasterData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .param p2, "aNewBroadcasterData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .prologue
    .line 6981
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 7018
    :cond_0
    return-void

    .line 6990
    :cond_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getTsidOfSdt()I

    move-result v3

    .line 6992
    .local v3, "nowsdttsid":I
    const/4 v0, 0x0

    .local v0, "loopcnt1":I
    :goto_0
    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 6994
    iget-object v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 6996
    .local v2, "newservicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    const/4 v1, 0x0

    .local v1, "loopcnt2":I
    :goto_1
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 6998
    iget-object v5, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 7000
    .local v4, "oldservicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    iget v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    if-ne v5, v6, :cond_3

    iget v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    if-eq v5, v3, :cond_3

    .line 7002
    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    const-string v6, ""

    if-ne v5, v6, :cond_2

    .line 7004
    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    iput-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 7006
    :cond_2
    iget-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    const-string v6, ""

    if-ne v5, v6, :cond_3

    .line 7008
    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    iput-object v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 6997
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6993
    .end local v4    # "oldservicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected complementServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    .locals 6
    .param p1, "aOldServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .param p2, "aNewServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .prologue
    .line 6932
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-nez v4, :cond_1

    .line 6959
    :cond_0
    return-void

    .line 6941
    :cond_1
    const/4 v0, 0x0

    .local v0, "loopcnt1":I
    :goto_0
    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 6943
    iget-object v4, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 6945
    .local v2, "newbroadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    const/4 v1, 0x0

    .local v1, "loopcnt2":I
    :goto_1
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 6947
    iget-object v4, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 6949
    .local v3, "oldbroadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    iget-short v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    iget-short v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    if-ne v4, v5, :cond_2

    .line 6951
    invoke-virtual {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->complementServiceData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;)V

    .line 6946
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6942
    .end local v3    # "oldbroadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected convertServiceNgStatus(I)I
    .locals 1
    .param p1, "aContract"    # I

    .prologue
    .line 4495
    move v0, p1

    .line 4498
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->convertServiceNgStatusDo(I)I

    move-result v0

    .line 4503
    return v0
.end method

.method protected deleteBmlBrowserCommonWrapped()V
    .locals 0

    .prologue
    .line 4666
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->deleteBmlBrowser()V

    .line 4670
    return-void
.end method

.method public end()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected endCommonWrapped()V
    .locals 13

    .prologue
    .line 388
    const/4 v10, 0x0

    .line 390
    .local v10, "exceptionFlag":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 393
    .local v0, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/high16 v1, 0x10000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v12

    .line 397
    .local v12, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 407
    .end local v12    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->reservationCancelConfirmation()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 423
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBluetoothState()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopDisp(Z)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 439
    :cond_1
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopLibrary()V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 452
    :cond_2
    :goto_3
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->initializeDrawSettingData()V

    .line 455
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 459
    :try_start_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->stopBmlBrowserCommonWrapped()V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_4 .. :try_end_4} :catch_5

    .line 472
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->deleteBmlBrowserCommonWrapped()V

    .line 474
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getProgramInformation(IJ)Ljava/util/List;

    move-result-object v11

    .line 477
    .local v11, "info":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    if-eqz v11, :cond_c

    .line 479
    const/16 v1, 0x66

    invoke-direct {p0, v11, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setProgramInfoLog(Ljava/util/List;I)V

    .line 486
    :goto_5
    :try_start_5
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stop()V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_5 .. :try_end_5} :catch_6

    .line 499
    :cond_4
    :goto_6
    const/4 v7, 0x0

    .line 500
    .local v7, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v7

    .line 504
    const v1, 0xa306

    :try_start_6
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getServiceId()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->clearApplicationStatus(IIZ)V
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_6 .. :try_end_6} :catch_7

    .line 520
    :cond_5
    :goto_7
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setWakeLock(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;Z)V

    .line 523
    const/4 v1, -0x1

    invoke-virtual {v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setSelectChannelUserParam(I)V

    .line 525
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->resetStreamingInformationParameter()V

    .line 527
    const/4 v1, 0x1

    if-ne v10, v1, :cond_10

    .line 528
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v2, -0x12

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1

    .line 398
    .end local v7    # "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    .end local v11    # "info":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :catch_0
    move-exception v8

    .line 399
    .local v8, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v1, "facadeinstance.setNotification ServiceConnectionException occurred"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    const/4 v10, 0x1

    .line 403
    goto :goto_0

    .line 401
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_1
    move-exception v8

    .line 402
    .local v8, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "facadeinstance.setNotification ServiceInternalException occurred"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v8

    .line 409
    .local v8, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    .line 410
    .local v9, "exceptionDeteil":I
    const/16 v1, -0x3e8

    if-ne v9, v1, :cond_6

    .line 411
    const-string v1, "reservationCancelConfirmation other error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 412
    :cond_6
    const/16 v1, -0x12

    if-ne v9, v1, :cond_7

    .line 413
    const-string v1, "reservationCancelConfirmation fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 415
    :cond_7
    const/16 v1, -0x16

    if-ne v9, v1, :cond_0

    .line 416
    const-string v1, "reservationCancelConfirmation fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    const/4 v10, 0x2

    goto/16 :goto_1

    .line 424
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v9    # "exceptionDeteil":I
    :catch_3
    move-exception v8

    .line 425
    .restart local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    .line 426
    .restart local v9    # "exceptionDeteil":I
    const/16 v1, -0x3e8

    if-ne v9, v1, :cond_8

    .line 427
    const-string v1, "stopDisp other error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 428
    :cond_8
    const/16 v1, -0x12

    if-ne v9, v1, :cond_9

    .line 429
    const-string v1, "stopDisp fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 431
    :cond_9
    const/16 v1, -0x16

    if-ne v9, v1, :cond_1

    .line 432
    const-string v1, "stopDisp fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    const/4 v10, 0x2

    goto/16 :goto_2

    .line 440
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v9    # "exceptionDeteil":I
    :catch_4
    move-exception v8

    .line 441
    .restart local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    .line 442
    .restart local v9    # "exceptionDeteil":I
    const/16 v1, -0x12

    if-ne v9, v1, :cond_a

    .line 443
    const-string v1, "stopLibrary fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    const/4 v10, 0x1

    goto/16 :goto_3

    .line 445
    :cond_a
    const/16 v1, -0x16

    if-ne v9, v1, :cond_2

    .line 446
    const-string v1, "stopLibrary fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 447
    const/4 v10, 0x2

    goto/16 :goto_3

    .line 460
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v9    # "exceptionDeteil":I
    :catch_5
    move-exception v8

    .line 461
    .restart local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    .line 462
    .restart local v9    # "exceptionDeteil":I
    const/16 v1, -0x12

    if-ne v9, v1, :cond_b

    .line 463
    const-string v1, "stopBmlBrowserCommonWrapped fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 464
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 465
    :cond_b
    const/16 v1, -0x16

    if-ne v9, v1, :cond_3

    .line 466
    const-string v1, "stopBmlBrowserCommonWrapped fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    const/4 v10, 0x2

    goto/16 :goto_4

    .line 481
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v9    # "exceptionDeteil":I
    .restart local v11    # "info":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :cond_c
    const-string v1, "EIT[p] is NULL!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 487
    :catch_6
    move-exception v8

    .line 488
    .restart local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    .line 489
    .restart local v9    # "exceptionDeteil":I
    const/16 v1, -0x12

    if-ne v9, v1, :cond_d

    .line 490
    const-string v1, "stop fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    const/4 v10, 0x1

    goto/16 :goto_6

    .line 492
    :cond_d
    const/16 v1, -0x16

    if-ne v9, v1, :cond_4

    .line 493
    const-string v1, "stop fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 494
    const/4 v10, 0x2

    goto/16 :goto_6

    .line 506
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v9    # "exceptionDeteil":I
    .restart local v7    # "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    :catch_7
    move-exception v8

    .line 507
    .restart local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    .line 508
    .restart local v9    # "exceptionDeteil":I
    const/4 v1, -0x3

    if-ne v9, v1, :cond_e

    .line 509
    const-string v1, "setApplicationStatus parameter error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 510
    :cond_e
    const/16 v1, -0x12

    if-ne v9, v1, :cond_f

    .line 511
    const-string v1, "setApplicationStatus fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    const/4 v10, 0x1

    goto/16 :goto_7

    .line 513
    :cond_f
    const/16 v1, -0x16

    if-ne v9, v1, :cond_5

    .line 514
    const-string v1, "setApplicationStatus fatal error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 515
    const/4 v10, 0x2

    goto/16 :goto_7

    .line 529
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v9    # "exceptionDeteil":I
    :cond_10
    const/4 v1, 0x2

    if-ne v10, v1, :cond_11

    .line 530
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v2, -0x16

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1

    .line 535
    :cond_11
    return-void
.end method

.method public getAudioInfo()I
    .locals 2

    .prologue
    .line 1587
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1588
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getAudioInfoCommonWrapped()I
    .locals 2

    .prologue
    .line 1610
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getAudioInfo()I

    move-result v0

    .line 1614
    .local v0, "result":I
    return v0
.end method

.method public getAudioLanguage()I
    .locals 2

    .prologue
    .line 3515
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public getAudioLanguageCommonWrapped()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3533
    const/4 v0, 0x0

    .line 3536
    .local v0, "languagevalue":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isPmtInformation()Z

    move-result v1

    .line 3539
    .local v1, "pmtexist":Z
    if-nez v1, :cond_0

    .line 3540
    const-string v3, "pmt null error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3541
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v4, -0x2

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 3543
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    .line 3546
    .local v2, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    const/16 v3, 0xff

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPrimaryAudioComponentTag()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 3549
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudiocomponenttag()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 3565
    :goto_0
    :pswitch_0
    return v0

    .line 3553
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3558
    :cond_1
    const-string v3, "audio component value error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3559
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v4, -0x3e8

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3

    .line 3549
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAudioLanguageNum()I
    .locals 2

    .prologue
    .line 2235
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2236
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getAudioMode()I
    .locals 8

    .prologue
    const/16 v7, -0x12

    const/4 v6, 0x0

    .line 4768
    const/4 v0, 0x0

    .line 4772
    .local v0, "audiomode":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v3

    .line 4774
    .local v3, "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getAudioSound()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v4

    .line 4776
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 4791
    .end local v3    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .end local v4    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :goto_0
    return v0

    .line 4778
    :catch_0
    move-exception v1

    .line 4779
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v5, "Preference.getAudioSound ServiceIOException occurred"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4780
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v1

    .line 4781
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "Preference.getAudioSound ServiceStateException occurred"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4782
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v2

    .line 4783
    .local v2, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v5, "Preference.getAudioSound ServiceConnectionException occurred"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4784
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v7, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v5
.end method

.method protected getAudioStatus()I
    .locals 2

    .prologue
    .line 4237
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 4238
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v0

    .line 4242
    .local v0, "audiostatus":I
    return v0
.end method

.method protected getBluetoothState()Z
    .locals 2

    .prologue
    .line 6709
    const/4 v0, 0x0

    .line 6712
    .local v0, "state":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6715
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpScmstSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6716
    const/4 v0, 0x1

    .line 6723
    :cond_0
    return v0
.end method

.method protected getBmlDisplay()Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/16 v8, -0x12

    .line 4852
    const/4 v1, 0x1

    .line 4856
    .local v1, "bmlstarterflag":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v4

    .line 4859
    .local v4, "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getBmlBrowser()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v5

    .line 4860
    .local v5, "resulbml":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 4863
    .local v0, "bmlcontrol":I
    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 4864
    const/4 v1, 0x1

    .line 4879
    .end local v0    # "bmlcontrol":I
    .end local v4    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .end local v5    # "resulbml":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :goto_0
    return v1

    .line 4866
    .restart local v0    # "bmlcontrol":I
    .restart local v4    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .restart local v5    # "resulbml":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 4868
    .end local v0    # "bmlcontrol":I
    .end local v4    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .end local v5    # "resulbml":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v2

    .line 4869
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v6, "ServiceIOException occurred"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4870
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v3

    .line 4871
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v6, "ServiceConnectionException occurred"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4872
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v6, v8, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v6
.end method

.method protected getBmlState()Z
    .locals 2

    .prologue
    .line 5465
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 5466
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getBmlStarterFlag()Z

    move-result v0

    .line 5470
    .local v0, "starter":Z
    return v0
.end method

.method public getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .locals 2

    .prologue
    .line 1759
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 1760
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v0

    .line 1764
    .local v0, "bmlViewSv":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    return-object v0
.end method

.method protected getCaptionState()Z
    .locals 2

    .prologue
    .line 5516
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 5517
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getCaptionStarterFlag()Z

    move-result v0

    .line 5521
    .local v0, "starter":Z
    return v0
.end method

.method public getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    .locals 2

    .prologue
    .line 1799
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 1800
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getCaptionView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    move-result-object v0

    .line 1804
    .local v0, "captionViewSv":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
    return-object v0
.end method

.method public getCnValue()I
    .locals 2

    .prologue
    .line 6742
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6743
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getCnValueCommonWrapped()I
    .locals 2

    .prologue
    .line 6761
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getCnValue()I

    move-result v0

    .line 6765
    .local v0, "cnvalue":I
    return v0
.end method

.method protected getComponentInfoCommonWrapped()I
    .locals 2

    .prologue
    .line 2253
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getAudioLanguageNum()I

    move-result v0

    .line 2257
    .local v0, "componentinfolist":I
    return v0
.end method

.method protected getCrid(J)Ljava/lang/String;
    .locals 13
    .param p1, "aStartTime"    # J

    .prologue
    const/4 v12, 0x0

    .line 5306
    const/4 v6, 0x0

    .line 5310
    .local v6, "crid":Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "crid"

    aput-object v5, v2, v3

    .line 5313
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5317
    .local v1, "uri":Landroid/net/Uri;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 5318
    .local v9, "selection":Ljava/lang/StringBuilder;
    const-string v3, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5319
    const-string v3, "VersionFilter = ? AND metaRealTimeServiceId = ? AND "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5320
    const-string v3, "metaRealTimeEvtStartTime = ? AND metaSearchKey = ?"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5323
    const/4 v11, 0x0

    .line 5324
    .local v11, "streaminginformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v11

    .line 5325
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getStLogServiceId()I

    move-result v10

    .line 5328
    .local v10, "serviceid":I
    const/16 v3, 0x8

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string v5, "2"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "ja"

    aput-object v5, v4, v3

    const/4 v3, 0x3

    const-string v5, "false"

    aput-object v5, v4, v3

    const/4 v3, 0x4

    const-string v5, "false"

    aput-object v5, v4, v3

    const/4 v3, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x6

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x7

    const/16 v5, 0x201

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 5334
    .local v4, "selectionargs":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5336
    .local v0, "content":Landroid/content/ContentResolver;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 5341
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 5344
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 5345
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 5349
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 5359
    .end local v0    # "content":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v4    # "selectionargs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "selection":Ljava/lang/StringBuilder;
    .end local v10    # "serviceid":I
    .end local v11    # "streaminginformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :cond_0
    :goto_0
    return-object v6

    .line 5346
    .restart local v0    # "content":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v4    # "selectionargs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "selection":Ljava/lang/StringBuilder;
    .restart local v10    # "serviceid":I
    .restart local v11    # "streaminginformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :catch_0
    move-exception v8

    .line 5347
    .local v8, "exception":Landroid/database/CursorIndexOutOfBoundsException;
    :try_start_3
    const-string v3, "CursorIndexOutOfBoundsException"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5349
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 5352
    .end local v0    # "content":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v4    # "selectionargs":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "exception":Landroid/database/CursorIndexOutOfBoundsException;
    .end local v9    # "selection":Ljava/lang/StringBuilder;
    .end local v10    # "serviceid":I
    .end local v11    # "streaminginformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :catch_1
    move-exception v8

    .line 5353
    .local v8, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v3, "ServiceStateException"

    new-array v5, v12, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5349
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    .restart local v0    # "content":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v4    # "selectionargs":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "selection":Ljava/lang/StringBuilder;
    .restart local v10    # "serviceid":I
    .restart local v11    # "streaminginformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :catchall_0
    move-exception v3

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method protected getInnerViewStatus()I
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 4437
    const/4 v0, 0x0

    .line 4439
    .local v0, "ret":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 4441
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getParentalstatus()I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 4442
    const/4 v0, 0x1

    .line 4449
    :cond_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getContractstatus()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 4465
    :goto_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getNgstatus()I

    move-result v2

    if-eq v3, v2, :cond_1

    .line 4466
    const/4 v0, 0x1

    .line 4475
    :cond_1
    return v0

    .line 4455
    :pswitch_0
    const/4 v0, 0x1

    .line 4459
    goto :goto_0

    .line 4449
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getLanguageCount(I)I
    .locals 4
    .param p1, "aType"    # I

    .prologue
    .line 1865
    const-string v0, "state error : Type(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1866
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getLanguageCountCommonWrapped(I)I
    .locals 2
    .param p1, "aType"    # I

    .prologue
    .line 1886
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getLanguageCount(I)I

    move-result v0

    .line 1890
    .local v0, "result":I
    return v0
.end method

.method protected getParetalSettingRate()I
    .locals 8

    .prologue
    const/16 v7, -0x3e8

    const/4 v6, 0x0

    .line 4952
    const/4 v2, 0x0

    .line 4955
    .local v2, "parentalrate":I
    const/4 v1, 0x0

    .line 4958
    .local v1, "parentalcontrol":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v3

    .line 4961
    .local v3, "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getParentalControl()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v4

    .line 4962
    .local v4, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4965
    const/4 v5, 0x1

    if-ne v5, v1, :cond_0

    .line 4967
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getParentalControlRate()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v4

    .line 4968
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 5001
    :goto_0
    return v2

    .line 4974
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 4979
    .end local v3    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .end local v4    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 4980
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "ServiceArgumentException error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4982
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 4983
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 4984
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "ServiceInternalException error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4986
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 4987
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 4988
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4990
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x10

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5

    .line 4992
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_3
    move-exception v0

    .line 4994
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v5, "ServiceConnectionException"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4995
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x12

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v5
.end method

.method protected getPartialReceptionInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;I)Z
    .locals 7
    .param p1, "aServicelist"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .param p2, "aServiceId"    # I

    .prologue
    .line 7360
    const/4 v3, 0x0

    .line 7363
    .local v3, "partialreception":Z
    if-eqz p1, :cond_0

    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-nez v6, :cond_1

    :cond_0
    move v4, v3

    .line 7388
    .end local v3    # "partialreception":Z
    .local v4, "partialreception":I
    :goto_0
    return v4

    .line 7370
    .end local v4    # "partialreception":I
    .restart local v3    # "partialreception":Z
    :cond_1
    const/4 v1, 0x0

    .local v1, "loopcnt1":I
    :goto_1
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 7371
    iget-object v6, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 7373
    .local v0, "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    const/4 v2, 0x0

    .local v2, "loopcnt2":I
    :goto_2
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 7374
    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 7375
    .local v5, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget v6, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    if-ne v6, p2, :cond_2

    .line 7376
    iget-boolean v3, v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    move v4, v3

    .line 7380
    .restart local v4    # "partialreception":I
    goto :goto_0

    .line 7373
    .end local v4    # "partialreception":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7370
    .end local v5    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v2    # "loopcnt2":I
    :cond_4
    move v4, v3

    .line 7388
    .restart local v4    # "partialreception":I
    goto :goto_0
.end method

.method protected getPrimaryAudioComponentTag()I
    .locals 2

    .prologue
    .line 3584
    const/16 v0, 0xff

    .line 3586
    .local v0, "audiocomponent":I
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getPrimaryAudioComponentTag()I

    move-result v0

    .line 3590
    return v0
.end method

.method public getProgramInformation(I)Ljava/util/List;
    .locals 6
    .param p1, "aCondition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2205
    const/4 v1, 0x0

    .line 2207
    .local v1, "programinfolist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSecureClock()J

    move-result-wide v2

    .line 2210
    .local v2, "secureclock":J
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4, p1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getProgramInformation(IJ)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2217
    .end local v2    # "secureclock":J
    :goto_0
    return-object v1

    .line 2211
    :catch_0
    move-exception v0

    .line 2212
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v4, "getProgramInformation error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getSecureClock()J
    .locals 9

    .prologue
    const/16 v8, -0x12

    const/4 v7, 0x0

    .line 5075
    const-wide/16 v4, 0x0

    .line 5079
    .local v4, "secureclock":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v2

    .line 5081
    .local v2, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 5082
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 5101
    return-wide v4

    .line 5084
    .end local v2    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    .line 5086
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v6, "SecureClock doesnt exist"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5087
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0xf

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 5088
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v1

    .line 5090
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v6, "ServiceConnectionException"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5091
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 5092
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_2
    move-exception v0

    .line 5094
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "ServiceFatalException"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5095
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6
.end method

.method protected getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    .locals 2

    .prologue
    .line 270
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 275
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->mSelectChannelInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    return-object v1
.end method

.method protected getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 6883
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v5

    .line 6884
    .local v5, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getServiceList()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v4

    .line 6887
    .local v4, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    if-nez v4, :cond_0

    .line 6892
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMetadata()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;

    move-result-object v2

    .line 6893
    .local v2, "metadatainstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;->getServiceListAll()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 6896
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;>;"
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-object v4, v0

    .line 6897
    invoke-virtual {v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6910
    .end local v2    # "metadatainstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataManagerSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 6898
    :catch_0
    move-exception v1

    .line 6900
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v6, "ServiceConnectionException"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6901
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0x12

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 6902
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_1
    move-exception v1

    .line 6904
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v6, "ServiceIOException"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getSuperImposeCaptionDisplay(I)Z
    .locals 9
    .param p1, "aSuperImposeCaptionMode"    # I

    .prologue
    const/4 v7, 0x0

    const/16 v8, -0x12

    .line 4901
    const/4 v5, 0x0

    .line 4905
    .local v5, "superimposecaptiondisplay":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v2

    .line 4908
    .local v2, "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    if-nez p1, :cond_1

    .line 4909
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getCaptionDisplay()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 4914
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :goto_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4924
    .end local v2    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :goto_1
    const/4 v4, 0x0

    .line 4925
    .local v4, "ret":Z
    if-eqz v5, :cond_0

    .line 4927
    const/4 v4, 0x1

    .line 4933
    :cond_0
    return v4

    .line 4911
    .end local v4    # "ret":Z
    .restart local v2    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    :cond_1
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getSuperImposeDisplay()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    goto :goto_0

    .line 4916
    .end local v2    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 4917
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v6, "Preference.getSuperImposeCaptionDisplay ServiceIOException occurred"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4918
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v1

    .line 4919
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v6, "Preference.getSuperImposeCaptionDisplay ServiceConnectionException occurred"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4920
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v6, v8, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v6
.end method

.method protected getSuperimposeAutoDisplay()Z
    .locals 2

    .prologue
    .line 5618
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 5619
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getSuperimposeAutoDisplayFlag()Z

    move-result v0

    .line 5623
    .local v0, "automaticflag":Z
    return v0
.end method

.method protected getSuperimposeState()Z
    .locals 2

    .prologue
    .line 5567
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 5568
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getSuperimposeStarterFlag()Z

    move-result v0

    .line 5572
    .local v0, "starter":Z
    return v0
.end method

.method public getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
    .locals 2

    .prologue
    .line 1839
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 1840
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getSuperimposeView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    move-result-object v1

    .line 1844
    .local v1, "superimposeviewsv":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
    return-object v1
.end method

.method public getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 2

    .prologue
    .line 1455
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1456
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected getVideoInfoCommonWrapped()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    .locals 2

    .prologue
    .line 1474
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 1478
    .local v0, "videoparam":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    return-object v0
.end method

.method protected getVideoStatus()I
    .locals 2

    .prologue
    .line 4342
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4343
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getVideoStatus()I

    move-result v1

    .line 4347
    .local v1, "videostatus":I
    return v1
.end method

.method protected initializeAntennaLevel()V
    .locals 2

    .prologue
    .line 6861
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 6862
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAntennaLevel(I)V

    .line 6866
    return-void
.end method

.method protected initializeBmlBrowserCommonWrapped()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4637
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->initializeBmlBrowser()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4648
    return-void

    .line 4638
    :catch_0
    move-exception v0

    .line 4639
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v1, "ServiceFatalException"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4640
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v2, -0x12

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1

    .line 4641
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v0

    .line 4642
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    const-string v1, "ServiceBmlBrowserException"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4643
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v2, -0xe

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1
.end method

.method protected isCheckExistenceDefaultVideoComponentInPmt()Z
    .locals 2

    .prologue
    .line 3331
    const/4 v0, 0x0

    .line 3333
    .local v0, "existance":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isCheckExistenceDefaultVideoComponentInPmt()Z

    move-result v0

    .line 3337
    return v0
.end method

.method public judgmentReservationReschedule(I)V
    .locals 2
    .param p1, "aUserParam"    # I

    .prologue
    .line 5856
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5860
    return-void
.end method

.method protected judgmentReservationRescheduleCommonWrapped(I)V
    .locals 6
    .param p1, "aUserParam"    # I

    .prologue
    const/4 v5, 0x0

    .line 5876
    const/4 v0, 0x0

    .line 5877
    .local v0, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 5878
    const/4 v3, 0x0

    .line 5879
    .local v3, "userparam":I
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getReservationUserParam()I

    move-result v3

    .line 5882
    if-eq p1, v3, :cond_0

    .line 5883
    const-string v4, "aUserParam Error"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5914
    :goto_0
    return-void

    .line 5888
    :cond_0
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setReservationUserParam(I)V

    .line 5890
    const/4 v1, 0x0

    .line 5892
    .local v1, "status":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStatus()I

    move-result v1

    .line 5893
    packed-switch v1, :pswitch_data_0

    .line 5907
    const-string v4, "Status error"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5895
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->reservationReschedule()V

    goto :goto_0

    .line 5898
    :pswitch_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    .line 5900
    .local v2, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    const/4 v4, 0x4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getNgstatus()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 5901
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    goto :goto_0

    .line 5903
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->reservationReschedule()V

    goto :goto_0

    .line 5893
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 2
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 6535
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6539
    return-void
.end method

.method public notifyBroadcastActionCommonWrapped(Landroid/content/Intent;)V
    .locals 5
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 6555
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 6557
    .local v0, "BLUETOOTH_ACTION":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6559
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 6560
    .local v1, "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getUsbConnectState(Landroid/content/Intent;)I

    move-result v2

    .line 6563
    .local v2, "state":I
    const/4 v3, 0x1

    if-eq v3, v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isConnectedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6565
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioMuteByDeviceNotify()V

    .line 6577
    .end local v1    # "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v2    # "state":I
    :cond_2
    :goto_0
    return-void

    .line 6567
    .restart local v1    # "serviceContext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .restart local v2    # "state":I
    :cond_3
    const/4 v3, 0x2

    if-eq v3, v2, :cond_4

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6570
    :cond_4
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->clearAudioMuteByDevice(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAudioInformation(I)V
    .locals 2
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 3360
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3364
    return-void
.end method

.method protected onAudioInformationCommonWrapped(I)V
    .locals 3
    .param p1, "aAudioInfo"    # I

    .prologue
    .line 3384
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onAudioInformation(I)V

    .line 3385
    move v0, p1

    .line 3386
    .local v0, "audioinfo":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$12;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$12;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3400
    return-void
.end method

.method public onChangeAntennaLevel(I)V
    .locals 2
    .param p1, "aAntennaLevel"    # I

    .prologue
    .line 2277
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2281
    return-void
.end method

.method protected onChangeAntennaLevelCommonWrapped(IZ)V
    .locals 12
    .param p1, "aAntennaLevel"    # I
    .param p2, "aOnOff"    # Z

    .prologue
    const/4 v11, 0x0

    const/16 v10, -0x12

    .line 2303
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkChangeAntennaLevel(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2378
    :cond_0
    :goto_0
    return-void

    .line 2310
    :cond_1
    move v8, p1

    .line 2311
    .local v8, "fixantennalevel":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$5;

    invoke-direct {v2, p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2324
    if-eqz p2, :cond_0

    .line 2325
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 2328
    .local v0, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/4 v3, 0x0

    .line 2329
    .local v3, "antennalevel":I
    packed-switch p1, :pswitch_data_0

    .line 2357
    :goto_1
    const/high16 v1, 0x10000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p2

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v9

    .line 2365
    .local v9, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2366
    .end local v9    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v7

    .line 2367
    .local v7, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v1, "facadeinstance.setNotification ServiceConnectionException occurred"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2368
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v1, v10, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v1

    .line 2332
    .end local v7    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :pswitch_0
    const/4 v3, 0x0

    .line 2333
    goto :goto_1

    .line 2336
    :pswitch_1
    const/4 v3, 0x1

    .line 2337
    goto :goto_1

    .line 2340
    :pswitch_2
    const/4 v3, 0x2

    .line 2341
    goto :goto_1

    .line 2344
    :pswitch_3
    const/4 v3, 0x3

    .line 2345
    goto :goto_1

    .line 2349
    :pswitch_4
    const/4 v3, 0x4

    .line 2350
    goto :goto_1

    .line 2370
    :catch_1
    move-exception v7

    .line 2371
    .local v7, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "facadeinstance.setNotification ServiceInternalException occurred"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2372
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v2, -0x3e8

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1

    .line 2329
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onChangeAudioComponent(S)V
    .locals 2
    .param p1, "aComponentTag"    # S

    .prologue
    .line 3419
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3423
    return-void
.end method

.method protected onChangeAudioComponentCommonWrapped(S)V
    .locals 0
    .param p1, "aComponentTag"    # S

    .prologue
    .line 3442
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 3446
    return-void
.end method

.method public onChangeViewingStatus(I)V
    .locals 2
    .param p1, "aViewingStatus"    # I

    .prologue
    .line 1203
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    return-void
.end method

.method protected onChangeViewingStatusCommonWrapped(II)V
    .locals 10
    .param p1, "aViewsts"    # I
    .param p2, "aViewingStatus"    # I

    .prologue
    const/4 v9, 0x0

    .line 1230
    const/4 v3, 0x0

    .line 1234
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onChangeViewingStatusProcess(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v4

    .line 1254
    .local v4, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getViewingStatus()I

    move-result v2

    .line 1255
    .local v2, "oldviewingatatus":I
    move v5, p2

    .line 1256
    .local v5, "viewstatus":I
    if-eq v5, v2, :cond_1

    .line 1257
    move v1, v3

    .line 1258
    .local v1, "fixresult":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;

    invoke-direct {v7, p0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1269
    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 1275
    .end local v1    # "fixresult":I
    :cond_1
    return-void

    .line 1235
    .end local v2    # "oldviewingatatus":I
    .end local v4    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .end local v5    # "viewstatus":I
    :catch_0
    move-exception v0

    .line 1237
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getErrorFunction()I

    move-result v3

    .line 1238
    const-string v6, "error(%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    const/16 v6, -0x12

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v7

    if-ne v6, v7, :cond_2

    .line 1241
    throw v0

    .line 1242
    :cond_2
    const/16 v6, -0x16

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 1245
    throw v0

    .line 1246
    :cond_3
    const/16 v6, -0x15

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 1248
    const-string v6, "St restart"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    throw v0
.end method

.method protected onChangeViewingStatusProcess(I)V
    .locals 9
    .param p1, "aViewsts"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 4689
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v4

    .line 4690
    .local v4, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    packed-switch p1, :pswitch_data_0

    .line 4743
    const-string v5, "param error(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4750
    :goto_0
    return-void

    .line 4694
    :pswitch_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getAudioMode()I

    move-result v1

    .line 4696
    .local v1, "audiomode":I
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;-><init>()V

    .line 4697
    .local v0, "audioInformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioMode:I

    .line 4698
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v5

    iput v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioDecodeStatus:I

    .line 4699
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPrimaryAudioComponentTag()I

    move-result v5

    int-to-short v5, v5

    iput-short v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    .line 4700
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBluetoothState()Z

    move-result v5

    iput-boolean v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->bluetoothStatus:Z

    .line 4703
    iget-short v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    const/16 v6, 0xff

    if-eq v5, v6, :cond_0

    .line 4706
    iget-short v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;->audioComponentTag:S

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioLanguageValueCommonWrapped(I)V

    .line 4709
    :cond_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getVideoStatus()I

    move-result v6

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v7

    invoke-virtual {v5, v0, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onStartViewFinished(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;)V

    .line 4714
    const/4 v2, 0x0

    .line 4715
    .local v2, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v2

    .line 4717
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getBmlDraw()Z

    move-result v3

    .line 4719
    .local v3, "isdraw":Z
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V

    goto :goto_0

    .line 4728
    .end local v0    # "audioInformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStAudioInformationDataSv;
    .end local v1    # "audiomode":I
    .end local v2    # "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    .end local v3    # "isdraw":Z
    :pswitch_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBluetoothState()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopDispPart(Z)V

    .line 4731
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->stopBmlBrowserCommonWrapped()V

    goto :goto_0

    .line 4739
    :pswitch_2
    const-string v5, "nothing to do(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4690
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCompleteScan(II)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aUserParam"    # I

    .prologue
    .line 1128
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    return-void
.end method

.method public onCompleteSelectCh(III)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 1180
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1184
    return-void
.end method

.method public onCompleteStartSt(III)V
    .locals 2
    .param p1, "aResult"    # I
    .param p2, "aViewingStatus"    # I
    .param p3, "aUserParam"    # I

    .prologue
    .line 1154
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    return-void
.end method

.method public onNotifyError(I)V
    .locals 3
    .param p1, "aErrorCode"    # I

    .prologue
    .line 3201
    move v0, p1

    .line 3202
    .local v0, "errorcode":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$10;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$10;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3217
    return-void
.end method

.method public onNotifyServiceNg(I)V
    .locals 2
    .param p1, "aCause"    # I

    .prologue
    .line 1294
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1298
    return-void
.end method

.method protected onNotifyServiceNgCommonWrapped(IIZ)V
    .locals 12
    .param p1, "aViewsts"    # I
    .param p2, "aCause"    # I
    .param p3, "aViewingStatusResultSendFlag"    # Z

    .prologue
    const/4 v11, 0x0

    .line 1322
    const/4 v7, 0x0

    .line 1326
    .local v7, "result":I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onChangeViewingStatusProcess(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1337
    :cond_0
    const/4 v9, 0x0

    .line 1338
    .local v9, "viewingResult":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v8

    .line 1339
    .local v8, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    if-nez p3, :cond_1

    .line 1341
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getNgstatus()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 1342
    const/16 v9, 0x8

    .line 1347
    :cond_1
    :goto_0
    move v5, v9

    .line 1349
    .local v5, "fixViewingResult":I
    move v2, p2

    .line 1350
    .local v2, "fixCause":I
    move v3, v7

    .line 1352
    .local v3, "fixresult":I
    move v4, p3

    .line 1354
    .local v4, "fixViewingStatusResultSendFlag":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;IIZI)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1368
    invoke-virtual {v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 1373
    return-void

    .line 1327
    .end local v2    # "fixCause":I
    .end local v3    # "fixresult":I
    .end local v4    # "fixViewingStatusResultSendFlag":Z
    .end local v5    # "fixViewingResult":I
    .end local v8    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .end local v9    # "viewingResult":I
    :catch_0
    move-exception v6

    .line 1329
    .local v6, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getErrorFunction()I

    move-result v7

    .line 1330
    const-string v0, "error(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v11

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1331
    const/16 v0, -0x15

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1332
    const-string v0, "St restart"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1333
    throw v6

    .line 1344
    .end local v6    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .restart local v8    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .restart local v9    # "viewingResult":I
    :cond_2
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getContractstatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->convertServiceNgStatus(I)I

    move-result v9

    goto :goto_0
.end method

.method public onUpdateBit()V
    .locals 2

    .prologue
    .line 2646
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2650
    return-void
.end method

.method protected onUpdateBitCommonWrapped()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 2668
    invoke-virtual {p0, v0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onUpdateServiceInformation(ZI)V

    .line 2672
    return-void
.end method

.method public onUpdateEit()V
    .locals 2

    .prologue
    .line 2690
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2694
    return-void
.end method

.method protected onUpdateEitCommonWrapped()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2713
    const/4 v1, 0x1

    .line 2716
    .local v1, "logflag":Z
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getProgramInformation(IJ)Ljava/util/List;

    move-result-object v5

    .line 2720
    .local v5, "oldinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    const/4 v4, 0x0

    .line 2722
    .local v4, "oldeventid":I
    if-eqz v5, :cond_0

    .line 2724
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;

    iget v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventId:I

    .line 2728
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onEitUpdated()V

    .line 2730
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$8;

    invoke-direct {v7, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2743
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getProgramInformation(IJ)Ljava/util/List;

    move-result-object v3

    .line 2747
    .local v3, "newinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    const/4 v2, 0x0

    .line 2749
    .local v2, "neweventid":I
    if-eqz v3, :cond_1

    .line 2751
    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;

    iget v2, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventId:I

    .line 2754
    :cond_1
    if-ne v4, v2, :cond_2

    .line 2756
    const/4 v1, 0x0

    .line 2759
    :cond_2
    const/4 v6, 0x1

    if-ne v6, v1, :cond_4

    .line 2765
    if-eqz v5, :cond_3

    .line 2766
    const/16 v6, 0x66

    invoke-direct {p0, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setProgramInfoLog(Ljava/util/List;I)V

    .line 2769
    :cond_3
    if-eqz v3, :cond_4

    .line 2770
    const/16 v6, 0x65

    invoke-direct {p0, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setProgramInfoLog(Ljava/util/List;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2788
    .end local v2    # "neweventid":I
    .end local v3    # "newinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    .end local v4    # "oldeventid":I
    .end local v5    # "oldinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :cond_4
    :goto_0
    return-void

    .line 2773
    :catch_0
    move-exception v0

    .line 2774
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 2780
    const-string v6, "UPDATE EIT ERROR"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2778
    :sswitch_0
    throw v0

    .line 2774
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_0
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onUpdateEmm()V
    .locals 2

    .prologue
    .line 3134
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3138
    return-void
.end method

.method protected onUpdateEmmCommonWrapped()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/16 v5, -0x12

    .line 3156
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 3160
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :try_start_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->informEmmUpdated()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 3161
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3176
    return-void

    .line 3162
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 3163
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v3, "informEmmUpdated error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3165
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v3, v5, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v3

    .line 3167
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_1
    move-exception v0

    .line 3168
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "informEmmUpdated error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3169
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v3, v5, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v3
.end method

.method public onUpdateNit()V
    .locals 2

    .prologue
    .line 2602
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2606
    return-void
.end method

.method protected onUpdateNitCommonWrapped()V
    .locals 2

    .prologue
    .line 2624
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onUpdateServiceInformation(ZI)V

    .line 2628
    return-void
.end method

.method public onUpdatePmt()V
    .locals 2

    .prologue
    .line 2396
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2400
    return-void
.end method

.method protected onUpdatePmtCommonWrapped(ZZ)V
    .locals 12
    .param p1, "aCheckParental"    # Z
    .param p2, "aIsLisner"    # Z

    .prologue
    const/4 v10, 0x1

    .line 2426
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onPmtUpdated()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2441
    if-eqz p2, :cond_1

    .line 2443
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getCopyControlInfo()Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;

    move-result-object v0

    .line 2445
    .local v0, "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    if-eqz v0, :cond_0

    .line 2446
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyCopyControlInformationForSt(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;)V

    .line 2449
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$6;

    invoke-direct {v9, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2462
    .end local v0    # "copycontrolinfo":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoCopyControlSp/MmbPoStCopyControlInformationSp;
    :cond_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getInnerViewStatus()I

    move-result v4

    .line 2463
    .local v4, "oldviewstatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v7

    .line 2465
    .local v7, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getParentalstatus()I

    move-result v3

    .line 2468
    .local v3, "oldparental":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getParetalSettingRate()I

    move-result v6

    .line 2469
    .local v6, "parentalrate":I
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkParentalRate(I)Z

    move-result v5

    .line 2471
    .local v5, "parentallock":Z
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setServiceParentalStatus(Z)V

    .line 2474
    if-ne v10, p1, :cond_2

    .line 2475
    invoke-direct {p0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkParentalDo(II)V

    .line 2482
    .end local v3    # "oldparental":I
    .end local v4    # "oldviewstatus":I
    .end local v5    # "parentallock":Z
    .end local v6    # "parentalrate":I
    .end local v7    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :cond_2
    :goto_0
    return-void

    .line 2427
    :catch_0
    move-exception v1

    .line 2428
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v2

    .line 2429
    .local v2, "errorstatus":I
    const/16 v8, -0x12

    if-ne v2, v8, :cond_3

    .line 2430
    throw v1

    .line 2431
    :cond_3
    const/16 v8, -0x16

    if-ne v2, v8, :cond_4

    .line 2432
    throw v1

    .line 2434
    :cond_4
    const-string v8, "onPmtUpdated err(%d)"

    new-array v9, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onUpdateSdt()V
    .locals 2

    .prologue
    .line 2806
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2810
    return-void
.end method

.method protected onUpdateSdtCommonWrapped()V
    .locals 2

    .prologue
    .line 2828
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->onUpdateServiceInformation(ZI)V

    .line 2832
    return-void
.end method

.method protected onUpdateServiceInformation(ZI)V
    .locals 6
    .param p1, "aIsSdt"    # Z
    .param p2, "aInformationNamber"    # I

    .prologue
    const/4 v5, 0x1

    .line 2854
    const/4 v2, 0x1

    .line 2857
    .local v2, "result":Z
    :try_start_0
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->checkUpDate(I)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2858
    .local v0, "cheakresult":Z
    if-nez v0, :cond_1

    .line 2906
    .end local v0    # "cheakresult":Z
    :cond_0
    :goto_0
    return-void

    .line 2861
    :catch_0
    move-exception v1

    .line 2862
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 2868
    const-string v3, "onUpdateServiceInformation ERROR"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2874
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isNitInformation()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2878
    const/4 v2, 0x0

    .line 2881
    :cond_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isBitInformation()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2885
    const/4 v2, 0x0

    .line 2888
    :cond_3
    if-ne v5, p1, :cond_4

    .line 2890
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->isSdtInformation()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2894
    const/4 v2, 0x0

    .line 2899
    :cond_4
    if-ne v5, v2, :cond_0

    .line 2900
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->saveServiceList(Z)V

    goto :goto_0

    .line 2866
    .restart local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :sswitch_0
    throw v1

    .line 2862
    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_0
        -0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 2
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 3241
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3245
    return-void
.end method

.method public onVideoInformation(IIILmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;)V
    .locals 2
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lmmb/android/MmbStCtlMw/MmbStCtlMwStereoView;

    .prologue
    .line 3268
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3272
    return-void
.end method

.method protected onVideoInformationCommonWrapped(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V
    .locals 3
    .param p1, "aPicWidth"    # I
    .param p2, "aPicHeight"    # I
    .param p3, "aAspect"    # I
    .param p4, "aViewInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;

    .prologue
    .line 3297
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onVideoInformation(IIILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoStereoViewDataSv;)V

    .line 3299
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getVideoInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;

    move-result-object v0

    .line 3300
    .local v0, "videoparam":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;

    invoke-direct {v2, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$11;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStVideoParameterDataSv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3314
    return-void
.end method

.method public pause(IIZ)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 2019
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected pauseCommonWrapped(IIZZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    .line 2085
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setPausingInformation(IIZZ)V

    .line 2087
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 2092
    return-void
.end method

.method protected pauseInner(IIZ)V
    .locals 2
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z

    .prologue
    .line 2048
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected pauseInnerCommonWrapped(IIZZ)V
    .locals 5
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2129
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v1

    .line 2130
    .local v1, "capstate":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;
    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeStatus(I)I

    move-result v3

    .line 2131
    .local v3, "status":I
    move v0, p3

    .line 2132
    .local v0, "canvas":Z
    move v2, p4

    .line 2133
    .local v2, "pid":Z
    if-ne v4, v3, :cond_0

    if-ne v4, p1, :cond_0

    .line 2135
    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposeCanvas(I)Z

    move-result v0

    .line 2136
    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->getSubtitleSuperimposePidClear(I)Z

    move-result v2

    .line 2142
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4, v3, p2, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->pause(IIZZ)V

    .line 2147
    return-void

    .line 2138
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public preStart(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;I)V
    .locals 4
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aUserParam"    # I

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public preTune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 4
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state error, SvID(%d)Mode(%d), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userparam(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected preTuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    .locals 11
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aUserParam"    # I

    .prologue
    const/16 v10, 0x8

    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, "errorflag":Z
    const/16 v1, 0x8

    .line 709
    .local v1, "errordetail":I
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->preTuneCommonWrappedActual(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    const/4 v2, 0x1

    .line 741
    invoke-virtual {p0, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->asyncCallReservationConclusion(ZI)V

    .line 742
    if-nez v2, :cond_0

    .line 743
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 744
    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setServiceContractStatus(I)V

    .line 746
    move v4, v1

    .line 747
    .local v4, "fixerror":I
    move v5, p4

    .line 748
    .local v5, "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$1;

    invoke-direct {v7, p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 764
    .end local v4    # "fixerror":I
    .end local v5    # "uparam":I
    :cond_0
    return-void

    .line 711
    :catch_0
    move-exception v3

    .line 712
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_1
    const-string v6, "ServiceArgumentException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 713
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v7, -0x3

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v6

    invoke-virtual {p0, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->asyncCallReservationConclusion(ZI)V

    .line 742
    if-nez v2, :cond_1

    .line 743
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 744
    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setServiceContractStatus(I)V

    .line 746
    move v4, v1

    .line 747
    .restart local v4    # "fixerror":I
    move v5, p4

    .line 748
    .restart local v5    # "uparam":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$1;

    invoke-direct {v8, p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 758
    .end local v4    # "fixerror":I
    .end local v5    # "uparam":I
    :cond_1
    throw v6

    .line 715
    :catch_1
    move-exception v3

    .line 716
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_2
    const-string v6, "ServiceInternalException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 717
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0x3e8

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 719
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v3

    .line 720
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    const-string v6, "ServiceArbitrationException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0x3e8

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 723
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_3
    move-exception v3

    .line 724
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    const-string v6, "ServiceBatteryException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0x3e8

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 727
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    :catch_4
    move-exception v0

    .line 728
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v6, "ServiceConnectionException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0x12

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 731
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_5
    move-exception v3

    .line 732
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v6, "ServiceFatalException"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 733
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v7, -0x12

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v6

    .line 735
    .end local v3    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_6
    move-exception v3

    .line 736
    .local v3, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v6, "error(%d)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changePreTuneException(I)I

    move-result v1

    .line 738
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method protected reservationReschedule()V
    .locals 24

    .prologue
    .line 5929
    const/4 v4, 0x0

    .line 5930
    .local v4, "channelinformation":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    const/4 v13, 0x0

    .line 5931
    .local v13, "scheduleintentdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    const/4 v9, 0x0

    .line 5933
    .local v9, "info":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v4

    .line 5934
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getScheduleIntentData()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    move-result-object v13

    .line 5936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v21}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getProgramInformation(IJ)Ljava/util/List;

    move-result-object v9

    .line 5938
    if-nez v9, :cond_0

    .line 5940
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    .line 6038
    :goto_0
    return-void

    .line 5947
    :cond_0
    const/4 v7, -0x1

    .line 5948
    .local v7, "eventno":I
    const/4 v6, 0x0

    .line 5952
    .local v6, "eitinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5953
    .local v5, "cridary":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "loopcnt":I
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_1

    .line 5957
    :try_start_0
    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-object v18, v5, v18

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v19

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbEventId:I

    move/from16 v18, v0

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 5960
    move v7, v12

    .line 5961
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "eitinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    check-cast v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5978
    .restart local v6    # "eitinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    :cond_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_3

    .line 5979
    const-string v18, "eventno is nothing in EIT"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5981
    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    goto :goto_0

    .line 5967
    .end local v6    # "eitinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    :catch_0
    move-exception v8

    .line 5968
    .local v8, "exception":Ljava/lang/IndexOutOfBoundsException;
    const-string v18, "IndexOutOfBoundsException err"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5969
    const/16 v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    goto :goto_0

    .line 5953
    .end local v8    # "exception":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "eitinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 5988
    :cond_3
    const-wide/16 v14, 0x0

    .line 5989
    .local v14, "rescheduletime":J
    const-wide/16 v16, 0x0

    .line 5991
    .local v16, "secureclock":J
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getReservationConfiguration()J

    move-result-wide v10

    .line 5993
    .local v10, "ignitionsparetime":J
    const-wide/16 v18, -0x1

    cmp-long v18, v10, v18

    if-nez v18, :cond_4

    .line 5994
    const-string v18, "getReservationConfiguration err"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6003
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSecureClock()J
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v16

    .line 6012
    iget-wide v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    move-wide/from16 v18, v0

    sub-long v14, v18, v16

    .line 6015
    const-wide/32 v18, 0xea60

    add-long v18, v18, v10

    cmp-long v18, v14, v18

    if-gez v18, :cond_5

    .line 6016
    const-string v18, "reschedule does not be set"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 6004
    :catch_1
    move-exception v8

    .line 6005
    .local v8, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const-string v18, "reservationReschedule err"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6007
    const/16 v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    .line 6008
    throw v8

    .line 6026
    .end local v8    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :cond_5
    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v18, v0

    iget-wide v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 6028
    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v18, v0

    iget-wide v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 6030
    iget-object v0, v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v18, v0

    iget-wide v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbStartTime:J

    move-wide/from16 v20, v0

    iget v0, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;->mmbDuration:I

    move/from16 v19, v0

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 6033
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setReservationReschedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V

    goto/16 :goto_0
.end method

.method protected saveServiceListFromNitInfo()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, -0x12

    const/4 v6, 0x0

    .line 3076
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->onNitUpdated()V

    .line 3078
    const/4 v2, 0x0

    .line 3082
    .local v2, "retry":Z
    :cond_0
    const/4 v3, 0x0

    .line 3085
    .local v3, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getServiceListFromNitInfo()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v3

    .line 3088
    if-eqz v3, :cond_1

    .line 3089
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 3091
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3093
    .end local v1    # "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :cond_1
    const/4 v2, 0x0

    .line 3111
    :goto_0
    if-eq v8, v2, :cond_0

    .line 3116
    return-void

    .line 3094
    :catch_0
    move-exception v0

    .line 3095
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v4, "ServiceIOException"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3096
    if-ne v8, v2, :cond_2

    .line 3098
    const/4 v2, 0x0

    goto :goto_0

    .line 3101
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 3103
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 3105
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v4, "ServiceArgumentException"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3106
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_2
    move-exception v0

    .line 3107
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v4, "ServiceConnectionException"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3108
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v4, v7, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v4
.end method

.method public scan(I)V
    .locals 4
    .param p1, "aUserParam"    # I

    .prologue
    .line 1084
    const-string v0, "state error : userparam(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1085
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public selectAudioLanguage(I)V
    .locals 4
    .param p1, "aComponentTag"    # I

    .prologue
    .line 1563
    const-string v0, "state error ComponentTag(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1564
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public selectAudioMode(I)V
    .locals 4
    .param p1, "aMode"    # I

    .prologue
    .line 1542
    const-string v0, "state error : AudioMode(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1543
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected setAudioDecodeStatus(I)V
    .locals 4
    .param p1, "aDecodeStatus"    # I

    .prologue
    const/4 v3, 0x1

    .line 3965
    invoke-virtual {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v2

    invoke-virtual {p0, v3, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v0

    .line 3969
    .local v0, "audioStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 3971
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudioStatus(I)V

    .line 3975
    return-void
.end method

.method public setAudioLanguageValue(I)V
    .locals 2
    .param p1, "aLanguageValue"    # I

    .prologue
    .line 3466
    const-string v0, "nop event"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3470
    return-void
.end method

.method protected setAudioLanguageValueCommonWrapped(I)V
    .locals 2
    .param p1, "aLanguageValue"    # I

    .prologue
    .line 3491
    int-to-short v0, p1

    .line 3493
    .local v0, "audiocomponenttag":S
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 3494
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudiocomponenttag(S)V

    .line 3498
    return-void
.end method

.method protected setAudioMuteByDevice()V
    .locals 7

    .prologue
    const/16 v4, 0x1000

    const/16 v6, 0x100

    const/4 v5, 0x1

    .line 4021
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 4022
    .local v0, "audioFlg":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v2

    .line 4025
    .local v2, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    and-int/lit16 v3, v0, 0x100

    if-ne v6, v3, :cond_0

    .line 4027
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x1000

    shr-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 4031
    invoke-virtual {p0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v5, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v1

    .line 4035
    .local v1, "audioStatus":I
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudioStatus(I)V

    .line 4039
    .end local v1    # "audioStatus":I
    :cond_0
    const/16 v3, 0x200

    and-int/lit16 v4, v0, 0x200

    if-ne v3, v4, :cond_1

    .line 4041
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v3

    and-int/lit16 v3, v3, 0x100

    shr-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1

    .line 4044
    invoke-virtual {p0, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v5, v6, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v1

    .line 4048
    .restart local v1    # "audioStatus":I
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudioStatus(I)V

    .line 4055
    .end local v1    # "audioStatus":I
    :cond_1
    return-void
.end method

.method setAudioMuteByDeviceNotify()V
    .locals 5

    .prologue
    const/16 v2, 0x1000

    const/16 v4, 0x100

    const/4 v3, 0x1

    .line 4070
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 4072
    .local v0, "audioFlg":I
    if-nez v0, :cond_1

    .line 4073
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4075
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->outDeviceSetAudio(I)V

    .line 4110
    :cond_0
    :goto_0
    return-void

    .line 4083
    :cond_1
    and-int/lit16 v1, v0, 0x100

    if-ne v4, v1, :cond_2

    .line 4085
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    shr-int/lit8 v1, v1, 0xc

    if-nez v1, :cond_2

    .line 4089
    invoke-virtual {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v1

    invoke-virtual {p0, v3, v2, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->videoAudioStatusChange(IIIZ)V

    .line 4095
    :cond_2
    const/16 v1, 0x200

    and-int/lit16 v2, v0, 0x200

    if-ne v1, v2, :cond_0

    .line 4097
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getAudioStatus()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    shr-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_0

    .line 4100
    invoke-virtual {p0, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v1

    invoke-virtual {p0, v3, v4, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->videoAudioStatusChange(IIIZ)V

    goto :goto_0
.end method

.method protected setAudioMuteStatus(I)V
    .locals 5
    .param p1, "aMuteStatus"    # I

    .prologue
    const/16 v4, 0x10

    .line 3993
    const/4 v2, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v0

    .line 3997
    .local v0, "audioStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v1

    .line 3999
    .local v1, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudioStatus(I)V

    .line 4003
    return-void
.end method

.method protected setAudioStatus(I)V
    .locals 1
    .param p1, "aAudioStatus"    # I

    .prologue
    .line 4212
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4213
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setAudioStatus(I)V

    .line 4217
    return-void
.end method

.method public setBMLFullDispRect(IIII)V
    .locals 0
    .param p1, "aXPosition"    # I
    .param p2, "aYPosition"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 6287
    return-void
.end method

.method public setBmlState(Z)V
    .locals 2
    .param p1, "aState"    # Z

    .prologue
    .line 6690
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6691
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected setBmlStateCommonWrapped(Z)V
    .locals 1
    .param p1, "aState"    # Z

    .prologue
    .line 5441
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 5442
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setBmlStarterFlag(Z)V

    .line 5446
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 1
    .param p1, "aMmbStBmlViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 1740
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 1741
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 1745
    return-void
.end method

.method protected setCaptionDisplayArea(I)V
    .locals 3
    .param p1, "aType"    # I

    .prologue
    .line 7406
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 7409
    .local v0, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    const/4 v1, 0x0

    .line 7410
    .local v1, "setting":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;
    sparse-switch p1, :sswitch_data_0

    .line 7423
    :goto_0
    if-eqz v1, :cond_0

    .line 7424
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 7430
    :cond_0
    return-void

    .line 7412
    :sswitch_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSubtitle()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v1

    .line 7413
    goto :goto_0

    .line 7416
    :sswitch_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->getDrawSettingSuperimpose()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    move-result-object v1

    .line 7417
    goto :goto_0

    .line 7410
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x38 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCaptionDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 5667
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 5672
    return-void
.end method

.method protected setCaptionStateCommonWrapped(Z)V
    .locals 1
    .param p1, "aState"    # Z

    .prologue
    .line 5492
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 5493
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setCaptionStarterFlag(Z)V

    .line 5497
    return-void
.end method

.method public setCaptionSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aCaptionSurface"    # Landroid/view/Surface;

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 5645
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 1
    .param p1, "aMmbStCaptionViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 1780
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 1781
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V

    .line 1785
    return-void
.end method

.method public setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state error : Set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1962
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected setDisplayAreaCommonWrapped(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;

    .prologue
    .line 1982
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSelectChannelInformation()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;

    move-result-object v0

    .line 1984
    .local v0, "selectchannelinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSelectChannelInformationSv;->setDrawSettings(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 1986
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setDisplayArea(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeDrawSettingDataSv;)V

    .line 1990
    return-void
.end method

.method public setLanguageIndex(II)V
    .locals 4
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 1914
    const-string v0, "state error : Type(%d), Lang(%d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1915
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected setLanguageIndexCommonWrapped(II)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aLang"    # I

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setLanguageIndex(II)V

    .line 1942
    return-void
.end method

.method protected setPausingInformation(IIZZ)V
    .locals 1
    .param p1, "aState"    # I
    .param p2, "aType"    # I
    .param p3, "aCanvasClear"    # Z
    .param p4, "aPidClear"    # Z

    .prologue
    .line 2180
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPauseResumeData()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPauseResumeSettingDataSv;->setSubtitleStatus(IIZZ)V

    .line 2184
    return-void
.end method

.method protected setServiceContractStatus(I)V
    .locals 1
    .param p1, "aContract"    # I

    .prologue
    .line 4390
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4391
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceContractStatus(I)V

    .line 4395
    return-void
.end method

.method protected setServiceNgStatus(I)V
    .locals 1
    .param p1, "aNgStatus"    # I

    .prologue
    .line 4367
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4368
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceNgStatus(I)V

    .line 4372
    return-void
.end method

.method protected setServiceParentalStatus(Z)V
    .locals 1
    .param p1, "aParental"    # Z

    .prologue
    .line 4414
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4415
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setServiceParentalStatus(Z)V

    .line 4419
    return-void
.end method

.method protected setStLog(Ljava/lang/String;I)V
    .locals 9
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCategory"    # I

    .prologue
    const/4 v8, 0x0

    .line 5375
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getSecureClock()J

    move-result-wide v4

    .line 5377
    .local v4, "secureclock":J
    const-wide/16 v6, 0x0

    cmp-long v3, v6, v4

    if-nez v3, :cond_0

    .line 5399
    :goto_0
    return-void

    .line 5381
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    .line 5384
    .local v1, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    :try_start_0
    invoke-virtual {v1, p2, v4, v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveStLog(IJLjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v2

    .line 5385
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 5386
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 5387
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "saveStLog Error!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5388
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 5389
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "saveStLog Error!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5390
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v0

    .line 5391
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v3, "saveStLog Error!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 5392
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v0

    .line 5393
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v3, "saveStLog Error!"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5394
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v6, -0x12

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v3
.end method

.method public setState(IZ)V
    .locals 4
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state error : Type(%d), State("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1639
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected setStateCommonWrapped(IZ)V
    .locals 1
    .param p1, "aType"    # I
    .param p2, "aState"    # Z

    .prologue
    .line 1664
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 1665
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionStateCommonWrapped(Z)V

    .line 1671
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setState(IZ)V

    .line 1674
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setCaptionSuperimposeStatusForView(IZ)V

    .line 1679
    return-void

    .line 1667
    :cond_0
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setSuperimposeStateCommonWrapped(Z)V

    goto :goto_0
.end method

.method public setSuperImposeCaptionLanguage(II)V
    .locals 6
    .param p1, "aSuperImposeCaptionMode"    # I
    .param p2, "aLanguage"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v5, -0x12

    .line 4815
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v2

    .line 4817
    .local v2, "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    if-nez p1, :cond_0

    .line 4818
    invoke-virtual {v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->setCaptionLanguage(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 4832
    .end local v2    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    :goto_0
    return-void

    .line 4820
    .restart local v2    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    :cond_0
    invoke-virtual {v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->setSuperImposeLanguage(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4822
    .end local v2    # "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    :catch_0
    move-exception v0

    .line 4823
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "ServiceIOException occurred"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4824
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v1

    .line 4825
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    const-string v3, "ServiceConnectionException occurred"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4826
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    invoke-direct {v3, v5, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(II)V

    throw v3
.end method

.method protected setSuperimposeAutoDisplay(Z)V
    .locals 1
    .param p1, "aAutomaticflag"    # Z

    .prologue
    .line 5593
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 5594
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setSuperimposeAutoDisplayFlag(Z)V

    .line 5598
    return-void
.end method

.method public setSuperimposeDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 5714
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 5719
    return-void
.end method

.method protected setSuperimposeStateCommonWrapped(Z)V
    .locals 1
    .param p1, "aState"    # Z

    .prologue
    .line 5543
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 5544
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setSuperimposeStarterFlag(Z)V

    .line 5548
    return-void
.end method

.method public setSuperimposeSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aSuperimposeSurface"    # Landroid/view/Surface;

    .prologue
    .line 5689
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 5693
    return-void
.end method

.method public setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    .locals 1
    .param p1, "aMmbStSuperimposeViewSv"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .prologue
    .line 1820
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 1821
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V

    .line 1825
    return-void
.end method

.method protected setVideoDecodeStatus(I)V
    .locals 5
    .param p1, "aDecodeStatus"    # I

    .prologue
    const/4 v4, 0x1

    .line 4262
    const/4 v2, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v1

    .line 4266
    .local v1, "videoStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4268
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setVideoStatus(I)V

    .line 4272
    return-void
.end method

.method public setVideoDisplay(I)V
    .locals 2
    .param p1, "aRotateDegrees"    # I

    .prologue
    .line 5417
    const-string v0, "state error : setVideoDisplay"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5419
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public setVideoDisplayAreaInfo(IIII)V
    .locals 1
    .param p1, "aXCoordinate"    # I
    .param p2, "aYCoordinate"    # I
    .param p3, "aHeightSize"    # I
    .param p4, "aWidthSize"    # I

    .prologue
    .line 5764
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setVideoDisplayAreaInfo(IIII)V

    .line 5770
    return-void
.end method

.method protected setVideoMuteStatus(I)V
    .locals 5
    .param p1, "aMuteStatus"    # I

    .prologue
    const/16 v4, 0x10

    .line 4291
    const/4 v2, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeDefine(II)I

    move-result v3

    invoke-virtual {p0, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v1

    .line 4295
    .local v1, "videoStatus":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4297
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setVideoStatus(I)V

    .line 4301
    return-void
.end method

.method protected setVideoStatus(I)V
    .locals 1
    .param p1, "aVideoStatus"    # I

    .prologue
    .line 4320
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v0

    .line 4321
    .local v0, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setVideoStatus(I)V

    .line 4325
    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "aVideoSurface"    # Landroid/view/Surface;

    .prologue
    .line 5736
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 5740
    return-void
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;)V
    .locals 2
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlSettingDataSv;

    .prologue
    .line 346
    const-string v0, "state error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public start(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;Ljava/lang/String;I)V
    .locals 4
    .param p1, "aSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aUserParam"    # I

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStTuneSettingDataSv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EntityId(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "user(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected startBmlBrowserCommonWrapped(ZLcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;)V
    .locals 7
    .param p1, "aIsBmlDraw"    # Z
    .param p2, "aTvLinkInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .prologue
    const/4 v6, 0x0

    .line 4551
    :try_start_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;-><init>()V

    .line 4553
    .local v0, "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    iput-boolean p1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbIsDraw:Z

    .line 4556
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v3

    .line 4557
    .local v3, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->getBmlStarterFlag()Z

    move-result v2

    .line 4560
    .local v2, "starterflag":Z
    if-eqz p2, :cond_1

    .line 4562
    iput-object p2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .line 4563
    const/4 v4, 0x2

    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I

    .line 4565
    const/4 v2, 0x1

    .line 4573
    :goto_0
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4574
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->startBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;)V

    .line 4575
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V

    .line 4586
    .end local v0    # "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    .end local v2    # "starterflag":Z
    .end local v3    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :cond_0
    :goto_1
    return-void

    .line 4568
    .restart local v0    # "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    .restart local v2    # "starterflag":Z
    .restart local v3    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :cond_1
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbTvLinkInfo:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTvLinkSv;

    .line 4569
    const/4 v4, 0x0

    iput v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;->mmbStartType:I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 4578
    .end local v0    # "bmlsetdata":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserSettingSv;
    .end local v2    # "starterflag":Z
    .end local v3    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :catch_0
    move-exception v1

    .line 4579
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v4, "startBmlBrowser exception"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 4580
    .end local v1    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 4581
    .local v1, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v4, "startBmlBrowser exception"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected stopBmlBrowserCommonWrapped()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4606
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->stopBmlBrowser()V

    .line 4607
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBmlView()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4617
    :goto_0
    return-void

    .line 4608
    :catch_0
    move-exception v0

    .line 4609
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "ServiceStateException exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 4610
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_1
    move-exception v0

    .line 4611
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBmlBrowserException;
    const-string v1, "ServiceBmlBrowserException exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4612
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v2, -0x15

    invoke-direct {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v1
.end method

.method public tune(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 4
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state errorSvID(%d)Mode(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "EntityId(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "userparam(%d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected tuneCommonWrapped(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;Ljava/lang/String;I)V
    .locals 18
    .param p1, "aServiceId"    # I
    .param p2, "aMode"    # I
    .param p3, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    .param p4, "aEntityId"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I

    .prologue
    .line 950
    const/4 v12, -0x1

    .line 951
    .local v12, "tunetype":I
    const/16 v3, 0x8

    .line 952
    .local v3, "errordetail":I
    const/4 v4, 0x1

    .line 953
    .local v4, "errorflag":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v7

    .line 957
    .local v7, "facadeinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->initializeStControlStatus(Z)V

    .line 962
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBluetoothState()Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->stopDisp(Z)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->stopBmlBrowserCommonWrapped()V

    .line 975
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-virtual/range {v14 .. v17}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->getProgramInformation(IJ)Ljava/util/List;

    move-result-object v5

    .line 979
    .local v5, "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    if-eqz v5, :cond_1

    .line 981
    const/16 v14, 0x66

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setProgramInfoLog(Ljava/util/List;I)V

    .line 984
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v11

    .line 985
    .local v11, "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setStLogServiceId(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    :try_start_2
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkRequiresTierUpdating(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v10

    .line 990
    .local v10, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1002
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    move/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->tune(II)I

    move-result v12

    .line 1004
    if-nez v12, :cond_6

    .line 1006
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->TUNING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1041
    :goto_0
    if-nez v4, :cond_2

    .line 1043
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 1044
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setServiceContractStatus(I)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v11

    .line 1047
    move v8, v3

    .line 1048
    .local v8, "fixerror":I
    move/from16 v13, p5

    .line 1049
    .local v13, "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    invoke-virtual {v11, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 1066
    .end local v5    # "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    .end local v8    # "fixerror":I
    .end local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    .end local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .end local v13    # "uparam":I
    :cond_2
    :goto_1
    return-void

    .line 963
    :catch_0
    move-exception v6

    .line 964
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    const/4 v14, -0x2

    :try_start_4
    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v15

    if-eq v14, v15, :cond_0

    .line 966
    const-string v14, "Not state exception %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    throw v6
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1011
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :catch_1
    move-exception v2

    .line 1012
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    :try_start_5
    const-string v14, "MmbStInnerException"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1014
    const/4 v4, 0x0

    .line 1018
    const/4 v14, 0x1

    move/from16 v0, p2

    if-ne v14, v0, :cond_3

    .line 1020
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->callReservationConclusion(I)V

    .line 1023
    :cond_3
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;->getExceptionDetail()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v9

    .line 1025
    .local v9, "innererror":I
    const/16 v14, -0x13

    if-ne v14, v9, :cond_7

    .line 1028
    const/16 v3, 0xa

    .line 1041
    :cond_4
    if-nez v4, :cond_2

    .line 1043
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 1044
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setServiceContractStatus(I)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v11

    .line 1047
    .restart local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    move v8, v3

    .line 1048
    .restart local v8    # "fixerror":I
    move/from16 v13, p5

    .line 1049
    .restart local v13    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v14

    new-instance v15, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v8, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    invoke-virtual {v11, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    goto :goto_1

    .line 991
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .end local v8    # "fixerror":I
    .end local v9    # "innererror":I
    .end local v13    # "uparam":I
    .restart local v5    # "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    :catch_2
    move-exception v6

    .line 992
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_6
    const-string v14, "checkRequiresTierUpdating exception"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v15, -0x3

    invoke-direct {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v14
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1041
    .end local v5    # "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :catchall_0
    move-exception v14

    if-nez v4, :cond_5

    .line 1043
    sget-object v15, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->PAUSING:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V

    .line 1044
    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setServiceContractStatus(I)V

    .line 1045
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getStreamingInfoInstance()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;

    move-result-object v11

    .line 1047
    .restart local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    move v8, v3

    .line 1048
    .restart local v8    # "fixerror":I
    move/from16 v13, p5

    .line 1049
    .restart local v13    # "uparam":I
    invoke-virtual/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getMainHandler()Landroid/os/Handler;

    move-result-object v15

    new-instance v16, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;II)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1059
    invoke-virtual {v11, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;->setViewingStatus(I)V

    .line 1060
    .end local v8    # "fixerror":I
    .end local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .end local v13    # "uparam":I
    :cond_5
    throw v14

    .line 994
    .restart local v5    # "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    .restart local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    :catch_3
    move-exception v6

    .line 995
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :try_start_7
    const-string v14, "checkRequiresTierUpdating error"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v15, -0x12

    invoke-direct {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v14

    .line 997
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catch_4
    move-exception v6

    .line 998
    .local v6, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v14, "checkRequiresTierUpdating error"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 999
    new-instance v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/16 v15, -0x12

    invoke-direct {v14, v15}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v14

    .line 1009
    .end local v6    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    :cond_6
    sget-object v14, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;->TUNING_RECOVERY:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->transit(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerStateSv;)V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1029
    .end local v5    # "eventinfo":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStEventInformationDataSv;>;"
    .end local v10    # "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    .end local v11    # "streaminginfoinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingInformationSv;
    .restart local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;
    .restart local v9    # "innererror":I
    :cond_7
    const/16 v14, -0x15

    if-ne v14, v9, :cond_8

    .line 1031
    :try_start_8
    throw v2

    .line 1032
    :cond_8
    const/16 v14, -0x12

    if-ne v14, v9, :cond_9

    .line 1034
    throw v2

    .line 1035
    :cond_9
    const/16 v14, -0x16

    if-ne v14, v9, :cond_4

    .line 1037
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method protected videoAudioStatusChange(IIIZ)V
    .locals 8
    .param p1, "aTypeVideo"    # I
    .param p2, "aChangeBit"    # I
    .param p3, "aSetStatus"    # I
    .param p4, "aIsUi"    # Z

    .prologue
    const/4 v6, 0x1

    .line 6609
    const/4 v2, 0x1

    .line 6610
    .local v2, "decodeflag":Z
    if-nez p3, :cond_0

    .line 6613
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getInnerViewStatus()I

    move-result v3

    .line 6616
    .local v3, "innersts":I
    if-ne v6, v3, :cond_0

    .line 6621
    const/4 v2, 0x0

    .line 6625
    .end local v3    # "innersts":I
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->changeBitStatus(III)I

    move-result v4

    .line 6627
    .local v4, "videoOrAudioStatus":I
    if-ne v6, v2, :cond_1

    .line 6628
    if-nez p1, :cond_3

    .line 6630
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->videoDecode(I)V

    .line 6656
    :cond_1
    :goto_0
    if-eqz p4, :cond_2

    .line 6657
    if-nez p1, :cond_6

    .line 6658
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setVideoStatus(I)V

    .line 6666
    :cond_2
    :goto_1
    return-void

    .line 6633
    :cond_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getAudioMode()I

    move-result v0

    .line 6634
    .local v0, "audiomode":I
    if-eq p2, v6, :cond_4

    .line 6636
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    const/16 v6, 0xff

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBluetoothState()Z

    move-result v7

    invoke-virtual {v5, v4, v6, v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    goto :goto_0

    .line 6642
    :cond_4
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getAudioLanguageCommonWrapped()I

    move-result v5

    int-to-short v1, v5

    .line 6644
    .local v1, "componenttag":S
    if-ne v1, v6, :cond_5

    .line 6645
    const/16 v1, 0x11

    .line 6651
    :goto_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->playerFuncInstance:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->getBluetoothState()Z

    move-result v6

    invoke-virtual {v5, v4, v1, v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerFunctionSv;->audioDecode(ISIZ)V

    goto :goto_0

    .line 6647
    :cond_5
    const/16 v1, 0x10

    goto :goto_2

    .line 6660
    .end local v0    # "audiomode":I
    .end local v1    # "componenttag":S
    :cond_6
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStStreamingControllerSv;->setAudioStatus(I)V

    goto :goto_1
.end method

.method public videoDecode(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 1393
    const-string v0, "state error : status(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1394
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method protected videoDecodeInner(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 1414
    const-string v0, "state error : status(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1415
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method

.method public videoMute(I)V
    .locals 4
    .param p1, "aState"    # I

    .prologue
    .line 1435
    const-string v0, "state error : status(%d)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1436
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStInnerException;-><init>(I)V

    throw v0
.end method
