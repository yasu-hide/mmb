.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtGroupInfoRecordHolderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmMtGroupInfoRecordHolderSv"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aSize"    # I

    .prologue
    .line 2494
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;-><init>(I)V

    .line 2501
    return-void
.end method


# virtual methods
.method public getCrid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2516
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtGroupInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2519
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 2520
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2532
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 2522
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "GroupInformation/@groupId doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 2526
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

    .line 2527
    throw v0
.end method

.method public getPeriodDisplayEnd()J
    .locals 8

    .prologue
    .line 2548
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtGroupInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 2551
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    iget-wide v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 2552
    iget-wide v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 2559
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 2554
    .end local v0    # "result":J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0    # "result":J
    goto :goto_0
.end method
