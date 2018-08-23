.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;
.source "MmbCaCasDrmPhMetaSearcherSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmPhHybridSearcherSv"
.end annotation


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;IZ)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .param p2, "aResultSize"    # I
    .param p3, "aHasUnknownPuids"    # Z

    .prologue
    .line 154
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    invoke-direct {v0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;)V

    .line 161
    return-void
.end method


# virtual methods
.method protected searchImpl()V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;->searchBroadcastPurchaseInfo()V

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;->result:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->mmbUnknownMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;->searchSavedPurchaseInfo()V

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;->searchSavedLicenseInfo()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmPhHybridSearcherSv;->result:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearchResultSv;->isSavedDbError:Z

    .line 196
    const-string v1, "Failed to search SavedDB."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
