.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;
.super Ljava/lang/Object;
.source "MmbFwContentsSearchLightSv.java"

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

.field private mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

.field private mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

.field private mQueryId:I

.field private map:Ljava/util/Map;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 181
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    const-string v7, "fcInfoType"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 187
    const-string v7, "fcProgress"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 188
    const-string v7, "fcState"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 189
    const-string v7, "fcOpenState"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 190
    const-string v7, "fcComplementState"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 191
    const-string v7, "fcRepairSize"

    invoke-interface {v4, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 193
    if-nez p1, :cond_1

    .line 194
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 211
    :goto_0
    return v5

    .line 197
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

    .line 198
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 199
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

    .line 205
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
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
    .line 254
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v3, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND VersionFilter = ? AND "

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x6

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCSEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 261
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 262
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

    .line 269
    const/4 v2, 0x0

    .line 279
    :goto_0
    return-object v2

    .line 272
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchColumnList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->judgeSearchTarget(Ljava/util/List;)V

    .line 274
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCSORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, p3, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 279
    goto :goto_0
.end method

.method private getListInfo(Ljava/util/List;)Landroid/database/Cursor;
    .locals 17
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
    .line 296
    .local p1, "aExpressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    const/4 v14, 0x0

    .line 298
    .local v14, "recordlist":Ljava/util/List;, "Ljava/util/List<[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v2

    .line 299
    .local v2, "fcsearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDictionaryChange:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-object/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchFcInfoLight(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;Ljava/util/List;ZLjava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 322
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 323
    :cond_0
    const-string v1, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "No data is selected in the specified SearchCondition."

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    new-instance v15, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v15, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 351
    .end local v2    # "fcsearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    :cond_1
    :goto_0
    return-object v15

    .line 302
    :catch_0
    move-exception v8

    .line 303
    .local v8, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 310
    const/4 v15, 0x0

    goto :goto_0

    .line 311
    .end local v8    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v16

    .line 312
    .local v16, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v16 .. v16}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 319
    const/4 v15, 0x0

    goto :goto_0

    .line 327
    .end local v16    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v2    # "fcsearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    :cond_2
    new-instance v15, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v15, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 328
    .local v15, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    array-length v12, v1

    .line 330
    .local v12, "n":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v12, :cond_1

    .line 331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mQueryId:I

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 332
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v11

    .line 334
    .local v11, "m":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->map:Ljava/util/Map;

    invoke-virtual {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 335
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    if-ge v10, v11, :cond_3

    .line 336
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    aget-object v13, v1, v9

    .line 338
    .local v13, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->map:Ljava/util/Map;

    invoke-virtual {v1, v3, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchFcInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 335
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 340
    .end local v13    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->map:Ljava/util/Map;

    const-string v3, "crid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 341
    .local v7, "crid":Ljava/lang/String;
    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    sget-object v3, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    if-ne v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 345
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v3, v15, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 330
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method

.method private init([Ljava/lang/String;I)Z
    .locals 5
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 136
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mQueryId:I

    .line 138
    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDictionaryMode:Ljava/lang/String;

    .line 139
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDictionaryChange:Z

    .line 140
    aget-object v1, p1, v4

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 151
    :goto_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 152
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->map:Ljava/util/Map;

    .line 157
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 158
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isVersionFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 165
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 143
    :cond_1
    aget-object v1, p1, v4

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    goto :goto_0

    .line 147
    :cond_2
    const-string v1, "illegal parameter. [DownloadStatus]"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    .line 226
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcCidList:Ljava/util/Set;

    .line 227
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcLidList:Ljava/util/Set;

    .line 228
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcPidList:Ljava/util/Set;

    .line 230
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 231
    .local v0, "column":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->prepareSearchFcInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v0    # "column":Ljava/lang/String;
    :cond_0
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

    .line 93
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->init([Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->judgeCallMethod()V

    .line 106
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mQueryId:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 107
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 109
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    .line 115
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->mQueryId:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 116
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchLightSv;->getListInfo(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    .line 120
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
