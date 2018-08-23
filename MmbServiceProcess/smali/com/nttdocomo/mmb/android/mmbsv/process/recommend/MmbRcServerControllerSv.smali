.class public Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbRcServerControllerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;
    }
.end annotation


# static fields
.field private static final MMBRC_LOCK:Ljava/lang/Object;


# instance fields
.field private callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;

.field private listener:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

.field private serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->MMBRC_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    .line 92
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;

    .line 94
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->status:I

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->stopRequestData()V

    return-void
.end method

.method private checkRequestData(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;)Z
    .locals 14
    .param p1, "aServerInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x5

    const/16 v12, 0x63

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 316
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    .line 318
    .local v3, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    .line 321
    .local v4, "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 325
    .local v0, "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoRecommendInfo()I

    move-result v5

    .line 328
    .local v5, "recommendInfo":I
    if-nez v5, :cond_0

    .line 329
    const-string v8, "return reason -> Auto recommend info off"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 429
    :goto_0
    return v7

    .line 337
    :cond_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getAutoReceptionForRecommend()I

    move-result v6

    .line 340
    .local v6, "result":I
    if-nez v6, :cond_1

    .line 341
    const-string v8, "return reason -> Auto Reception(Recommend) off"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    .line 399
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v5    # "recommendInfo":I
    .end local v6    # "result":I
    :catch_0
    move-exception v2

    .line 401
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v7, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v7

    .line 349
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v5    # "recommendInfo":I
    .restart local v6    # "result":I
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getCridServerUrl()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->serverUrl:Ljava/lang/String;

    .line 352
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->serverUrl:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-ne v8, v9, :cond_2

    .line 353
    const-string v8, "return reason -> Server URL is empty"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 404
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v5    # "recommendInfo":I
    .end local v6    # "result":I
    :catch_1
    move-exception v2

    .line 406
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v7

    .line 361
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v5    # "recommendInfo":I
    .restart local v6    # "result":I
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getPfBackgroundId()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    .line 364
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->pfBackgroundId:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-ne v8, v9, :cond_3

    .line 365
    const-string v8, "return reason -> PF Background ID is empty"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_0

    .line 409
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v5    # "recommendInfo":I
    .end local v6    # "result":I
    :catch_2
    move-exception v2

    .line 411
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v7, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v7

    .line 373
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v5    # "recommendInfo":I
    .restart local v6    # "result":I
    :cond_3
    const/4 v9, 0x6

    :try_start_3
    invoke-virtual {v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->userAgent:Ljava/lang/String;

    .line 377
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->connectionTimeOut:I

    .line 382
    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;->soTimeOut:I

    .line 387
    const/16 v9, 0x3414

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->checkConflict(IILjava/lang/String;)I

    move-result v1

    .line 393
    .local v1, "conflict":I
    if-eqz v1, :cond_4

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "return reason -> conflict "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v8
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceBatteryException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4

    .line 414
    .end local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v1    # "conflict":I
    .end local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v5    # "recommendInfo":I
    .end local v6    # "result":I
    :catch_3
    move-exception v2

    .line 416
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v7, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v7

    .line 419
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v2

    .line 421
    .local v2, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v7, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v7

    .end local v2    # "err":Ljava/lang/NullPointerException;
    .restart local v0    # "cfconflictmoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .restart local v1    # "conflict":I
    .restart local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v4    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v5    # "recommendInfo":I
    .restart local v6    # "result":I
    :cond_4
    move v7, v8

    .line 429
    goto/16 :goto_0
.end method

.method private checkServerResult(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 612
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->getResponse()Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;

    move-result-object v2

    .line 613
    .local v2, "serverresponse":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    .line 616
    iget-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->cancelFlg:Z

    if-ne v6, v3, :cond_0

    .line 618
    const-string v3, "cancel request server"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 619
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 623
    :cond_0
    iget v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->dispslResult:I

    if-ne v6, v3, :cond_1

    .line 627
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->crid:Ljava/util/List;

    invoke-direct {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->sendRecommendData(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 659
    return-void

    .line 629
    :cond_1
    const-string v3, "ETPF100"

    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "ETPF305"

    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 633
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 635
    .local v0, "casdrmmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->requestBackgroundId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1

    .line 650
    .end local v0    # "casdrmmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "response error from server -> returncode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerResponseInfoSv;->returnCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 652
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 637
    :catch_0
    move-exception v1

    .line 639
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 642
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_1
    move-exception v1

    .line 644
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/16 v4, 0x63

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3
.end method

.method private registerScheduleOneLimit()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 921
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    .line 923
    .local v3, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v7

    .line 926
    .local v7, "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const-wide/32 v0, 0x1499700

    .line 929
    .local v0, "SIX_HOUR":J
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestTimeMS()J

    move-result-wide v10

    const-wide/32 v12, 0x1499700

    add-long v4, v10, v12

    .line 931
    .local v4, "rescheduletime":J
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestScheduleTime()J

    move-result-wide v8

    .line 934
    .local v8, "scheduletime":J
    cmp-long v10, v8, v4

    if-lez v10, :cond_0

    .line 938
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;-><init>()V

    .line 939
    .local v6, "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    const/16 v10, 0x400

    iput v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbScheduleType:I

    .line 940
    iput-wide v4, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbTriggerTime:J

    .line 941
    const/4 v10, 0x1

    iput v10, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbHistory:I

    .line 944
    invoke-virtual {v7, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    .line 983
    .end local v6    # "scheduledata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    :cond_0
    return-void

    .line 949
    .end local v0    # "SIX_HOUR":J
    .end local v3    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "rescheduletime":J
    .end local v7    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    .end local v8    # "scheduletime":J
    :catch_0
    move-exception v2

    .line 951
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v10, "svc:schedule throw ArgumentException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 952
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 954
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v2

    .line 956
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v10, "svc:schedule throw StateException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 957
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 959
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v2

    .line 961
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    const-string v10, "svc:schedule throw PastTimeException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 964
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServicePastTimeException;
    :catch_3
    move-exception v2

    .line 966
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    const-string v10, "svc:schedule throw ReserveMaxException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 969
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;
    :catch_4
    move-exception v2

    .line 971
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v10, "svc:schedule throw InternalException"

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 972
    throw v2

    .line 974
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_5
    move-exception v2

    .line 976
    .local v2, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private requestDataAfter(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x63

    const/4 v5, 0x0

    .line 515
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

    invoke-virtual {p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 518
    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

    .line 523
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 525
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 528
    .local v0, "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    const/16 v3, 0x3414

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;

    invoke-virtual {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V

    .line 532
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 559
    return-void

    .line 534
    .end local v0    # "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 537
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 539
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 541
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 544
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_2
    move-exception v1

    .line 546
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 549
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 551
    .local v1, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3
.end method

.method private requestDataBefore(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x63

    const/4 v5, 0x0

    .line 452
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 454
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v0

    .line 457
    .local v0, "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;

    .line 460
    const/16 v3, 0x3414

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->callback:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackSv;

    invoke-virtual {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 486
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

    invoke-direct {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;)V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

    .line 489
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->listener:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv$MmbRcCallbackListenerSv;

    invoke-virtual {p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V

    .line 494
    return-void

    .line 463
    .end local v0    # "cfconflictmodule":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v1

    .line 465
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 468
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v1

    .line 470
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 473
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArbitrationException;
    :catch_2
    move-exception v1

    .line 475
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 478
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v1

    .line 480
    .local v1, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 481
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3
.end method

.method private requestDataProcess(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 227
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;-><init>()V

    .line 228
    .local v2, "serverinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->checkRequestData(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;)Z

    move-result v0

    .line 231
    .local v0, "canSend":Z
    if-nez v0, :cond_0

    .line 232
    const-string v3, "return reason -> status connect"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->MMBRC_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 242
    :try_start_0
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->status:I

    if-ne v3, v6, :cond_1

    .line 243
    const-string v3, "return reason -> status connect"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    monitor-exit v4

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 250
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->status:I

    .line 251
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    :try_start_2
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;-><init>()V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    .line 257
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->checkCanceled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 258
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->requestServer(Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerInfoSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 283
    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->status:I

    .line 288
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->checkServerResult(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 262
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_3
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/16 v4, 0x63

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 283
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_1
    move-exception v3

    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->status:I

    throw v3

    .line 265
    :catch_1
    move-exception v1

    .line 267
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_4
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 270
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v1

    .line 272
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 275
    .end local v1    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceNetworkException;
    :catch_3
    move-exception v1

    .line 277
    .local v1, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/16 v4, 0x63

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method private requestScheduleTime()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 853
    const-wide/16 v2, 0x0

    .line 856
    .local v2, "schedule":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    .line 858
    .local v1, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v4

    .line 861
    .local v4, "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->getRepeatSchedule(I)J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v2

    .line 891
    const-wide/16 v6, 0x0

    cmp-long v5, v6, v2

    if-lez v5, :cond_0

    .line 892
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

    .line 893
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

    .line 864
    .end local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v4    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :catch_0
    move-exception v0

    .line 866
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v5, "svc:schedule throw ArgumentException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 869
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 871
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v5, "svc:schedule throw StateException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 872
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 874
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v0

    .line 876
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    const-string v5, "svc:schedule throw UnmatchException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 877
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 879
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnmatchException;
    :catch_3
    move-exception v0

    .line 881
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v5, "svc:schedule throw InternalException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 882
    throw v0

    .line 884
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_4
    move-exception v0

    .line 886
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 899
    .end local v0    # "err":Ljava/lang/NullPointerException;
    .restart local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v4    # "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    :cond_0
    return-wide v2
.end method

.method private requestTimeMS()J
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 797
    const-wide/16 v4, 0x0

    .line 800
    .local v4, "timems":J
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    .line 802
    .local v1, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 806
    .local v2, "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-wide v4

    .line 825
    const-wide/16 v6, 0x0

    cmp-long v3, v6, v4

    if-lez v3, :cond_0

    .line 827
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

    .line 828
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

    .line 808
    .end local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .end local v2    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :catch_0
    move-exception v0

    .line 810
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "svc:preference throw IOException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 811
    throw v0

    .line 813
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_1
    move-exception v0

    .line 815
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    const-string v3, "svc:preference throw ServiceFatalException"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 816
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 818
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 820
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 834
    .end local v0    # "err":Ljava/lang/NullPointerException;
    .restart local v1    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .restart local v2    # "prpreferencemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_0
    return-wide v4
.end method

.method private sendRecommendData(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p2, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v6, 0x63

    const/4 v5, 0x0

    .line 681
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    .line 683
    .local v2, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v1

    .line 686
    .local v1, "fccontentsinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-virtual {v1, p1, v3, v4, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->autoReserveDownload(Ljava/util/List;IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 711
    return-void

    .line 692
    .end local v1    # "fccontentsinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    :catch_0
    move-exception v0

    .line 694
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3

    .line 697
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v0

    .line 699
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 700
    throw v0

    .line 702
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 704
    .local v0, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 705
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    invoke-direct {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v3
.end method

.method private stopRequestData()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->serverController:Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcRecommendServerControllerSv;->disconnectedServer()V

    .line 588
    :cond_0
    return-void
.end method


# virtual methods
.method checkCanceled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    .line 1175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    const-string v0, "cancel request server"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(I)V

    throw v0

    .line 1182
    :cond_0
    return-void
.end method

.method public registerSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 13
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v12, 0x0

    .line 733
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isMmbiMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    .line 738
    .local v5, "mainserviceinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v8

    .line 742
    .local v8, "schedulemoduleinstance":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;
    const/16 v0, 0x18

    .line 743
    .local v0, "HOUR_MAX":I
    const/16 v1, 0x3c

    .line 744
    .local v1, "MINUTE_MAX":I
    const/16 v2, 0x3c

    .line 745
    .local v2, "SECOND_MAX":I
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v10, v11}, Ljava/util/Random;-><init>(J)V

    .line 746
    .local v7, "rand":Ljava/util/Random;
    const/16 v10, 0x18

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 747
    .local v4, "hour":I
    const/16 v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 748
    .local v6, "minute":I
    const/16 v10, 0x3c

    invoke-virtual {v7, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 751
    .local v9, "second":I
    const/16 v10, 0x400

    invoke-virtual {v8, v10, v4, v6, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->setRepeatSchedule(IIII)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    .line 779
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

    .line 755
    :catch_0
    move-exception v3

    .line 757
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v10, "svc:schedule throw ArgumentException"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 758
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 760
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catch_1
    move-exception v3

    .line 762
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v10, "svc:schedule throw StateException"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 763
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 765
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v3

    .line 767
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v10, "svc:schedule throw InternalException"

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    throw v3

    .line 770
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v3

    .line 772
    .local v3, "err":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v10

    new-array v11, v12, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v10, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method public requestData(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 148
    if-nez p1, :cond_0

    .line 149
    const-string v3, "param error aCb -> null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;

    const-string v4, "param error aCb -> null"

    invoke-direct {v3, v5, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 156
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestDataBefore(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestDataProcess(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestDataAfter(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 201
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
    :try_start_1
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;->getResultCode()I

    move-result v2

    .line 165
    .local v2, "resultcode":I
    packed-switch v2, :pswitch_data_0

    .line 192
    :goto_0
    :pswitch_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
    .end local v2    # "resultcode":I
    :catchall_0
    move-exception v3

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestDataAfter(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    throw v3

    .line 174
    .restart local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcException;
    .restart local v2    # "resultcode":I
    :pswitch_1
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->registerScheduleOneLimit()V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 176
    :catch_1
    move-exception v1

    .line 178
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 181
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catch_2
    move-exception v1

    .line 183
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 165
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
