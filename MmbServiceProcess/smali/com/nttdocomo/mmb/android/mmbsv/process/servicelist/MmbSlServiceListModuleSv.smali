.class public Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;
.source "MmbSlServiceListModuleSv.java"


# instance fields
.field private databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwModuleSv;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    .line 81
    return-void
.end method

.method private checkBroadcasterData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aBroadcasterData":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;>;"
    const/4 v3, 0x0

    .line 379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 381
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    iget-short v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    if-gtz v1, :cond_0

    .line 382
    const-string v1, "servicelist parameter mmbBroadcasterId error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 386
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    const-string v2, ""

    iput-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    .line 391
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    if-nez v1, :cond_2

    .line 392
    const-string v1, "servicelist parameter mmbServiceDataList error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 397
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->checkServiceData(Ljava/util/List;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 403
    :cond_3
    return-void
.end method

.method private checkServiceData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aServiceData":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    const/4 v3, 0x0

    .line 421
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 423
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    if-gtz v1, :cond_0

    .line 424
    const-string v1, "servicelist parameter mmbServiceId error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 428
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    iget-short v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    if-gtz v1, :cond_1

    .line 429
    const-string v1, "servicelist parameter mmbServiceType error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 433
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 435
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    const-string v2, ""

    iput-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 438
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 440
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    const-string v2, ""

    iput-object v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 443
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    if-gez v1, :cond_4

    .line 444
    const-string v1, "servicelist parameter mmbTsId error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 421
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_5
    return-void
.end method

.method private checkServiceListData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    .locals 2
    .param p1, "aServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .prologue
    const/4 v1, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 335
    const-string v0, "servicelist parameter aServiceList error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 339
    :cond_0
    iget-short v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    if-gtz v0, :cond_1

    .line 340
    const-string v0, "servicelist parameter mmbNetworkId error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 344
    :cond_1
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    const-string v0, ""

    iput-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    .line 349
    :cond_2
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    if-nez v0, :cond_3

    .line 350
    const-string v0, "servicelist parameter mmbBroadcasterDataList error"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 355
    :cond_3
    iget-object v0, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->checkBroadcasterData(Ljava/util/List;)V

    .line 360
    return-void
.end method

.method private saveServiceListToDatabase(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    .locals 11
    .param p1, "aServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .prologue
    const/4 v10, 0x0

    .line 539
    if-nez p1, :cond_0

    .line 540
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v9

    .line 544
    :cond_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->deleteNetworkData()V

    .line 545
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->deleteBroadcasterData()V

    .line 546
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->deleteServiceData()V

    .line 549
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;-><init>()V

    .line 552
    .local v5, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    iget-short v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    iput-short v9, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkId:S

    .line 555
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    iput-object v9, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;

    .line 558
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v9, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->saveNetworkData(Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;)V

    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "broadcastercount":I
    const/4 v6, 0x0

    .line 565
    .local v6, "servicecount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 568
    iget-object v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    .line 572
    .local v2, "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;-><init>()V

    .line 575
    .local v1, "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    iget-short v9, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    iput-short v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->networkId:S

    .line 576
    iget-short v9, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    iput-short v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterId:S

    .line 579
    iget-object v9, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    iput-object v9, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;

    .line 582
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v9, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->saveBroadCasterData(Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;)V

    .line 585
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v9, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    .line 588
    iget-object v9, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    .line 592
    .local v8, "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;-><init>()V

    .line 595
    .local v7, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    iget-short v9, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    iput-short v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->broadcasterId:S

    .line 596
    iget v9, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    iput v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceId:I

    .line 597
    iget-short v9, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    iput-short v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceType:S

    .line 598
    iget-object v9, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    iput-object v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    .line 599
    iget-object v9, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    iput-object v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;

    .line 600
    iget v9, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    iput v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->transportStreamId:I

    .line 603
    iget-boolean v9, v8, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    if-eqz v9, :cond_2

    .line 605
    const/4 v9, 0x1

    iput v9, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    .line 612
    :goto_2
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v9, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->saveServiceData(Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;)V

    .line 615
    const/4 v7, 0x0

    .line 618
    add-int/lit8 v6, v6, 0x1

    .line 619
    const/high16 v9, 0x10000

    if-ne v9, v6, :cond_3

    .line 621
    const-string v9, "servicedata rimit over"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    .end local v1    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .end local v2    # "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v4    # "j":I
    .end local v7    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .end local v8    # "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_1
    :goto_3
    return-void

    .line 608
    .restart local v1    # "broadcasterdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v2    # "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .restart local v4    # "j":I
    .restart local v7    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .restart local v8    # "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_2
    iput v10, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    goto :goto_2

    .line 585
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 626
    .end local v7    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .end local v8    # "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :cond_4
    const/4 v1, 0x0

    .line 629
    add-int/lit8 v0, v0, 0x1

    .line 630
    const/16 v9, 0xff

    if-ne v9, v0, :cond_5

    .line 632
    const-string v9, "broadcasterdata rimit over"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 565
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public declared-synchronized cleanupModule()V
    .locals 1

    .prologue
    .line 142
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->closeManager()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getBroadcasterName(S)Ljava/lang/String;
    .locals 7
    .param p1, "aBroadcasterId"    # S

    .prologue
    .line 942
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 943
    :try_start_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 948
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getBroadcasterName(S)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 952
    .local v0, "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    const/4 v1, 0x0

    .line 955
    .local v1, "broadcastername":Ljava/lang/String;
    if-nez v0, :cond_1

    move-object v2, v1

    .line 964
    .end local v1    # "broadcastername":Ljava/lang/String;
    .local v2, "broadcastername":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v2

    .line 959
    .end local v2    # "broadcastername":Ljava/lang/String;
    .restart local v1    # "broadcastername":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v1

    .line 964
    .end local v1    # "broadcastername":Ljava/lang/String;
    .restart local v2    # "broadcastername":Ljava/lang/String;
    goto :goto_0

    .line 966
    .end local v0    # "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .end local v2    # "broadcastername":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 970
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 971
    throw v3
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 972
    :catch_1
    move-exception v4

    .line 974
    .local v4, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v5, "initDataBase retry error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 975
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 977
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v4    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v3

    .line 979
    .local v3, "err":Ljava/lang/NullPointerException;
    const-string v5, "get instance error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized getNetworkName(S)Ljava/lang/String;
    .locals 7
    .param p1, "aNetworkId"    # S

    .prologue
    .line 888
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 889
    :try_start_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 894
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getNetworkName(S)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 897
    .local v2, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    const/4 v3, 0x0

    .line 899
    .local v3, "networkname":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v4, v3

    .line 908
    .end local v3    # "networkname":Ljava/lang/String;
    .local v4, "networkname":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 903
    .end local v4    # "networkname":Ljava/lang/String;
    .restart local v3    # "networkname":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .line 908
    .end local v3    # "networkname":Ljava/lang/String;
    .restart local v4    # "networkname":Ljava/lang/String;
    goto :goto_0

    .line 910
    .end local v2    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .end local v4    # "networkname":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 914
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 915
    throw v0
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 916
    :catch_1
    move-exception v1

    .line 917
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v5, "initDataBase retry error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 918
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 920
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 922
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v5, "get instance error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getServiceList(S)Ljava/util/List;
    .locals 9
    .param p1, "aBroadcasterId"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(S)",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 799
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v3, "servicelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    if-gtz p1, :cond_0

    .line 803
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .end local v3    # "servicelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 809
    .restart local v3    # "servicelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v7, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getServiceDataSelect(S)Ljava/util/List;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 813
    .local v5, "servicelistdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    if-nez v5, :cond_1

    .line 815
    const/4 v3, 0x0

    move-object v4, v3

    .line 870
    .end local v3    # "servicelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    .local v4, "servicelist":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    :goto_0
    monitor-exit p0

    return-object v4

    .line 820
    .end local v4    # "servicelist":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    .restart local v3    # "servicelist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 823
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;-><init>()V

    .line 826
    .local v6, "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceId:I

    iput v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    .line 827
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    iget-short v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceType:S

    iput-short v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    .line 828
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    iput-object v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 829
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;

    iput-object v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 830
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->transportStreamId:I

    iput v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    .line 833
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    if-ne v8, v7, :cond_2

    .line 836
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    .line 844
    :goto_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 840
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 849
    .end local v2    # "i":I
    .end local v5    # "servicelistdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .end local v6    # "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :catch_0
    move-exception v0

    .line 853
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 854
    throw v0
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 855
    :catch_1
    move-exception v1

    .line 858
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v7, "initDataBase retry error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7

    .line 861
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 863
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v7, "get instance error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 864
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "err":Ljava/lang/NullPointerException;
    .restart local v2    # "i":I
    .restart local v5    # "servicelistdata":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :cond_3
    move-object v4, v3

    .line 870
    .restart local v4    # "servicelist":Ljava/util/ArrayList;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    goto :goto_0
.end method

.method public declared-synchronized getServiceListAll()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .locals 15

    .prologue
    .line 659
    monitor-enter p0

    :try_start_0
    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    invoke-direct {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .local v10, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :try_start_1
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getNetworkDataAll()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 666
    .local v7, "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    if-nez v7, :cond_0

    .line 668
    const/4 v10, 0x0

    move-object v11, v10

    .line 778
    .end local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .local v11, "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :goto_0
    monitor-exit p0

    return-object v11

    .line 673
    .end local v11    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .restart local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_0
    :try_start_2
    iget-short v13, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkId:S

    iput-short v13, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkId:S

    .line 674
    iget-object v13, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;->networkName:Ljava/lang/String;

    iput-object v13, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbNetworkName:Ljava/lang/String;

    .line 675
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    .line 678
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getBroadcasterDataAll()Ljava/util/List;

    move-result-object v1

    .line 682
    .local v1, "broadcasterdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    if-nez v1, :cond_1

    .line 684
    const/4 v10, 0x0

    move-object v11, v10

    .line 685
    .end local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .restart local v11    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    goto :goto_0

    .line 689
    .end local v11    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .restart local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    .line 692
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;

    .line 695
    .local v0, "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;-><init>()V

    .line 698
    .local v2, "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    iget-short v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterId:S

    iput-short v13, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    .line 699
    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;->broadcasterName:Ljava/lang/String;

    iput-object v13, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterName:Ljava/lang/String;

    .line 700
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    .line 703
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    iget-short v14, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbBroadcasterId:S

    invoke-virtual {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getServiceDataSelect(S)Ljava/util/List;

    move-result-object v9

    .line 707
    .local v9, "servicedatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    if-nez v9, :cond_2

    .line 709
    const/4 v10, 0x0

    move-object v11, v10

    .line 710
    .end local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .restart local v11    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    goto :goto_0

    .line 714
    .end local v11    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .restart local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 717
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;

    .line 720
    .local v8, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    new-instance v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;

    invoke-direct {v12}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;-><init>()V

    .line 723
    .local v12, "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    iget v13, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceId:I

    iput v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceId:I

    .line 724
    iget-short v13, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceType:S

    iput-short v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceType:S

    .line 725
    iget-object v13, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;

    iput-object v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceName:Ljava/lang/String;

    .line 726
    iget-object v13, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;

    iput-object v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbServiceProviderName:Ljava/lang/String;

    .line 727
    iget v13, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->transportStreamId:I

    iput v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbTsId:I

    .line 730
    const/4 v13, 0x1

    iget v14, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->partialReception:I

    if-ne v13, v14, :cond_3

    .line 733
    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z

    .line 742
    :goto_3
    iget-object v13, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;->mmbServiceDataList:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 738
    :cond_3
    const/4 v13, 0x0

    iput-boolean v13, v12, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;->mmbPartialReception:Z
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 754
    .end local v0    # "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .end local v1    # "broadcasterdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .end local v2    # "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .end local v8    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .end local v9    # "servicedatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .end local v12    # "serviceworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;
    :catch_0
    move-exception v3

    .line 758
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 759
    throw v3
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    :catch_1
    move-exception v4

    .line 764
    .local v4, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v13, "initDataBase retry error"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 659
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v4    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    .end local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .line 749
    .restart local v0    # "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .restart local v1    # "broadcasterdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v2    # "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .restart local v5    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .restart local v9    # "servicedatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    .restart local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    :cond_4
    :try_start_5
    iget-object v13, v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;->mmbBroadcasterDataList:Ljava/util/List;

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 689
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 768
    .end local v0    # "broadcastdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;
    .end local v1    # "broadcasterdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .end local v2    # "broadcasterworkdata":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiBroadcasterDataSv;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    .end local v9    # "servicedatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;>;"
    :catch_2
    move-exception v3

    .line 770
    .local v3, "err":Ljava/lang/NullPointerException;
    :try_start_6
    const-string v13, "get instance error"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    new-instance v13, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v13}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v3    # "err":Ljava/lang/NullPointerException;
    .restart local v1    # "broadcasterdatalist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbBroadcasterDataBaseSv;>;"
    .restart local v5    # "i":I
    .restart local v7    # "networkdata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbNetworkDataBaseSv;
    :cond_5
    move-object v11, v10

    .line 778
    .end local v10    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .restart local v11    # "servicelist":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    goto/16 :goto_0
.end method

.method declared-synchronized getServiceName(I)Ljava/lang/String;
    .locals 7
    .param p1, "aServiceId"    # I

    .prologue
    .line 999
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 1000
    :try_start_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1005
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getServiceProviderName(I)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1008
    .local v2, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    const/4 v3, 0x0

    .line 1011
    .local v3, "servicename":Ljava/lang/String;
    if-nez v2, :cond_1

    move-object v4, v3

    .line 1020
    .end local v3    # "servicename":Ljava/lang/String;
    .local v4, "servicename":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v4

    .line 1015
    .end local v4    # "servicename":Ljava/lang/String;
    .restart local v3    # "servicename":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceName:Ljava/lang/String;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v4, v3

    .line 1020
    .end local v3    # "servicename":Ljava/lang/String;
    .restart local v4    # "servicename":Ljava/lang/String;
    goto :goto_0

    .line 1022
    .end local v2    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    .end local v4    # "servicename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1026
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 1027
    throw v0
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1028
    :catch_1
    move-exception v1

    .line 1030
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v5, "initDataBase retry error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1031
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 1034
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 1036
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v5, "get instance error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1037
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method declared-synchronized getServiceProviderName(I)Ljava/lang/String;
    .locals 7
    .param p1, "aServiceId"    # I

    .prologue
    .line 1056
    monitor-enter p0

    if-gtz p1, :cond_0

    .line 1057
    :try_start_0
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1063
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getServiceProviderName(I)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1066
    .local v4, "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    const/4 v2, 0x0

    .line 1069
    .local v2, "providername":Ljava/lang/String;
    if-nez v4, :cond_1

    move-object v3, v2

    .line 1078
    .end local v2    # "providername":Ljava/lang/String;
    .local v3, "providername":Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-object v3

    .line 1073
    .end local v3    # "providername":Ljava/lang/String;
    .restart local v2    # "providername":Ljava/lang/String;
    :cond_1
    :try_start_2
    iget-object v2, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;->serviceProviderName:Ljava/lang/String;
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .line 1078
    .end local v2    # "providername":Ljava/lang/String;
    .restart local v3    # "providername":Ljava/lang/String;
    goto :goto_0

    .line 1080
    .end local v3    # "providername":Ljava/lang/String;
    .end local v4    # "servicedata":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv$MmbServiceDataBaseSv;
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 1085
    throw v0
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1086
    :catch_1
    move-exception v1

    .line 1088
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_4
    const-string v5, "initDataBase retry error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1089
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5

    .line 1092
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 1094
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v5, "get instance error"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1095
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized getTransportStreamId(I)I
    .locals 5
    .param p1, "aServiceId"    # I

    .prologue
    .line 1112
    monitor-enter p0

    const/4 v2, 0x0

    .line 1115
    .local v2, "tsid":I
    if-gtz p1, :cond_0

    .line 1116
    :try_start_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1122
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getTransportStreamId(I)I
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1144
    monitor-exit p0

    return v2

    .line 1124
    :catch_0
    move-exception v0

    .line 1128
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 1129
    throw v0
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1130
    :catch_1
    move-exception v1

    .line 1132
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_3
    const-string v3, "initDataBase retry error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1133
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3

    .line 1136
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_2
    move-exception v0

    .line 1138
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v3, "get instance error"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1139
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized saveServiceList(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    .locals 4
    .param p1, "aServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->checkServiceListData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V

    .line 174
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->saveServiceListToDatabase(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 179
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :try_start_1
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 180
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 182
    :catch_1
    move-exception v0

    .line 186
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initDataBase()V

    .line 187
    throw v0
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    :catch_2
    move-exception v1

    .line 192
    .local v1, "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_3
    const-string v2, "initDataBase retry error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2

    .line 196
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    .end local v1    # "err2":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_3
    move-exception v0

    .line 198
    .local v0, "err":Ljava/lang/NullPointerException;
    const-string v2, "get instance error"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized startupModule()V
    .locals 3

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->getInstance(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    .line 106
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListModuleSv;->databaseInstance:Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlDataBaseControllerSv;->initController()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "err":Ljava/lang/NullPointerException;
    :try_start_1
    const-string v1, "get instance error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    .end local v0    # "err":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 113
    :catch_1
    move-exception v0

    .line 115
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :try_start_2
    const-string v1, "initcontroller error"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;-><init>()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
