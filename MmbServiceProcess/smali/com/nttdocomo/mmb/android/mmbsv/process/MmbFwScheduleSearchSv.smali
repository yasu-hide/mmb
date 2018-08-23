.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;
.super Ljava/lang/Object;
.source "MmbFwScheduleSearchSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# instance fields
.field private mAuthority:Ljava/lang/String;

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

.field private mReserveType:Ljava/lang/String;

.field private mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

.field private mScheduleType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 202
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 203
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 204
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 205
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 206
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 207
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 208
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 209
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 210
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 211
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 212
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 213
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 214
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 215
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 216
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 217
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    if-nez p1, :cond_1

    .line 220
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 237
    :goto_0
    return v5

    .line 223
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

    .line 224
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 225
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

    .line 231
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "aSelection"    # Ljava/lang/String;
    .param p2, "aSelectionArgs"    # [Ljava/lang/String;
    .param p3, "aSortOrder"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x8

    const/4 v6, 0x0

    .line 312
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v4, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, "searchstring":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mAuthority:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "authoritycondition":Ljava/lang/String;
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mAuthority:Ljava/lang/String;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 317
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mAuthority:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mAuthority:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string v7, "mmbPackageName = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    .end local v0    # "authoritycondition":Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mScheduleType:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 330
    :try_start_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mScheduleType:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvScheduleType(I)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "schetypecondition":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 392
    .end local v3    # "schetypecondition":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v6

    .line 338
    .restart local v3    # "schetypecondition":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v3    # "schetypecondition":Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mReserveType:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 350
    :try_start_1
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mReserveType:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvReserveType(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "rsvtypecondition":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 358
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 368
    .end local v2    # "rsvtypecondition":Ljava/lang/String;
    :cond_4
    aget-object v7, p2, v10

    if-eqz v7, :cond_5

    .line 369
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v7, p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvServiceId([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "sidcondition":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 377
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    const-string v7, " AND "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    .end local v5    # "sidcondition":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 387
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 392
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 340
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 360
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 361
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getDetailInfo(Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
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
    .line 439
    .local p1, "aScheduleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    new-instance v38, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-interface/range {v43 .. v44}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Ljava/lang/String;

    move-object/from16 v0, v38

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 444
    .local v38, "result":Landroid/database/MatrixCursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_1f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    .line 445
    .local v39, "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mQueryId:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 449
    move-object/from16 v0, v39

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCrid:Ljava/lang/String;

    .line 450
    .local v5, "crid":Ljava/lang/String;
    const/16 v23, 0x0

    .line 451
    .local v23, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/16 v41, 0x0

    .line 452
    .local v41, "stinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/16 v16, 0x0

    .line 453
    .local v16, "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    const/16 v42, 0x0

    .line 454
    .local v42, "stinfoinvoked":Z
    const/16 v17, 0x0

    .line 455
    .local v17, "fcinfoinvoked":Z
    const/4 v6, 0x0

    .line 456
    .local v6, "downloaded":Z
    const/16 v33, 0x0

    .line 457
    .local v33, "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/4 v13, 0x0

    .line 458
    .local v13, "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/16 v34, 0x0

    .line 459
    .local v34, "metaPurchaseInvoked":Z
    const/4 v14, 0x0

    .line 460
    .local v14, "fcPurchaseInvoked":Z
    const/16 v31, 0x0

    .line 461
    .local v31, "metaLicenseInvoked":Z
    const/4 v11, 0x0

    .line 462
    .local v11, "fcLicenseInvoked":Z
    const/16 v35, 0x0

    .line 463
    .local v35, "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    .line 464
    .local v15, "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v30, 0x0

    .line 465
    .local v30, "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    const/4 v10, 0x0

    .line 466
    .local v10, "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v32, "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v12, "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 469
    .local v20, "getMetaLicenseFlg":Z
    const/16 v19, 0x0

    .line 470
    .local v19, "getFcLicenseFlg":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v43, v0

    if-nez v43, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v43, v0

    if-nez v43, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v43, v0

    if-nez v43, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1

    .line 476
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v41

    .line 488
    :goto_1
    const/16 v42, 0x1

    .line 489
    if-eqz v41, :cond_20

    .line 490
    move-object/from16 v23, v41

    .line 512
    :cond_1
    :goto_2
    new-instance v43, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct/range {v43 .. v43}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    .line 513
    new-instance v43, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    invoke-direct/range {v43 .. v43}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    const/16 v44, -0x8000

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput-short v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmMetadatainfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 518
    const/4 v8, 0x0

    .line 519
    .local v8, "drmLicenseInvoked":Z
    const/4 v7, 0x0

    .line 520
    .local v7, "drmLicenseExistenceInvoked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_2

    .line 523
    const/4 v8, 0x1

    .line 524
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_1 .. :try_end_1} :catch_5

    .line 536
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_3

    .line 537
    if-eqz v23, :cond_3

    .line 540
    const/4 v7, 0x1

    .line 541
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_7

    .line 554
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_4

    .line 556
    const/16 v34, 0x1

    .line 557
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_3 .. :try_end_3} :catch_9

    move-result-object v33

    .line 569
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_5

    .line 572
    if-nez v41, :cond_5

    if-nez v42, :cond_5

    .line 573
    const/16 v42, 0x1

    .line 574
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v41

    .line 587
    :cond_5
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_6

    .line 589
    const/4 v14, 0x1

    .line 590
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_d

    move-result-object v13

    .line 602
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_7

    .line 606
    if-nez v16, :cond_7

    if-nez v17, :cond_7

    .line 607
    const/16 v17, 0x1

    .line 608
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_f

    move-result-object v16

    .line 621
    :cond_7
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_9

    .line 623
    if-nez v33, :cond_8

    if-nez v34, :cond_8

    .line 624
    const/16 v34, 0x1

    .line 625
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_12

    move-result-object v33

    .line 628
    :cond_8
    if-nez v33, :cond_22

    .line 629
    const/16 v20, 0x0

    .line 664
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_b

    .line 666
    if-nez v13, :cond_a

    if-nez v14, :cond_a

    .line 667
    const/4 v14, 0x1

    .line 668
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_15

    move-result-object v13

    .line 671
    :cond_a
    if-nez v13, :cond_27

    .line 672
    const/16 v19, 0x0

    .line 707
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaDetailFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_d

    .line 710
    if-nez v41, :cond_c

    if-nez v42, :cond_c

    .line 711
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-result-object v41

    .line 714
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_17

    .line 725
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_f

    .line 728
    if-nez v30, :cond_e

    if-nez v31, :cond_e

    .line 729
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v30

    .line 731
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_a .. :try_end_a} :catch_18
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_a .. :try_end_a} :catch_19

    .line 742
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_11

    .line 746
    if-nez v33, :cond_10

    if-nez v34, :cond_10

    .line 747
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v33

    .line 750
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_b .. :try_end_b} :catch_1a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_b .. :try_end_b} :catch_1b

    .line 761
    :cond_11
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    move/from16 v43, v0

    if-nez v43, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_13

    .line 762
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v6

    .line 764
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_14

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcDownloadedMap(Ljava/util/Map;Z)V

    .line 767
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_16

    .line 771
    if-nez v16, :cond_15

    if-nez v17, :cond_15

    .line 772
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v16

    .line 775
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcStateMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;Z)V
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_c .. :try_end_c} :catch_1c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_c .. :try_end_c} :catch_1d

    .line 787
    :cond_16
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_18

    .line 790
    if-nez v10, :cond_17

    if-nez v11, :cond_17

    .line 791
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v10

    .line 793
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_d .. :try_end_d} :catch_1e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_d .. :try_end_d} :catch_1f

    .line 804
    :cond_18
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1a

    .line 808
    if-nez v13, :cond_19

    if-nez v14, :cond_19

    .line 809
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v13

    .line 812
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_e .. :try_end_e} :catch_20
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_e .. :try_end_e} :catch_21

    .line 823
    :cond_1a
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1b

    .line 826
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v29

    .line 827
    .local v29, "manifestoinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;I)V
    :try_end_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_f .. :try_end_f} :catch_22

    .line 832
    .end local v29    # "manifestoinfo":I
    :cond_1b
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1c

    .line 834
    if-eqz v23, :cond_1c

    .line 836
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I

    move-result v37

    .line 838
    .local v37, "purchaseinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;I)V
    :try_end_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_10 .. :try_end_10} :catch_23
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_10 .. :try_end_10} :catch_24

    .line 850
    .end local v37    # "purchaseinfo":I
    :cond_1c
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1d

    .line 851
    if-eqz v41, :cond_1d

    if-eqz v33, :cond_1d

    .line 853
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v33

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v35

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_11 .. :try_end_11} :catch_25
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_11 .. :try_end_11} :catch_26

    .line 867
    :cond_1d
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1e

    .line 868
    if-eqz v16, :cond_1e

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1e

    if-eqz v13, :cond_1e

    .line 870
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v13, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v15

    .line 872
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_12
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_12 .. :try_end_12} :catch_27
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_12 .. :try_end_12} :catch_28

    .line 884
    :cond_1e
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_34

    .line 885
    const/16 v43, 0x1

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_34

    .line 886
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 887
    .local v27, "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 888
    .local v26, "licenseExistence":Z
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v24, v0

    .line 889
    .local v24, "lInfoCnt":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_15
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_32

    .line 892
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    aget-object v44, v30, v21

    move-object/from16 v0, v44

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_13 .. :try_end_13} :catch_29
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_13 .. :try_end_13} :catch_2a

    move-result v26

    .line 904
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v25

    .line 906
    .local v25, "lInfoLicenseId":Ljava/lang/String;
    const/16 v43, 0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-ne v0, v1, :cond_2c

    .line 907
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    :goto_17
    add-int/lit8 v21, v21, 0x1

    goto :goto_15

    .line 478
    .end local v7    # "drmLicenseExistenceInvoked":Z
    .end local v8    # "drmLicenseInvoked":Z
    .end local v21    # "i":I
    .end local v24    # "lInfoCnt":I
    .end local v25    # "lInfoLicenseId":Ljava/lang/String;
    .end local v26    # "licenseExistence":Z
    .end local v27    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v18

    .line 479
    .local v18, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 483
    const/16 v38, 0x0

    .line 1032
    .end local v5    # "crid":Ljava/lang/String;
    .end local v6    # "downloaded":Z
    .end local v10    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v11    # "fcLicenseInvoked":Z
    .end local v12    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v14    # "fcPurchaseInvoked":Z
    .end local v15    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v17    # "fcinfoinvoked":Z
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v19    # "getFcLicenseFlg":Z
    .end local v20    # "getMetaLicenseFlg":Z
    .end local v23    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v30    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v31    # "metaLicenseInvoked":Z
    .end local v32    # "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v33    # "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v34    # "metaPurchaseInvoked":Z
    .end local v35    # "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v38    # "result":Landroid/database/MatrixCursor;
    .end local v39    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .end local v41    # "stinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v42    # "stinfoinvoked":Z
    :cond_1f
    :goto_18
    return-object v38

    .line 484
    .restart local v5    # "crid":Ljava/lang/String;
    .restart local v6    # "downloaded":Z
    .restart local v10    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v11    # "fcLicenseInvoked":Z
    .restart local v12    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v14    # "fcPurchaseInvoked":Z
    .restart local v15    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "fcinfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v17    # "fcinfoinvoked":Z
    .restart local v19    # "getFcLicenseFlg":Z
    .restart local v20    # "getMetaLicenseFlg":Z
    .restart local v23    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v30    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v31    # "metaLicenseInvoked":Z
    .restart local v32    # "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v33    # "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v34    # "metaPurchaseInvoked":Z
    .restart local v35    # "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v38    # "result":Landroid/database/MatrixCursor;
    .restart local v39    # "schedule":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .restart local v41    # "stinfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v42    # "stinfoinvoked":Z
    :catch_1
    move-exception v40

    .line 485
    .local v40, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 486
    const/16 v41, 0x0

    goto/16 :goto_1

    .line 494
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_20
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;

    move-result-object v16

    .line 496
    if-eqz v16, :cond_21

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    if-eqz v43, :cond_21

    .line 497
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v23, v0
    :try_end_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_14 .. :try_end_14} :catch_3

    .line 509
    :cond_21
    :goto_19
    const/16 v17, 0x1

    goto/16 :goto_2

    .line 499
    :catch_2
    move-exception v18

    .line 500
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 504
    const/16 v38, 0x0

    goto :goto_18

    .line 505
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_3
    move-exception v40

    .line 506
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 507
    const/16 v16, 0x0

    goto :goto_19

    .line 526
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    .restart local v7    # "drmLicenseExistenceInvoked":Z
    .restart local v8    # "drmLicenseInvoked":Z
    :catch_4
    move-exception v18

    .line 527
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 531
    const/16 v38, 0x0

    goto :goto_18

    .line 532
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_5
    move-exception v9

    .line 533
    .local v9, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 543
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_6
    move-exception v18

    .line 544
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 548
    const/16 v38, 0x0

    goto :goto_18

    .line 549
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_7
    move-exception v9

    .line 550
    .restart local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 559
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_8
    move-exception v18

    .line 560
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 564
    const/16 v38, 0x0

    goto :goto_18

    .line 565
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_9
    move-exception v40

    .line 566
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 577
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_a
    move-exception v18

    .line 578
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 582
    const/16 v38, 0x0

    goto :goto_18

    .line 583
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_b
    move-exception v40

    .line 584
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 592
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_c
    move-exception v18

    .line 593
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 597
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 598
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_d
    move-exception v40

    .line 599
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 611
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_e
    move-exception v18

    .line 612
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 616
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 617
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_f
    move-exception v40

    .line 618
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 632
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_22
    if-nez v8, :cond_23

    .line 633
    const/4 v8, 0x1

    .line 634
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 636
    :cond_23
    if-nez v7, :cond_24

    if-eqz v23, :cond_24

    .line 637
    const/4 v7, 0x1

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 641
    :cond_24
    const/16 v31, 0x1

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v30

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0
    :try_end_15
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_15 .. :try_end_15} :catch_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_15 .. :try_end_15} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_15 .. :try_end_15} :catch_12

    const/16 v44, -0x8000

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_25

    if-nez v30, :cond_26

    .line 645
    :cond_25
    const/16 v20, 0x0

    goto/16 :goto_9

    .line 647
    :cond_26
    const/16 v20, 0x1

    goto/16 :goto_9

    .line 650
    :catch_10
    move-exception v9

    .line 651
    .restart local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v20, 0x0

    .line 652
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 653
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_11
    move-exception v18

    .line 654
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 658
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 659
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_12
    move-exception v40

    .line 660
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v20, 0x0

    .line 661
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 675
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_27
    if-nez v8, :cond_28

    .line 676
    const/4 v8, 0x1

    .line 677
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 679
    :cond_28
    if-nez v7, :cond_29

    if-eqz v23, :cond_29

    .line 680
    const/4 v7, 0x1

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    const/16 v45, 0x1

    move/from16 v0, v45

    new-array v0, v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 684
    :cond_29
    const/4 v11, 0x1

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v10

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0
    :try_end_16
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_16 .. :try_end_16} :catch_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_16 .. :try_end_16} :catch_15

    const/16 v44, -0x8000

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_2a

    if-nez v10, :cond_2b

    .line 688
    :cond_2a
    const/16 v19, 0x0

    goto/16 :goto_a

    .line 690
    :cond_2b
    const/16 v19, 0x1

    goto/16 :goto_a

    .line 693
    :catch_13
    move-exception v9

    .line 694
    .restart local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v19, 0x0

    .line 695
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 696
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_14
    move-exception v18

    .line 697
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 701
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 702
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_15
    move-exception v40

    .line 703
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v19, 0x0

    .line 704
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 715
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_16
    move-exception v18

    .line 716
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 720
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 721
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_17
    move-exception v40

    .line 722
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 732
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_18
    move-exception v18

    .line 733
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 737
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 738
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_19
    move-exception v40

    .line 739
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 751
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1a
    move-exception v18

    .line 752
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 756
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 757
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1b
    move-exception v40

    .line 758
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 777
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1c
    move-exception v18

    .line 778
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 782
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 783
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1d
    move-exception v40

    .line 784
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 794
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1e
    move-exception v18

    .line 795
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 799
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 800
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1f
    move-exception v40

    .line 801
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 813
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_20
    move-exception v18

    .line 814
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 818
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 819
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_21
    move-exception v40

    .line 820
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 828
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_22
    move-exception v40

    .line 829
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 840
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_23
    move-exception v18

    .line 841
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 845
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 846
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_24
    move-exception v9

    .line 847
    .restart local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 856
    .end local v9    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_25
    move-exception v18

    .line 857
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 861
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 862
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_26
    move-exception v4

    .line 863
    .local v4, "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 873
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_27
    move-exception v18

    .line 874
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 878
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 879
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_28
    move-exception v4

    .line 880
    .restart local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 894
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v21    # "i":I
    .restart local v24    # "lInfoCnt":I
    .restart local v26    # "licenseExistence":Z
    .restart local v27    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_29
    move-exception v18

    .line 895
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 899
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 900
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2a
    move-exception v4

    .line 901
    .restart local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 909
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v25    # "lInfoLicenseId":Ljava/lang/String;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    if-nez v43, :cond_2d

    .line 911
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 913
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2f

    .line 915
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2e

    .line 916
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 919
    :cond_2e
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 922
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_31

    .line 924
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_30

    .line 925
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 928
    :cond_30
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 932
    :cond_31
    aget-object v43, v30, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 937
    .end local v25    # "lInfoLicenseId":Ljava/lang/String;
    :cond_32
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v36, v0

    .line 938
    .local v36, "pInfoCnt":I
    const/16 v28, 0x0

    .line 939
    .local v28, "licenseState":Ljava/lang/Integer;
    const/16 v21, 0x0

    :goto_1a
    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_33

    .line 940
    aget-object v43, v33, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "licenseState":Ljava/lang/Integer;
    check-cast v28, Ljava/lang/Integer;

    .line 941
    .restart local v28    # "licenseState":Ljava/lang/Integer;
    if-eqz v28, :cond_33

    .line 942
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    add-int/lit8 v21, v21, 0x1

    goto :goto_1a

    .line 948
    :cond_33
    if-eqz v28, :cond_34

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaLisenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 953
    .end local v21    # "i":I
    .end local v24    # "lInfoCnt":I
    .end local v26    # "licenseExistence":Z
    .end local v27    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "licenseState":Ljava/lang/Integer;
    .end local v36    # "pInfoCnt":I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_3d

    .line 954
    const/16 v43, 0x1

    move/from16 v0, v19

    move/from16 v1, v43

    if-ne v0, v1, :cond_3d

    .line 955
    new-instance v27, Ljava/util/HashMap;

    invoke-direct/range {v27 .. v27}, Ljava/util/HashMap;-><init>()V

    .line 956
    .restart local v27    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 957
    .restart local v26    # "licenseExistence":Z
    array-length v0, v10

    move/from16 v24, v0

    .line 958
    .restart local v24    # "lInfoCnt":I
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_1b
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_3b

    .line 961
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    aget-object v44, v10, v21

    move-object/from16 v0, v44

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_17
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_17 .. :try_end_17} :catch_2b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_17 .. :try_end_17} :catch_2c

    move-result v26

    .line 973
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v25

    .line 975
    .restart local v25    # "lInfoLicenseId":Ljava/lang/String;
    const/16 v43, 0x1

    move/from16 v0, v26

    move/from16 v1, v43

    if-ne v0, v1, :cond_35

    .line 976
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 958
    :goto_1d
    add-int/lit8 v21, v21, 0x1

    goto :goto_1b

    .line 963
    .end local v25    # "lInfoLicenseId":Ljava/lang/String;
    :catch_2b
    move-exception v18

    .line 964
    .restart local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 968
    const/16 v38, 0x0

    goto/16 :goto_18

    .line 969
    .end local v18    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2c
    move-exception v4

    .line 970
    .restart local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1c

    .line 978
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v25    # "lInfoLicenseId":Ljava/lang/String;
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    if-nez v43, :cond_36

    .line 980
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 982
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_38

    .line 984
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_37

    .line 985
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 988
    :cond_37
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 991
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_3a

    .line 993
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_39

    .line 994
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 997
    :cond_39
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 1001
    :cond_3a
    aget-object v43, v10, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1d

    .line 1006
    .end local v25    # "lInfoLicenseId":Ljava/lang/String;
    :cond_3b
    array-length v0, v13

    move/from16 v36, v0

    .line 1007
    .restart local v36    # "pInfoCnt":I
    const/16 v28, 0x0

    .line 1008
    .restart local v28    # "licenseState":Ljava/lang/Integer;
    const/16 v21, 0x0

    :goto_1e
    move/from16 v0, v21

    move/from16 v1, v36

    if-ge v0, v1, :cond_3c

    .line 1009
    aget-object v43, v13, v21

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    .end local v28    # "licenseState":Ljava/lang/Integer;
    check-cast v28, Ljava/lang/Integer;

    .line 1010
    .restart local v28    # "licenseState":Ljava/lang/Integer;
    if-eqz v28, :cond_3c

    .line 1011
    move-object/from16 v0, v28

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    add-int/lit8 v21, v21, 0x1

    goto :goto_1e

    .line 1017
    :cond_3c
    if-eqz v28, :cond_3d

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcLicenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 1023
    .end local v21    # "i":I
    .end local v24    # "lInfoCnt":I
    .end local v26    # "licenseExistence":Z
    .end local v27    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v28    # "licenseState":Ljava/lang/Integer;
    .end local v36    # "pInfoCnt":I
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCridMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setTmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    move-object/from16 v43, v0

    const/16 v46, 0x0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Ljava/lang/String;

    move-object/from16 v0, v44

    move-object/from16 v1, v38

    move-object/from16 v2, v45

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getListInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "aSearchCondition"    # Ljava/lang/String;
    .param p2, "aSortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "schedulelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    invoke-virtual {v2, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v0    # "schedulelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :goto_0
    return-object v0

    .line 411
    .restart local v0    # "schedulelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    :catch_0
    move-exception v1

    .line 412
    .local v1, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 416
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init([Ljava/lang/String;I)V
    .locals 1
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    .line 165
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mQueryId:I

    .line 167
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mEntityId:Ljava/lang/String;

    .line 168
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryMode:Ljava/lang/String;

    .line 169
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mDictionaryChange:Z

    .line 170
    const/4 v0, 0x5

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mScheduleType:Ljava/lang/String;

    .line 171
    const/4 v0, 0x6

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mReserveType:Ljava/lang/String;

    .line 172
    const/4 v0, 0x7

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mAuthority:Ljava/lang/String;

    .line 174
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 175
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 176
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 177
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    .line 178
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mMap:Ljava/util/Map;

    .line 185
    return-void
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 253
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, "column":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 255
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    goto :goto_0

    .line 256
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    goto :goto_0

    .line 258
    :cond_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    goto :goto_0

    .line 260
    :cond_3
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaDetailFlg:Z

    goto :goto_0

    .line 262
    :cond_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 263
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseFlg:Z

    goto :goto_0

    .line 264
    :cond_5
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 265
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseFlg:Z

    goto :goto_0

    .line 266
    :cond_6
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 267
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    goto :goto_0

    .line 268
    :cond_7
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 269
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    goto :goto_0

    .line 270
    :cond_8
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 271
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    goto :goto_0

    .line 272
    :cond_9
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 273
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    goto/16 :goto_0

    .line 274
    :cond_a
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 275
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    goto/16 :goto_0

    .line 276
    :cond_b
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 278
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    goto/16 :goto_0

    .line 279
    :cond_c
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 281
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    goto/16 :goto_0

    .line 282
    :cond_d
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 284
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 285
    :cond_e
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 292
    .end local v0    # "column":Ljava/lang/String;
    :cond_f
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

    .line 113
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->init([Ljava/lang/String;I)V

    .line 114
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->judgeCallMethod()V

    .line 121
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 122
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "expression":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 129
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvScheduleOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 130
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 131
    invoke-direct {p0, v1, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->getListInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 132
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 142
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mColumns:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 145
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwScheduleSearchSv;->getDetailInfo(Ljava/util/ArrayList;)Landroid/database/Cursor;

    move-result-object v0

    .line 149
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
