.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;
.source "MmbCaCasDrmPhPurchaseHistoryBuilderSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmPhUpdateContractBuilderSv"
.end annotation


# instance fields
.field private authority:Ljava/lang/String;

.field private entityId:B

.field public mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

.field private purchaseId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aEntityId"    # B
    .param p3, "aAuthority"    # Ljava/lang/String;
    .param p4, "aPurchaseId"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;IZ)V

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhReplaceSaverSv;

    invoke-direct {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhReplaceSaverSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;)V

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .line 323
    iput-byte p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->entityId:B

    .line 324
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->authority:Ljava/lang/String;

    .line 325
    iput-object p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->purchaseId:Ljava/lang/String;

    .line 329
    return-void
.end method


# virtual methods
.method public build(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 8
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 336
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 339
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 341
    .local v2, "phDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-direct {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;-><init>()V

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .line 342
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->purchaseId:Ljava/lang/String;

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseId:Ljava/lang/String;

    .line 343
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-byte v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->entityId:B

    iput v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbEntityId:I

    .line 344
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->authority:Ljava/lang/String;

    iput-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbAuthority:Ljava/lang/String;

    .line 345
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-wide v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->currentTime:J

    iput-wide v6, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbUpdateDay:J

    .line 346
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    invoke-virtual {v4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;->search(Ljava/util/List;)V

    .line 350
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;->getResult()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    move-result-object v3

    .line 353
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    iget-object v4, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbPhDaoMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 354
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->getPhDaoList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .line 366
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getCrid2Authority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "cridAuthority":Ljava/lang/String;
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->authority:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 369
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/4 v4, -0x1

    const-string v5, "Authority mismatch."

    invoke-direct {v1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 373
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v4, "[%d] %s (%s, %s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->authority:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-object v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v0    # "cridAuthority":Ljava/lang/String;
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v2    # "phDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 357
    .restart local v2    # "phDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v4, -0x1000008

    const-string v5, "Metadata not found."

    invoke-direct {v1, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 361
    .restart local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v4, "[%d] %s (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->purchaseId:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 378
    .end local v1    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v0    # "cridAuthority":Ljava/lang/String;
    :cond_1
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 383
    return-void
.end method

.method saveDb()V
    .locals 12

    .prologue
    .line 400
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget v10, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .local v10, "puType":I
    packed-switch v10, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 449
    return-void

    .line 406
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmNwHttpClientSv;)V

    .line 408
    .local v1, "licMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    .local v6, "licenseId":Ljava/lang/StringBuilder;
    iget-byte v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->entityId:B

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->mmbPhDao:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbCrid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->currentTime:J

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;->checkAndDeleteInvalidLicense(BLjava/lang/String;JLjava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 411
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;->getResult()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    move-result-object v11

    .line 414
    .local v11, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    iget-object v2, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbLtDaoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    .line 415
    .local v9, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v9, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;->mmbLicenseId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 416
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 444
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "licMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    .end local v6    # "licenseId":Ljava/lang/StringBuilder;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    .end local v9    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    .end local v10    # "puType":I
    .end local v11    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 420
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "licMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    .restart local v6    # "licenseId":Ljava/lang/StringBuilder;
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    .restart local v10    # "puType":I
    .restart local v11    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    :cond_1
    :try_start_2
    iget-object v2, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbLtDaoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 421
    iget-object v2, v11, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbLtDaoList:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 424
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    .end local v11    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->saveToDb()V

    goto :goto_0

    .line 429
    .end local v1    # "licMgr":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
    .end local v6    # "licenseId":Ljava/lang/StringBuilder;
    :pswitch_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->saveToDb()V

    goto :goto_0

    .line 433
    :pswitch_3
    new-instance v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;

    iget-byte v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->entityId:B

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->authority:Ljava/lang/String;

    invoke-direct {v7, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;-><init>(ILjava/lang/String;)V

    .line 435
    .local v7, "ldDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteLicenseDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseDeleteDaoSv;)I

    .line 437
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;->saveToDb()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
