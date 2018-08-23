.class Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;
.super Ljava/lang/Object;
.source "MmbTmThreadControlSv.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private myContext:Landroid/content/Context;

.field private myMode:I

.field private myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

.field private myScheduleDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation
.end field

.field private mySeriesReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

.field myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    .line 69
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myContext:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 73
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 75
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    .line 77
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->mySeriesReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    return-void
.end method

.method private executeExternalApDbRecovery()V
    .locals 4

    .prologue
    .line 281
    const/4 v0, 0x1

    .line 282
    .local v0, "interfaceno":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    .line 283
    .local v1, "preference":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getReceptionServerUrl(I)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "serverurl":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 286
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalEpgEcgGet()V

    .line 288
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalLogSend()V

    .line 290
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalRecommendGet()V

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalFcAutoDel()V

    .line 298
    return-void
.end method

.method private executeExternalApiSchedule()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 317
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    sparse-switch v0, :sswitch_data_0

    .line 384
    const-string v0, "call Extra API unknown"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :goto_0
    return-void

    .line 320
    :sswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalIntentStView()V

    goto :goto_0

    .line 324
    :sswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalIntentFcPlay()V

    goto :goto_0

    .line 328
    :sswitch_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalFcAccumulation()V

    goto :goto_0

    .line 332
    :sswitch_3
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalFcOpenPublic()V

    goto :goto_0

    .line 336
    :sswitch_4
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalFcComplement()V

    goto :goto_0

    .line 340
    :sswitch_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalEpgEcgGet()V

    goto :goto_0

    .line 344
    :sswitch_6
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalEpgEcgGetBTransmission()V

    goto :goto_0

    .line 348
    :sswitch_7
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalFcAutoDel()V

    .line 349
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->isEnableBackgroundOperation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    const-string v0, "Background operation is disabled."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalAutoLicenseGetDel()V

    goto :goto_0

    .line 361
    :sswitch_8
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalAutoLicenseGetDel()V

    goto :goto_0

    .line 365
    :sswitch_9
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalLogSend()V

    goto :goto_0

    .line 369
    :sswitch_a
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalRecommendGet()V

    goto :goto_0

    .line 373
    :sswitch_b
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalSeries()V

    goto :goto_0

    .line 377
    :sswitch_c
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalStRecording()V

    goto :goto_0

    .line 381
    :sswitch_d
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalFcComplementFdt()V

    goto :goto_0

    .line 317
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
    .end sparse-switch
.end method

.method private executeExternalAutoLicenseGetDel()V
    .locals 5

    .prologue
    .line 756
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v1, :pswitch_data_0

    .line 767
    const-string v1, "Illegal Mode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    :goto_0
    return-void

    .line 761
    :pswitch_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 762
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->autoGetLicense()V

    goto :goto_0

    .line 756
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private executeExternalContentDelaySchadule()V
    .locals 2

    .prologue
    .line 942
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 943
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->processUnignitedSchedules(Ljava/util/List;)V

    .line 948
    return-void
.end method

.method private executeExternalEpgEcgGet()V
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 646
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v1, :pswitch_data_0

    .line 665
    :goto_0
    return-void

    .line 649
    :pswitch_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->setMmbSiInfSvUpdateSchedule()V

    goto :goto_0

    .line 653
    :pswitch_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->setMmbSiInfSvReSchedule()V

    goto :goto_0

    .line 657
    :pswitch_2
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->setMmbSiInfSvSchedule()V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private executeExternalEpgEcgGetBTransmission()V
    .locals 3

    .prologue
    .line 682
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 683
    .local v0, "crid":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 684
    .local v1, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v2, :pswitch_data_0

    .line 701
    :goto_0
    return-void

    .line 687
    :pswitch_0
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->gatherMmbSiInfSvFromAirB(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :pswitch_1
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->setMmbSiInfSvReScheduleAirB(Ljava/lang/String;)V

    goto :goto_0

    .line 684
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalFcAccumulation()V
    .locals 7

    .prologue
    .line 517
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 518
    .local v0, "crid":Ljava/lang/String;
    const/4 v2, 0x0

    .line 519
    .local v2, "type":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReserveType:I

    packed-switch v3, :pswitch_data_0

    .line 531
    :pswitch_0
    const/16 v2, 0xb

    .line 534
    :goto_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 536
    .local v1, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v3, :pswitch_data_1

    .line 548
    const-string v3, "Illegal Mode[%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    :goto_1
    return-void

    .line 521
    .end local v1    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :pswitch_1
    const/16 v2, 0xc

    .line 522
    goto :goto_0

    .line 524
    :pswitch_2
    const/16 v2, 0xb

    .line 525
    goto :goto_0

    .line 527
    :pswitch_3
    const/16 v2, 0xd

    .line 528
    goto :goto_0

    .line 539
    .restart local v1    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :pswitch_4
    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startDownload(Ljava/lang/String;I)V

    goto :goto_1

    .line 543
    :pswitch_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalContentDelaySchadule()V

    goto :goto_1

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 536
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private executeExternalFcAutoDel()V
    .locals 5

    .prologue
    .line 718
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 719
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v1, :pswitch_data_0

    .line 733
    const-string v1, "Illegal Mode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    :goto_0
    return-void

    .line 722
    :pswitch_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startAutoDeletion()V

    goto :goto_0

    .line 726
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalContentDelaySchadule()V

    goto :goto_0

    .line 730
    :pswitch_2
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->reserveAutoDeletion()V

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private executeExternalFcComplement()V
    .locals 6

    .prologue
    .line 608
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 609
    .local v0, "crid":Ljava/lang/String;
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v2, :pswitch_data_0

    .line 622
    const-string v2, "Illegal Mode[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 628
    :goto_0
    return-void

    .line 612
    :pswitch_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 613
    .local v1, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startAutoComplement(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v1    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalContentDelaySchadule()V

    goto :goto_0

    .line 609
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalFcComplementFdt()V
    .locals 6

    .prologue
    .line 903
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 904
    .local v0, "crid":Ljava/lang/String;
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v2, :pswitch_data_0

    .line 917
    const-string v2, "Illegal Mode[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    :goto_0
    return-void

    .line 907
    :pswitch_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 908
    .local v1, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startAutoComplementFdt(Ljava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v1    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalContentDelaySchadule()V

    goto :goto_0

    .line 904
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalFcOpenPublic()V
    .locals 6

    .prologue
    .line 571
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 572
    .local v0, "crid":Ljava/lang/String;
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v2, :pswitch_data_0

    .line 585
    const-string v2, "Illegal Mode[%d]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    :goto_0
    return-void

    .line 575
    :pswitch_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 576
    .local v1, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->notifyOpenState(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    .end local v1    # "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalContentDelaySchadule()V

    goto :goto_0

    .line 572
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalIntentFcPlay()V
    .locals 4

    .prologue
    .line 482
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v0, :pswitch_data_0

    .line 494
    const-string v0, "Illegal Mode[%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 500
    :goto_0
    return-void

    .line 485
    :pswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalIntentForApl()V

    goto :goto_0

    .line 489
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalIntentForHistory()V

    goto :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalIntentForApl()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 968
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;-><init>()V

    .line 969
    .local v4, "intentdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 970
    .local v0, "data":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-result-object v2

    .line 972
    .local v2, "general":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    invoke-virtual {v2, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->convertRecordDataToScheduleData(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 974
    iput-object v0, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 975
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbPackageName:Ljava/lang/String;

    .line 976
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentPackageName:Ljava/lang/String;

    .line 977
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbIntentClassName:Ljava/lang/String;

    .line 980
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 981
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "MmbCoScheduleIntentDataSv"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 982
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 985
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbScheduleType:I

    if-ne v5, v7, :cond_0

    .line 986
    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_ST_VIEW_BEGINS_SOON"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    :goto_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1012
    :goto_1
    return-void

    .line 988
    :cond_0
    const-string v5, "com.nttdocomo.mmb.android.mmbsv.ACTION_FC_PLAY_BEGINS_SOON"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 996
    :cond_1
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 997
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v5, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbIntentClassName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1001
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1002
    :catch_0
    move-exception v1

    .line 1006
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v5, "ActivityNotFoundException e=%s"

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private executeExternalIntentForHistory()V
    .locals 10

    .prologue
    .line 1030
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_2

    .line 1031
    :cond_0
    const-string v8, "Illegal parameter myScheduleDataList"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    :cond_1
    return-void

    .line 1041
    :cond_2
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;

    move-result-object v8

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmGeneralSv;->getClockFromMyself(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)J

    move-result-wide v6

    .line 1042
    .local v6, "time":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 1044
    const/4 v2, 0x0

    .line 1046
    .local v2, "category":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v3, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 1048
    .local v3, "crid":Ljava/lang/String;
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v4, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbContentTitle:Ljava/lang/String;

    .line 1050
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1053
    .local v5, "reason":I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v1

    .line 1054
    .local v1, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    invoke-virtual/range {v1 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJ)V

    .line 1042
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private executeExternalIntentStView()V
    .locals 4

    .prologue
    .line 410
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v0, :pswitch_data_0

    .line 422
    const-string v0, "Illegal Mode[%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :goto_0
    return-void

    .line 413
    :pswitch_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalIntentForApl()V

    goto :goto_0

    .line 417
    :pswitch_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalIntentForHistory()V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalLogSend()V
    .locals 5

    .prologue
    .line 790
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 791
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v1, :pswitch_data_0

    .line 805
    const-string v1, "Illegal Mode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    :goto_0
    return-void

    .line 797
    :pswitch_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->sendLogData()V

    goto :goto_0

    .line 802
    :pswitch_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->registerScheduleVg()V

    goto :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalRecommendGet()V
    .locals 5

    .prologue
    .line 828
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 829
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v1, :pswitch_data_0

    .line 841
    const-string v1, "Illegal Mode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :goto_0
    return-void

    .line 834
    :pswitch_0
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->requestData()V

    goto :goto_0

    .line 838
    :pswitch_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->registerScheduleRc()V

    goto :goto_0

    .line 829
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private executeExternalSeries()V
    .locals 5

    .prologue
    .line 867
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 869
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v1, :pswitch_data_0

    .line 879
    const-string v1, "Illegal Mode[%d]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 886
    :goto_0
    return-void

    .line 872
    :pswitch_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->mySeriesReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private executeExternalStRecording()V
    .locals 10

    .prologue
    .line 445
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v2, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbCrid:Ljava/lang/String;

    .line 446
    .local v2, "crid":Ljava/lang/String;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v1, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbServiceId:I

    .line 447
    .local v1, "serviceId":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-object v3, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbReservedPackageName:Ljava/lang/String;

    .line 448
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget-wide v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbTriggerTime:J

    .line 449
    .local v4, "triggerTime":J
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getIpcStub()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    move-result-object v0

    .line 450
    .local v0, "stub":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    packed-switch v6, :pswitch_data_0

    .line 460
    const-string v6, "Illegal Mode[%d]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    :goto_0
    return-void

    .line 453
    :pswitch_0
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->startRec(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 98
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    if-eq v1, v5, :cond_0

    .line 100
    const-string v1, "parameter myMode is illegal! myMode[%d]"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 108
    const-string v1, "parameter myContext is illegal!(null)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    if-nez v1, :cond_2

    .line 116
    const-string v1, "parameter myServiceManager is illegal!(null)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_2
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    if-ne v1, v3, :cond_4

    .line 124
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    if-nez v1, :cond_4

    .line 125
    const-string v1, "parameter myRecord is illegal!(null)"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 133
    :cond_4
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    if-ne v1, v5, :cond_5

    .line 134
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalApDbRecovery()V

    goto :goto_0

    .line 136
    :cond_5
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->executeExternalApiSchedule()V

    .line 138
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    move-result-object v0

    .line 140
    .local v0, "sleepcontrol":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;->mmbId:I

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->releaseDevice(I)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myContext:Landroid/content/Context;

    .line 218
    return-void
.end method

.method setDataRecord(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;)V
    .locals 0
    .param p1, "aDatabaseRecord"    # Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myRecord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmDatabaseRecordSv;

    .line 195
    return-void
.end method

.method setDataSchedule(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "aDataSchedule":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myScheduleDataList:Ljava/util/List;

    .line 240
    return-void
.end method

.method setMode(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0
    .param p1, "aMode"    # I
    .param p2, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 167
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myMode:I

    .line 168
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->myServiceManager:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 172
    return-void
.end method

.method setSeriesReserveData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)V
    .locals 0
    .param p1, "aSeriesReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmThreadControlSv;->mySeriesReserveData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    .line 262
    return-void
.end method
