.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MmbCaCasDrmMtLicenseInfoRecordHolderSv"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "aSize"    # I

    .prologue
    .line 1551
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;-><init>(I)V

    .line 1558
    return-void
.end method


# virtual methods
.method public getIssueEndTime()J
    .locals 8

    .prologue
    .line 1739
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 1742
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    if-eqz v2, :cond_0

    const-wide/16 v4, 0x0

    iget-wide v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1743
    iget-wide v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 1750
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 1745
    .end local v0    # "result":J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0    # "result":J
    goto :goto_0
.end method

.method public getIssueStartTime()J
    .locals 5

    .prologue
    .line 1712
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 1715
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    if-eqz v2, :cond_0

    .line 1716
    iget-wide v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    .line 1723
    .local v0, "result":J
    :goto_0
    return-wide v0

    .line 1718
    .end local v0    # "result":J
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .restart local v0    # "result":J
    goto :goto_0
.end method

.method public getLicenseId()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, -0x1000008

    .line 1573
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 1576
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1577
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1578
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    .line 1579
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "Invalid LicenseInformation/LicenseID size. (must be 16)"

    invoke-direct {v0, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1584
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p0, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1585
    throw v0

    .line 1588
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const-string v3, "LicenseInformation/LicenseID doesn\'t exist."

    invoke-direct {v0, v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1592
    .restart local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v3, "[%d] %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object p0, v4, v8

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1593
    throw v0

    .line 1598
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getProgramCrid()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1648
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 1651
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1652
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1664
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 1654
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "LicenseInformation/ProgramCRID/@crid doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1658
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

    .line 1659
    throw v0
.end method

.method public getPurchaseIdRef()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1680
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 1683
    .local v2, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1684
    iget-object v1, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1696
    .local v1, "result":Ljava/lang/String;
    return-object v1

    .line 1686
    .end local v1    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v3, -0x1000008

    const-string v4, "LicenseInformation/PurchaseIdRef doesn\'t exist."

    invoke-direct {v0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1690
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

    .line 1691
    throw v0
.end method

.method public getRtProgramId()I
    .locals 8

    .prologue
    const/16 v6, 0x10

    .line 1618
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getLicenseId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1620
    .local v3, "rtpid":Ljava/lang/String;
    const/16 v4, 0x10

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1632
    .local v2, "result":I
    return v2

    .line 1621
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v4, -0x1000008

    const-string v5, "LicenseInformation/LicenseID format is invalid."

    invoke-direct {v1, v4, v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 1626
    .local v1, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
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

    aput-object p0, v5, v6

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1627
    throw v1
.end method

.method public isIssueAbroadEnabled()Z
    .locals 6

    .prologue
    .line 1773
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->recordMap:Ljava/util/Map;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_ABROADENABLED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    .line 1776
    .local v1, "val":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    if-eqz v1, :cond_0

    iget-wide v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1777
    const/4 v0, 0x1

    .line 1784
    .local v0, "result":Z
    :goto_0
    return v0

    .line 1779
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method
