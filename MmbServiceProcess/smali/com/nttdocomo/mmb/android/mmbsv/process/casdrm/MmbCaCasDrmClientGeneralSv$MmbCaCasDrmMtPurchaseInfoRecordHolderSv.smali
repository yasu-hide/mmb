.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmMtPurchaseInfoRecordHolderSv"
.end annotation


# static fields
.field private static final PUI_PURCHASE_TYPE_NAME_NULL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1971
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->PUI_PURCHASE_TYPE_NAME_NULL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "aSize"    # I

    .prologue
    .line 2034
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;-><init>(I)V

    .line 2041
    return-void
.end method


# virtual methods
.method public getCridRef()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2216
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2219
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2220
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2232
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 2222
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "PurchaseInformation/CRIDRef/@crid doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2226
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2227
    throw v0
.end method

.method public getPrice()J
    .locals 8

    .prologue
    .line 2125
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 2128
    .local v1, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    if-eqz v1, :cond_0

    .line 2129
    iget-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 2141
    .local v2, "result":J
    return-wide v2

    .line 2131
    .end local v2    # "result":J
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v4, -0x1000008

    const-string v5, "PurchaseInformation/Price doesn\'t exist."

    invoke-direct {v0, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2135
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v4, "[%d] %s (%s)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2136
    throw v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2093
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2096
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2097
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2109
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 2099
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "PurchaseInformation/@purchaseId doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2103
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2104
    throw v0
.end method

.method public getPurchaseType()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2251
    const/4 v2, 0x0

    .line 2254
    .local v2, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->getPurchaseTypeName()Ljava/lang/String;

    move-result-object v1

    .line 2255
    .local v1, "puTypeName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 2257
    const-string v3, "PurchaseInformation/Purchase/PurchaseType/Name omitted. (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2273
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->getPurchaseTypeHref()Ljava/lang/String;

    move-result-object v0

    .line 2274
    .local v0, "puTypeHref":Ljava/lang/String;
    const-string v3, "single"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2276
    or-int/lit8 v2, v2, 0x1

    .line 2293
    :goto_1
    return v2

    .line 2258
    .end local v0    # "puTypeHref":Ljava/lang/String;
    :cond_0
    const-string v3, "basic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2260
    const/16 v2, 0x100

    goto :goto_0

    .line 2261
    :cond_1
    const-string v3, "premium"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2263
    const/16 v2, 0x200

    goto :goto_0

    .line 2264
    :cond_2
    const-string v3, "free"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2266
    const/16 v2, 0x400

    goto :goto_0

    .line 2269
    :cond_3
    const-string v3, "Unknown PurchaseInformation/Purchase/PurchaseType/Name. (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2277
    .restart local v0    # "puTypeHref":Ljava/lang/String;
    :cond_4
    const-string v3, "pack"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2279
    or-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 2280
    :cond_5
    const-string v3, "subscription"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2282
    or-int/lit8 v2, v2, 0x4

    goto :goto_1

    .line 2285
    :cond_6
    const-string v3, "Unknown PurchaseInformation/Purchase/PurchaseType/@href for premium. (%s)"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getPurchaseTypeHref()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2157
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2160
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2161
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2173
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 2163
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "PurchaseInformation/Purchase/PurchaseType/@href doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2167
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2168
    throw v0
.end method

.method public getPurchaseTypeName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2189
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2192
    .local v1, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2193
    iget-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2200
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2195
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->PUI_PURCHASE_TYPE_NAME_NULL:Ljava/lang/String;

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public isFree()Z
    .locals 6

    .prologue
    .line 2067
    const/4 v0, 0x0

    .line 2069
    .local v0, "result":Z
    const-string v1, "free"

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->getPurchaseTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;->getPrice()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 2071
    :cond_0
    const/4 v0, 0x1

    .line 2077
    :cond_1
    return v0
.end method
