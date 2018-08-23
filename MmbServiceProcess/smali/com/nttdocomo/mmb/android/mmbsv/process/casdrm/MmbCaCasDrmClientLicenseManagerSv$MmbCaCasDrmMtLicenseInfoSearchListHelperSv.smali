.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv;
.source "MmbCaCasDrmClientLicenseManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmbCaCasDrmMtLicenseInfoSearchListHelperSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

.field private static final searchCrid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1648
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 1650
    .local v1, "sSrchTarget":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    const/4 v0, 0x3

    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_RMPI_ISSUE_ABROADENABLED:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v0, v2, v8

    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v0, v2, v9

    const/4 v0, 0x2

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v7, v2, v0

    .line 1656
    .local v2, "sOutputFields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 1657
    .local v3, "sSrchExp":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->searchCrid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 1658
    new-array v6, v9, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1659
    .local v6, "sSrchConds":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    aput-object v0, v6, v8

    .line 1660
    aget-object v0, v6, v8

    new-instance v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 1661
    aget-object v0, v6, v8

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 1662
    aget-object v0, v6, v8

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->searchCrid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 1663
    aget-object v0, v6, v8

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 1664
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    iput-object v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 1665
    iget-object v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    iput-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1667
    const/4 v4, 0x0

    .line 1668
    .local v4, "sDictChanges":Z
    const/4 v5, 0x0

    .line 1670
    .local v5, "sDictLanguage":Ljava/lang/String;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

    .line 1673
    return-void
.end method

.method private constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V
    .locals 0
    .param p1, "aSrchTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aOutputFields"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aSrchExp"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictChanges"    # Z
    .param p5, "aDictLanguage"    # Ljava/lang/String;

    .prologue
    .line 1694
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 1701
    return-void
.end method

.method public static getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;
    .locals 1

    .prologue
    .line 1718
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 1638
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    move-result-object v0

    return-object v0
.end method

.method protected createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    .locals 1
    .param p1, "aSize"    # I

    .prologue
    .line 1734
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;-><init>(I)V

    .line 1739
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    return-object v0
.end method

.method public execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "aContentsModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .param p2, "aSearchCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1762
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;

    monitor-enter v2

    .line 1764
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->searchCrid:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object p2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1766
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientLicenseManagerSv$MmbCaCasDrmMtLicenseInfoSearchListHelperSv;->executeMain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1767
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    monitor-exit v2

    .line 1771
    return-object v0

    .line 1767
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
