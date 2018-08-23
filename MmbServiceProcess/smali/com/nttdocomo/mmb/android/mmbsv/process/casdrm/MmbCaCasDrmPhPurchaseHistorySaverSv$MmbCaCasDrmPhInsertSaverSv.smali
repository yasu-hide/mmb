.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;
.source "MmbCaCasDrmPhPurchaseHistorySaverSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmPhInsertSaverSv"
.end annotation


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 0
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected deleteExcessPurchaseHistory(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "aPhDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->getPurchaseHistoryCount()I

    move-result v4

    .line 187
    .local v4, "phCnt":I
    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;->service:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getConfiguration(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 190
    .local v7, "phMax":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/2addr v12, v4

    sub-int v1, v12, v7

    .line 191
    .local v1, "excessCnt":I
    if-lez v1, :cond_2

    .line 193
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .line 194
    .local v6, "phListCnt":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 195
    .local v9, "puidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 196
    .local v8, "ppvCnt":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .line 197
    .local v5, "phDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    iget v12, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseType:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 198
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v12, v5, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;->mmbPurchaseId:Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 203
    .end local v5    # "phDao":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;
    :cond_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    new-array v10, v12, [Ljava/lang/String;

    .line 204
    .local v10, "puids":[Ljava/lang/String;
    iget-object v13, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v13, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->queryPurchaseHistoryByPurchaseIdList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 207
    .local v11, "replaceCnt":I
    sub-int v12, v6, v11

    sub-int v3, v12, v8

    .line 208
    .local v3, "insertCnt":I
    add-int v12, v4, v3

    sub-int v0, v12, v7

    .line 214
    .local v0, "exactExcessCnt":I
    if-lez v0, :cond_2

    .line 216
    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v12, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->deleteOverPurchaseHistory(I)I

    .line 225
    .end local v0    # "exactExcessCnt":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "insertCnt":I
    .end local v6    # "phListCnt":I
    .end local v8    # "ppvCnt":I
    .end local v9    # "puidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "puids":[Ljava/lang/String;
    .end local v11    # "replaceCnt":I
    :cond_2
    return-void
.end method

.method public save(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "aPhDaoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;>;"
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;->deleteExcessPurchaseHistory(Ljava/util/List;)V

    .line 145
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv;->save(Ljava/util/List;)V

    .line 149
    return-void
.end method

.method protected saveDb(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)V
    .locals 1
    .param p1, "aDao"    # Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhPurchaseHistorySaverSv$MmbCaCasDrmPhInsertSaverSv;->data:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientDataControlSv;->insertPurchaseHistory(Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmDbPurchaseHistoryDaoSv;)I

    .line 168
    return-void
.end method
