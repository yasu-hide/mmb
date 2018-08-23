.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbSiMetadataControllerSv.java"


# instance fields
.field private confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

.field private levelALayer:I

.field private levelBLayer:I

.field private listenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mwPgInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;",
            ">;"
        }
    .end annotation
.end field

.field private numRunningBLayer:I

.field private stateInfFromAir:Z

.field private stateInfFromNet:Z

.field private svcFcListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 95
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 100
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 105
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    .line 110
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    .line 115
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    .line 120
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    .line 125
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    .line 130
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    .line 140
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    .line 180
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method private assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    .locals 4
    .param p1, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1499
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 1500
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listener unregistered : middle<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1503
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 1511
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1505
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    .line 1509
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1514
    invoke-virtual {v0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->setCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1519
    return-object v0
.end method

.method private checkDatabaseAndNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 3317
    const/4 v3, 0x0

    .line 3320
    .local v3, "ret":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    .line 3321
    .local v0, "casModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkCasdrmInvoked()I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3332
    .end local v0    # "casModule":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->checkDatabaseVersion()I

    move-result v3

    .line 3334
    if-eqz v3, :cond_2

    .line 3336
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.nttdocomo.mmb.android.mmbsv.ACTION_DBVERSION_NOTIFICATION_BROADCAST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3339
    .local v2, "intent":Landroid/content/Intent;
    if-ne v3, v6, :cond_3

    .line 3340
    const-string v4, "type"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3348
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->sendBroadcast(Landroid/content/Intent;)V

    .line 3354
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 3322
    :catch_0
    move-exception v1

    .line 3323
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3324
    iget v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    const/high16 v5, -0x1000000

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 3341
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    if-ne v3, v7, :cond_4

    .line 3342
    const-string v4, "type"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3343
    :cond_4
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 3344
    const-string v4, "type"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .locals 6
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x0

    .line 1373
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;-><init>()V

    .line 1377
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 1380
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    .end local v0    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    invoke-direct {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;-><init>(I)V

    invoke-direct {v0, v3, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1388
    .restart local v0    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    invoke-virtual {v1, v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->registListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwListener;)I

    move-result v2

    .line 1393
    .local v2, "result":I
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 1395
    const-string v3, "middle regist error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1396
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 1397
    :cond_0
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 1399
    const-string v3, "middle parameter error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1400
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v3

    .line 1401
    :cond_1
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 1403
    const-string v3, "middle memory error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1404
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 1405
    :cond_2
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 1407
    const-string v3, "middle other error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1408
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 1409
    :cond_3
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_DB_THRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 1411
    const-string v3, "invalid result : DB is full"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1412
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 1416
    :cond_4
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1418
    const-string v3, "middle other error"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1419
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 1421
    :cond_5
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    return-object v1
.end method

.method private releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V
    .locals 3
    .param p1, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .param p2, "aMetadataListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    .prologue
    .line 1542
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1564
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1548
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collision : middle instance error <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0

    .line 1559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1553
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    .line 1559
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected addConflictCallback(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)V
    .locals 8
    .param p1, "aCallType"    # I
    .param p2, "aStartTime"    # J
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aStateDate"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;
    .param p6, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 3016
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;->add(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3023
    return-void

    .line 3017
    :catch_0
    move-exception v7

    .line 3018
    .local v7, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .locals 5
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1321
    const/4 v1, 0x0

    .line 1324
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    monitor-enter v3

    .line 1329
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1331
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->createFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 1340
    :goto_0
    monitor-exit v3

    .line 1345
    return-object v1

    .line 1334
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object v1, v0

    .line 1335
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1340
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected changeNumRunningBLayer(Z)V
    .locals 1
    .param p1, "aPlusMinus"    # Z

    .prologue
    .line 3152
    if-eqz p1, :cond_0

    .line 3153
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    .line 3160
    :goto_0
    return-void

    .line 3155
    :cond_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    goto :goto_0
.end method

.method public checkDatabaseVersion()I
    .locals 5

    .prologue
    .line 3237
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;->DB_ABNORMAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;

    .line 3239
    .local v2, "ret":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;
    const/4 v1, 0x0

    .line 3241
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 3244
    :try_start_0
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->checkDatabaseVersion()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;

    move-result-object v2

    .line 3245
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;->DB_IN_USE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;

    if-ne v2, v3, :cond_0

    .line 3246
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;->DB_CURRENT:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3254
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 3260
    :goto_0
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwDBCheckResult;->getInt()I

    move-result v3

    return v3

    .line 3248
    :catch_0
    move-exception v0

    .line 3250
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3251
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3254
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v0    # "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method public cleanupModule()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2834
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->cleanupModule()V

    .line 2839
    const/4 v3, 0x0

    .line 2842
    .local v3, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v3

    .line 2848
    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->fallIntoSleep()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2856
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2859
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2860
    .local v2, "listSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 2865
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V

    .line 2860
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2852
    .end local v1    # "i":I
    .end local v2    # "listSize":I
    :catch_0
    move-exception v0

    .line 2853
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2856
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v4

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v4

    .line 2873
    .restart local v1    # "i":I
    .restart local v2    # "listSize":I
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2877
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    .line 2878
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 2879
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    .line 2880
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2881
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    .line 2884
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;->unregisterCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2885
    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    .line 2890
    return-void
.end method

.method public entryContents(Ljava/lang/String;)Z
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3413
    if-nez p1, :cond_0

    .line 3414
    const-string v3, "parameter error : null"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3415
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 3417
    :cond_0
    const/4 v2, 0x1

    .line 3419
    .local v2, "ret":Z
    const/4 v0, 0x0

    .line 3422
    .local v0, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v0

    .line 3428
    invoke-virtual {v0, p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->entryContents(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 3434
    .local v1, "result":I
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 3437
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->OK:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-eq v3, v1, :cond_4

    .line 3439
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_NOT_REGIST:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 3441
    const-string v3, "middle regist error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3442
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 3434
    .end local v1    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3

    .line 3443
    .restart local v1    # "result":I
    :cond_1
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_PARAMETERS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 3445
    const-string v3, "middle parameter error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3446
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v3

    .line 3447
    :cond_2
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_MEMORY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 3449
    const-string v3, "middle memory error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3450
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 3451
    :cond_3
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v1, :cond_5

    .line 3453
    const-string v3, "middle other error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3454
    const/4 v2, 0x0

    .line 3468
    :cond_4
    return v2

    .line 3455
    :cond_5
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->ERROR_DB_THRESHOLD:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    if-ne v3, v1, :cond_6

    .line 3457
    const-string v3, "invalid result : DB is full"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3458
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3

    .line 3461
    :cond_6
    const-string v3, "middle unknown error"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3462
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v3
.end method

.method public gatherMmbSiInfSvByCridFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 579
    const/4 v3, -0x1

    .line 581
    .local v3, "result":I
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    if-ne v4, v5, :cond_0

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v4

    .line 585
    :cond_0
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 588
    const/4 v1, 0x0

    .line 589
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 592
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 593
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 597
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 600
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    invoke-virtual {p0, v4, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getNetService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    move-result-object v2

    .line 602
    .local v2, "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfByCridFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 604
    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 608
    if-eqz v1, :cond_1

    .line 609
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 612
    :cond_1
    if-eqz v1, :cond_2

    .line 614
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 618
    :cond_2
    iput-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 624
    return v3

    .line 604
    .end local v2    # "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 606
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 608
    if-eqz v1, :cond_3

    .line 609
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 612
    :cond_3
    if-eqz v1, :cond_4

    .line 614
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 618
    :cond_4
    iput-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    throw v4
.end method

.method public gatherMmbSiInfSvByFragmentVersionFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aFragmentVersion"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 497
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    if-ne v3, v4, :cond_0

    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v3

    .line 501
    :cond_0
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 508
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 509
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 513
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 516
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {p0, v3, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getNetService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    move-result-object v2

    .line 518
    .local v2, "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfByFragmentVersionFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v0, :cond_1

    .line 522
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 524
    if-eqz v1, :cond_1

    .line 525
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 528
    :cond_1
    if-eqz v1, :cond_2

    .line 530
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 534
    :cond_2
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 540
    return-void

    .line 520
    .end local v2    # "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_3

    .line 522
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 524
    if-eqz v1, :cond_3

    .line 525
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 528
    :cond_3
    if-eqz v1, :cond_4

    .line 530
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 534
    :cond_4
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    throw v3
.end method

.method public gatherMmbSiInfSvByPeriodFromNet(JJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aStartTime"    # J
    .param p3, "aEndTime"    # J
    .param p5, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 413
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    if-ne v2, v3, :cond_0

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 415
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v2

    .line 417
    :cond_0
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 420
    const/4 v7, 0x0

    .line 421
    .local v7, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 424
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v7

    .line 425
    const/4 v2, 0x0

    invoke-direct {p0, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 429
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 432
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    invoke-virtual {p0, v2, v7, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getNetService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    move-result-object v1

    .local v1, "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 434
    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfByPeriodFromNet(JJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    if-eqz v0, :cond_1

    .line 438
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 440
    if-eqz v7, :cond_1

    .line 441
    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 444
    :cond_1
    if-eqz v7, :cond_2

    .line 446
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 450
    :cond_2
    iput-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 456
    return-void

    .line 436
    .end local v1    # "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 438
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 440
    if-eqz v7, :cond_3

    .line 441
    invoke-direct {p0, v7, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 444
    :cond_3
    if-eqz v7, :cond_4

    .line 446
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 450
    :cond_4
    iput-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    throw v2
.end method

.method public gatherMmbSiInfSvFromAir()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 917
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    if-ne v4, v5, :cond_0

    .line 918
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 919
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v4

    .line 921
    :cond_0
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    .line 928
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v3

    .line 929
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v2

    .line 932
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 933
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 936
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 939
    .local v0, "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirA(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 945
    invoke-direct {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 946
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 948
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 950
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 951
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;->onAcquireNotice()V

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 953
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 959
    return-void

    .line 942
    .end local v0    # "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    move-object v5, v4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 945
    invoke-direct {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 946
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 948
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 950
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 951
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;->onAcquireNotice()V

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 953
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v5
.end method

.method gatherMmbSiInfSvFromAir(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 994
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    if-ne v4, v5, :cond_0

    .line 995
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v4

    .line 998
    :cond_0
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 1001
    const/4 v3, 0x0

    .line 1002
    .local v3, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    .line 1005
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v3

    .line 1006
    invoke-direct {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v2

    .line 1009
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 1010
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 1013
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 1016
    .local v0, "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirA(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1019
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 1022
    invoke-direct {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 1023
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1025
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 1027
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 1028
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;->onAcquireNotice()V

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1036
    return-void

    .line 1019
    .end local v0    # "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    move-object v5, v4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 1022
    invoke-direct {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 1023
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1025
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 1027
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1028
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;->onAcquireNotice()V

    .line 1027
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1030
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v5
.end method

.method public gatherMmbSiInfSvFromAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v6, 0x0

    .line 1159
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReceptionAirB(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1161
    const-string v3, "auto reception off"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    :goto_0
    return-void

    .line 1168
    :cond_0
    const/4 v2, 0x0

    .line 1169
    .local v2, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v1, 0x0

    .line 1172
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v2

    .line 1173
    invoke-direct {p0, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v1

    .line 1176
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 1177
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 1180
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v0, v3, v2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 1183
    .local v0, "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1186
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 1189
    invoke-direct {p0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 1190
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .line 1186
    .end local v0    # "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 1189
    invoke-direct {p0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 1190
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method gatherMmbSiInfSvFromNet(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 6
    .param p1, "aGatherType"    # I
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 330
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    if-ne v3, v4, :cond_0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v3

    .line 334
    :cond_0
    iput-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 337
    const/4 v1, 0x0

    .line 338
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 341
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 342
    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 346
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 349
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)V

    .line 352
    .local v2, "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->gatherSiInfFromNet(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 358
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 359
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 362
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    .line 368
    return-void

    .line 355
    .end local v2    # "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 358
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 359
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 362
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromNet:Z

    throw v3
.end method

.method public getDictionary(I)Ljava/lang/String;
    .locals 4
    .param p1, "aDictionaryType"    # I

    .prologue
    .line 1686
    const/4 v2, 0x0

    .line 1687
    .local v2, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1690
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 1693
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1694
    .local v0, "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->getDictionary(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1697
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1703
    return-object v2

    .line 1697
    .end local v0    # "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method public getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aTermId"    # Ljava/lang/String;
    .param p2, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 2385
    const/4 v1, 0x0

    .line 2386
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    .line 2389
    .local v2, "nameTag":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 2392
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2393
    .local v0, "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2396
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2402
    return-object v2

    .line 2396
    .end local v0    # "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method public getDictionaryTermIdFromName(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "aDictionaryType"    # I
    .param p2, "aTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2527
    const/4 v1, 0x0

    .line 2528
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    .line 2531
    .local v2, "termIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 2534
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2535
    .local v0, "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->getDictionaryTermIdFromName(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2538
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2544
    return-object v2

    .line 2538
    .end local v0    # "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method public getFragmentVersion(IJJ)J
    .locals 10
    .param p1, "aContentType"    # I
    .param p2, "aStartTime"    # J
    .param p4, "aEndTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 3186
    const-wide/16 v8, 0x0

    .line 3187
    .local v8, "ret":J
    const/4 v0, 0x0

    .line 3190
    .local v0, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    cmp-long v2, p2, v4

    if-ltz v2, :cond_0

    cmp-long v2, p4, v4

    if-gez v2, :cond_1

    .line 3194
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 3197
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v0

    .line 3200
    :try_start_0
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->linkFragmentVersionType(I)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    move-result-object v1

    .local v1, "type":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    move-wide v2, p2

    move-wide v4, p4

    .line 3201
    invoke-virtual/range {v0 .. v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getFragmentVersion(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;JJ)J
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 3208
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 3214
    .end local v1    # "type":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;
    :goto_0
    return-wide v8

    .line 3202
    :catch_0
    move-exception v6

    .line 3204
    .local v6, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :try_start_1
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3205
    invoke-virtual {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3208
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v6    # "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v2
.end method

.method public getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 2570
    if-nez p1, :cond_0

    .line 2571
    const-string v3, "parameter error : null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2572
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2575
    :cond_0
    const/4 v1, 0x0

    .line 2576
    .local v1, "licenseInfo":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    const/4 v2, 0x0

    .line 2579
    .local v2, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v2

    .line 2585
    invoke-virtual {v2, p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2595
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2601
    :goto_0
    return-object v1

    .line 2589
    :catch_0
    move-exception v0

    .line 2591
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2592
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2595
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v0    # "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method public getLogoImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15
    .param p1, "aUri"    # Ljava/lang/String;

    .prologue
    .line 2015
    if-nez p1, :cond_0

    .line 2016
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v13

    .line 2019
    :cond_0
    const/4 v10, 0x0

    .line 2021
    .local v10, "result":Landroid/graphics/Bitmap;
    const-string v13, "http"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2023
    const/4 v3, 0x0

    .line 2025
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v12, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2026
    .local v12, "url":Ljava/net/URL;
    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 2028
    .local v6, "oc":Ljava/net/URLConnection;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v13

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v8

    .line 2030
    .local v8, "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v13, 0x4

    invoke-virtual {v8, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2035
    .local v1, "connectiontimeout":I
    const/4 v13, 0x5

    invoke-virtual {v8, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 2040
    .local v9, "readtimeout":I
    invoke-virtual {v6, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 2041
    invoke-virtual {v6, v9}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 2044
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 2046
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v5

    .line 2047
    .local v5, "ob":Ljava/lang/Object;
    move-object v0, v5

    check-cast v0, Ljava/io/InputStream;

    move-object v3, v0

    .line 2049
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 2055
    if-eqz v3, :cond_1

    .line 2057
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v1    # "connectiontimeout":I
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v5    # "ob":Ljava/lang/Object;
    .end local v6    # "oc":Ljava/net/URLConnection;
    .end local v8    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v9    # "readtimeout":I
    .end local v12    # "url":Ljava/net/URL;
    :cond_1
    :goto_0
    move-object v11, v10

    .line 2102
    .end local v10    # "result":Landroid/graphics/Bitmap;
    .local v11, "result":Landroid/graphics/Bitmap;
    :goto_1
    return-object v11

    .line 2058
    .end local v11    # "result":Landroid/graphics/Bitmap;
    .restart local v1    # "connectiontimeout":I
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v5    # "ob":Ljava/lang/Object;
    .restart local v6    # "oc":Ljava/net/URLConnection;
    .restart local v8    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .restart local v9    # "readtimeout":I
    .restart local v10    # "result":Landroid/graphics/Bitmap;
    .restart local v12    # "url":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 2059
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2060
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v14, -0x2000008

    invoke-direct {v13, v14, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    .line 2050
    .end local v1    # "connectiontimeout":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "ob":Ljava/lang/Object;
    .end local v6    # "oc":Ljava/net/URLConnection;
    .end local v8    # "preferencemodule":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    .end local v9    # "readtimeout":I
    .end local v12    # "url":Ljava/net/URL;
    :catch_1
    move-exception v2

    .line 2051
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2052
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v14, -0x2000008

    invoke-direct {v13, v14, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2055
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    if-eqz v3, :cond_2

    .line 2057
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2060
    :cond_2
    throw v13

    .line 2058
    :catch_2
    move-exception v2

    .line 2059
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2060
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    const v14, -0x2000008

    invoke-direct {v13, v14, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/Throwable;)V

    throw v13

    .line 2066
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v4, 0x0

    .line 2069
    .local v4, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v13, 0x0

    :try_start_4
    invoke-virtual {p0, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v4

    .line 2075
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getThumbnail(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v7

    .line 2081
    .local v7, "path":Ljava/lang/String;
    if-nez v7, :cond_4

    .line 2095
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    move-object v11, v10

    .end local v10    # "result":Landroid/graphics/Bitmap;
    .restart local v11    # "result":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 2088
    .end local v11    # "result":Landroid/graphics/Bitmap;
    .restart local v10    # "result":Landroid/graphics/Bitmap;
    :cond_4
    :try_start_5
    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 2095
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .line 2089
    .end local v7    # "path":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 2091
    .local v2, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :try_start_6
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2092
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v13

    invoke-virtual {v13}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2095
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v2    # "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :catchall_1
    move-exception v13

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v13
.end method

.method public getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 2245
    if-nez p1, :cond_0

    .line 2246
    const-string v3, "parameter error : null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2247
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2250
    :cond_0
    const/4 v0, 0x0

    .line 2251
    .local v0, "contentDetail":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v2, 0x0

    .line 2254
    .local v2, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v2

    .line 2260
    invoke-virtual {v2, p1, p2, p3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getContentDetail(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2273
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2279
    :goto_0
    return-object v0

    .line 2267
    :catch_0
    move-exception v1

    .line 2269
    .local v1, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :try_start_1
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2270
    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2273
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v1    # "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method protected getNetService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aPgInfoMw"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .param p3, "aMetaState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    .prologue
    .line 3376
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    invoke-direct {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)V

    .line 3381
    .local v0, "ret":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    return-object v0
.end method

.method public getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aDictionaryChange"    # Z
    .param p3, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 2632
    if-nez p1, :cond_0

    .line 2633
    const-string v3, "parameter error : null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2634
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 2637
    :cond_0
    const/4 v2, 0x0

    .line 2638
    .local v2, "purchaseInfo":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/4 v1, 0x0

    .line 2641
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 2648
    invoke-virtual {v1, p1, p2, p3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2658
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2664
    :goto_0
    return-object v2

    .line 2652
    :catch_0
    move-exception v0

    .line 2654
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2655
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2658
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    goto :goto_0

    .end local v0    # "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3
.end method

.method public getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    .locals 2

    .prologue
    .line 2696
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2702
    .local v0, "searchModule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    return-object v0
.end method

.method public initDictionary(I)V
    .locals 3
    .param p1, "aDictionaryType"    # I

    .prologue
    .line 1973
    const/4 v1, 0x0

    .line 1976
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 1979
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1980
    .local v0, "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->initDictionary(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1983
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1989
    return-void

    .line 1983
    .end local v0    # "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v2
.end method

.method public initMmbSiInfSv()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 207
    .local v0, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setRepeatSchedule()V

    .line 212
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 6
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 2953
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2955
    const/4 v0, 0x0

    .line 2957
    .local v0, "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getContentStorage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2964
    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;->mmbFcContent:I

    if-ne v3, v5, :cond_0

    .line 2965
    const/4 v2, 0x0

    .line 2968
    .local v2, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v2

    .line 2974
    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->fallIntoSleep()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2980
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 2989
    .end local v0    # "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    .end local v2    # "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    :cond_0
    :goto_0
    return-void

    .line 2958
    .restart local v0    # "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    :catch_0
    move-exception v1

    .line 2959
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    const-string v3, "%s"

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2960
    throw v1

    .line 2980
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .restart local v2    # "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v3

    .line 2983
    .end local v0    # "contentStorage":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    .end local v2    # "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2984
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->checkDatabaseAndNotification()V

    goto :goto_0
.end method

.method public notifyConnect()V
    .locals 2

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1247
    .local v0, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v0

    .line 1252
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->setUtilization(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1263
    return-void

    .line 1258
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v1
.end method

.method public notifyDisconnect()V
    .locals 2

    .prologue
    .line 1280
    const/4 v0, 0x0

    .line 1283
    .local v0, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v0

    .line 1288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->setUtilization(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1294
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1299
    return-void

    .line 1294
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v1
.end method

.method releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V
    .locals 3
    .param p1, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .prologue
    .line 1446
    if-nez p1, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1450
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    monitor-enter v1

    .line 1454
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    .line 1456
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1470
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1462
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected removeConflictCallback(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "aCallType"    # I
    .param p2, "aObj"    # Ljava/lang/Object;

    .prologue
    .line 3042
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;->remove(ILjava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3049
    .local v1, "ret":Z
    return v1

    .line 3043
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 3044
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method searchMmbSiInfSvByCridFromNet(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    .locals 7
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;"
        }
    .end annotation

    .prologue
    .local p1, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 724
    const/4 v3, 0x0

    .line 725
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    const/4 v1, 0x0

    .line 726
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 729
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 730
    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v0

    .line 733
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 734
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 737
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    invoke-direct {v2, v4, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)V

    .line 740
    .local v2, "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->searchSiInfByCridFromNet(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 743
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 746
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 747
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 753
    return-object v3

    .line 743
    .end local v2    # "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 746
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 747
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v4
.end method

.method searchMmbSiInfSvByFreewordFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    .locals 7
    .param p1, "aFreeword"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 853
    const/4 v3, 0x0

    .line 854
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 855
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v0, 0x0

    .line 858
    .local v0, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 859
    invoke-direct {p0, v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v0

    .line 862
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 863
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 866
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    invoke-direct {v2, v4, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;)V

    .line 869
    .local v2, "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    invoke-virtual {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;->searchSiInfByFreewordFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 872
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 875
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 876
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 882
    return-object v3

    .line 872
    .end local v2    # "netService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectNetSv;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 875
    invoke-direct {p0, v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 876
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v4
.end method

.method public setMmbSiInfSvReSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 2155
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2156
    .local v0, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setSchedule(Z)V

    .line 2161
    return-void
.end method

.method public setMmbSiInfSvReScheduleAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 1221
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 1222
    .local v0, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setScheduleAirB(Ljava/lang/String;)Z

    .line 1227
    return-void
.end method

.method public setMmbSiInfSvSetSchedule()V
    .locals 2

    .prologue
    .line 2126
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 2127
    .local v0, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataScheduleSv;->setRepeatSchedule()V

    .line 2132
    return-void
.end method

.method public setMmbSiInfSvUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1074
    const-string v4, "auto reception off"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    :goto_0
    return-void

    .line 1082
    :cond_0
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    if-ne v4, v5, :cond_1

    .line 1083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1084
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/InvalidStateException;-><init>()V

    throw v4

    .line 1086
    :cond_1
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 1089
    const/4 v3, 0x0

    .line 1090
    .local v3, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    .line 1093
    .local v2, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v3

    .line 1094
    invoke-direct {p0, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;

    move-result-object v2

    .line 1097
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setMetaDataState(I)V

    .line 1098
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->setPossibleRetry(Z)V

    .line 1101
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v0, v4, v3, v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 1104
    .local v0, "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;->gatherSiInfFromAirA(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1107
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 1110
    invoke-direct {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 1111
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1113
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 1115
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1116
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;->onAcquireNotice()V

    .line 1115
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1118
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1107
    .end local v0    # "airService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectAirSv;
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    move-object v5, v4

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;->getStateData()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;->initialize(I)V

    .line 1110
    invoke-direct {p0, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseListener(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataListenerSv;)V

    .line 1111
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1113
    iput-boolean v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->stateInfFromAir:Z

    .line 1115
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1116
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;->onAcquireNotice()V

    .line 1115
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1118
    :cond_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    throw v5
.end method

.method public setMmbSiMetadataEventListener(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;)V
    .locals 2
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    .prologue
    .line 2910
    if-eqz p1, :cond_0

    .line 2911
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 2913
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataEventListenerSv;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2927
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 2911
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2921
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected setNotificationALayer(IZ)I
    .locals 8
    .param p1, "aLevel"    # I
    .param p2, "aOnOff"    # Z

    .prologue
    const v1, 0x10001

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3069
    const/4 v3, 0x0

    .line 3070
    .local v3, "ret":I
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    .line 3072
    if-eqz p2, :cond_1

    .line 3073
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    if-lt v0, v2, :cond_0

    .line 3074
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    .line 3078
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    move v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 3093
    :goto_1
    return v3

    .line 3076
    :cond_0
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    goto :goto_0

    .line 3082
    :cond_1
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    if-ne v7, v0, :cond_2

    .line 3083
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    move v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 3087
    :cond_2
    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    goto :goto_1
.end method

.method protected setNotificationBLayer(IZ)I
    .locals 8
    .param p1, "aLevel"    # I
    .param p2, "aOnOff"    # Z

    .prologue
    const v1, 0x10001

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 3111
    const/4 v3, 0x0

    .line 3112
    .local v3, "ret":I
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    .line 3114
    if-eqz p2, :cond_1

    .line 3115
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    if-lt v0, v2, :cond_0

    .line 3116
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    .line 3120
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    move v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 3135
    :goto_1
    return v3

    .line 3118
    :cond_0
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    goto :goto_0

    .line 3124
    :cond_1
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    if-ne v7, v0, :cond_2

    const/4 v0, 0x1

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    if-le v0, v2, :cond_2

    .line 3125
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    move v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 3129
    :cond_2
    iput v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    goto :goto_1
.end method

.method public setupModule()V
    .locals 2

    .prologue
    .line 2804
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->setupModule()V

    .line 2811
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;->registerCallback(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)Z

    .line 2814
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->checkDatabaseAndNotification()V

    .line 2819
    return-void
.end method

.method public startupModule()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2760
    invoke-super {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;->startupModule()V

    .line 2765
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    .line 2766
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->listenerMap:Ljava/util/HashMap;

    .line 2767
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->svcFcListenerList:Ljava/util/List;

    .line 2771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 2773
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->createFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 2774
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->mwPgInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2771
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2781
    .end local v1    # "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    :cond_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;-><init>()V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->confCallback:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataCallbackSv;

    .line 2784
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelALayer:I

    .line 2785
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->levelBLayer:I

    .line 2786
    const/4 v2, 0x0

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->numRunningBLayer:I

    .line 2791
    return-void
.end method

.method public updateDatabaseVersion()I
    .locals 3

    .prologue
    .line 3281
    const/4 v1, 0x0

    .line 3282
    .local v1, "ret":I
    const/4 v0, 0x0

    .line 3284
    .local v0, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v0

    .line 3286
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->updateDatabaseVersion()I

    move-result v1

    .line 3289
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 3294
    return v1
.end method

.method public updateDictionary(ILjava/lang/String;)V
    .locals 4
    .param p1, "aDictionaryType"    # I
    .param p2, "aPath"    # Ljava/lang/String;

    .prologue
    .line 1830
    if-nez p2, :cond_0

    .line 1831
    const-string v2, "parameter error : null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1832
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1835
    :cond_0
    const/4 v1, 0x0

    .line 1838
    .local v1, "mwPgInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    .line 1841
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1842
    .local v0, "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;->updateDictionary(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1845
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1851
    return-void

    .line 1845
    .end local v0    # "dictionary":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataDictionarySv;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    throw v2
.end method

.method public updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    const/4 v3, 0x0

    .line 2735
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataStateSv;I)V

    .line 2737
    .local v0, "baseService":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;
    invoke-virtual {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataConnectBaseSv;->updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2742
    return-void
.end method
