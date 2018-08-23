.class public Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbVgLogModuleSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;
    }
.end annotation


# static fields
.field private static final MMBVG_LOCK:Ljava/lang/Object;


# instance fields
.field private callback:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;

.field private databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

.field private listener:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

.field private serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->MMBVG_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 94
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    .line 96
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    .line 98
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;

    .line 100
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->status:I

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->stopSendLogData()V

    return-void
.end method

.method private checkCridFormat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aInput"    # Ljava/lang/String;

    .prologue
    .line 1286
    const/16 v0, 0xff

    .line 1288
    .local v0, "CRID_BYTE_MAX":I
    const/4 v2, 0x0

    .line 1292
    .local v2, "ret":Z
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "crid://[0-9A-Za-z_][0-9A-Za-z_\\-\\.]*/[0-9A-Za-z_][0-9A-Za-z_\\-\\.#/]*$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    .line 1295
    const/4 v3, 0x1

    if-ne v3, v2, :cond_1

    .line 1296
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0xff

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1298
    :cond_0
    const/4 v2, 0x0

    .line 1309
    :cond_1
    :goto_0
    return v2

    .line 1301
    :catch_0
    move-exception v1

    .line 1303
    .local v1, "e":Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkSendLogData(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;)Z
    .locals 13
    .param p1, "aServerInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x5

    const/16 v11, 0x63

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 535
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    .line 537
    .local v4, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v5

    .line 540
    .local v5, "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 544
    .local v0, "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getViewLogTransmission()I

    move-result v3

    .line 547
    .local v3, "logtransmission":I
    if-nez v3, :cond_0

    .line 548
    const-string v7, "return reason -> Transmission off"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    :goto_0
    return v6

    .line 556
    :cond_0
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getViewLogServerUrl()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->serverUrl:Ljava/lang/String;

    .line 559
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->serverUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-ne v7, v8, :cond_1

    .line 560
    const-string v7, "return reason -> Server URL is empty"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 606
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v3    # "logtransmission":I
    .end local v4    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v5    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v2

    .line 608
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 609
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v6, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v6

    .line 568
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v3    # "logtransmission":I
    .restart local v4    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v5    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getPfBackgroundId()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    .line 571
    iget-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-ne v7, v8, :cond_2

    .line 572
    const-string v7, "return reason -> PF Background ID is empty"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 611
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v3    # "logtransmission":I
    .end local v4    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v5    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_1
    move-exception v2

    .line 613
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 614
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v6

    .line 580
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v3    # "logtransmission":I
    .restart local v4    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v5    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_2
    const/4 v8, 0x6

    :try_start_2
    invoke-virtual {v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->userAgent:Ljava/lang/String;

    .line 584
    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->connectionTimeOut:I

    .line 589
    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;->soTimeOut:I

    .line 594
    const/16 v8, 0x3410

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I

    move-result v1

    .line 600
    .local v1, "conflict":I
    if-eqz v1, :cond_3

    .line 602
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "return reason -> conflict "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v7
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 616
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v1    # "conflict":I
    .end local v3    # "logtransmission":I
    .end local v4    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v5    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_2
    move-exception v2

    .line 618
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v6, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v6

    .line 621
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_3
    move-exception v2

    .line 623
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v6, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v6

    .line 626
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v2

    .line 628
    .local v2, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 629
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v6, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v6

    .end local v2    # "err":Ljava/lang/NullPointerException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v1    # "conflict":I
    .restart local v3    # "logtransmission":I
    .restart local v4    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v5    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_3
    move v6, v7

    .line 636
    goto/16 :goto_0
.end method

.method private checkSeqLabelFormat(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aInput"    # Ljava/lang/String;

    .prologue
    .line 1326
    const/4 v2, 0x1

    .line 1327
    .local v2, "ret":Z
    if-nez p1, :cond_0

    move v3, v2

    .line 1346
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 1335
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    const/16 v0, 0x3c

    .line 1337
    .local v0, "SEQLABEL_BYTE_MAX":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v1, v4

    .line 1338
    .local v1, "bytes":I
    if-ltz v1, :cond_1

    const/16 v4, 0x3c

    if-ge v4, v1, :cond_2

    .line 1340
    :cond_1
    const/4 v2, 0x0

    :cond_2
    move v3, v2

    .line 1346
    .restart local v3    # "ret":I
    goto :goto_0
.end method

.method private checkServerResult(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x63

    const/4 v6, 0x0

    .line 870
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->getResponse()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;

    move-result-object v3

    .line 871
    .local v3, "serverresponse":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    .line 874
    iget-boolean v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->cancelFlg:Z

    if-ne v8, v4, :cond_0

    .line 876
    const-string v4, "cancel request server"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 881
    :cond_0
    iget v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->dispslResult:I

    if-ne v8, v4, :cond_1

    .line 886
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->deleteDataAll()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    .line 957
    return-void

    .line 888
    :catch_0
    move-exception v1

    .line 891
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initDataBase()V

    .line 892
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 894
    :catch_1
    move-exception v2

    .line 896
    .local v2, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 900
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v2    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v1

    .line 902
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 903
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 910
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_1
    const-string v4, "ETPF703"

    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ELOG701"

    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ELOG703"

    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 917
    :cond_2
    :try_start_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initDataBase()V

    .line 918
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3

    .line 920
    :catch_3
    move-exception v2

    .line 923
    .restart local v2    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 927
    .end local v2    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :cond_3
    const-string v4, "ETPF100"

    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "ETPF305"

    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 931
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 933
    .local v0, "casdrmmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->requestBackgroundId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_5

    .line 948
    .end local v0    # "casdrmmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response error from server -> returncode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 950
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v4, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 935
    :catch_4
    move-exception v1

    .line 937
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 940
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_5
    move-exception v1

    .line 942
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4
.end method

.method private getSendLogData()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x63

    const/4 v5, 0x0

    .line 656
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 660
    .local v2, "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->getDataAll()Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 688
    return-object v2

    .line 662
    :catch_0
    move-exception v0

    .line 667
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initDataBase()V

    .line 668
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :catch_1
    move-exception v1

    .line 673
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 678
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 680
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 681
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3
.end method

.method private registerScheduleOneLimit()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1207
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    .line 1209
    .local v3, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v7

    .line 1212
    .local v7, "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const-wide/32 v0, 0x1499700

    .line 1215
    .local v0, "SIX_HOUR":J
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->requestTime()J

    move-result-wide v10

    const-wide/32 v12, 0x1499700

    add-long v4, v10, v12

    .line 1217
    .local v4, "rescheduletime":J
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->requestScheduleTime()J

    move-result-wide v8

    .line 1220
    .local v8, "scheduletime":J
    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    .line 1224
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 1225
    .local v6, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v10, 0x200

    iput v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 1226
    iput-wide v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 1227
    const/4 v10, 0x1

    iput v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 1230
    invoke-virtual {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1270
    .end local v6    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_0
    return-void

    .line 1235
    .end local v0    # "SIX_HOUR":J
    .end local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "rescheduletime":J
    .end local v7    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v8    # "scheduletime":J
    :catch_0
    move-exception v2

    .line 1237
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v10, "svc:schedule throw ArgumentException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1238
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1240
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v2

    .line 1242
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v10, "svc:schedule throw StateException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1243
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1245
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v2

    .line 1247
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    const-string v10, "svc:schedule throw PastTimeException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1248
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1250
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_3
    move-exception v2

    .line 1252
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v10, "svc:schedule throw ReserveMaxException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1255
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :catch_4
    move-exception v2

    .line 1257
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v10, "svc:schedule throw InternalException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1258
    throw v2

    .line 1260
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_5
    move-exception v2

    .line 1262
    .local v2, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1263
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private requestLogTransmission()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 974
    const/4 v1, 0x0

    .line 977
    .local v1, "logtransmission":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 979
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    .line 983
    .local v3, "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getViewLogTransmission()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 999
    return v1

    .line 985
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v3    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v0

    .line 987
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v4, "svc:preference throw IOException"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    throw v0

    .line 990
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 992
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 993
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v4, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private requestScheduleTime()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1139
    const-wide/16 v2, 0x0

    .line 1142
    .local v2, "schedule":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    .line 1144
    .local v1, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    .line 1147
    .local v4, "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getRepeatSchedule(I)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v2

    .line 1177
    const-wide/16 v6, 0x0

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 1178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRepeatSchedule return -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1179
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRepeatSchedule return -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1150
    .end local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_0
    move-exception v0

    .line 1152
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "svc:schedule throw ArgumentException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1155
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 1157
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "svc:schedule throw StateException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1160
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 1162
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v5, "svc:schedule throw UnmatchException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1163
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1165
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_3
    move-exception v0

    .line 1167
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "svc:schedule throw InternalException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1168
    throw v0

    .line 1170
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v0

    .line 1172
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1185
    .end local v0    # "err":Ljava/lang/NullPointerException;
    .restart local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v4    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_0
    return-wide v2
.end method

.method private requestTime()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1083
    const-wide/16 v4, 0x0

    .line 1086
    .local v4, "timems":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    .line 1088
    .local v1, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 1092
    .local v2, "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 1111
    const-wide/16 v6, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 1113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSecureClock return -> error"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSecureClock return -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1094
    .end local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v2    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "svc:preference throw IOException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    throw v0

    .line 1099
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 1101
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "svc:preference throw ServiceFatalException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1102
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1104
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 1106
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1120
    .end local v0    # "err":Ljava/lang/NullPointerException;
    .restart local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v2    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_0
    return-wide v4
.end method

.method private sendLogDataAfter(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x63

    const/4 v5, 0x0

    .line 774
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

    invoke-virtual {p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 777
    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

    .line 782
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 784
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 787
    .local v0, "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    const/16 v3, 0x3410

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;

    invoke-virtual {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 791
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 818
    return-void

    .line 793
    .end local v0    # "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v1

    .line 795
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 796
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 798
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 800
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 801
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 803
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_2
    move-exception v1

    .line 805
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 806
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 808
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 810
    .local v1, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3
.end method

.method private sendLogDataBefore(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x63

    const/4 v5, 0x0

    .line 711
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 713
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 716
    .local v0, "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;

    .line 719
    const/16 v3, 0x3410

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackSv;

    invoke-virtual {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 745
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;)V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

    .line 748
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv$MmbVgCallbackListenerSv;

    invoke-virtual {p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 753
    return-void

    .line 722
    .end local v0    # "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v1

    .line 724
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 727
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 729
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 732
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_2
    move-exception v1

    .line 734
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3

    .line 737
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 739
    .local v1, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v3
.end method

.method private sendLogDataProcess(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 434
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;-><init>()V

    .line 435
    .local v3, "serverinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->checkSendLogData(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;)Z

    move-result v0

    .line 438
    .local v0, "canSend":Z
    if-nez v0, :cond_0

    .line 439
    const-string v4, "return reason -> status connect"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 512
    :goto_0
    return-void

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getSendLogData()Ljava/util/List;

    move-result-object v2

    .line 450
    .local v2, "loglist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogDataSv;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-ne v7, v4, :cond_1

    .line 451
    const-string v4, "return reason -> loglist is empty"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 459
    :cond_1
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->MMBVG_LOCK:Ljava/lang/Object;

    monitor-enter v5

    .line 461
    :try_start_0
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->status:I

    if-ne v4, v7, :cond_2

    .line 462
    const-string v4, "return reason -> status connect"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    monitor-exit v5

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 469
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->status:I

    .line 470
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    :try_start_2
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;-><init>()V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    .line 476
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->checkCanceled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 477
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    invoke-virtual {v4, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->requestServer(Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerInfoSv;Ljava/util/List;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    iput v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->status:I

    .line 507
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->checkServerResult(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 479
    :catch_0
    move-exception v1

    .line 481
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_3
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/16 v5, 0x63

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 502
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_1
    move-exception v4

    iput v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->status:I

    throw v4

    .line 484
    :catch_1
    move-exception v1

    .line 486
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_4
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v5, 0x5

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 489
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v1

    .line 491
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4

    .line 494
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;
    :catch_3
    move-exception v1

    .line 496
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/16 v5, 0x63

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method private stopSendLogData()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgServerControllerSv;->disconnectedServer()V

    .line 847
    :cond_0
    return-void
.end method


# virtual methods
.method checkCanceled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    .line 1539
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1540
    const-string v0, "cancel request server"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1541
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(I)V

    throw v0

    .line 1546
    :cond_0
    return-void
.end method

.method public cleanupModule()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->closeController()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    .line 187
    :cond_0
    return-void
.end method

.method public registerSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 13
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v12, 0x0

    .line 1019
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1022
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    .line 1024
    .local v5, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    .line 1028
    .local v8, "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v0, 0x18

    .line 1029
    .local v0, "HOUR_MAX":I
    const/16 v1, 0x3c

    .line 1030
    .local v1, "MINUTE_MAX":I
    const/16 v2, 0x3c

    .line 1031
    .local v2, "SECOND_MAX":I
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 1032
    .local v7, "rand":Ljava/util/Random;
    const/16 v10, 0x18

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 1033
    .local v4, "hour":I
    const/16 v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 1034
    .local v6, "minute":I
    const/16 v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 1037
    .local v9, "second":I
    const/16 v10, 0x200

    invoke-virtual {v8, v10, v4, v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setRepeatSchedule(IIII)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1065
    .end local v0    # "HOUR_MAX":I
    .end local v1    # "MINUTE_MAX":I
    .end local v2    # "SECOND_MAX":I
    .end local v4    # "hour":I
    .end local v5    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v6    # "minute":I
    .end local v7    # "rand":Ljava/util/Random;
    .end local v8    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v9    # "second":I
    :cond_0
    return-void

    .line 1041
    :catch_0
    move-exception v3

    .line 1043
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v10, "svc:schedule throw ArgumentException"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1046
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 1048
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v10, "svc:schedule throw StateException"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1049
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 1051
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v3

    .line 1053
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v10, "svc:schedule throw InternalException"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1054
    throw v3

    .line 1056
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v3

    .line 1058
    .local v3, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1059
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method saveFcLog(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aLabel"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 282
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbVgLogConstantsSv;->isCategory(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const-string v0, "param aCategory -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aCategory -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 289
    const-string v0, "param aTimeMS -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aTimeMS -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_1
    invoke-direct {p0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    const-string v0, "param aCrid -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aCrid -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_2
    invoke-direct {p0, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->checkSeqLabelFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 301
    const-string v0, "param aLabel -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aLabel -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_3
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->requestLogTransmission()I

    move-result v0

    if-nez v0, :cond_4

    .line 330
    :goto_0
    return-void

    .line 312
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->setLogData(IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 314
    :catch_0
    move-exception v6

    .line 318
    .local v6, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initDataBase()V

    .line 319
    throw v6

    .line 321
    .end local v6    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v6

    .line 323
    .local v6, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method saveStLog(IJLjava/lang/String;)V
    .locals 8
    .param p1, "aCategory"    # I
    .param p2, "aTimeMS"    # J
    .param p4, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 212
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbVgLogConstantsSv;->isCategory(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const-string v0, "param aCategory -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aCategory -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-lez v0, :cond_1

    .line 219
    const-string v0, "param aTimeMS -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aTimeMS -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    invoke-direct {p0, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->checkCridFormat(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 225
    const-string v0, "param aCrid -> error"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "param aCrid -> error"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->requestLogTransmission()I

    move-result v0

    if-nez v0, :cond_3

    .line 255
    :goto_0
    return-void

    .line 237
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    const/4 v5, 0x0

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->setLogData(IJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 239
    :catch_0
    move-exception v6

    .line 243
    .local v6, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initDataBase()V

    .line 244
    throw v6

    .line 246
    .end local v6    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v6

    .line 248
    .local v6, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public sendLogData(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 355
    if-nez p1, :cond_0

    .line 356
    const-string v3, "param error aCb -> null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;

    const-string v4, "param error aCb -> null"

    invoke-direct {v3, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 363
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->sendLogDataBefore(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->sendLogDataProcess(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->sendLogDataAfter(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 408
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
    :try_start_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;->getResultCode()I

    move-result v2

    .line 372
    .local v2, "resultcode":I
    packed-switch v2, :pswitch_data_0

    .line 399
    :goto_0
    :pswitch_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
    .end local v2    # "resultcode":I
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->sendLogDataAfter(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    throw v3

    .line 381
    .restart local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgException;
    .restart local v2    # "resultcode":I
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->registerScheduleOneLimit()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 383
    :catch_1
    move-exception v1

    .line 385
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 388
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v1

    .line 390
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startupModule()V
    .locals 3

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    .line 148
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgDataBaseControllerSv;->initController()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
