.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv;
.source "MmbCaCasDrmClientContractManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv"
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
.field private static final instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

.field private static final searchLicenseId:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2633
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_LICENSE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 2635
    .local v1, "sSrchTarget":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    new-array v2, v9, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PURCHASEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v0, v2, v8

    .line 2639
    .local v2, "sOutputFields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 2640
    .local v3, "sSrchExp":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->searchLicenseId:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    .line 2641
    new-array v6, v9, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 2642
    .local v6, "sSrchConds":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    aput-object v0, v6, v8

    .line 2643
    aget-object v0, v6, v8

    new-instance v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 2644
    aget-object v0, v6, v8

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 2645
    aget-object v0, v6, v8

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->searchLicenseId:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 2646
    aget-object v0, v6, v8

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 2647
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    iput-object v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 2648
    iget-object v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    iput-object v6, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 2650
    const/4 v4, 0x0

    .line 2651
    .local v4, "sDictChanges":Z
    const/4 v5, 0x0

    .line 2653
    .local v5, "sDictLanguage":Ljava/lang/String;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

    .line 2656
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
    .line 2682
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 2689
    return-void
.end method

.method public static getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;
    .locals 1

    .prologue
    .line 2709
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 2623
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    move-result-object v0

    return-object v0
.end method

.method protected createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    .locals 1
    .param p1, "aSize"    # I

    .prologue
    .line 2729
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;-><init>(I)V

    .line 2734
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;
    return-object v0
.end method

.method public execute(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "aContentsModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .param p2, "aSearchLicenseId"    # Ljava/lang/String;
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
    .line 2797
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

    monitor-enter v2

    .line 2799
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->searchLicenseId:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object p2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2801
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->executeMain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2802
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    monitor-exit v2

    .line 2806
    return-object v0

    .line 2802
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "aMetadataModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .param p2, "aSearchLicenseId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;",
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
    .line 2761
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;

    monitor-enter v2

    .line 2763
    :try_start_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->searchLicenseId:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iput-object p2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 2765
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientContractManagerSv$MmbCaCasDrmMtLicenseInfoSearchListByLicenseIdHelper2Sv;->executeMain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2766
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    monitor-exit v2

    .line 2770
    return-object v0

    .line 2766
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtLicenseInfoRecordHolderSv;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
