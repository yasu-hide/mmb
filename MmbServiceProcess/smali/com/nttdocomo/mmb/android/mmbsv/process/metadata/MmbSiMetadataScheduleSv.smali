.class Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataScheduleSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv$MmbFcContentsSdpTimesTagDataStartTimeComparator;
    }
.end annotation


# instance fields
.field private service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 143
    return-void
.end method


# virtual methods
.method public deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 3
    .param p1, "aScheduledata"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 442
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v1

    .line 444
    .local v1, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_4

    .line 469
    return-void

    .line 445
    :catch_0
    move-exception v0

    .line 447
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 448
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 449
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 451
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 452
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 453
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 455
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 456
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 457
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_3
    move-exception v0

    .line 459
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 460
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 461
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :catch_4
    move-exception v0

    .line 463
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 464
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v2
.end method

.method protected getNextBroadcastAriB(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .locals 12
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 627
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 634
    .local v0, "currentTime":J
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-static {p1, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->getNextBroadcast(Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;

    move-result-object v5

    .line 637
    .local v5, "nbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->joinContinuousScheduledBroadcast([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;)[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;

    move-result-object v4

    .line 639
    .local v4, "jbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    if-eqz v4, :cond_2

    array-length v7, v4

    if-eqz v7, :cond_2

    .line 640
    const/4 v6, 0x0

    .line 643
    .local v6, "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_0

    .line 646
    aget-object v7, v4, v3

    iget-wide v8, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    const-wide/16 v10, 0x2710

    sub-long/2addr v8, v10

    cmp-long v7, v8, v0

    if-lez v7, :cond_1

    .line 648
    aget-object v6, v4, v3

    .line 659
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-object v6

    .line 628
    .end local v0    # "currentTime":J
    .end local v4    # "jbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .end local v5    # "nbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .end local v6    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :catch_0
    move-exception v2

    .line 629
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 630
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v7

    .line 643
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v0    # "currentTime":J
    .restart local v3    # "i":I
    .restart local v4    # "jbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    .restart local v5    # "nbcast":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSdpParserSv$MmbFcContentsSdpTimesTagSv$MmbFcContentsSdpTimesTagDataSv;
    .restart local v6    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 653
    .end local v3    # "i":I
    .end local v6    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    goto :goto_1
.end method

.method public getScheduleUpdateTime()I
    .locals 4

    .prologue
    .line 493
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    .line 494
    .local v1, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForForceReceive()I

    move-result v3

    if-nez v3, :cond_0

    .line 496
    const/4 v0, -0x1

    .line 525
    :goto_0
    return v0

    .line 500
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getEpgUpdateTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v2

    .line 501
    .local v2, "updateTime":I
    const/4 v0, -0x1

    .line 502
    .local v0, "hour":I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 505
    :pswitch_0
    const/4 v0, 0x2

    .line 506
    goto :goto_0

    .line 509
    :pswitch_1
    const/16 v0, 0x8

    .line 510
    goto :goto_0

    .line 513
    :pswitch_2
    const/16 v0, 0xe

    .line 514
    goto :goto_0

    .line 517
    :pswitch_3
    const/16 v0, 0x14

    .line 518
    goto :goto_0

    .line 502
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getSecureClock()J
    .locals 6

    .prologue
    .line 815
    const-wide/16 v0, 0x0

    .line 818
    .local v0, "clock":J
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 820
    .local v3, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :try_start_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 827
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-lez v4, :cond_0

    .line 828
    const-string v4, "error getSecureClock(clock < 0)"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v4

    .line 821
    :catch_0
    move-exception v2

    .line 823
    .local v2, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 824
    throw v2

    .line 835
    .end local v2    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :cond_0
    return-wide v0
.end method

.method public setRepeatSchedule()V
    .locals 8

    .prologue
    .line 548
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v3

    .line 551
    .local v3, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getScheduleUpdateTime()I

    move-result v1

    .line 554
    .local v1, "hour":I
    const/4 v5, -0x1

    if-ne v5, v1, :cond_0

    .line 556
    const/16 v5, 0x20

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteScheduleAll(I)V

    .line 593
    :goto_0
    return-void

    .line 561
    :cond_0
    const-string v5, "Asia/Tokyo"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 563
    .local v2, "scheduleCalendar":Ljava/util/Calendar;
    const/16 v5, 0xb

    invoke-virtual {v2, v5, v1}, Ljava/util/Calendar;->set(II)V

    .line 565
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 566
    .local v4, "utchour":I
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 568
    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 571
    const/16 v5, 0x20

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setRepeatSchedule(IIII)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 573
    .end local v1    # "hour":I
    .end local v2    # "scheduleCalendar":Ljava/util/Calendar;
    .end local v4    # "utchour":I
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 576
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 577
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 579
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 580
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 581
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v0

    .line 583
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 584
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v5

    .line 585
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v0

    .line 587
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 588
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v5
.end method

.method public setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    .locals 3
    .param p1, "aScheduledata"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .prologue
    .line 392
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v1

    .line 394
    .local v1, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_4

    .line 419
    return-void

    .line 395
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 398
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 399
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 401
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 402
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 403
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 405
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 406
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 407
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_3
    move-exception v0

    .line 409
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 410
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v2

    .line 411
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :catch_4
    move-exception v0

    .line 413
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 414
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v2
.end method

.method public setSchedule(Z)V
    .locals 12
    .param p1, "aScheduleEnable"    # Z

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getScheduleUpdateTime()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 181
    .local v5, "scheduleHour":I
    const/4 v10, -0x1

    if-ne v10, v5, :cond_2

    .line 183
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    .line 185
    .local v8, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v10, 0x20

    :try_start_1
    invoke-virtual {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteScheduleAll(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 189
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v10

    .line 174
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v5    # "scheduleHour":I
    .end local v8    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_1
    move-exception v1

    .line 176
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 177
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v10

    .line 190
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v5    # "scheduleHour":I
    .restart local v8    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_2
    move-exception v1

    .line 192
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 193
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v10

    .line 194
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v1

    .line 196
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 197
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v10

    .line 203
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v8    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getSecureClock()J

    move-result-wide v6

    .line 204
    .local v6, "nowclock":J
    const-string v10, "Asia/Tokyo"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 205
    .local v4, "nowcal":Ljava/util/Calendar;
    const-string v10, "Asia/Tokyo"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 206
    .local v0, "adjcal":Ljava/util/Calendar;
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 209
    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/4 v10, 0x5

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v10, 0xb

    const/16 v11, 0xb

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 217
    const/4 v3, 0x0

    .line 218
    .local v3, "muchflag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v10, 0x18

    if-ge v2, v10, :cond_3

    .line 219
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 221
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 230
    :goto_2
    if-eqz v3, :cond_4

    .line 236
    :cond_3
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v10, v5, :cond_0

    .line 238
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 239
    .local v9, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v10, 0x20

    iput v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 240
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 241
    const/4 v10, 0x1

    iput v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 244
    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    goto/16 :goto_0

    .line 226
    .end local v9    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :sswitch_0
    const/4 v3, 0x1

    goto :goto_2

    .line 218
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 221
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0xe -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public setScheduleAirB(Ljava/lang/String;)Z
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 681
    const/4 v1, 0x0

    .line 685
    .local v1, "nextSchdule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getNextBroadcastAriB(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 689
    :goto_0
    if-nez v1, :cond_0

    .line 693
    const/4 v4, 0x0

    .line 727
    :goto_1
    return v4

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_0

    .line 697
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 698
    .local v3, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v5, 0x40

    iput v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 699
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    const-wide/16 v8, 0x2710

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 701
    iput-object p1, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 702
    const-string v5, ""

    iput-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 703
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 704
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 705
    iput v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 708
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 711
    .local v2, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 712
    :catch_1
    move-exception v0

    .line 714
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 716
    throw v0

    .line 717
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 719
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 721
    throw v0
.end method

.method public unsetSchedule(Z)V
    .locals 12
    .param p1, "aScheduleEnable"    # Z

    .prologue
    .line 273
    if-nez p1, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getScheduleUpdateTime()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 288
    .local v5, "scheduleHour":I
    const/4 v10, -0x1

    if-ne v10, v5, :cond_2

    .line 290
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    .line 292
    .local v8, "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v10, 0x20

    :try_start_1
    invoke-virtual {v8, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->deleteScheduleAll(I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 293
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 296
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v10

    .line 281
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .end local v5    # "scheduleHour":I
    .end local v8    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_1
    move-exception v1

    .line 283
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 284
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v10

    .line 297
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v5    # "scheduleHour":I
    .restart local v8    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_2
    move-exception v1

    .line 299
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 300
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v10

    .line 301
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_3
    move-exception v1

    .line 303
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 304
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v10

    .line 310
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v8    # "scheduleModule":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getSecureClock()J

    move-result-wide v6

    .line 311
    .local v6, "nowclock":J
    const-string v10, "Asia/Tokyo"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    .line 312
    .local v4, "nowcal":Ljava/util/Calendar;
    const-string v10, "Asia/Tokyo"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 313
    .local v0, "adjcal":Ljava/util/Calendar;
    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 315
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 316
    const/4 v10, 0x2

    const/4 v11, 0x2

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 317
    const/4 v10, 0x5

    const/4 v11, 0x5

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 318
    const/16 v10, 0xb

    const/16 v11, 0xb

    invoke-virtual {v4, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 319
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 320
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 321
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 324
    const/4 v3, 0x0

    .line 325
    .local v3, "muchflag":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v10, 0x18

    if-ge v2, v10, :cond_3

    .line 326
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->add(II)V

    .line 328
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 337
    :goto_2
    if-eqz v3, :cond_4

    .line 343
    :cond_3
    const/16 v10, 0xb

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-eq v10, v5, :cond_0

    .line 345
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 346
    .local v9, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v10, 0x20

    iput v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 347
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 348
    const/4 v10, 0x1

    iput v10, v9, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 352
    :try_start_2
    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_0

    .line 353
    :catch_4
    move-exception v1

    .line 354
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 333
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    .end local v9    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :sswitch_0
    const/4 v3, 0x1

    goto :goto_2

    .line 325
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 355
    .restart local v9    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :catch_5
    move-exception v1

    .line 356
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 358
    throw v1

    .line 359
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_6
    move-exception v1

    .line 360
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 362
    throw v1

    .line 328
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
        0xe -> :sswitch_0
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method public unsetScheduleAirB(Ljava/lang/String;)Z
    .locals 10
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 749
    const/4 v1, 0x0

    .line 753
    .local v1, "nextSchdule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->getNextBroadcastAriB(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 757
    :goto_0
    if-nez v1, :cond_0

    .line 761
    const/4 v4, 0x0

    .line 797
    :goto_1
    return v4

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    goto :goto_0

    .line 765
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 766
    .local v3, "scheduleData":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v5, 0x40

    iput v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 767
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    const-wide/16 v8, 0x2710

    sub-long/2addr v6, v8

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 769
    iput-object p1, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 770
    const-string v5, ""

    iput-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 771
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbStartTime:J

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentStartTime:J

    .line 772
    iget-wide v6, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv$MmbSiMetadataScheduledBroadcastSv;->mmbEndTime:J

    iput-wide v6, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentEndTime:J

    .line 773
    iput v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 776
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-direct {v2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 779
    .local v2, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->deleteSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 780
    :catch_1
    move-exception v0

    .line 781
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 782
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_2
    move-exception v0

    .line 784
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 786
    throw v0

    .line 787
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v0

    .line 789
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 791
    throw v0
.end method
