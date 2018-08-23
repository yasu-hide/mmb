.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;
.super Ljava/lang/Object;
.source "MmbFwMetaSearchGenreGroupSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# instance fields
.field private mColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDictionaryChange:Z

.field private mDictionaryMode:Ljava/lang/String;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

.field private mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

.field private mQueryId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 157
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "metaGriGenreMain"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const-string v7, "metaGriGenreOther"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    if-nez p1, :cond_1

    .line 162
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 179
    :goto_0
    return v5

    .line 165
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 166
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 167
    const-string v7, "%s%s%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const-string v9, "The specified Column is illegal. The target Column is \'"

    aput-object v9, v8, v5

    aput-object v1, v8, v6

    const/4 v6, 0x2

    const-string v9, "\'."

    aput-object v9, v8, v6

    invoke-static {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "aSelection"    # Ljava/lang/String;
    .param p2, "aSelectionArgs"    # [Ljava/lang/String;
    .param p3, "aSortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 198
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v3, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x5

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METASEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 206
    :cond_0
    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "The specified SearchCondition is illegal. The target SearchCondition is \'"

    aput-object v5, v3, v4

    aput-object v0, v3, v6

    const/4 v4, 0x2

    const-string v5, "\'."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const/4 v2, 0x0

    .line 220
    :goto_0
    return-object v2

    .line 213
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchColumnList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->judgeSearchTarget(Ljava/util/List;)V

    .line 215
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METASORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, p3, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 220
    goto :goto_0
.end method

.method private getListInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)Landroid/database/Cursor;
    .locals 15
    .param p1, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 237
    .local v7, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaCidList:Ljava/util/Set;

    .line 238
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaSidList:Ljava/util/Set;

    .line 239
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaLidList:Ljava/util/Set;

    .line 240
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaPidList:Ljava/util/Set;

    .line 241
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaGidList:Ljava/util/Set;

    .line 243
    new-instance v13, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 245
    .local v13, "result":Landroid/database/MatrixCursor;
    const/4 v12, 0x0

    .line 246
    .local v12, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-result-object v1

    .line 247
    .local v1, "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    const-string v2, "metaGriGenreMain"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaGidList:Ljava/util/Set;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 251
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mDictionaryChange:Z

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mDictionaryMode:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchMetaGenre(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Z)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v12

    .line 254
    :cond_0
    if-eqz v12, :cond_1

    .line 256
    move-object v6, v12

    .local v6, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v11, v6, v9

    .line 257
    .local v11, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 259
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 261
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchMetaInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 263
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v13, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 256
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 266
    .end local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_1
    const/4 v12, 0x0

    .line 267
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaGidList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 268
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    const-string v2, "metaGriGenreOther"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaGidList:Ljava/util/Set;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 272
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mDictionaryChange:Z

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mDictionaryMode:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchMetaGenre(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Z)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v12

    .line 275
    :cond_2
    if-eqz v12, :cond_3

    .line 277
    move-object v6, v12

    .restart local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v10, v6

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v11, v6, v9

    .line 278
    .restart local v11    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 280
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 282
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchMetaInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 284
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v13, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 287
    .end local v1    # "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    .end local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catch_0
    move-exception v8

    .line 288
    .local v8, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 292
    const/4 v13, 0x0

    .line 303
    .end local v8    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v13    # "result":Landroid/database/MatrixCursor;
    :cond_3
    :goto_2
    return-object v13

    .line 293
    .restart local v13    # "result":Landroid/database/MatrixCursor;
    :catch_1
    move-exception v14

    .line 294
    .local v14, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 298
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private init([Ljava/lang/String;I)V
    .locals 3
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v2, 0x4

    .line 123
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    .line 125
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mDictionaryMode:Ljava/lang/String;

    .line 126
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mDictionaryChange:Z

    .line 128
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 129
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mColumns:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mMap:Ljava/util/Map;

    .line 134
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 135
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isVersionFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 142
    :cond_0
    return-void
.end method


# virtual methods
.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 5
    .param p1, "aProjection"    # [Ljava/lang/String;
    .param p2, "aSelection"    # Ljava/lang/String;
    .param p3, "aSelectionArgs"    # [Ljava/lang/String;
    .param p4, "aSortOrder"    # Ljava/lang/String;
    .param p5, "aQueryId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->init([Ljava/lang/String;I)V

    .line 84
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 91
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v2, :cond_0

    .line 99
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 101
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 102
    .local v1, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchGenreGroupSv;->getListInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
