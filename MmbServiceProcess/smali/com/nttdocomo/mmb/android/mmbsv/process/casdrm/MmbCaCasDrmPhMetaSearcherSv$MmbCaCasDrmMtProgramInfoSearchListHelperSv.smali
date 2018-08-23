.class final Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;
.source "MmbCaCasDrmPhMetaSearcherSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmbCaCasDrmMtProgramInfoSearchListHelperSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv",
        "<",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;",
        ">;"
    }
.end annotation


# static fields
.field private static final instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 921
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    .line 923
    .local v1, "sSrchTarget":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    const/4 v0, 0x2

    new-array v2, v0, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v0, v2, v7

    sget-object v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v0, v2, v8

    .line 929
    .local v2, "sOutputFields":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    sget-object v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 930
    .local v6, "sSrchField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 931
    .local v3, "sSrchExp":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    iput-boolean v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->condition_operator:Z

    .line 932
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    iput-object v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 933
    iget-object v0, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    new-array v7, v7, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    iput-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 935
    const/4 v4, 0x0

    .line 936
    .local v4, "sDictChanges":Z
    const/4 v5, 0x0

    .line 938
    .local v5, "sDictLanguage":Ljava/lang/String;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    .line 941
    return-void
.end method

.method private constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)V
    .locals 0
    .param p1, "aSrchTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aOutputFields"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aSrchExp"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictChanges"    # Z
    .param p5, "aDictLanguage"    # Ljava/lang/String;
    .param p6, "aSrchField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .prologue
    .line 969
    invoke-direct/range {p0 .. p6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)V

    .line 977
    return-void
.end method

.method public static getInstance()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;
    .locals 1

    .prologue
    .line 997
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->instance:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 913
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;

    move-result-object v0

    return-object v0
.end method

.method protected createHolderInstance(I)Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    .locals 1
    .param p1, "aSize"    # I

    .prologue
    .line 1017
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;-><init>(I)V

    .line 1022
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;
    return-object v0
.end method

.method public execute(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "aMetadataModSv"    # Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
        }
    .end annotation

    .prologue
    .line 1050
    .local p2, "aSearchCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;

    monitor-enter v2

    .line 1052
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->setSearchConditionFieldStringValues(Ljava/util/List;)V

    .line 1054
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmPhMetaSearcherSv$MmbCaCasDrmMtProgramInfoSearchListHelperSv;->executeMain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1055
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    monitor-exit v2

    .line 1059
    return-object v0

    .line 1055
    .end local v0    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtProgramInfoRecordHolderSv;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
