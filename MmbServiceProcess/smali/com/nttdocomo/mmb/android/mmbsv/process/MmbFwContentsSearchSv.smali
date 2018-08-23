.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;
.super Ljava/lang/Object;
.source "MmbFwContentsSearchSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# instance fields
.field private mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

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

.field private mEntityId:Ljava/lang/String;

.field private mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

.field private mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

.field private mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

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

.field private mSchedlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 221
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 222
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 224
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 226
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 227
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 228
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 229
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 230
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 231
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 232
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 234
    if-nez p1, :cond_1

    .line 235
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 252
    :goto_0
    return v5

    .line 238
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

    .line 239
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 240
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

    .line 246
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
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
    .line 313
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v3, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND VersionFilter = ? AND "

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x7

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCSEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 320
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 321
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

    .line 325
    const/4 v2, 0x0

    .line 335
    :goto_0
    return-object v2

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchColumnList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->judgeSearchTarget(Ljava/util/List;)V

    .line 330
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCSORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, p3, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 335
    goto :goto_0
.end method

.method private getDetailInfo([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Landroid/database/Cursor;
    .locals 44
    .param p1, "aRecords"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 413
    new-instance v37, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move/from16 v0, v40

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 418
    .local v37, "result":Landroid/database/MatrixCursor;
    move-object/from16 v4, p1

    .local v4, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v0, v4

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    move/from16 v24, v23

    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v23    # "i$":I
    .end local v28    # "len$":I
    .local v24, "i$":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_16

    aget-object v36, v4, v24

    .line 419
    .local v36, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mQueryId:I

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 421
    const/4 v7, 0x0

    .line 422
    .local v7, "crid":Ljava/lang/String;
    const/16 v25, 0x0

    .line 423
    .local v25, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/16 v17, 0x0

    .line 424
    .local v17, "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    const/16 v18, 0x0

    .line 425
    .local v18, "fcinfoinvoked":Z
    const/4 v15, 0x0

    .line 426
    .local v15, "fcPurchaseInvoked":Z
    const/4 v12, 0x0

    .line 427
    .local v12, "fcLicenseInvoked":Z
    const/4 v14, 0x0

    .line 428
    .local v14, "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/16 v16, 0x0

    .line 429
    .local v16, "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v11, 0x0

    .line 430
    .local v11, "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 431
    .local v13, "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .line 432
    .local v21, "getFcLicenseFlg":Z
    move-object/from16 v0, v36

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v5, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v5

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v23, 0x0

    .end local v24    # "i$":I
    .restart local v23    # "i$":I
    :goto_1
    move/from16 v0, v23

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    aget-object v20, v5, v23

    .line 433
    .local v20, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    move-object/from16 v0, v20

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v39, v0

    sget-object v40, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v39, v0

    sget-object v40, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v39, v0

    sget-object v40, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v39, v0

    sget-object v40, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_2

    .line 437
    :cond_0
    sget-object v39, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v39

    move-object/from16 v1, v20

    iput-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 438
    move-object/from16 v0, v20

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    move-object/from16 v39, v0

    check-cast v39, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    move-object/from16 v0, v39

    iget-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 442
    .end local v20    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-object/from16 v39, v0

    sget-object v40, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v39

    if-nez v39, :cond_3

    .line 418
    :goto_2
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    .end local v23    # "i$":I
    .restart local v24    # "i$":I
    goto/16 :goto_0

    .line 432
    .end local v24    # "i$":I
    .restart local v20    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v23    # "i$":I
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 446
    .end local v20    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v39, v0

    if-nez v39, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v39, v0

    if-nez v39, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    .line 451
    :cond_4
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v17

    .line 453
    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v39, v0

    if-eqz v39, :cond_5

    .line 454
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v25, v0
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 465
    :cond_5
    :goto_3
    const/16 v18, 0x1

    .line 467
    :cond_6
    new-instance v39, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct/range {v39 .. v39}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    .line 468
    new-instance v39, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    invoke-direct/range {v39 .. v39}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    const/16 v40, -0x8000

    move/from16 v0, v40

    move-object/from16 v1, v39

    iput-short v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v39

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmMetadatainfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 473
    const/4 v9, 0x0

    .line 474
    .local v9, "drmLicenseInvoked":Z
    const/4 v8, 0x0

    .line 475
    .local v8, "drmLicenseExistenceInvoked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_7

    .line 478
    const/4 v9, 0x1

    .line 479
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Byte;->byteValue()B

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v43, v0

    aput-object v43, v41, v42

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_3

    .line 491
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_8

    .line 492
    if-eqz v25, :cond_8

    .line 495
    const/4 v8, 0x1

    .line 496
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Byte;->byteValue()B

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    aput-object v43, v41, v42

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_5

    .line 509
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_9

    .line 511
    const/4 v15, 0x1

    .line 512
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_7

    move-result-object v14

    .line 524
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_a

    .line 528
    if-nez v17, :cond_a

    if-nez v18, :cond_a

    .line 529
    const/16 v18, 0x1

    .line 530
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_9

    move-result-object v17

    .line 543
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_c

    .line 545
    if-nez v14, :cond_b

    if-nez v15, :cond_b

    .line 546
    const/4 v15, 0x1

    .line 547
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_c

    move-result-object v14

    .line 550
    :cond_b
    if-nez v14, :cond_17

    .line 551
    const/16 v21, 0x0

    .line 586
    :cond_c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_e

    .line 588
    if-nez v17, :cond_d

    if-nez v18, :cond_d

    .line 590
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v17

    .line 593
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;)V
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_e

    .line 604
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_10

    .line 607
    if-nez v11, :cond_f

    if-nez v12, :cond_f

    .line 608
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v11

    .line 610
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_10

    .line 621
    :cond_10
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_12

    .line 624
    if-nez v14, :cond_11

    if-nez v15, :cond_11

    .line 625
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v14

    .line 628
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_12

    .line 639
    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_13

    .line 642
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v33

    .line 643
    .local v33, "manifestoinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;I)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_13

    .line 648
    .end local v33    # "manifestoinfo":I
    :cond_13
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_14

    .line 649
    if-eqz v25, :cond_14

    .line 651
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Byte;->byteValue()B

    move-result v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I

    move-result v35

    .line 654
    .local v35, "purchaseinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;I)V
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_a .. :try_end_a} :catch_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_a .. :try_end_a} :catch_15

    .line 666
    .end local v35    # "purchaseinfo":I
    :cond_14
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    .line 667
    if-eqz v17, :cond_15

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v39, v0

    if-eqz v39, :cond_15

    if-eqz v14, :cond_15

    .line 669
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Byte;->byteValue()B

    move-result v40

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v41, v0

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v14, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v16

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_b .. :try_end_b} :catch_16
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_b .. :try_end_b} :catch_17

    .line 683
    :cond_15
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_24

    .line 684
    const/16 v39, 0x1

    move/from16 v0, v21

    move/from16 v1, v39

    if-ne v0, v1, :cond_24

    .line 685
    new-instance v31, Ljava/util/HashMap;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    .line 686
    .local v31, "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .line 687
    .local v30, "licenseExistence":Z
    array-length v0, v11

    move/from16 v26, v0

    .line 688
    .local v26, "lInfoCnt":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_f
    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_22

    .line 691
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    aget-object v40, v11, v22

    move-object/from16 v0, v40

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_c .. :try_end_c} :catch_18
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_c .. :try_end_c} :catch_19

    move-result v30

    .line 703
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v27

    .line 705
    .local v27, "lInfoLicenseId":Ljava/lang/String;
    const/16 v39, 0x1

    move/from16 v0, v30

    move/from16 v1, v39

    if-ne v0, v1, :cond_1c

    .line 706
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    :goto_11
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    .line 456
    .end local v8    # "drmLicenseExistenceInvoked":Z
    .end local v9    # "drmLicenseInvoked":Z
    .end local v22    # "i":I
    .end local v26    # "lInfoCnt":I
    .end local v27    # "lInfoLicenseId":Ljava/lang/String;
    .end local v30    # "licenseExistence":Z
    .end local v31    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v19

    .line 457
    .local v19, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 461
    const/16 v37, 0x0

    .line 773
    .end local v5    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v7    # "crid":Ljava/lang/String;
    .end local v11    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v12    # "fcLicenseInvoked":Z
    .end local v13    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v15    # "fcPurchaseInvoked":Z
    .end local v16    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v17    # "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v18    # "fcinfoinvoked":Z
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v21    # "getFcLicenseFlg":Z
    .end local v23    # "i$":I
    .end local v25    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v29    # "len$":I
    .end local v36    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v37    # "result":Landroid/database/MatrixCursor;
    :cond_16
    :goto_12
    return-object v37

    .line 462
    .restart local v5    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v7    # "crid":Ljava/lang/String;
    .restart local v11    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v12    # "fcLicenseInvoked":Z
    .restart local v13    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v14    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v15    # "fcPurchaseInvoked":Z
    .restart local v16    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v17    # "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v18    # "fcinfoinvoked":Z
    .restart local v21    # "getFcLicenseFlg":Z
    .restart local v23    # "i$":I
    .restart local v25    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v29    # "len$":I
    .restart local v36    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .restart local v37    # "result":Landroid/database/MatrixCursor;
    :catch_1
    move-exception v38

    .line 463
    .local v38, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 481
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v8    # "drmLicenseExistenceInvoked":Z
    .restart local v9    # "drmLicenseInvoked":Z
    :catch_2
    move-exception v19

    .line 482
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 486
    const/16 v37, 0x0

    goto :goto_12

    .line 487
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_3
    move-exception v10

    .line 488
    .local v10, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 498
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v19

    .line 499
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 503
    const/16 v37, 0x0

    goto :goto_12

    .line 504
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_5
    move-exception v10

    .line 505
    .restart local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 514
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_6
    move-exception v19

    .line 515
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 519
    const/16 v37, 0x0

    goto :goto_12

    .line 520
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_7
    move-exception v38

    .line 521
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 533
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_8
    move-exception v19

    .line 534
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 538
    const/16 v37, 0x0

    goto :goto_12

    .line 539
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_9
    move-exception v38

    .line 540
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 554
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_17
    if-nez v9, :cond_18

    .line 555
    const/4 v9, 0x1

    .line 556
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Byte;->byteValue()B

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v43, v0

    aput-object v43, v41, v42

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 558
    :cond_18
    if-nez v8, :cond_19

    if-eqz v25, :cond_19

    .line 559
    const/4 v8, 0x1

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/Byte;->byteValue()B

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v41

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    aput-object v43, v41, v42

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 563
    :cond_19
    const/4 v12, 0x1

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v11

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v39, v0
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_d .. :try_end_d} :catch_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_d .. :try_end_d} :catch_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_d .. :try_end_d} :catch_c

    const/16 v40, -0x8000

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_1a

    if-nez v11, :cond_1b

    .line 567
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 569
    :cond_1b
    const/16 v21, 0x1

    goto/16 :goto_8

    .line 572
    :catch_a
    move-exception v10

    .line 573
    .restart local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v21, 0x0

    .line 574
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 575
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_b
    move-exception v19

    .line 576
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 580
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 581
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_c
    move-exception v38

    .line 582
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v21, 0x0

    .line 583
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 594
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_d
    move-exception v19

    .line 595
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 599
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 600
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_e
    move-exception v38

    .line 601
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 611
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_f
    move-exception v19

    .line 612
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 616
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 617
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_10
    move-exception v38

    .line 618
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 629
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_11
    move-exception v19

    .line 630
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 634
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 635
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_12
    move-exception v38

    .line 636
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 644
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_13
    move-exception v38

    .line 645
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 655
    .end local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_14
    move-exception v19

    .line 656
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 660
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 661
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_15
    move-exception v10

    .line 662
    .restart local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 672
    .end local v10    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_16
    move-exception v19

    .line 673
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 677
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 678
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_17
    move-exception v6

    .line 679
    .local v6, "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 693
    .end local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v22    # "i":I
    .restart local v26    # "lInfoCnt":I
    .restart local v30    # "licenseExistence":Z
    .restart local v31    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_18
    move-exception v19

    .line 694
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 698
    const/16 v37, 0x0

    goto/16 :goto_12

    .line 699
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_19
    move-exception v6

    .line 700
    .restart local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 708
    .end local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v27    # "lInfoLicenseId":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v39, v0

    if-nez v39, :cond_1d

    .line 710
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 712
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v39, v0

    const/16 v40, 0x1

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_1f

    .line 714
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_1e

    .line 715
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 718
    :cond_1e
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 721
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v39, v0

    const/16 v40, 0x2

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_21

    .line 723
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_20

    .line 724
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 727
    :cond_20
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 731
    :cond_21
    aget-object v39, v11, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_11

    .line 736
    .end local v27    # "lInfoLicenseId":Ljava/lang/String;
    :cond_22
    array-length v0, v14

    move/from16 v34, v0

    .line 737
    .local v34, "pInfoCnt":I
    const/16 v32, 0x0

    .line 738
    .local v32, "licenseState":Ljava/lang/Integer;
    const/16 v22, 0x0

    :goto_13
    move/from16 v0, v22

    move/from16 v1, v34

    if-ge v0, v1, :cond_23

    .line 739
    aget-object v39, v14, v22

    move-object/from16 v0, v39

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v39, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    .end local v32    # "licenseState":Ljava/lang/Integer;
    check-cast v32, Ljava/lang/Integer;

    .line 740
    .restart local v32    # "licenseState":Ljava/lang/Integer;
    if-eqz v32, :cond_23

    .line 741
    move-object/from16 v0, v32

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    .line 747
    :cond_23
    if-eqz v32, :cond_24

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcLicenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 752
    .end local v22    # "i":I
    .end local v26    # "lInfoCnt":I
    .end local v30    # "licenseExistence":Z
    .end local v31    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v32    # "licenseState":Ljava/lang/Integer;
    .end local v34    # "pInfoCnt":I
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetScheduleFlg:Z

    move/from16 v39, v0

    if-eqz v39, :cond_25

    .line 753
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mSchedlList:Ljava/util/ArrayList;

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 757
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v39

    if-nez v39, :cond_25

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    const/16 v42, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setTmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_e .. :try_end_e} :catch_1a

    .line 765
    :cond_25
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCridMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchFcInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    move-object/from16 v39, v0

    const/16 v42, 0x0

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v39

    check-cast v39, [Ljava/lang/String;

    move-object/from16 v0, v40

    move-object/from16 v1, v37

    move-object/from16 v2, v41

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    goto/16 :goto_2

    .line 761
    :catch_1a
    move-exception v38

    .line 762
    .restart local v38    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v38 .. v38}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method private getListInfo(Ljava/util/List;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;",
            ">;)[",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;"
        }
    .end annotation

    .prologue
    .local p1, "aExpressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 352
    const/4 v8, 0x0

    .line 353
    .local v8, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v4

    .line 356
    .local v4, "fcsearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    :try_start_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchInit()V

    .line 357
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 358
    .local v1, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchFcInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 362
    goto :goto_0

    .line 378
    .end local v1    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchClose()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    if-eqz v8, :cond_1

    array-length v0, v8

    if-nez v0, :cond_2

    .line 389
    :cond_1
    const-string v0, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No data is selected in the specified SearchCondition."

    aput-object v3, v2, v11

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    new-array v8, v11, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    :cond_2
    move-object v0, v8

    .line 395
    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v0

    .line 379
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v9

    .line 380
    .local v9, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v0, v10

    .line 384
    goto :goto_1

    .line 363
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1
    move-exception v6

    .line 364
    .local v6, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_2
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    :try_start_3
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchClose()V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v10

    .line 384
    goto :goto_1

    .line 379
    :catch_2
    move-exception v9

    .line 380
    .restart local v9    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v0, v10

    .line 384
    goto :goto_1

    .line 369
    .end local v6    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v9    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_3
    move-exception v9

    .line 370
    .restart local v9    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_4
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    :try_start_5
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchClose()V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v10

    .line 384
    goto :goto_1

    .line 379
    :catch_4
    move-exception v9

    .line 380
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v0, v10

    .line 384
    goto :goto_1

    .line 376
    .end local v9    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v0

    .line 378
    :try_start_6
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;->searchClose()V
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_5

    .line 384
    throw v0

    .line 379
    :catch_5
    move-exception v9

    .line 380
    .restart local v9    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v0, v10

    .line 384
    goto :goto_1
.end method

.method private init([Ljava/lang/String;I)Z
    .locals 5
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x0

    const/4 v3, 0x6

    .line 172
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mQueryId:I

    .line 174
    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mEntityId:Ljava/lang/String;

    .line 175
    const/4 v1, 0x3

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryMode:Ljava/lang/String;

    .line 176
    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDictionaryChange:Z

    .line 177
    aget-object v1, p1, v4

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 188
    :goto_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 189
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 190
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    .line 191
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .line 193
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mMap:Ljava/util/Map;

    .line 197
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 198
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isVersionFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v3

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 205
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 180
    :cond_1
    aget-object v1, p1, v4

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    goto :goto_0

    .line 184
    :cond_2
    const-string v1, "illegal parameter. [DownloadStatus]"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 268
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 269
    .local v0, "column":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    goto :goto_0

    .line 271
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 272
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    goto :goto_0

    .line 273
    :cond_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    goto :goto_0

    .line 275
    :cond_3
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 276
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    goto :goto_0

    .line 277
    :cond_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 278
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    goto :goto_0

    .line 279
    :cond_5
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 280
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    goto :goto_0

    .line 281
    :cond_6
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetScheduleFlg:Z

    goto :goto_0

    .line 283
    :cond_7
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 284
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    goto :goto_0

    .line 285
    :cond_8
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 287
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    goto :goto_0

    .line 288
    :cond_9
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 295
    .end local v0    # "column":Ljava/lang/String;
    :cond_a
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

    .line 115
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->init([Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->judgeCallMethod()V

    .line 128
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 129
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 131
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    .line 137
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 138
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->getListInfo(Ljava/util/List;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v2

    .line 139
    .local v2, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v2, :cond_0

    .line 144
    array-length v3, v2

    if-nez v3, :cond_2

    .line 149
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mColumns:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 152
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentsSearchSv;->getDetailInfo([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Landroid/database/Cursor;

    move-result-object v0

    .line 156
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
