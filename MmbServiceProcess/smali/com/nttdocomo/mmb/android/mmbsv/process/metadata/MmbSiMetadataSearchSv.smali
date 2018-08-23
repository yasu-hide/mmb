.class public Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
.super Ljava/lang/Object;
.source "MmbSiMetadataSearchSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv$MmbSiAutoDownloadSearchType;
    }
.end annotation


# instance fields
.field private mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

.field private mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;)V
    .locals 1
    .param p1, "aMainService"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .prologue
    const/4 v0, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 94
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 112
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    .line 116
    return-void
.end method

.method private assignFcPgInfoMw()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    .locals 3

    .prologue
    .line 1305
    const/4 v0, 0x0

    .line 1306
    .local v0, "result":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-nez v1, :cond_0

    .line 1307
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    if-eqz v1, :cond_1

    .line 1309
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->assignFcPgInfoMw(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v0

    .line 1319
    :cond_0
    return-object v0

    .line 1311
    :cond_1
    const-string v1, "Impossible error : mainService is null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1
.end method

.method private checkVersion(ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    .locals 9
    .param p1, "aBaseVersion"    # Z
    .param p2, "aMaxVersion"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1228
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;-><init>()V

    .line 1230
    .local v2, "mMwBaseVersion":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    if-eqz p1, :cond_2

    .line 1231
    new-instance v1, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;

    invoke-direct {v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;-><init>()V

    .line 1232
    .local v1, "mMoInfoMw":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    const/4 v3, 0x0

    .line 1239
    .local v3, "mobileVersion":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;->getVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1249
    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1250
    const-string v3, "1.0"

    .line 1254
    :cond_0
    const-string v5, "\\."

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1255
    .local v4, "mobileVersions":[Ljava/lang/String;
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 1258
    array-length v5, v4

    if-ge v5, v8, :cond_1

    .line 1259
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    .line 1282
    .end local v1    # "mMoInfoMw":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    .end local v3    # "mobileVersion":Ljava/lang/String;
    .end local v4    # "mobileVersions":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1243
    .restart local v1    # "mMoInfoMw":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    .restart local v3    # "mobileVersion":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1244
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1245
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1261
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "mobileVersions":[Ljava/lang/String;
    :cond_1
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    goto :goto_0

    .line 1263
    .end local v1    # "mMoInfoMw":Lmmb/android/MmbMoInfoMw/MmbMoInfoMw;
    .end local v3    # "mobileVersion":Ljava/lang/String;
    .end local v4    # "mobileVersions":[Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_4

    .line 1265
    const-string v5, "\\."

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1266
    .restart local v4    # "mobileVersions":[Ljava/lang/String;
    aget-object v5, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    .line 1269
    array-length v5, v4

    if-ge v5, v8, :cond_3

    .line 1270
    const-string v5, "0"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    goto :goto_0

    .line 1272
    :cond_3
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    goto :goto_0

    .line 1276
    .end local v4    # "mobileVersions":[Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V
    .locals 2
    .param p1, "aMwPgInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 1352
    return-void

    .line 1345
    :cond_0
    const-string v0, "Impossible error : mainService is null"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1346
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0
.end method

.method private searchCridFromProgramInformation(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;)Ljava/util/List;
    .locals 19
    .param p1, "aSearchCondition"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 727
    .local v10, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    new-instance v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    .line 728
    .local v7, "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    const/4 v1, 0x0

    iput-boolean v1, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->notOperator:Z

    .line 729
    const/4 v1, 0x1

    new-array v1, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 732
    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 733
    .local v4, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    iput-object v1, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    .line 734
    iput-object v7, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 735
    const/4 v1, 0x0

    iput-object v1, v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 738
    const/4 v1, 0x1

    new-array v3, v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v1, 0x0

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v2, v3, v1

    .line 742
    .local v3, "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v18

    .line 747
    .local v18, "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-nez v18, :cond_1

    .line 779
    :cond_0
    return-object v10

    .line 752
    :cond_1
    move-object/from16 v8, v18

    .local v8, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v8    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v17, v8, v14

    .line 754
    .local v17, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, v17

    iget-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-nez v1, :cond_3

    .line 752
    .end local v14    # "i$":I
    :cond_2
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_0

    .line 757
    :cond_3
    move-object/from16 v0, v17

    iget-object v9, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v9, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_2

    aget-object v12, v9, v13

    .line 759
    .local v12, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v1, v2, :cond_4

    iget-object v1, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    if-nez v1, :cond_5

    .line 757
    :cond_4
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 765
    :cond_5
    iget-object v1, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v1, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v1, v2, :cond_4

    .line 767
    iget-object v1, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v1, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 771
    .end local v3    # "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .end local v4    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .end local v7    # "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    .end local v9    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v12    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v18    # "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catch_0
    move-exception v11

    .line 773
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 774
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v1
.end method


# virtual methods
.method public extSearchClose()V
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extSearchClose()V

    .line 691
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 692
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 702
    return-void

    .line 695
    :cond_0
    const-string v0, "Error : not initialized."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 696
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method public extSearchInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 563
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-eqz v1, :cond_0

    .line 564
    const-string v1, "Error : Already you keep a MW instance."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 568
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->assignFcPgInfoMw()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 575
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extSearchInit()I

    move-result v0

    .line 581
    .local v0, "result":I
    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 586
    return-void
.end method

.method public extSearchList([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 5
    .param p1, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p2, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p3, "aDictionaryChange"    # Z
    .param p4, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 617
    const/4 v2, 0x0

    .line 618
    .local v2, "releaseFlg":Z
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-nez v3, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->assignFcPgInfoMw()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v3

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 621
    const/4 v2, 0x1

    .line 624
    :cond_0
    const/4 v1, 0x0

    .line 634
    .local v1, "record":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v3, p1, p2, p3, p4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->extSearchList([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v1

    .line 639
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->logSearchMethod([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    if-eqz v2, :cond_1

    .line 648
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 649
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 655
    :cond_1
    return-object v1

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 643
    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v3

    invoke-virtual {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method searchAutoDownloadContents(I)Ljava/util/List;
    .locals 12
    .param p1, "aSearchType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 815
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 817
    .local v5, "cridSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    and-int/lit8 v10, p1, 0x2

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 820
    new-instance v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const-string v10, "%force_receive:ON%"

    invoke-direct {v8, v10}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 822
    .local v8, "forceString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 823
    .local v7, "forceField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v10, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 824
    iput-object v8, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 826
    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 827
    .local v6, "forceCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v10, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 828
    iput-object v7, v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 831
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchCridFromProgramInformation(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 834
    .end local v6    # "forceCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .end local v7    # "forceField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v8    # "forceString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    :cond_0
    and-int/lit8 v10, p1, 0x1

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 838
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const-string v10, "%auto_receive:ON%"

    invoke-direct {v2, v10}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 840
    .local v2, "autoString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 841
    .local v1, "autoField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_KEYWORD_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v10, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 842
    iput-object v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 843
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 844
    .local v0, "autoCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 845
    iput-object v1, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 848
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchCridFromProgramInformation(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 851
    .end local v0    # "autoCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .end local v1    # "autoField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v2    # "autoString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 852
    .local v4, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 853
    .local v3, "crid":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    .end local v3    # "crid":Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method public searchClose()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->searchClose()V

    .line 528
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 529
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 539
    return-void

    .line 532
    :cond_0
    const-string v0, "Error : not initialized."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 533
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0
.end method

.method searchDeleteContents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    const-string v4, "%ISDBTMMDeliveryStatusCS/1.7%"

    invoke-direct {v3, v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 881
    .local v3, "genreString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 882
    .local v2, "genreField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v4, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 883
    iput-object v3, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 884
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 885
    .local v1, "genreCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v4, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 886
    iput-object v2, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 889
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchCridFromProgramInformation(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;)Ljava/util/List;

    move-result-object v0

    .line 894
    .local v0, "cridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p3, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 386
    const/4 v8, 0x0

    .line 387
    .local v8, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v8

    .line 391
    return-object v8
.end method

.method public searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;ZLjava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 12
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aField"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .param p3, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;
    .param p6, "aBaseVersion"    # Z
    .param p7, "aMaxVersion"    # Ljava/lang/String;

    .prologue
    .line 451
    new-instance v6, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    invoke-direct {v6}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;-><init>()V

    .line 452
    .local v6, "mMwBaseVersion":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    move/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->checkVersion(ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    move-result-object v6

    .line 454
    const/4 v11, 0x0

    .line 455
    .local v11, "releaseFlg":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-nez v2, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->assignFcPgInfoMw()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 458
    const/4 v11, 0x1

    .line 461
    :cond_0
    const/4 v10, 0x0

    .line 471
    .local v10, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->searchInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 485
    :goto_0
    if-eqz v11, :cond_1

    .line 487
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 488
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 494
    :cond_1
    return-object v10

    .line 479
    :catch_0
    move-exception v9

    .line 481
    .local v9, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 482
    invoke-virtual {v9}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method public searchInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-eqz v1, :cond_0

    .line 140
    const-string v1, "Error : Already you keep a MW instance."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 144
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->assignFcPgInfoMw()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 151
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-virtual {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->searchInit()I

    move-result v0

    .line 157
    .local v0, "result":I
    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    .line 162
    return-void
.end method

.method public searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 9
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v8, 0x0

    .line 220
    .local v8, "record":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v8

    .line 224
    return-object v8
.end method

.method public searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 11
    .param p1, "aTarget"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;
    .param p2, "aOutput"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .param p3, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .param p4, "aDictionaryChange"    # Z
    .param p5, "aLanguage"    # Ljava/lang/String;
    .param p6, "aBaseVersion"    # Z
    .param p7, "aMaxVersion"    # Ljava/lang/String;

    .prologue
    .line 286
    if-eqz p3, :cond_0

    .line 287
    move/from16 v0, p6

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->checkVersion(ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    move-result-object v2

    iput-object v2, p3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->baseVersion:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    .line 290
    :cond_0
    const/4 v10, 0x0

    .line 291
    .local v10, "releaseFlg":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    if-nez v2, :cond_1

    .line 293
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->assignFcPgInfoMw()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 294
    const/4 v10, 0x1

    .line 297
    :cond_1
    const/4 v9, 0x0

    .line 307
    .local v9, "record":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v9

    .line 312
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->logSearchMethod([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    :try_end_0
    .catch Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    if-eqz v10, :cond_2

    .line 321
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->releaseFcPgInfoMw(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;)V

    .line 322
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->mwPgInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw;

    .line 328
    :cond_2
    return-object v9

    .line 313
    :catch_0
    move-exception v8

    .line 315
    .local v8, "e":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 316
    invoke-virtual {v8}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwReturnException;->getError()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;

    move-result-object v2

    invoke-virtual {v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwReturnType;->getInt()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataUtilitySv;->checkMmbFcPgInfoMwReturnType(IZ)V

    goto :goto_0
.end method

.method searchSeriesInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)Ljava/util/List;
    .locals 24
    .param p1, "aReserveData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1115
    if-nez p1, :cond_0

    .line 1116
    const-string v2, "parameter error : null"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1117
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1120
    :cond_0
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    .local v23, "seriesInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1205
    :cond_1
    return-object v23

    .line 1129
    :cond_2
    new-instance v15, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;->mmbSeriesData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesDataSv;->mmbSeriesId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 1132
    .local v15, "groupIdString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v14}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 1133
    .local v14, "groupField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v2, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 1134
    iput-object v15, v14, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 1135
    new-instance v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v13}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 1136
    .local v13, "groupCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_LIKE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v2, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 1137
    iput-object v14, v13, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 1140
    new-instance v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v8}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    .line 1141
    .local v8, "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    const/4 v2, 0x0

    iput-boolean v2, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->notOperator:Z

    .line 1142
    const/4 v2, 0x1

    new-array v2, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    iput-object v2, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 1145
    new-instance v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 1146
    .local v5, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    iput-object v2, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    .line 1147
    iput-object v8, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 1148
    const/4 v2, 0x0

    iput-object v2, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 1151
    const/4 v2, 0x7

    new-array v4, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v2, 0x0

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    const/4 v2, 0x1

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    const/4 v2, 0x2

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_TITLE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    const/4 v2, 0x3

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_CP_TYPE_HREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    const/4 v2, 0x4

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    const/4 v2, 0x5

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    const/4 v2, 0x6

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->BRE_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    .line 1161
    .local v4, "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v21

    .line 1166
    .local v21, "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v21, :cond_1

    .line 1170
    const/16 v22, 0x0

    .line 1172
    .local v22, "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    move-object/from16 v9, v21

    .local v9, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v9    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    aget-object v20, v9, v17

    .line 1173
    .local v20, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    new-instance v22, Ljava/util/HashMap;

    .end local v22    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 1175
    .restart local v22    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    move-object/from16 v0, v20

    iget-object v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-nez v2, :cond_3

    .line 1172
    .end local v17    # "i$":I
    :goto_1
    add-int/lit8 v16, v17, 0x1

    .restart local v16    # "i$":I
    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_0

    .line 1178
    :cond_3
    move-object/from16 v0, v20

    iget-object v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v10, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v10

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    aget-object v12, v10, v16

    .line 1180
    .local v12, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    if-nez v2, :cond_5

    .line 1178
    :cond_4
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1184
    :cond_5
    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v2, v3, :cond_6

    .line 1186
    iget-object v3, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    iget-wide v6, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1197
    .end local v4    # "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .end local v5    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .end local v8    # "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    .end local v10    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v12    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v13    # "groupCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .end local v14    # "groupField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v15    # "groupIdString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    .end local v16    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v21    # "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v22    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 1199
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1200
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v2

    .line 1189
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v4    # "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .restart local v5    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .restart local v8    # "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    .restart local v10    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v12    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v13    # "groupCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .restart local v14    # "groupField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v15    # "groupIdString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    .restart local v16    # "i$":I
    .restart local v19    # "len$":I
    .restart local v20    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .restart local v21    # "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .restart local v22    # "seriesInfo":Ljava/util/Map;, "Ljava/util/Map<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/lang/String;>;"
    :cond_6
    :try_start_1
    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_STRING:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v2, v3, :cond_4

    .line 1191
    iget-object v3, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1195
    .end local v12    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_7
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method searchServiceIdFromCrid(Ljava/lang/String;)I
    .locals 24
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 913
    const/16 v22, 0x0

    .line 916
    .local v22, "serviceId":I
    :try_start_0
    new-instance v19, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;-><init>(Ljava/lang/String;)V

    .line 918
    .local v19, "programIdString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    new-instance v18, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct/range {v18 .. v18}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    .line 919
    .local v18, "programField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v18

    iput-object v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 920
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 921
    new-instance v17, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct/range {v17 .. v17}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 922
    .local v17, "programCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    move-object/from16 v0, v17

    iput-object v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 923
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 926
    new-instance v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v8}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    .line 927
    .local v8, "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    const/4 v2, 0x0

    iput-boolean v2, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->notOperator:Z

    .line 928
    const/4 v2, 0x1

    new-array v2, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    const/4 v3, 0x0

    aput-object v17, v2, v3

    iput-object v2, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 932
    new-instance v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 933
    .local v5, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    iput-object v2, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    .line 934
    iput-object v8, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 935
    const/4 v2, 0x0

    iput-object v2, v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->orCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 938
    const/4 v2, 0x1

    new-array v4, v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    const/4 v2, 0x0

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    aput-object v3, v4, v2

    .line 942
    .local v4, "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v21

    .line 947
    .local v21, "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-nez v21, :cond_0

    move/from16 v23, v22

    .line 980
    .end local v22    # "serviceId":I
    .local v23, "serviceId":I
    :goto_0
    return v23

    .line 952
    .end local v23    # "serviceId":I
    .restart local v22    # "serviceId":I
    :cond_0
    move-object/from16 v9, v21

    .local v9, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    move v14, v13

    .end local v9    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .local v14, "i$":I
    :goto_1
    if-ge v14, v15, :cond_5

    aget-object v20, v9, v14

    .line 954
    .local v20, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, v20

    iget-object v2, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    if-nez v2, :cond_2

    .line 952
    .end local v14    # "i$":I
    :cond_1
    :goto_2
    add-int/lit8 v13, v14, 0x1

    .restart local v13    # "i$":I
    move v14, v13

    .end local v13    # "i$":I
    .restart local v14    # "i$":I
    goto :goto_1

    .line 957
    :cond_2
    move-object/from16 v0, v20

    iget-object v10, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v10, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .end local v14    # "i$":I
    .restart local v13    # "i$":I
    :goto_3
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v12, v10, v13

    .line 959
    .local v12, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->ODS_SERVICEIDREF:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-object v3, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v2, v3, :cond_3

    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    if-nez v2, :cond_4

    .line 957
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 965
    :cond_4
    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    iget-object v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    if-ne v2, v3, :cond_3

    .line 967
    iget-object v2, v12, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    iget-wide v2, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    move/from16 v22, v0

    .line 968
    goto :goto_2

    .line 972
    .end local v4    # "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .end local v5    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .end local v8    # "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    .end local v10    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v12    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "programCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .end local v18    # "programField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v19    # "programIdString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    .end local v20    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v21    # "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catch_0
    move-exception v11

    .line 974
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 975
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ProcessAbortException;-><init>()V

    throw v2

    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    .restart local v4    # "output":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;
    .restart local v5    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .restart local v8    # "andTable":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;
    .restart local v14    # "i$":I
    .restart local v17    # "programCondition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    .restart local v18    # "programField":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v19    # "programIdString":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;
    .restart local v21    # "searchRecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_5
    move/from16 v23, v22

    .line 980
    .end local v22    # "serviceId":I
    .restart local v23    # "serviceId":I
    goto :goto_0
.end method
