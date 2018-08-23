.class Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtContentSv;
.source "MmbCaCasDrmClientLicenseManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmbCaCasDrmMtContentInfoSv"
.end annotation


# instance fields
.field private licenseHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V
    .locals 0
    .param p1, "aContentsModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .param p2, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 1512
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtContentSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)V

    .line 1519
    return-void
.end method


# virtual methods
.method public isLicenseIssueAbroadEnabled()Z
    .locals 4

    .prologue
    .line 1584
    const/4 v2, 0x0

    .line 1586
    .local v2, "result":Z
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->licenseHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    .line 1587
    .local v0, "holder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->isIssueAbroadEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1588
    const/4 v2, 0x1

    .line 1595
    .end local v0    # "holder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    :cond_1
    return v2
.end method

.method public loadLicenseInfo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1542
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

    move-result-object v1

    .line 1545
    .local v1, "liiSearchListHelper":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->contentsModSv:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->crid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->licenseHolders:Ljava/util/ArrayList;

    .line 1547
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->licenseHolders:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1549
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;

    const v2, -0x1000008

    const-string v3, "LicenseInformation not found."

    invoke-direct {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;-><init>(ILjava/lang/String;)V

    .line 1553
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const-string v2, "[%d] %s (%s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->mmbResultCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->crid:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1554
    throw v0

    .line 1560
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :cond_0
    return-void
.end method

.method public searchPurchaseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "aLicenseId"    # Ljava/lang/String;

    .prologue
    .line 1614
    const/4 v2, 0x0

    .line 1619
    .local v2, "result":Ljava/lang/String;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtContentInfoSv;->licenseHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    .line 1620
    .local v0, "holder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getLicenseId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1621
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;->getPurchaseIdRef()Ljava/lang/String;

    move-result-object v2

    .line 1628
    .end local v0    # "holder":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    :cond_1
    return-object v2
.end method
