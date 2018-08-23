.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;
.super Ljava/lang/Object;
.source "MmbFwContentsSearchGenreSv.java"

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

.field private mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

.field private mQueryId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "fcGenreMain"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    const-string v7, "fcGenreOther"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    if-nez p1, :cond_1

    .line 184
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 201
    :goto_0
    return v5

    .line 187
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

    .line 188
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 189
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

    .line 195
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
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

    .line 220
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v3, "QueryId = ? AND GetType = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND VersionFilter = ? AND "

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x6

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCSEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 227
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v6, :cond_1

    .line 228
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

    .line 232
    const/4 v2, 0x0

    .line 242
    :goto_0
    return-object v2

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchColumnList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->judgeSearchTarget(Ljava/util/List;)V

    .line 237
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCSORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, p3, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 242
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
    .line 259
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 260
    .local v7, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcCidList:Ljava/util/Set;

    .line 261
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcLidList:Ljava/util/Set;

    .line 262
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcPidList:Ljava/util/Set;

    .line 264
    new-instance v13, Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v13, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 266
    .local v13, "result":Landroid/database/MatrixCursor;
    const/4 v12, 0x0

    .line 267
    .local v12, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v1

    .line 268
    .local v1, "contentssearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    const-string v2, "fcGenreMain"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcCidList:Ljava/util/Set;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_MAIN:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 272
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDictionaryChange:Z

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDictionaryMode:Ljava/lang/String;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchFcGenre(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v12

    .line 276
    :cond_0
    if-eqz v12, :cond_1

    .line 278
    move-object v6, v12

    .local v6, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v10, v6

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_0
    if-ge v9, v10, :cond_1

    aget-object v11, v6, v9

    .line 279
    .local v11, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 281
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 283
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchFcInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 285
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v13, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 278
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 288
    .end local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_1
    const/4 v12, 0x0

    .line 289
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcCidList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 290
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    const-string v2, "fcGenreOther"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchFcCidList:Ljava/util/Set;

    sget-object v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_BD_GENRE_OTHER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 294
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDictionaryChange:Z

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDictionaryMode:Ljava/lang/String;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-object/from16 v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchFcGenre(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v12

    .line 298
    :cond_2
    if-eqz v12, :cond_3

    .line 300
    move-object v6, v12

    .restart local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v10, v6

    .restart local v10    # "len$":I
    const/4 v9, 0x0

    .restart local v9    # "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v11, v6, v9

    .line 301
    .restart local v11    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 303
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 305
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v2, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchFcInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 307
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    invoke-virtual {v0, v13, v2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 300
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 310
    .end local v1    # "contentssearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .end local v6    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v11    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catch_0
    move-exception v8

    .line 311
    .local v8, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 315
    const/4 v13, 0x0

    .line 326
    .end local v8    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v13    # "result":Landroid/database/MatrixCursor;
    :cond_3
    :goto_2
    return-object v13

    .line 316
    .restart local v13    # "result":Landroid/database/MatrixCursor;
    :catch_1
    move-exception v14

    .line 317
    .local v14, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v14}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 321
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private init([Ljava/lang/String;I)Z
    .locals 5
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 134
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    .line 136
    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDictionaryMode:Ljava/lang/String;

    .line 137
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDictionaryChange:Z

    .line 138
    aget-object v1, p1, v4

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 149
    :goto_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 150
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mColumns:Ljava/util/List;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mMap:Ljava/util/Map;

    .line 155
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 156
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isVersionFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 163
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 141
    :cond_1
    aget-object v1, p1, v4

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    goto :goto_0

    .line 145
    :cond_2
    const-string v1, "illegal parameter. [DownloadStatus]"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
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

    .line 89
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->init([Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-object v0

    .line 95
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 101
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 102
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 104
    .local v2, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v2, :cond_0

    .line 110
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 112
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 113
    .local v1, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchGenreSv;->getListInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
