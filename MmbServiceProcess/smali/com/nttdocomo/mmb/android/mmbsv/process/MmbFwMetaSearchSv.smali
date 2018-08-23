.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;
.super Ljava/lang/Object;
.source "MmbFwMetaSearchSv.java"

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

.field private mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

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

    .line 206
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 211
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 217
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 218
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 219
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 220
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 222
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    const-string v7, "metaGriGroupTypeValue"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    const-string v7, "metaState"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    if-nez p1, :cond_1

    .line 228
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 245
    :goto_0
    return v5

    .line 231
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

    .line 232
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 233
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

    .line 239
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
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
    .line 320
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v3, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND "

    invoke-virtual {v2, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "condition":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v3, 0x6

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METASEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, v0, p2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 327
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 328
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

    .line 332
    const/4 v2, 0x0

    .line 342
    :goto_0
    return-object v2

    .line 335
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchColumnList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->judgeSearchTarget(Ljava/util/List;)V

    .line 337
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METASORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v2, p3, v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 342
    goto :goto_0
.end method

.method private getDetailInfo([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Landroid/database/Cursor;
    .locals 54
    .param p1, "aRecords"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 415
    new-instance v45, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-interface/range {v49 .. v50}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v49

    check-cast v49, [Ljava/lang/String;

    move-object/from16 v0, v45

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 420
    .local v45, "result":Landroid/database/MatrixCursor;
    move-object/from16 v4, p1

    .local v4, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v0, v4

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v25, 0x0

    .local v25, "i$":I
    move/from16 v26, v25

    .end local v4    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v25    # "i$":I
    .end local v30    # "len$":I
    .local v26, "i$":I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    aget-object v44, v4, v26

    .line 421
    .local v44, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mQueryId:I

    move/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 423
    const/4 v7, 0x0

    .line 424
    .local v7, "crid":Ljava/lang/String;
    const/16 v27, 0x0

    .line 425
    .local v27, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/16 v47, 0x0

    .line 426
    .local v47, "stinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/16 v18, 0x0

    .line 427
    .local v18, "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    const/16 v48, 0x0

    .line 428
    .local v48, "stinfoinvoked":Z
    const/16 v19, 0x0

    .line 429
    .local v19, "fcinfoinvoked":Z
    const/4 v8, 0x0

    .line 430
    .local v8, "downloaded":Z
    const/16 v39, 0x0

    .line 431
    .local v39, "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/4 v15, 0x0

    .line 432
    .local v15, "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/16 v40, 0x0

    .line 433
    .local v40, "metaPurchaseInvoked":Z
    const/16 v16, 0x0

    .line 434
    .local v16, "fcPurchaseInvoked":Z
    const/16 v37, 0x0

    .line 435
    .local v37, "metaLicenseInvoked":Z
    const/4 v13, 0x0

    .line 436
    .local v13, "fcLicenseInvoked":Z
    const/16 v41, 0x0

    .line 437
    .local v41, "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .line 438
    .local v17, "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v36, 0x0

    .line 439
    .local v36, "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    const/4 v12, 0x0

    .line 440
    .local v12, "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v38, "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v14, "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v23, 0x0

    .line 443
    .local v23, "getMetaLicenseFlg":Z
    const/16 v22, 0x0

    .line 444
    .local v22, "getFcLicenseFlg":Z
    move-object/from16 v0, v44

    iget-object v5, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v5, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v0, v5

    move/from16 v31, v0

    .local v31, "len$":I
    const/16 v25, 0x0

    .end local v26    # "i$":I
    .restart local v25    # "i$":I
    :goto_1
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_1

    aget-object v21, v5, v25

    .line 445
    .local v21, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    move-object/from16 v0, v21

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v49, v0

    sget-object v50, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v49, v0

    sget-object v50, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v49, v0

    sget-object v50, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PUI_PROGRAM_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    if-eq v0, v1, :cond_0

    move-object/from16 v0, v21

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v49, v0

    sget-object v50, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->GRI_GROUPID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    if-ne v0, v1, :cond_1d

    .line 449
    :cond_0
    sget-object v49, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    move-object/from16 v0, v49

    move-object/from16 v1, v21

    iput-object v0, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 450
    move-object/from16 v0, v21

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    move-object/from16 v49, v0

    check-cast v49, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    move-object/from16 v0, v49

    iget-object v7, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    .line 454
    .end local v21    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v49, v0

    if-nez v49, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v49, v0

    if-nez v49, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v49, v0

    if-nez v49, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3

    .line 460
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v47

    .line 472
    :goto_2
    const/16 v48, 0x1

    .line 473
    if-eqz v47, :cond_1f

    .line 474
    move-object/from16 v27, v47

    .line 496
    :cond_3
    :goto_3
    new-instance v49, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    .line 497
    new-instance v49, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    invoke-direct/range {v49 .. v49}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    const/16 v50, -0x8000

    move/from16 v0, v50

    move-object/from16 v1, v49

    iput-short v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v49

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmMetadatainfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 502
    const/4 v10, 0x0

    .line 503
    .local v10, "drmLicenseInvoked":Z
    const/4 v9, 0x0

    .line 504
    .local v9, "drmLicenseExistenceInvoked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_4

    .line 507
    const/4 v10, 0x1

    .line 508
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_5

    .line 520
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_5

    .line 521
    if-eqz v27, :cond_5

    .line 524
    const/4 v9, 0x1

    .line 525
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_7

    .line 538
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_6

    .line 540
    const/16 v40, 0x1

    .line 541
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v39

    .line 553
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_7

    .line 556
    if-nez v47, :cond_7

    if-nez v48, :cond_7

    .line 557
    const/16 v48, 0x1

    .line 558
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v47

    .line 571
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_8

    .line 573
    const/16 v16, 0x1

    .line 574
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_d

    move-result-object v15

    .line 586
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_9

    .line 590
    if-nez v18, :cond_9

    if-nez v19, :cond_9

    .line 591
    const/16 v19, 0x1

    .line 592
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_f

    move-result-object v18

    .line 605
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_b

    .line 607
    if-nez v39, :cond_a

    if-nez v40, :cond_a

    .line 608
    const/16 v40, 0x1

    .line 609
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_12

    move-result-object v39

    .line 612
    :cond_a
    if-nez v39, :cond_21

    .line 613
    const/16 v23, 0x0

    .line 648
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_d

    .line 650
    if-nez v15, :cond_c

    if-nez v16, :cond_c

    .line 651
    const/16 v16, 0x1

    .line 652
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_15

    move-result-object v15

    .line 655
    :cond_c
    if-nez v15, :cond_26

    .line 656
    const/16 v22, 0x0

    .line 691
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaDetailFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_f

    .line 694
    if-nez v47, :cond_e

    if-nez v48, :cond_e

    .line 695
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v47

    .line 698
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_17

    .line 709
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_11

    .line 712
    if-nez v12, :cond_10

    if-nez v13, :cond_10

    .line 713
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v12

    .line 715
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_a .. :try_end_a} :catch_18
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_a .. :try_end_a} :catch_19

    .line 726
    :cond_11
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_13

    .line 729
    if-nez v15, :cond_12

    if-nez v16, :cond_12

    .line 730
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v15

    .line 733
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_b .. :try_end_b} :catch_1b

    .line 744
    :cond_13
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_14

    .line 747
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v7, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 748
    .local v35, "manifestoinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;I)V
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_c .. :try_end_c} :catch_1c

    .line 753
    .end local v35    # "manifestoinfo":I
    :cond_14
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    move/from16 v49, v0

    if-nez v49, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_16

    .line 754
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v8

    .line 756
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_17

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcDownloadedMap(Ljava/util/Map;Z)V

    .line 759
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_19

    .line 762
    if-nez v18, :cond_18

    if-nez v19, :cond_18

    .line 763
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v18

    .line 766
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcStateMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;Z)V
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_d .. :try_end_d} :catch_1d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_d .. :try_end_d} :catch_1e

    .line 778
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1a

    .line 779
    if-eqz v27, :cond_1a

    .line 782
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v7, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I

    move-result v43

    .line 784
    .local v43, "purchaseinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;I)V
    :try_end_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_e .. :try_end_e} :catch_20

    .line 796
    .end local v43    # "purchaseinfo":I
    :cond_1a
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1b

    .line 797
    if-eqz v47, :cond_1b

    if-eqz v39, :cond_1b

    .line 799
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v39

    move-object/from16 v3, v47

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v41

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_f .. :try_end_f} :catch_21
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_f .. :try_end_f} :catch_22

    .line 813
    :cond_1b
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_1c

    .line 814
    if-eqz v18, :cond_1c

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v49, v0

    if-eqz v49, :cond_1c

    if-eqz v15, :cond_1c

    .line 816
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v15, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v17

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_10 .. :try_end_10} :catch_23
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_10 .. :try_end_10} :catch_24

    .line 830
    :cond_1c
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_33

    .line 831
    const/16 v49, 0x1

    move/from16 v0, v23

    move/from16 v1, v49

    if-ne v0, v1, :cond_33

    .line 832
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 833
    .local v33, "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v32, 0x0

    .line 834
    .local v32, "licenseExistence":Z
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v28, v0

    .line 835
    .local v28, "lInfoCnt":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_14
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_31

    .line 838
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    aget-object v50, v36, v24

    move-object/from16 v0, v50

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_11 .. :try_end_11} :catch_26

    move-result v32

    .line 850
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v29

    .line 852
    .local v29, "lInfoLicenseId":Ljava/lang/String;
    const/16 v49, 0x1

    move/from16 v0, v32

    move/from16 v1, v49

    if-ne v0, v1, :cond_2b

    .line 853
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :goto_16
    add-int/lit8 v24, v24, 0x1

    goto :goto_14

    .line 444
    .end local v9    # "drmLicenseExistenceInvoked":Z
    .end local v10    # "drmLicenseInvoked":Z
    .end local v24    # "i":I
    .end local v28    # "lInfoCnt":I
    .end local v29    # "lInfoLicenseId":Ljava/lang/String;
    .end local v32    # "licenseExistence":Z
    .end local v33    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v21    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_1d
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    .line 462
    .end local v21    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :catch_0
    move-exception v20

    .line 463
    .local v20, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 467
    const/16 v45, 0x0

    .line 1026
    .end local v5    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v7    # "crid":Ljava/lang/String;
    .end local v8    # "downloaded":Z
    .end local v12    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v13    # "fcLicenseInvoked":Z
    .end local v14    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v15    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v16    # "fcPurchaseInvoked":Z
    .end local v17    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v18    # "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v19    # "fcinfoinvoked":Z
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v22    # "getFcLicenseFlg":Z
    .end local v23    # "getMetaLicenseFlg":Z
    .end local v25    # "i$":I
    .end local v27    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v31    # "len$":I
    .end local v36    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v37    # "metaLicenseInvoked":Z
    .end local v38    # "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v40    # "metaPurchaseInvoked":Z
    .end local v41    # "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v44    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v45    # "result":Landroid/database/MatrixCursor;
    .end local v47    # "stinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v48    # "stinfoinvoked":Z
    :cond_1e
    :goto_17
    return-object v45

    .line 468
    .restart local v5    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .restart local v7    # "crid":Ljava/lang/String;
    .restart local v8    # "downloaded":Z
    .restart local v12    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v13    # "fcLicenseInvoked":Z
    .restart local v14    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v15    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v16    # "fcPurchaseInvoked":Z
    .restart local v17    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v18    # "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v19    # "fcinfoinvoked":Z
    .restart local v22    # "getFcLicenseFlg":Z
    .restart local v23    # "getMetaLicenseFlg":Z
    .restart local v25    # "i$":I
    .restart local v27    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v31    # "len$":I
    .restart local v36    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v37    # "metaLicenseInvoked":Z
    .restart local v38    # "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v40    # "metaPurchaseInvoked":Z
    .restart local v41    # "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v44    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .restart local v45    # "result":Landroid/database/MatrixCursor;
    .restart local v47    # "stinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v48    # "stinfoinvoked":Z
    :catch_1
    move-exception v46

    .line 469
    .local v46, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 470
    const/16 v47, 0x0

    goto/16 :goto_2

    .line 478
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_1f
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    move-object/from16 v3, v52

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v18

    .line 480
    if-eqz v18, :cond_20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v49, v0

    if-eqz v49, :cond_20

    .line 481
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v27, v0
    :try_end_12
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_12 .. :try_end_12} :catch_3

    .line 493
    :cond_20
    :goto_18
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 483
    :catch_2
    move-exception v20

    .line 484
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 488
    const/16 v45, 0x0

    goto :goto_17

    .line 489
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_3
    move-exception v46

    .line 490
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 491
    const/16 v18, 0x0

    goto :goto_18

    .line 510
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v9    # "drmLicenseExistenceInvoked":Z
    .restart local v10    # "drmLicenseInvoked":Z
    :catch_4
    move-exception v20

    .line 511
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 515
    const/16 v45, 0x0

    goto :goto_17

    .line 516
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_5
    move-exception v11

    .line 517
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 527
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_6
    move-exception v20

    .line 528
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 532
    const/16 v45, 0x0

    goto :goto_17

    .line 533
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_7
    move-exception v11

    .line 534
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 543
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_8
    move-exception v20

    .line 544
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 548
    const/16 v45, 0x0

    goto :goto_17

    .line 549
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_9
    move-exception v46

    .line 550
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 561
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_a
    move-exception v20

    .line 562
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 566
    const/16 v45, 0x0

    goto :goto_17

    .line 567
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_b
    move-exception v46

    .line 568
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 576
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_c
    move-exception v20

    .line 577
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 581
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 582
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_d
    move-exception v46

    .line 583
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 595
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_e
    move-exception v20

    .line 596
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 600
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 601
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_f
    move-exception v46

    .line 602
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 616
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_21
    if-nez v10, :cond_22

    .line 617
    const/4 v10, 0x1

    .line 618
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 620
    :cond_22
    if-nez v9, :cond_23

    if-eqz v27, :cond_23

    .line 621
    const/4 v9, 0x1

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 625
    :cond_23
    const/16 v37, 0x1

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v36

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0
    :try_end_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_13 .. :try_end_13} :catch_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_13 .. :try_end_13} :catch_12

    const/16 v50, -0x8000

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_24

    if-nez v36, :cond_25

    .line 629
    :cond_24
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 631
    :cond_25
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 634
    :catch_10
    move-exception v11

    .line 635
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v23, 0x0

    .line 636
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 637
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_11
    move-exception v20

    .line 638
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 642
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 643
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_12
    move-exception v46

    .line 644
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v23, 0x0

    .line 645
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 659
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_26
    if-nez v10, :cond_27

    .line 660
    const/4 v10, 0x1

    .line 661
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 663
    :cond_27
    if-nez v9, :cond_28

    if-eqz v27, :cond_28

    .line 664
    const/4 v9, 0x1

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-static/range {v50 .. v50}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Byte;->byteValue()B

    move-result v50

    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v53, v0

    aput-object v53, v51, v52

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 668
    :cond_28
    const/4 v13, 0x1

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v12

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0
    :try_end_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_14 .. :try_end_14} :catch_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_14 .. :try_end_14} :catch_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_14 .. :try_end_14} :catch_15

    const/16 v50, -0x8000

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_29

    if-nez v12, :cond_2a

    .line 672
    :cond_29
    const/16 v22, 0x0

    goto/16 :goto_b

    .line 674
    :cond_2a
    const/16 v22, 0x1

    goto/16 :goto_b

    .line 677
    :catch_13
    move-exception v11

    .line 678
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v22, 0x0

    .line 679
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 680
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_14
    move-exception v20

    .line 681
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 685
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 686
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_15
    move-exception v46

    .line 687
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v22, 0x0

    .line 688
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 699
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_16
    move-exception v20

    .line 700
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 704
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 705
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_17
    move-exception v46

    .line 706
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 716
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_18
    move-exception v20

    .line 717
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 721
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 722
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_19
    move-exception v46

    .line 723
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 734
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1a
    move-exception v20

    .line 735
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 739
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 740
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1b
    move-exception v46

    .line 741
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 749
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1c
    move-exception v46

    .line 750
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 768
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1d
    move-exception v20

    .line 769
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 773
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 774
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1e
    move-exception v46

    .line 775
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 785
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1f
    move-exception v20

    .line 786
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 790
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 791
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_20
    move-exception v11

    .line 792
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 802
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_21
    move-exception v20

    .line 803
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 807
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 808
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_22
    move-exception v6

    .line 809
    .local v6, "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 819
    .end local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_23
    move-exception v20

    .line 820
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 824
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 825
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_24
    move-exception v6

    .line 826
    .restart local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 840
    .end local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v24    # "i":I
    .restart local v28    # "lInfoCnt":I
    .restart local v32    # "licenseExistence":Z
    .restart local v33    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_25
    move-exception v20

    .line 841
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 845
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 846
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_26
    move-exception v6

    .line 847
    .restart local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 855
    .end local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v29    # "lInfoLicenseId":Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0

    if-nez v49, :cond_2c

    .line 857
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 859
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_2e

    .line 861
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_2d

    .line 862
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 865
    :cond_2d
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 868
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_30

    .line 870
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_2f

    .line 871
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 874
    :cond_2f
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 878
    :cond_30
    aget-object v49, v36, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x3

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_16

    .line 883
    .end local v29    # "lInfoLicenseId":Ljava/lang/String;
    :cond_31
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v42, v0

    .line 884
    .local v42, "pInfoCnt":I
    const/16 v34, 0x0

    .line 885
    .local v34, "licenseState":Ljava/lang/Integer;
    const/16 v24, 0x0

    :goto_19
    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_32

    .line 886
    aget-object v49, v39, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "licenseState":Ljava/lang/Integer;
    check-cast v34, Ljava/lang/Integer;

    .line 887
    .restart local v34    # "licenseState":Ljava/lang/Integer;
    if-eqz v34, :cond_32

    .line 888
    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    add-int/lit8 v24, v24, 0x1

    goto :goto_19

    .line 894
    :cond_32
    if-eqz v34, :cond_33

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaLisenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 899
    .end local v24    # "i":I
    .end local v28    # "lInfoCnt":I
    .end local v32    # "licenseExistence":Z
    .end local v33    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v34    # "licenseState":Ljava/lang/Integer;
    .end local v42    # "pInfoCnt":I
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3c

    .line 900
    const/16 v49, 0x1

    move/from16 v0, v22

    move/from16 v1, v49

    if-ne v0, v1, :cond_3c

    .line 901
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 902
    .restart local v33    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v32, 0x0

    .line 903
    .restart local v32    # "licenseExistence":Z
    array-length v0, v12

    move/from16 v28, v0

    .line 904
    .restart local v28    # "lInfoCnt":I
    const/16 v24, 0x0

    .restart local v24    # "i":I
    :goto_1a
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_3a

    .line 907
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v49, v0

    aget-object v50, v12, v24

    move-object/from16 v0, v50

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_15
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_15 .. :try_end_15} :catch_27
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_15 .. :try_end_15} :catch_28

    move-result v32

    .line 919
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v50, v0

    move-object/from16 v0, v50

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v29

    .line 921
    .restart local v29    # "lInfoLicenseId":Ljava/lang/String;
    const/16 v49, 0x1

    move/from16 v0, v32

    move/from16 v1, v49

    if-ne v0, v1, :cond_34

    .line 922
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    :goto_1c
    add-int/lit8 v24, v24, 0x1

    goto :goto_1a

    .line 909
    .end local v29    # "lInfoLicenseId":Ljava/lang/String;
    :catch_27
    move-exception v20

    .line 910
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 914
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 915
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_28
    move-exception v6

    .line 916
    .restart local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 924
    .end local v6    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v29    # "lInfoLicenseId":Ljava/lang/String;
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0

    if-nez v49, :cond_35

    .line 926
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 928
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_37

    .line 930
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_36

    .line 931
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 934
    :cond_36
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 937
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v49, v0

    const/16 v50, 0x2

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_39

    .line 939
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_38

    .line 940
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x2

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 943
    :cond_38
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 947
    :cond_39
    aget-object v49, v12, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v49, v0

    const/16 v50, 0x3

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 952
    .end local v29    # "lInfoLicenseId":Ljava/lang/String;
    :cond_3a
    array-length v0, v15

    move/from16 v42, v0

    .line 953
    .restart local v42    # "pInfoCnt":I
    const/16 v34, 0x0

    .line 954
    .restart local v34    # "licenseState":Ljava/lang/Integer;
    const/16 v24, 0x0

    :goto_1d
    move/from16 v0, v24

    move/from16 v1, v42

    if-ge v0, v1, :cond_3b

    .line 955
    aget-object v49, v15, v24

    move-object/from16 v0, v49

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v49, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "licenseState":Ljava/lang/Integer;
    check-cast v34, Ljava/lang/Integer;

    .line 956
    .restart local v34    # "licenseState":Ljava/lang/Integer;
    if-eqz v34, :cond_3b

    .line 957
    move-object/from16 v0, v34

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 954
    add-int/lit8 v24, v24, 0x1

    goto :goto_1d

    .line 963
    :cond_3b
    if-eqz v34, :cond_3c

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcLicenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 968
    .end local v24    # "i":I
    .end local v28    # "lInfoCnt":I
    .end local v32    # "licenseExistence":Z
    .end local v33    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v34    # "licenseState":Ljava/lang/Integer;
    .end local v42    # "pInfoCnt":I
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetScheduleFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3d

    .line 969
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mSchedlList:Ljava/util/ArrayList;

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iput-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 973
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v51, v0

    invoke-virtual/range {v49 .. v51}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v49

    if-nez v49, :cond_3d

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v52, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v50

    move-object/from16 v1, v51

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setTmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_16
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_16 .. :try_end_16} :catch_29

    .line 981
    :cond_3d
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_3f

    .line 984
    if-nez v36, :cond_3e

    if-nez v37, :cond_3e

    .line 985
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v36

    .line 987
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_17
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_17 .. :try_end_17} :catch_2a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_17 .. :try_end_17} :catch_2b

    .line 998
    :cond_3f
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseFlg:Z

    move/from16 v49, v0

    if-eqz v49, :cond_41

    .line 1001
    if-nez v39, :cond_40

    if-nez v40, :cond_40

    .line 1002
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v51, v0

    move-object/from16 v0, v49

    move/from16 v1, v50

    move-object/from16 v2, v51

    invoke-virtual {v0, v7, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v39

    .line 1005
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_18
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_18 .. :try_end_18} :catch_2c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_18 .. :try_end_18} :catch_2d

    .line 1017
    :cond_41
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCridMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v50, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchMetaInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v50, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    move-object/from16 v49, v0

    const/16 v52, 0x0

    move/from16 v0, v52

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v49

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v49

    check-cast v49, [Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v45

    move-object/from16 v2, v51

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 420
    add-int/lit8 v25, v26, 0x1

    move/from16 v26, v25

    .end local v25    # "i$":I
    .restart local v26    # "i$":I
    goto/16 :goto_0

    .line 977
    .end local v26    # "i$":I
    .restart local v25    # "i$":I
    :catch_29
    move-exception v46

    .line 978
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 988
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_2a
    move-exception v20

    .line 989
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 993
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 994
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2b
    move-exception v46

    .line 995
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1006
    .end local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_2c
    move-exception v20

    .line 1007
    .restart local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v20 .. v20}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1011
    const/16 v45, 0x0

    goto/16 :goto_17

    .line 1012
    .end local v20    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2d
    move-exception v46

    .line 1013
    .restart local v46    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v46 .. v46}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method private getListInfo(Ljava/util/List;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 11
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
    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "arrrecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-result-object v4

    .line 361
    .local v4, "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :try_start_0
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchInit()V

    .line 362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .line 363
    .local v1, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-boolean v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    invoke-virtual {v7, v1, v8, v9, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execSearchMetaInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 366
    goto :goto_0

    .line 381
    .end local v1    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchClose()V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    if-eqz v0, :cond_1

    array-length v6, v0

    if-nez v6, :cond_2

    .line 391
    :cond_1
    const-string v6, "%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "No data is selected in the specified SearchCondition."

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    new-array v0, v10, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    :cond_2
    move-object v6, v0

    .line 397
    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    return-object v6

    .line 382
    .restart local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 383
    .local v5, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 367
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1
    move-exception v2

    .line 368
    .local v2, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 381
    :try_start_3
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchClose()V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 382
    :catch_2
    move-exception v5

    .line 383
    .restart local v5    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 373
    .end local v2    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v5    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_3
    move-exception v5

    .line 374
    .restart local v5    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :try_start_4
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 381
    :try_start_5
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchClose()V
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 382
    :catch_4
    move-exception v5

    .line 383
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 380
    .end local v5    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catchall_0
    move-exception v7

    .line 381
    :try_start_6
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchClose()V
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_5

    .line 387
    throw v7

    .line 382
    :catch_5
    move-exception v5

    .line 383
    .restart local v5    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private init([Ljava/lang/String;I)V
    .locals 3
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v2, 0x5

    .line 168
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mQueryId:I

    .line 170
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mEntityId:Ljava/lang/String;

    .line 171
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryMode:Ljava/lang/String;

    .line 172
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mDictionaryChange:Z

    .line 174
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 175
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 176
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 177
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    .line 178
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .line 180
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mMap:Ljava/util/Map;

    .line 184
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 185
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 191
    :cond_0
    return-void
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 261
    .local v0, "column":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaDetailFlg:Z

    goto :goto_0

    .line 263
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    goto :goto_0

    .line 265
    :cond_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    goto :goto_0

    .line 267
    :cond_3
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    goto :goto_0

    .line 269
    :cond_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 270
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    goto :goto_0

    .line 271
    :cond_5
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 272
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    goto :goto_0

    .line 273
    :cond_6
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 274
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    goto :goto_0

    .line 275
    :cond_7
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    goto :goto_0

    .line 277
    :cond_8
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 278
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetScheduleFlg:Z

    goto :goto_0

    .line 279
    :cond_9
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 280
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseFlg:Z

    goto/16 :goto_0

    .line 281
    :cond_a
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 282
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseFlg:Z

    goto/16 :goto_0

    .line 283
    :cond_b
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 284
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    goto/16 :goto_0

    .line 285
    :cond_c
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 287
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    goto/16 :goto_0

    .line 288
    :cond_d
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 290
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    goto/16 :goto_0

    .line 291
    :cond_e
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 293
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 294
    :cond_f
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 302
    .end local v0    # "column":Ljava/lang/String;
    :cond_10
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
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->init([Ljava/lang/String;I)V

    .line 116
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->judgeCallMethod()V

    .line 123
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 124
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 126
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    .line 132
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 133
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->getListInfo(Ljava/util/List;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v2

    .line 134
    .local v2, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v2, :cond_0

    .line 139
    array-length v3, v2

    if-nez v3, :cond_2

    .line 144
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mColumns:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 147
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchSv;->getDetailInfo([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Landroid/database/Cursor;

    move-result-object v0

    .line 151
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
