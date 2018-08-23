.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmMtProgramInfoRecordHolderSv"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aSize"    # I

    .prologue
    .line 2337
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;-><init>(I)V

    .line 2344
    return-void
.end method


# virtual methods
.method public getCrid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2359
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2362
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2363
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2375
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 2365
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "ProgramInformation/@programId doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2369
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

    .line 2370
    throw v0
.end method

.method public getGenreOther()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 2391
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;

    .line 2394
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;->value:[Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;->value:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 2395
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;->value:[Ljava/lang/String;

    .line 2407
    .local v1, "result":[Ljava/lang/String;
    return-object v1

    .line 2397
    .end local v1    # "result":[Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "ProgramInformation/BasicDescription/Genre/@href[@type=\'other\'] doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2401
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

    .line 2402
    throw v0
.end method

.method public getItemCategory()I
    .locals 8

    .prologue
    .line 2422
    const/4 v5, -0x1

    .line 2424
    .local v5, "result":I
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->getGenreOther()[Ljava/lang/String;

    move-result-object v2

    .line 2425
    .local v2, "genreOthers":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 2427
    .local v1, "genreOther":Ljava/lang/String;
    const-string v7, "/ISDBTMMItemCategoryCS/"

    invoke-static {v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmUtilitySv;->getTermIdFromDictionary(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2430
    .local v6, "termId":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 2432
    const-string v7, "FD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2433
    const/4 v5, 0x1

    .line 2444
    .end local v1    # "genreOther":Ljava/lang/String;
    .end local v6    # "termId":Ljava/lang/String;
    :cond_0
    :goto_1
    return v5

    .line 2435
    .restart local v1    # "genreOther":Ljava/lang/String;
    .restart local v6    # "termId":Ljava/lang/String;
    :cond_1
    const-string v7, "RT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2436
    const/4 v5, 0x0

    .line 2437
    goto :goto_1

    .line 2425
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getPeriodAvailabilityEnd()J
    .locals 8

    .prologue
    .line 2460
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_AVAILABILITY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 2463
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    iget-wide v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 2464
    iget-wide v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 2471
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 2466
    .end local v0    # "result":J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0    # "result":J
    goto :goto_0
.end method
