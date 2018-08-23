.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;
.super Ljava/lang/Object;
.source "MmbFwMetaListCridSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# static fields
.field private static sSystemVersion:[I


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

.field private mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

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

.field private versionCmparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 916
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv$1;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->versionCmparator:Ljava/util/Comparator;

    return-void
.end method

.method private addVersion(Ljava/util/List;Ljava/lang/String;)V
    .locals 22
    .param p2, "aKeywords"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[I>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 984
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-nez p2, :cond_0

    .line 985
    new-instance v19, Ljava/lang/IllegalArgumentException;

    const-string v20, "keywords is null"

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 987
    :cond_0
    const-string v19, "\\|"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 988
    .local v4, "group":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v19, v0

    rem-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_1

    .line 989
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal group : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 991
    :cond_1
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    .line 992
    aget-object v9, v4, v5

    .line 993
    .local v9, "key":Ljava/lang/String;
    const-string v19, "Version"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    .line 991
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 996
    :cond_3
    add-int/lit8 v19, v5, 0x1

    aget-object v19, v4, v19

    const-string v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 997
    .local v17, "values":[Ljava/lang/String;
    move-object/from16 v2, v17

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    move v7, v6

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v10    # "len$":I
    .local v7, "i$":I
    :goto_1
    if-ge v7, v10, :cond_2

    aget-object v16, v2, v7

    .line 998
    .local v16, "value":Ljava/lang/String;
    const-string v19, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 999
    .local v12, "subgroup":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v19, v0

    rem-int/lit8 v19, v19, 0x2

    if-eqz v19, :cond_4

    .line 1000
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal subgroup : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1002
    :cond_4
    const/4 v8, 0x0

    .end local v7    # "i$":I
    .local v8, "j":I
    :goto_2
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_8

    .line 1003
    aget-object v13, v12, v8

    .line 1004
    .local v13, "subkey":Ljava/lang/String;
    const-string v19, "Base"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1002
    :cond_5
    add-int/lit8 v8, v8, 0x2

    goto :goto_2

    .line 1007
    :cond_6
    add-int/lit8 v19, v8, 0x1

    aget-object v19, v12, v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 1008
    .local v15, "subvalues":[Ljava/lang/String;
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/String;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v6, 0x0

    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v11, :cond_5

    aget-object v14, v3, v6

    .line 1009
    .local v14, "subvalue":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->encodeVersion(Ljava/lang/String;)[I

    move-result-object v18

    .line 1010
    .local v18, "version":[I
    if-nez v18, :cond_7

    .line 1011
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "illegal subgroup : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1013
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1008
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 997
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v11    # "len$":I
    .end local v13    # "subkey":Ljava/lang/String;
    .end local v14    # "subvalue":Ljava/lang/String;
    .end local v15    # "subvalues":[Ljava/lang/String;
    .end local v18    # "version":[I
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .restart local v6    # "i$":I
    move v7, v6

    .end local v6    # "i$":I
    .restart local v7    # "i$":I
    goto/16 :goto_1

    .line 1021
    .end local v7    # "i$":I
    .end local v8    # "j":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "subgroup":[Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    .end local v17    # "values":[Ljava/lang/String;
    :cond_9
    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 176
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 177
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 180
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 181
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 182
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 183
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 185
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 187
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 188
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 189
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 190
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 191
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 192
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 193
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    if-nez p1, :cond_1

    .line 196
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 213
    :goto_0
    return v5

    .line 199
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

    .line 200
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 201
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

    .line 207
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private encodeVersion(Ljava/lang/String;)[I
    .locals 7
    .param p1, "aVersionString"    # Ljava/lang/String;

    .prologue
    .line 1036
    :try_start_0
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "nums":[Ljava/lang/String;
    array-length v4, v2

    new-array v3, v4, [I

    .line 1038
    .local v3, "result":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1039
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1045
    .end local v1    # "i":I
    .end local v2    # "nums":[Ljava/lang/String;
    .end local v3    # "result":[I
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "err":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal version number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1044
    .end local v0    # "err":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    .restart local v2    # "nums":[Ljava/lang/String;
    .restart local v3    # "result":[I
    :cond_0
    return-object v3
.end method

.method private getDetailInfo([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 48
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v39, Landroid/database/MatrixCursor;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mColumns:Ljava/util/List;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-interface/range {v43 .. v44}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 288
    .local v39, "result":Landroid/database/MatrixCursor;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 291
    .local v6, "cridlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x6

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v22

    move/from16 v1, v43

    if-ge v0, v1, :cond_0

    .line 292
    aget-object v43, p1, v22

    move-object/from16 v0, v43

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 295
    .local v5, "crid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mQueryId:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 297
    const/16 v24, 0x0

    .line 298
    .local v24, "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/16 v41, 0x0

    .line 299
    .local v41, "stInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    const/4 v12, 0x0

    .line 300
    .local v12, "fcInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    const/4 v7, 0x0

    .line 301
    .local v7, "downloaded":Z
    const/4 v8, 0x0

    .line 302
    .local v8, "downloadedInvoked":Z
    const/16 v34, 0x0

    .line 303
    .local v34, "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/16 v16, 0x0

    .line 304
    .local v16, "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    const/16 v35, 0x0

    .line 305
    .local v35, "metaPurchaseInvoked":Z
    const/16 v17, 0x0

    .line 306
    .local v17, "fcPurchaseInvoked":Z
    const/16 v32, 0x0

    .line 307
    .local v32, "metaLicenseInvoked":Z
    const/4 v14, 0x0

    .line 308
    .local v14, "fcLicenseInvoked":Z
    const/16 v36, 0x0

    .line 309
    .local v36, "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v18, 0x0

    .line 310
    .local v18, "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v31, 0x0

    .line 311
    .local v31, "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    const/4 v13, 0x0

    .line 312
    .local v13, "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v33, "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v15, "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v21, 0x0

    .line 315
    .local v21, "getMetaLicenseFlg":Z
    const/16 v20, 0x0

    .line 317
    .local v20, "getFcLicenseFlg":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getMmbSiInfSv(Ljava/lang/String;ZLjava/lang/String;)Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v41

    .line 329
    :goto_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    move-object/from16 v3, v46

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getContentDetails(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v12

    .line 340
    :goto_3
    if-eqz v41, :cond_1f

    .line 341
    move-object/from16 v24, v41

    .line 349
    :cond_2
    :goto_4
    if-nez v41, :cond_3

    if-eqz v12, :cond_1

    .line 352
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    move/from16 v43, v0

    if-eqz v43, :cond_4

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->getSystemVersion()[I

    move-result-object v42

    .line 354
    .local v42, "systemVersion":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->isVersionMatches(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;[I)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 358
    .end local v42    # "systemVersion":[I
    :cond_4
    new-instance v43, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    invoke-direct/range {v43 .. v43}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    .line 359
    new-instance v43, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    invoke-direct/range {v43 .. v43}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmCrid:Ljava/lang/String;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    const/16 v44, -0x8000

    move/from16 v0, v44

    move-object/from16 v1, v43

    iput-short v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v43

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmMetadatainfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    .line 364
    const/4 v10, 0x0

    .line 365
    .local v10, "drmLicenseInvoked":Z
    const/4 v9, 0x0

    .line 366
    .local v9, "drmLicenseExistenceInvoked":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_5

    .line 368
    const/4 v10, 0x1

    .line 369
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_5

    .line 382
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_6

    .line 385
    if-eqz v24, :cond_6

    .line 386
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(BLjava/lang/String;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)I

    move-result v38

    .line 388
    .local v38, "purchaseinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;I)V
    :try_end_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_3 .. :try_end_3} :catch_7

    .line 400
    .end local v38    # "purchaseinfo":I
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_7

    .line 402
    const/4 v9, 0x1

    .line 403
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCasDrmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V
    :try_end_4
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_4 .. :try_end_4} :catch_9

    .line 416
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_8

    .line 418
    const/16 v35, 0x1

    .line 419
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_5
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_5 .. :try_end_5} :catch_b

    move-result-object v34

    .line 431
    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_9

    .line 433
    const/16 v17, 0x1

    .line 434
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_6
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_6 .. :try_end_6} :catch_d

    move-result-object v16

    .line 446
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_b

    .line 448
    if-nez v34, :cond_a

    if-nez v35, :cond_a

    .line 449
    const/16 v35, 0x1

    .line 450
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_7
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_7 .. :try_end_7} :catch_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_7 .. :try_end_7} :catch_10

    move-result-object v34

    .line 453
    :cond_a
    if-nez v34, :cond_20

    .line 454
    const/16 v21, 0x0

    .line 489
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_d

    .line 491
    if-nez v16, :cond_c

    if-nez v17, :cond_c

    .line 492
    const/16 v17, 0x1

    .line 493
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    :try_end_8
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_8 .. :try_end_8} :catch_12
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_8 .. :try_end_8} :catch_13

    move-result-object v16

    .line 496
    :cond_c
    if-nez v16, :cond_25

    .line 497
    const/16 v20, 0x0

    .line 532
    :cond_d
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaDetailFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_e

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)V

    .line 535
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_10

    .line 538
    if-nez v31, :cond_f

    if-nez v32, :cond_f

    .line 539
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v31

    .line 541
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_9
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_9 .. :try_end_9} :catch_15

    .line 552
    :cond_10
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_12

    .line 555
    if-nez v34, :cond_11

    if-nez v35, :cond_11

    .line 556
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v34

    .line 559
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_a .. :try_end_a} :catch_16
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_a .. :try_end_a} :catch_17

    .line 570
    :cond_12
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    move/from16 v43, v0

    if-nez v43, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_14

    .line 572
    :cond_13
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->isDownloaded(Ljava/lang/String;)Z

    move-result v7

    .line 573
    const/4 v8, 0x1

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_14

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcDownloadedMap(Ljava/util/Map;Z)V
    :try_end_b
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_b .. :try_end_b} :catch_18
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_b .. :try_end_b} :catch_19

    .line 587
    :cond_14
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_15

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v12}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;)V

    .line 589
    if-eqz v8, :cond_15

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v12, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcStateMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;Z)V

    .line 593
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_17

    .line 596
    if-nez v13, :cond_16

    if-nez v14, :cond_16

    .line 597
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v13

    .line 599
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v13}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;)V
    :try_end_c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_c .. :try_end_c} :catch_1b

    .line 610
    :cond_17
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_19

    .line 613
    if-nez v16, :cond_18

    if-nez v17, :cond_18

    .line 614
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v5, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getPurchaseInformation(Ljava/lang/String;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;

    move-result-object v16

    .line 617
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;)V
    :try_end_d
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_d .. :try_end_d} :catch_1c
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_d .. :try_end_d} :catch_1d

    .line 628
    :cond_19
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1a

    .line 631
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getManifestoFirstInfo(Ljava/lang/String;Ljava/lang/String;)I

    move-result v30

    .line 632
    .local v30, "manifestoinfo":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcMap(Ljava/util/Map;I)V
    :try_end_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_e .. :try_end_e} :catch_1e

    .line 637
    .end local v30    # "manifestoinfo":I
    :cond_1a
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetScheduleFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1b

    .line 639
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mSchedlList:Ljava/util/ArrayList;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iput-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;->mmbCrid:Ljava/lang/String;

    .line 642
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v45, v0

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;->searchReservedSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;Ljava/util/ArrayList;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v43

    if-nez v43, :cond_1b

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mSchedlList:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v46, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setTmMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;)V
    :try_end_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_f .. :try_end_f} :catch_1f

    .line 651
    :cond_1b
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1c

    .line 652
    if-eqz v41, :cond_1c

    if-eqz v34, :cond_1c

    .line 654
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v34

    move-object/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v36

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_10
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_10 .. :try_end_10} :catch_20
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_10 .. :try_end_10} :catch_21

    .line 668
    :cond_1c
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_1d

    .line 669
    if-eqz v12, :cond_1d

    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1d

    if-eqz v16, :cond_1d

    .line 671
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-static/range {v44 .. v44}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Byte;->byteValue()B

    move-result v44

    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v45, v0

    move-object/from16 v0, v43

    move/from16 v1, v44

    move-object/from16 v2, v16

    move-object/from16 v3, v45

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;)Ljava/util/List;

    move-result-object v18

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcPurchaseStatusMap(Ljava/util/Map;Ljava/util/List;)V
    :try_end_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_11 .. :try_end_11} :catch_22
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_11 .. :try_end_11} :catch_23

    .line 685
    :cond_1d
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_32

    .line 686
    const/16 v43, 0x1

    move/from16 v0, v21

    move/from16 v1, v43

    if-ne v0, v1, :cond_32

    .line 687
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 688
    .local v28, "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .line 689
    .local v27, "licenseExistence":Z
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v25, v0

    .line 690
    .local v25, "lInfoCnt":I
    const/16 v22, 0x0

    :goto_15
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_30

    .line 693
    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    aget-object v44, v31, v22

    move-object/from16 v0, v44

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_12
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_12 .. :try_end_12} :catch_24
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_12 .. :try_end_12} :catch_25

    move-result v27

    .line 705
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v26

    .line 707
    .local v26, "lInfoLicenseId":Ljava/lang/String;
    const/16 v43, 0x1

    move/from16 v0, v27

    move/from16 v1, v43

    if-ne v0, v1, :cond_2a

    .line 708
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    :goto_17
    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    .line 319
    .end local v9    # "drmLicenseExistenceInvoked":Z
    .end local v10    # "drmLicenseInvoked":Z
    .end local v25    # "lInfoCnt":I
    .end local v26    # "lInfoLicenseId":Ljava/lang/String;
    .end local v27    # "licenseExistence":Z
    .end local v28    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v19

    .line 320
    .local v19, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 324
    const/16 v39, 0x0

    .line 831
    .end local v5    # "crid":Ljava/lang/String;
    .end local v7    # "downloaded":Z
    .end local v8    # "downloadedInvoked":Z
    .end local v12    # "fcInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .end local v13    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v14    # "fcLicenseInvoked":Z
    .end local v15    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v17    # "fcPurchaseInvoked":Z
    .end local v18    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v20    # "getFcLicenseFlg":Z
    .end local v21    # "getMetaLicenseFlg":Z
    .end local v24    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .end local v31    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .end local v32    # "metaLicenseInvoked":Z
    .end local v33    # "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v34    # "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .end local v35    # "metaPurchaseInvoked":Z
    .end local v36    # "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v39    # "result":Landroid/database/MatrixCursor;
    .end local v41    # "stInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :cond_1e
    :goto_18
    return-object v39

    .line 325
    .restart local v5    # "crid":Ljava/lang/String;
    .restart local v7    # "downloaded":Z
    .restart local v8    # "downloadedInvoked":Z
    .restart local v12    # "fcInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;
    .restart local v13    # "fcLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v14    # "fcLicenseInvoked":Z
    .restart local v15    # "fcLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "fcPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v17    # "fcPurchaseInvoked":Z
    .restart local v18    # "fcPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v20    # "getFcLicenseFlg":Z
    .restart local v21    # "getMetaLicenseFlg":Z
    .restart local v24    # "info":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .restart local v31    # "metaLicenseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;
    .restart local v32    # "metaLicenseInvoked":Z
    .restart local v33    # "metaLicenseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v34    # "metaPurchaseInfos":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;
    .restart local v35    # "metaPurchaseInvoked":Z
    .restart local v36    # "metaPurchaseStatus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v39    # "result":Landroid/database/MatrixCursor;
    .restart local v41    # "stInfo":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    :catch_1
    move-exception v40

    .line 326
    .local v40, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 331
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_2
    move-exception v19

    .line 332
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 336
    const/16 v39, 0x0

    goto :goto_18

    .line 337
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_3
    move-exception v40

    .line 338
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 342
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_1f
    if-eqz v12, :cond_2

    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2

    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2

    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2

    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    move-object/from16 v43, v0

    if-eqz v43, :cond_2

    .line 347
    iget-object v0, v12, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    move-object/from16 v24, v0

    goto/16 :goto_4

    .line 372
    .restart local v9    # "drmLicenseExistenceInvoked":Z
    .restart local v10    # "drmLicenseInvoked":Z
    :catch_4
    move-exception v19

    .line 373
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 377
    const/16 v39, 0x0

    goto :goto_18

    .line 378
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_5
    move-exception v11

    .line 379
    .local v11, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 390
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_6
    move-exception v19

    .line 391
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 395
    const/16 v39, 0x0

    goto :goto_18

    .line 396
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_7
    move-exception v11

    .line 397
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 406
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_8
    move-exception v19

    .line 407
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 411
    const/16 v39, 0x0

    goto :goto_18

    .line 412
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_9
    move-exception v11

    .line 413
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 421
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_a
    move-exception v19

    .line 422
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 426
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 427
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_b
    move-exception v40

    .line 428
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 436
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_c
    move-exception v19

    .line 437
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 441
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 442
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_d
    move-exception v40

    .line 443
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 457
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_20
    if-nez v10, :cond_21

    .line 458
    const/4 v10, 0x1

    .line 459
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 461
    :cond_21
    if-nez v9, :cond_22

    .line 462
    const/4 v9, 0x1

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 466
    :cond_22
    const/16 v32, 0x1

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v31

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0
    :try_end_13
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_13 .. :try_end_13} :catch_e
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_13 .. :try_end_13} :catch_10

    const/16 v44, -0x8000

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_23

    if-nez v31, :cond_24

    .line 470
    :cond_23
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 472
    :cond_24
    const/16 v21, 0x1

    goto/16 :goto_a

    .line 475
    :catch_e
    move-exception v11

    .line 476
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v21, 0x0

    .line 477
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 478
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_f
    move-exception v19

    .line 479
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 483
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 484
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_10
    move-exception v40

    .line 485
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v21, 0x0

    .line 486
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 500
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_25
    if-nez v10, :cond_26

    .line 501
    const/4 v10, 0x1

    .line 502
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;)V

    .line 504
    :cond_26
    if-nez v9, :cond_27

    .line 505
    const/4 v9, 0x1

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

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

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v47, v0

    aput-object v47, v45, v46

    invoke-virtual/range {v43 .. v45}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->checkLicenseInfo(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;)V

    .line 509
    :cond_27
    const/4 v14, 0x1

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getLicenseInformation(Ljava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;

    move-result-object v13

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0
    :try_end_14
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_14 .. :try_end_14} :catch_11
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_14 .. :try_end_14} :catch_13

    const/16 v44, -0x8000

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_28

    if-nez v13, :cond_29

    .line 513
    :cond_28
    const/16 v20, 0x0

    goto/16 :goto_b

    .line 515
    :cond_29
    const/16 v20, 0x1

    goto/16 :goto_b

    .line 518
    :catch_11
    move-exception v11

    .line 519
    .restart local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    const/16 v20, 0x0

    .line 520
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 521
    .end local v11    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_12
    move-exception v19

    .line 522
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 526
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 527
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_13
    move-exception v40

    .line 528
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    const/16 v20, 0x0

    .line 529
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 542
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_14
    move-exception v19

    .line 543
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 547
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 548
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_15
    move-exception v40

    .line 549
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 560
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_16
    move-exception v19

    .line 561
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 565
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 566
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_17
    move-exception v40

    .line 567
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 577
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_18
    move-exception v19

    .line 578
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 582
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 583
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_19
    move-exception v40

    .line 584
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 600
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1a
    move-exception v19

    .line 601
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 605
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 606
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1b
    move-exception v40

    .line 607
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 618
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1c
    move-exception v19

    .line 619
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 623
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 624
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1d
    move-exception v40

    .line 625
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 633
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1e
    move-exception v40

    .line 634
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 647
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_1f
    move-exception v40

    .line 648
    .restart local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static/range {v40 .. v40}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 657
    .end local v40    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_20
    move-exception v19

    .line 658
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 662
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 663
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_21
    move-exception v4

    .line 664
    .local v4, "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 674
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_22
    move-exception v19

    .line 675
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 679
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 680
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_23
    move-exception v4

    .line 681
    .restart local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 695
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v25    # "lInfoCnt":I
    .restart local v27    # "licenseExistence":Z
    .restart local v28    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_24
    move-exception v19

    .line 696
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 700
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 701
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_25
    move-exception v4

    .line 702
    .restart local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 710
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v26    # "lInfoLicenseId":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    if-nez v43, :cond_2b

    .line 712
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 714
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2d

    .line 716
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2c

    .line 717
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 720
    :cond_2c
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 723
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_2f

    .line 725
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2e

    .line 726
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 729
    :cond_2e
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 733
    :cond_2f
    aget-object v43, v31, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_17

    .line 738
    .end local v26    # "lInfoLicenseId":Ljava/lang/String;
    :cond_30
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v37, v0

    .line 739
    .local v37, "pInfoCnt":I
    const/16 v29, 0x0

    .line 740
    .local v29, "licenseState":Ljava/lang/Integer;
    const/16 v22, 0x0

    :goto_19
    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_31

    .line 741
    aget-object v43, v34, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "licenseState":Ljava/lang/Integer;
    check-cast v29, Ljava/lang/Integer;

    .line 742
    .restart local v29    # "licenseState":Ljava/lang/Integer;
    if-eqz v29, :cond_31

    .line 743
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    add-int/lit8 v22, v22, 0x1

    goto :goto_19

    .line 749
    :cond_31
    if-eqz v29, :cond_32

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setMetaLisenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 754
    .end local v25    # "lInfoCnt":I
    .end local v27    # "licenseExistence":Z
    .end local v28    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "licenseState":Ljava/lang/Integer;
    .end local v37    # "pInfoCnt":I
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-boolean v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    move/from16 v43, v0

    if-eqz v43, :cond_3b

    .line 755
    const/16 v43, 0x1

    move/from16 v0, v20

    move/from16 v1, v43

    if-ne v0, v1, :cond_3b

    .line 756
    new-instance v28, Ljava/util/HashMap;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashMap;-><init>()V

    .line 757
    .restart local v28    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v27, 0x0

    .line 758
    .restart local v27    # "licenseExistence":Z
    array-length v0, v13

    move/from16 v25, v0

    .line 759
    .restart local v25    # "lInfoCnt":I
    const/16 v22, 0x0

    :goto_1a
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_39

    .line 762
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-object/from16 v43, v0

    aget-object v44, v13, v22

    move-object/from16 v0, v44

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getLicenseDeleteStatus(Ljava/lang/String;)Z
    :try_end_15
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_15 .. :try_end_15} :catch_26
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_15 .. :try_end_15} :catch_27

    move-result v27

    .line 774
    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseInfoSv;->mmbCaCasDrmLicenseId:[B

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->toHexString([B)Ljava/lang/String;

    move-result-object v26

    .line 776
    .restart local v26    # "lInfoLicenseId":Ljava/lang/String;
    const/16 v43, 0x1

    move/from16 v0, v27

    move/from16 v1, v43

    if-ne v0, v1, :cond_33

    .line 777
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    :goto_1c
    add-int/lit8 v22, v22, 0x1

    goto :goto_1a

    .line 764
    .end local v26    # "lInfoLicenseId":Ljava/lang/String;
    :catch_26
    move-exception v19

    .line 765
    .restart local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static/range {v19 .. v19}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 769
    const/16 v39, 0x0

    goto/16 :goto_18

    .line 770
    .end local v19    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_27
    move-exception v4

    .line 771
    .restart local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1b

    .line 779
    .end local v4    # "ce":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    .restart local v26    # "lInfoLicenseId":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    if-nez v43, :cond_34

    .line 781
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 783
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_36

    .line 785
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_35

    .line 786
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    .line 789
    :cond_35
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 792
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mLicenseExistence:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget-short v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmLicenseCheckInfoSv;->mmbCaCasDrmIsLicense:S

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_38

    .line 794
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_37

    .line 795
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 798
    :cond_37
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 802
    :cond_38
    aget-object v43, v13, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwLicenseInformation;->purchaseId:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1c

    .line 807
    .end local v26    # "lInfoLicenseId":Ljava/lang/String;
    :cond_39
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v37, v0

    .line 808
    .restart local v37    # "pInfoCnt":I
    const/16 v29, 0x0

    .line 809
    .restart local v29    # "licenseState":Ljava/lang/Integer;
    const/16 v22, 0x0

    :goto_1d
    move/from16 v0, v22

    move/from16 v1, v37

    if-ge v0, v1, :cond_3a

    .line 810
    aget-object v43, v16, v22

    move-object/from16 v0, v43

    iget-object v0, v0, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPurchaseInformation;->id:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "licenseState":Ljava/lang/Integer;
    check-cast v29, Ljava/lang/Integer;

    .line 811
    .restart local v29    # "licenseState":Ljava/lang/Integer;
    if-eqz v29, :cond_3a

    .line 812
    move-object/from16 v0, v29

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    add-int/lit8 v22, v22, 0x1

    goto :goto_1d

    .line 818
    :cond_3a
    if-eqz v29, :cond_3b

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v15}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setFcLicenseStatusMap(Ljava/util/Map;Ljava/util/List;)V

    .line 824
    .end local v25    # "lInfoCnt":I
    .end local v27    # "licenseExistence":Z
    .end local v28    # "licenseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v29    # "licenseState":Ljava/lang/Integer;
    .end local v37    # "pInfoCnt":I
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v43, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v44, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v0, v1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCridMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mColumns:Ljava/util/List;

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

    move-object/from16 v1, v39

    move-object/from16 v2, v45

    move-object/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getSystemVersion()[I
    .locals 6

    .prologue
    .line 852
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->sSystemVersion:[I

    if-nez v3, :cond_0

    .line 853
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    .line 854
    .local v0, "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getVersion()Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;

    move-result-object v2

    .line 855
    .local v2, "version":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    const/4 v3, 0x2

    new-array v3, v3, [I

    sput-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->sSystemVersion:[I

    .line 856
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->sSystemVersion:[I

    const/4 v4, 0x0

    iget v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->major_version:I

    aput v5, v3, v4

    .line 857
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->sSystemVersion:[I

    const/4 v4, 0x1

    iget v5, v2, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;->minor_version:I

    aput v5, v3, v4

    .line 859
    .end local v0    # "contentModule":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v2    # "version":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBaseVersion;
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->sSystemVersion:[I

    .line 863
    .local v1, "result":[I
    return-object v1
.end method

.method private init([Ljava/lang/String;I)V
    .locals 3
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v2, 0x5

    .line 138
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mQueryId:I

    .line 140
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mEntityId:Ljava/lang/String;

    .line 141
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryMode:Ljava/lang/String;

    .line 142
    const/4 v0, 0x4

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mDictionaryChange:Z

    .line 144
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 145
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMetacontroller:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 146
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 147
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    .line 148
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getScheduleModule()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mSchedlManager:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleModuleSv;

    .line 150
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mKeyWord:Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmSearchKeywordSv;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mColumns:Ljava/util/List;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mMap:Ljava/util/Map;

    .line 154
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionFilter:Z

    .line 155
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->isBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    aget-object v1, p1, v2

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mVersionMax:Ljava/lang/String;

    .line 161
    :cond_0
    return-void
.end method

.method private isVersionMatches(Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;[I)Z
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;
    .param p2, "aSystemVersion"    # [I

    .prologue
    const/4 v7, 0x0

    .line 879
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v6, "versionlist":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz p1, :cond_2

    iget-object v8, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    if-eqz v8, :cond_2

    iget-object v8, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v8, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    if-eqz v8, :cond_2

    .line 882
    iget-object v8, p1, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->basicDescription:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;

    iget-object v0, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwBasicDescription;->keyword:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v0, v2

    .line 883
    .local v3, "kw":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    iget-object v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->type:Ljava/lang/String;

    const-string v9, "other"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 885
    :try_start_0
    iget-object v8, v3, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;->keyword:Ljava/lang/String;

    invoke-direct {p0, v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->addVersion(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    :catch_0
    move-exception v1

    .line 887
    .local v1, "err":Ljava/lang/IllegalArgumentException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 910
    .end local v0    # "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v1    # "err":Ljava/lang/IllegalArgumentException;
    .end local v2    # "i$":I
    .end local v3    # "kw":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwKeyword;
    .end local v4    # "len$":I
    :cond_1
    :goto_1
    return v7

    .line 896
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 897
    const-string v8, "1.0"

    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->encodeVersion(Ljava/lang/String;)[I

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 900
    .local v5, "ver":[I
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->versionCmparator:Ljava/util/Comparator;

    invoke-interface {v8, v5, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-gtz v8, :cond_4

    .line 904
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private judgeCallMethod()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 228
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mColumns:Ljava/util/List;

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

    .line 229
    .local v0, "column":Ljava/lang/String;
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METADETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaDetailFlg:Z

    goto :goto_0

    .line 231
    :cond_1
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METALICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseFlg:Z

    goto :goto_0

    .line 233
    :cond_2
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 234
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseFlg:Z

    goto :goto_0

    .line 235
    :cond_3
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDOWNLOADED_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDownloadedFlg:Z

    goto :goto_0

    .line 237
    :cond_4
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 238
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcDetailFlg:Z

    goto :goto_0

    .line 239
    :cond_5
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCLICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 240
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseFlg:Z

    goto :goto_0

    .line 241
    :cond_6
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 242
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseFlg:Z

    goto :goto_0

    .line 243
    :cond_7
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 244
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseFlg:Z

    goto :goto_0

    .line 245
    :cond_8
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->LICENSE_EXISTENCE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 246
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetLicenseExistenceFlg:Z

    goto :goto_0

    .line 247
    :cond_9
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->PURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 248
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetPurchaseFlg:Z

    goto/16 :goto_0

    .line 249
    :cond_a
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->SCHEDULE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 250
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetScheduleFlg:Z

    goto/16 :goto_0

    .line 251
    :cond_b
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCMANIFESTO_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 252
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcManifestoFirstFlg:Z

    goto/16 :goto_0

    .line 253
    :cond_c
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 255
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaPurchaseStatusFlg:Z

    goto/16 :goto_0

    .line 256
    :cond_d
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_PURCHASE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 258
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcPurchaseStatusFlg:Z

    goto/16 :goto_0

    .line 259
    :cond_e
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->META_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 261
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetMetaLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 262
    :cond_f
    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FC_LICENSE_STATUS_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iput-boolean v3, v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbGetFcLicenseStatusFlg:Z

    goto/16 :goto_0

    .line 270
    .end local v0    # "column":Ljava/lang/String;
    :cond_10
    return-void
.end method


# virtual methods
.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 3
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
    .line 109
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->init([Ljava/lang/String;I)V

    .line 110
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->judgeCallMethod()V

    .line 117
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->mQueryId:I

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 118
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMetaListCridSv;->getDetailInfo([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 122
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
