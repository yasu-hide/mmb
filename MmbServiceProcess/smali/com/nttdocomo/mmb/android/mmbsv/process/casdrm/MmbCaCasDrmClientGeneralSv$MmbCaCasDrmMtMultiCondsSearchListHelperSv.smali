.class abstract Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv;
.source "MmbCaCasDrmClientGeneralSv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "MmbCaCasDrmMtMultiCondsSearchListHelperSv"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtAbstractRecordHolderSv;",
        ">",
        "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private srchCondsTmpl:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)V
    .locals 1
    .param p1, "aSrchTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aOutputFields"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aSrchExp"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictChanges"    # Z
    .param p5, "aDictLanguage"    # Ljava/lang/String;
    .param p6, "aSrchField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .prologue
    .line 1220
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv<TV;>;"
    invoke-direct/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtSearchListHelperSv;-><init>(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)V

    .line 1225
    invoke-direct {p0, p6}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;->createCondsTemplate(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;->srchCondsTmpl:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1229
    return-void
.end method

.method private createCondsTemplate(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .locals 7
    .param p1, "aFieldIndex"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv<TV;>;"
    const/16 v6, 0x14

    .line 1249
    new-array v0, v6, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1250
    .local v0, "condsTmpl":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1251
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 1252
    .local v3, "srchFld":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    iput-object p1, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 1253
    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 1254
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 1255
    .local v2, "srchCond":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    iput-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 1256
    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 1258
    aput-object v2, v0, v1

    .line 1250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1263
    .end local v2    # "srchCond":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .end local v3    # "srchFld":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected final setSearchConditionFieldStringValues(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1282
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;, "Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv<TV;>;"
    .local p1, "aValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;->srchExp:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    iget-object v0, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 1283
    .local v0, "condTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1285
    .local v3, "valueLen":I
    iget-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 1286
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientGeneralSv$MmbCaCasDrmMtMultiCondsSearchListHelperSv;->srchCondsTmpl:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    iput-object v4, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1293
    :cond_0
    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1295
    .local v1, "conditions":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 1296
    aget-object v4, v1, v2

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iget-object v4, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 1295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1302
    :cond_1
    return-void
.end method
