.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;
.super Ljava/lang/Object;
.source "MmbCaCasDrmPhPurchaseHistoryBuilderSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhSavedComplementBuilderSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhBroadcastComplementBuilderSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhComplementBuilderSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhRebuildBuilderSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv$MmbCaCasDrmPhUpdateContractBuilderSv;
    }
.end annotation


# static fields
.field protected static final LOCK:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field protected currentTime:J

.field protected data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

.field protected phSaver:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;

.field protected phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

.field protected service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;)V
    .locals 6
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aPhSearcher"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;
    .param p3, "aPhSaver"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    .line 95
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 96
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    .line 97
    iput-object p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->phSaver:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;

    .line 99
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClockForCasdrm()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->currentTime:J

    .line 100
    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->currentTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 101
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const/high16 v1, -0x1000000

    const-string v2, "Failed to get secure clock."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 105
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s (%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-wide v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->currentTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    throw v0

    .line 111
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    return-void
.end method


# virtual methods
.method public build(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 9
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 128
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->getTargetPhDaoList()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "phDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 174
    :goto_0
    return-void

    .line 140
    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    const/16 v7, 0x28

    invoke-direct {v3, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 143
    .local v3, "phDaoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/lit8 v7, v7, 0x14

    add-int/lit8 v6, v7, 0x1

    .line 144
    .local v6, "workCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 145
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 148
    mul-int/lit8 v4, v1, 0x14

    .line 150
    .local v4, "startIndex":I
    add-int/lit8 v7, v6, -0x1

    if-ge v1, v7, :cond_1

    .line 151
    add-int/lit8 v7, v1, 0x1

    mul-int/lit8 v0, v7, 0x14

    .line 155
    .local v0, "endIndex":I
    :goto_2
    invoke-interface {v2, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 159
    .local v5, "targetPhDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    invoke-virtual {v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;->search(Ljava/util/List;)V

    .line 161
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 164
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->saveToDb()V

    .line 166
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "endIndex":I
    .end local v5    # "targetPhDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .restart local v0    # "endIndex":I
    goto :goto_2

    .line 169
    .end local v0    # "endIndex":I
    .end local v4    # "startIndex":I
    :cond_2
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .end local v1    # "i":I
    .end local v2    # "phDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    .end local v3    # "phDaoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    .end local v6    # "workCount":I
    :catchall_0
    move-exception v7

    sget-object v8, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->LOCK:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v8}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7
.end method

.method protected checkCancelled(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCb"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v1, -0x1000007

    const-string v2, "Cancelled."

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 272
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v1, "[%d] %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 273
    throw v0

    .line 278
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    return-void
.end method

.method protected getTargetPhDaoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method protected insertLicenseTarget(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p1, "aLtDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;

    .line 247
    .local v1, "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertLicenseTarget(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;)I

    goto :goto_0

    .line 252
    .end local v1    # "ltDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbLicenseTargetDaoSv;
    :cond_0
    return-void
.end method

.method protected saveToDb()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->phSearcher:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;->getResult()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    move-result-object v0

    .line 212
    .local v0, "searchResult":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->beginTransaction()V

    .line 215
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->phSaver:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->getPhDaoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;->save(Ljava/util/List;)V

    .line 216
    iget-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbHasUnknownPuids:Z

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->phSaver:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->getUnknownPhDaoList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;->save(Ljava/util/List;)V

    .line 222
    :cond_0
    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbLtDaoList:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->insertLicenseTarget(Ljava/util/List;)V

    .line 224
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->endTransaction()V

    .line 231
    return-void

    .line 226
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistoryBuilderSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->endTransaction()V

    throw v1
.end method
