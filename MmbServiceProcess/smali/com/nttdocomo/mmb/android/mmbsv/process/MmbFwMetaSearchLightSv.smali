.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;
.super Ljava/lang/Object;
.source "MmbFwMetaSearchLightSv.java"

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

.field private mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

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
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDetailInfo(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p2, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 340
    .local p1, "aMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 341
    .local v0, "downloaded":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v0

    .line 343
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v1, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcDownloadedMap(Ljava/util/Map;Z)V

    .line 348
    :cond_0
    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 166
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 167
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 168
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    const-string v7, "metaGriGroupTypeValue"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    const-string v7, "metaState"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    const-string v7, "fcDownloadedState"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    const-string v7, "metaContentsInfoType"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    const-string v7, "metaGriSynopsis"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 175
    if-nez p1, :cond_1

    .line 176
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 193
    :goto_0
    return v5

    .line 179
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

    .line 180
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 181
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

    .line 187
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
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
    .line 241
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v3, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x5

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METASEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 248
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 249
    :cond_0
    const-string v2, "%s%s%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "The specified SearchCondition is illegal. The target SearchCondition is \'"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "\'."

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    const/4 v2, 0x0

    .line 263
    :goto_0
    return-object v2

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchColumnList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->judgeSearchTarget(Ljava/util/List;)V

    .line 258
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METASORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, p3, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 263
    goto :goto_0
.end method

.method private getListInfo(Ljava/util/List;)Landroid/database/Cursor;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "aExpressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    const/4 v9, 0x0

    .line 282
    .local v9, "recordlist":Ljava/util/List;, "Ljava/util/List<[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    invoke-virtual {v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-result-object v6

    .line 283
    .local v6, "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mDictionaryChange:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v6, v0, v13, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchMetaInfoLight(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 298
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_2

    .line 299
    :cond_0
    const-string v12, "%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "No data is selected in the specified SearchCondition."

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v10, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 323
    .end local v6    # "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :cond_1
    :goto_0
    return-object v10

    .line 285
    :catch_0
    move-exception v2

    .line 286
    .local v2, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 290
    const/4 v10, 0x0

    goto :goto_0

    .line 291
    .end local v2    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v11

    .line 292
    .local v11, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 296
    const/4 v10, 0x0

    goto :goto_0

    .line 303
    .end local v11    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v6    # "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :cond_2
    new-instance v10, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/String;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-direct {v10, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 306
    .local v10, "result":Landroid/database/MatrixCursor;
    const/4 v12, 0x0

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    array-length v7, v12

    .line 307
    .local v7, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 308
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mQueryId:I

    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 309
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 311
    .local v5, "m":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMap:Ljava/util/Map;

    invoke-virtual {v12, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 312
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_3

    .line 313
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    aget-object v8, v12, v3

    .line 314
    .local v8, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMap:Ljava/util/Map;

    invoke-virtual {v12, v13, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchMetaInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 312
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 316
    .end local v8    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMap:Ljava/util/Map;

    const-string v13, "crid"

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .local v1, "crid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMap:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->addDetailInfo(Ljava/util/Map;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMap:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/String;

    invoke-interface {v12, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    invoke-virtual {v13, v10, v14, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private init([Ljava/lang/String;I)V
    .locals 3
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v2, 0x4

    .line 129
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mQueryId:I

    .line 131
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mDictionaryMode:Ljava/lang/String;

    .line 132
    const/4 v0, 0x3

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mDictionaryChange:Z

    .line 134
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 135
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 136
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mMap:Ljava/util/Map;

    .line 141
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 142
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isVersionFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 149
    :cond_0
    return-void
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    .line 209
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaCidList:Ljava/util/Set;

    .line 210
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaSidList:Ljava/util/Set;

    .line 211
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaLidList:Ljava/util/Set;

    .line 212
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaPidList:Ljava/util/Set;

    .line 213
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaGidList:Ljava/util/Set;

    .line 214
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, "column":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->prepareSearchMetaInfo(Ljava/lang/String;)V

    .line 216
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    goto :goto_0

    .line 223
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 4
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

    .line 91
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->init([Ljava/lang/String;I)V

    .line 92
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-object v0

    .line 98
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->judgeCallMethod()V

    .line 99
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mQueryId:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 100
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    .line 108
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->mQueryId:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 109
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchLightSv;->getListInfo(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 113
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
