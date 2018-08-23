.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;

.field private static final searchPuid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 1804
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_PURCHASE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 1806
    .local v1, "sSrchTarget":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    const/4 v0, 0x3

    new-array v3, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v0, 0x0

    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v6, v3, v0

    const/4 v0, 0x1

    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PRICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v6, v3, v0

    const/4 v0, 0x2

    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASE_TYPE_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v6, v3, v0

    .line 1813
    .local v3, "sOutputFields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 1814
    .local v2, "sSrchIdField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->searchPuid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 1815
    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PURCHASEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 1816
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->searchPuid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object v0, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 1818
    const/4 v4, 0x0

    .line 1819
    .local v4, "sDictChanges":Z
    const/4 v5, 0x0

    .line 1821
    .local v5, "sDictLanguage":Ljava/lang/String;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;

    .line 1824
    return-void
.end method

.method private constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)V
    .locals 0
    .param p1, "aSrchTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aSrchIdField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p3, "aOutputFields"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aDictChanges"    # Z
    .param p5, "aDictLanguage"    # Ljava/lang/String;

    .prologue
    .line 1845
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchInfoHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)V

    .line 1852
    return-void
.end method

.method public static getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;
    .locals 1

    .prologue
    .line 1869
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1793
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;

    move-result-object v0

    return-object v0
.end method

.method protected createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    .locals 1
    .param p1, "aSize"    # I

    .prologue
    .line 1884
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;-><init>(I)V

    .line 1889
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    return-object v0
.end method

.method public execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    .locals 3
    .param p1, "aContentsModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .param p2, "aSearchPuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1914
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;

    monitor-enter v2

    .line 1916
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->searchPuid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object p2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1918
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->executeMain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;

    .line 1919
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    monitor-exit v2

    .line 1923
    return-object v0

    .line 1919
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    .locals 3
    .param p1, "aMetadataModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .param p2, "aSearchPuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1948
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;

    monitor-enter v2

    .line 1950
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->searchPuid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object p2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1952
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoSearchInfoHelperSv;->executeMain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;

    .line 1953
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    monitor-exit v2

    .line 1957
    return-object v0

    .line 1953
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtPurchaseInfoRecordHolderSv;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
