.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;
.super Ljava/lang/Object;
.source "MmbFwMetaSearchServiceSv.java"

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

.field private mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

.field private mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

.field private mQueryId:I

.field private mServiceId:I

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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 9
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    if-nez p1, :cond_1

    .line 195
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SEARCH_SID_COLUMN_LIST:Ljava/util/List;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

    :cond_0
    move v4, v5

    .line 212
    :goto_0
    return v4

    .line 198
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

    .line 199
    .local v1, "column":Ljava/lang/String;
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SEARCH_SID_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 200
    const-string v6, "%s%s%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "The specified Column is illegal. The target Column is \'"

    aput-object v8, v7, v4

    aput-object v1, v7, v5

    const/4 v5, 0x2

    const-string v8, "\'."

    aput-object v8, v7, v5

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private createCondition()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .locals 6

    .prologue
    .line 253
    new-instance v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    invoke-direct {v1}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;-><init>()V

    .line 254
    .local v1, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    new-instance v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    invoke-direct {v0}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;-><init>()V

    .line 255
    .local v0, "condition":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;-><init>()V

    iput-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .line 256
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_SERVICEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    .line 257
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;->OPERATOR_EQUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    iput-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->operatorType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchOperator;

    .line 258
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    new-instance v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    invoke-direct {v4}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;-><init>()V

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 259
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iget-object v3, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    sget-object v4, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;->FIELD_VALUE_TYPE_NUMBER:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;->valueType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldValueType;

    .line 260
    new-instance v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mServiceId:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;-><init>(J)V

    .line 262
    .local v2, "number":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;
    iget-object v3, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;->field:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    iput-object v2, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    .line 263
    new-instance v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    invoke-direct {v3}, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;-><init>()V

    iput-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    .line 264
    iget-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->andCondition:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;

    const/4 v4, 0x1

    new-array v4, v4, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    iput-object v4, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchConditionTable;->condition:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchCondition;

    .line 265
    sget-object v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;->SORT_ORDER_NONE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    iput-object v3, v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;->sortOrder:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchSortOrder;

    .line 269
    return-object v1
.end method

.method private getDetailInfo([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Landroid/database/Cursor;
    .locals 14
    .param p1, "aRecords"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 334
    new-instance v8, Landroid/database/MatrixCursor;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

    new-array v10, v13, [Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 336
    .local v8, "result":Landroid/database/MatrixCursor;
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v7, v0, v4

    .line 337
    .local v7, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mQueryId:I

    invoke-virtual {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 339
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    invoke-virtual {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 340
    iget-object v1, v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;->field:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;

    .local v1, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_4

    aget-object v2, v1, v3

    .line 341
    .local v2, "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_NAME:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v9, v10, :cond_1

    .line 342
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    const-string v11, "metaServiceName"

    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 344
    :cond_1
    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_NAME_LENGTH:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v9, v10, :cond_2

    .line 345
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    const-string v11, "metaServiceNameLength"

    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueString;->value:Ljava/lang/String;

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 347
    :cond_2
    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_LOGO_URI:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v9, v10, :cond_3

    .line 348
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    const-string v11, "metaServiceLogo"

    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;

    iget-object v9, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueList;->value:[Ljava/lang/String;

    invoke-virtual {v12, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toSeparateString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 351
    :cond_3
    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->index:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    sget-object v10, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->SVI_SERVICEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    if-ne v9, v10, :cond_0

    .line 352
    iget-object v9, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;->value:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValue;

    check-cast v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;

    iget-wide v10, v9, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchFieldValueNumber;->value:J

    long-to-int v9, v10

    iput v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mServiceId:I

    goto :goto_2

    .line 357
    .end local v2    # "field":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    :cond_4
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    const-string v10, "metaServiceID"

    iget v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mServiceId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

    new-array v12, v13, [Ljava/lang/String;

    invoke-interface {v9, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v8, v11, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 336
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto/16 :goto_0

    .line 364
    .end local v1    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchField;
    .end local v6    # "len$":I
    .end local v7    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_5
    return-object v8
.end method

.method private getListInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .locals 13
    .param p1, "aExpression"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 285
    const/4 v8, 0x0

    .line 287
    .local v8, "arrrecord":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-result-object v0

    .line 288
    .local v0, "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->printExpression(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)V

    .line 289
    sget-object v1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;->TARGET_SERVICE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaSidList:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mDictionaryChange:Z

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mDictionaryMode:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;->searchList(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchTarget;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;ZLjava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 309
    if-eqz v8, :cond_0

    array-length v1, v8

    if-nez v1, :cond_1

    .line 310
    :cond_0
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "No data is selected in the specified SearchCondition."

    aput-object v3, v2, v12

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-array v8, v12, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    :cond_1
    move-object v1, v8

    .line 316
    .end local v0    # "metasearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    :goto_0
    return-object v1

    .line 296
    :catch_0
    move-exception v9

    .line 297
    .local v9, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v1, v11

    .line 301
    goto :goto_0

    .line 302
    .end local v9    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v10

    .line 303
    .local v10, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move-object v1, v11

    .line 307
    goto :goto_0
.end method

.method private init([Ljava/lang/String;I)Z
    .locals 3
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v2, 0x4

    .line 153
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mQueryId:I

    .line 155
    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mDictionaryMode:Ljava/lang/String;

    .line 156
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mDictionaryChange:Z

    .line 158
    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    .line 160
    const/4 v1, 0x4

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mServiceId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 171
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->map:Ljava/util/Map;

    .line 178
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    .line 228
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaCidList:Ljava/util/Set;

    .line 229
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaSidList:Ljava/util/Set;

    .line 230
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaLidList:Ljava/util/Set;

    .line 231
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbSearchMetaPidList:Ljava/util/Set;

    .line 232
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

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

    .line 233
    .local v0, "column":Ljava/lang/String;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->prepareSearchMetaInfo(Ljava/lang/String;)V

    goto :goto_0

    .line 238
    .end local v0    # "column":Ljava/lang/String;
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

    .line 97
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->init([Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 103
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->judgeCallMethod()V

    .line 110
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 113
    const/4 v3, 0x4

    aget-object v3, p3, v3

    if-nez v3, :cond_2

    .line 114
    const/4 v1, 0x0

    .line 118
    .local v1, "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    :goto_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 119
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->getListInfo(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v2

    .line 120
    .local v2, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v2, :cond_0

    .line 125
    array-length v3, v2

    if-nez v3, :cond_3

    .line 130
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mColumns:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v1    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    .end local v2    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->createCondition()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;

    move-result-object v1

    .restart local v1    # "expression":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;
    goto :goto_1

    .line 132
    .restart local v2    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 133
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaSearchServiceSv;->getDetailInfo([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)Landroid/database/Cursor;

    move-result-object v0

    .line 137
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
