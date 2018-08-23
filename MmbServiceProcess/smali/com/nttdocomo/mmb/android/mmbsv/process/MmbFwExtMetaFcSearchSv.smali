.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;
.super Ljava/lang/Object;
.source "MmbFwExtMetaFcSearchSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;
    }
.end annotation


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

.field private mGetExtFcDetailFlg:I

.field private mGetExtPurchaseFlg:Z

.field private mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

.field private mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

.field private mQueryId:I

.field private mSearchFcColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchFcResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchMetaColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchMetaResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtPurchaseFlg:Z

    .line 110
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    .line 849
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    return-object v0
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    new-instance v4, Ljava/util/HashSet;

    const/16 v7, 0x20

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 249
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->EXTPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 250
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAEXT_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 251
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCEXT_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 252
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCEXTDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    const-string v7, "crid"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    if-nez p1, :cond_1

    .line 256
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 273
    :goto_0
    return v5

    .line 259
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

    .line 260
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 261
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

    .line 267
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
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
    const/4 v2, 0x0

    .line 292
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const-string v4, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND "

    invoke-virtual {v3, p1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "condition":Ljava/lang/String;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    const/4 v4, 0x6

    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAFCEXTSEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v3, v0, p2, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvSearchCondition(Ljava/lang/String;[Ljava/lang/String;ILjava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 298
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 299
    :cond_0
    const-string v3, "%s%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "The specified SearchCondition is illegal. The target SearchCondition is \'"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string v6, "\'."

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    :goto_0
    return-object v2

    .line 307
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAFCEXTSORT_COLUMN_LIST:Ljava/util/List;

    invoke-virtual {v3, v2, v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->cnvOrderCondition(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    move-object v2, v1

    .line 311
    goto :goto_0
.end method

.method private createGetExtFcDetailParams()[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 703
    new-instance v2, Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 706
    .local v2, "extContentInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;>;"
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 707
    .local v4, "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 708
    .local v7, "resultCrid":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 710
    .local v3, "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;

    invoke-direct {v1, p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;Ljava/lang/String;)V

    .line 718
    .local v1, "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbProgramId:Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;

    .line 720
    .local v0, "contInfo":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 721
    iget-object v8, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v9, v8, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 723
    :cond_0
    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    .line 724
    iget-object v8, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->info:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;

    const/4 v9, 0x1

    new-array v9, v9, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    new-instance v10, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;

    invoke-direct {v10, p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;Ljava/util/Map;)V

    aput-object v10, v9, v11

    iput-object v9, v8, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwInformationBase;->period:[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwPeriod;

    .line 732
    :cond_1
    iget v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_2

    .line 733
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;

    invoke-direct {v8, p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;Ljava/util/Map;)V

    iput-object v8, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->transmitInfo:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwTransmitCtrlInformation;

    .line 744
    iget-object v9, v0, Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;->contentsState:Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;

    const-string v8, "fcProgress"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    iput v8, v9, Lmmb/android/MmbFcContMw/MmbFcContMwContentsStatus;->contProgress:I

    .line 745
    const-string v8, "fcFdtInstanceState"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->intValue()I

    move-result v8

    iput v8, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;->mmbFdtInstanceState:I

    .line 748
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 751
    .end local v0    # "contInfo":Lmmb/android/MmbFcContMw/MmbFcContMwContentsInformation;
    .end local v1    # "extContentInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .end local v3    # "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "resultCrid":Ljava/lang/String;
    :cond_3
    new-array v8, v11, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    .line 755
    .local v6, "result":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    return-object v6
.end method

.method private createGetExtPurchaseParams()[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .locals 13

    .prologue
    .line 778
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v11

    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    add-int v10, v11, v12

    .line 779
    .local v10, "resultSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 783
    .local v1, "checkPurchaseInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;>;"
    const/4 v3, 0x0

    .line 784
    .local v3, "cridList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 785
    new-instance v3, Ljava/util/HashSet;

    .end local v3    # "cridList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    mul-int/lit8 v11, v10, 0x2

    invoke-direct {v3, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 789
    .restart local v3    # "cridList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 790
    .local v8, "metaResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 791
    .local v2, "crid":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 793
    .local v7, "metaResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;-><init>()V

    .line 795
    .local v0, "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbCrid:Ljava/lang/String;

    .line 796
    const-string v11, "metaContentsInfoType_raw"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    iput-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbContentInfoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 799
    const-string v11, "metaMemberOfCrid"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbMemberOf:[Ljava/lang/String;

    .line 800
    const-string v11, "metaLicenseId"

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbLicenseId:[Ljava/lang/String;

    .line 802
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    if-eqz v3, :cond_1

    .line 806
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 811
    .end local v0    # "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v7    # "metaResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "metaResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 812
    .local v5, "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 813
    .restart local v2    # "crid":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 816
    .local v4, "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 820
    :cond_4
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;-><init>()V

    .line 821
    .restart local v0    # "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    iput-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbCrid:Ljava/lang/String;

    .line 822
    const-string v11, "fcInfoType_raw"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    iput-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbContentInfoType:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwInformationType;

    .line 825
    const-string v11, "fcMemberOfCrid"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    check-cast v11, [Ljava/lang/String;

    iput-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbMemberOf:[Ljava/lang/String;

    .line 827
    const/4 v11, 0x0

    iput-object v11, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;->mmbLicenseId:[Ljava/lang/String;

    .line 829
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 832
    .end local v0    # "checkPurchaseInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .end local v2    # "crid":Ljava/lang/String;
    .end local v4    # "fcResult":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "fcResultEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5
    const/4 v11, 0x0

    new-array v11, v11, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    invoke-interface {v1, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    .line 837
    .local v9, "result":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    return-object v9
.end method

.method private getDetailInfo()Landroid/database/Cursor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 575
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;

    invoke-direct {v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;)V

    .line 578
    .local v5, "resultMatrixMap":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;
    :try_start_0
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->setSearchResults()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 588
    .local v3, "hasFcResults":Z
    :goto_0
    if-eqz v3, :cond_0

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    if-eqz v6, :cond_0

    .line 590
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 592
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->getExtFcDetail()[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    move-result-object v2

    .line 593
    .local v2, "extContentInfoList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    invoke-virtual {v5, v2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->setExtContentInfo([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;I)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_2

    .line 605
    .end local v2    # "extContentInfoList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    :cond_0
    :goto_1
    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtPurchaseFlg:Z

    if-eqz v6, :cond_1

    .line 606
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 608
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->getExtPurchase()[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    move-result-object v0

    .line 609
    .local v0, "checkPurchaseInfoList":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->setCheckPurchaseInfo([Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;)V
    :try_end_2
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_2 .. :try_end_2} :catch_4

    .line 621
    .end local v0    # "checkPurchaseInfoList":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 623
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv$MmbFwQueryResultMatrixMap;->toCursor()Landroid/database/Cursor;

    move-result-object v4

    .line 628
    .end local v3    # "hasFcResults":Z
    :goto_3
    return-object v4

    .line 579
    :catch_0
    move-exception v1

    .line 580
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 587
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 594
    .restart local v3    # "hasFcResults":Z
    :catch_1
    move-exception v1

    .line 595
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 596
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    :catch_2
    move-exception v1

    .line 597
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 610
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_3
    move-exception v1

    .line 611
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 612
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmClientException;
    :catch_4
    move-exception v1

    .line 613
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private getExtFcDetail()[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    .locals 3

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->createGetExtFcDetailParams()[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;

    move-result-object v0

    .line 651
    .local v0, "extContentInfoList":[Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    invoke-virtual {v1, v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->extCheckContentDetails([Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcExtContentInfoSv;I)V

    .line 656
    return-object v0
.end method

.method private getExtPurchase()[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    .locals 3

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->createGetExtPurchaseParams()[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;

    move-result-object v0

    .line 680
    .local v0, "checkPurchaseInfoList":[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mEntityId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->getPurchaseStatus(B[Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmCheckPurchaseInfoSv;)V

    .line 685
    return-object v0
.end method

.method private getListInfo(Ljava/util/List;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .local p1, "aExpressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 408
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;

    move-result-object v1

    .line 409
    .local v1, "metaSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v2, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDictionaryChange:Z

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDictionaryMode:Ljava/lang/String;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execExtSearchMetaInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/util/List;ZLjava/lang/String;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v10

    .line 414
    .local v10, "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v10, :cond_0

    array-length v0, v10

    if-nez v0, :cond_4

    .line 416
    :cond_0
    const-string v0, "%s (Meta)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "No data is selected in the specified SearchCondition."

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    .end local v1    # "metaSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    .end local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 426
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;

    move-result-object v3

    .line 427
    .local v3, "fcSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    const/4 v4, 0x0

    new-array v4, v4, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v0, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    iget-boolean v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDictionaryChange:Z

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDictionaryMode:Ljava/lang/String;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    move-object v5, p1

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->execExtSearchFcInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;Ljava/util/List;ZLjava/lang/String;Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;)[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    move-result-object v10

    .line 432
    .restart local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    if-eqz v10, :cond_2

    array-length v0, v10

    if-nez v0, :cond_5

    .line 434
    :cond_2
    const-string v0, "%s (Fc)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "No data is selected in the specified SearchCondition."

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v3    # "fcSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .end local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_3
    :goto_1
    move v0, v12

    .line 457
    :goto_2
    return v0

    .line 419
    .restart local v1    # "metaSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    .restart local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_4
    invoke-direct {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->setSearchMetaResults([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 440
    .end local v1    # "metaSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSearchSv;
    .end local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catch_0
    move-exception v9

    .line 441
    .local v9, "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move v0, v13

    .line 445
    goto :goto_2

    .line 437
    .end local v9    # "fe":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .restart local v3    # "fcSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .restart local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :cond_5
    :try_start_1
    invoke-direct {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->setSearchFcResults([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 446
    .end local v3    # "fcSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsSearchSv;
    .end local v10    # "records":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    :catch_1
    move-exception v11

    .line 447
    .local v11, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    move v0, v13

    .line 451
    goto :goto_2
.end method

.method private init([Ljava/lang/String;I)Z
    .locals 5
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 202
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    .line 204
    const/4 v1, 0x2

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mEntityId:Ljava/lang/String;

    .line 205
    const/4 v1, 0x3

    aget-object v1, p1, v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDictionaryMode:Ljava/lang/String;

    .line 206
    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDictionaryChange:Z

    .line 207
    aget-object v1, p1, v3

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_COMPLETE:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    .line 218
    :goto_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 219
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mMetaController:Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    .line 220
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mContentManager:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 221
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mCasDrmClient:Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    .line 224
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    .line 226
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    .line 232
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 210
    :cond_0
    aget-object v1, p1, v3

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    sget-object v0, Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;->DOWNLOAD_STATUS_PROGRESS:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mDownloadStatus:Lmmb/android/MmbFcContMw/MmbFcContMwClient$MmbFcContMwDownloadStatus;

    goto :goto_0

    .line 214
    :cond_1
    const-string v1, "illegal parameter. [DownloadStatus]"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private judgeCallMethod()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 327
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "column":Ljava/lang/String;
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->EXTPURCHASE_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 329
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtPurchaseFlg:Z

    goto :goto_0

    .line 330
    :cond_1
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->METAEXT_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 331
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->EXTSEARCH_COLUMN_MAP:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_INDEX:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 332
    :cond_2
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCEXT_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->EXTSEARCH_COLUMN_MAP:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;

    iget-object v4, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwSearchConditionSv;->CONDITION_INDEX:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v7, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 334
    :cond_3
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->FCEXTDETAIL_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 335
    const-string v4, "fcState"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 336
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    .line 337
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_4
    const-string v4, "fcOpenState"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 339
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    .line 340
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_START:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PERIOD_DISPLAY_END:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 342
    :cond_5
    const-string v4, "fcComplementState"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 343
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtFcDetailFlg:I

    .line 344
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_SESSION_DESCRIPTION:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_M_REPAIRSTART:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_M_REPAIREND:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_AUTO_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_AUTO:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->USD_APD_PFR_MANUAL_MANUAL:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 351
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->EXT_CONTENTS_PROGRESS:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->EXT_FDT_INSTANCE_STATE:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 354
    :cond_6
    const-string v4, "crid"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 355
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v7, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 360
    .end local v0    # "column":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    move v3, v5

    .line 361
    .local v3, "metaSearch":Z
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    move v1, v5

    .line 362
    .local v1, "fcSearch":Z
    :goto_2
    if-eqz v3, :cond_8

    .line 363
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_8
    if-eqz v1, :cond_9

    .line 366
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_9
    iget-boolean v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mGetExtPurchaseFlg:Z

    if-eqz v4, :cond_d

    .line 370
    if-nez v3, :cond_a

    if-nez v1, :cond_b

    .line 372
    :cond_a
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->LII_LICENSEID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_b
    if-nez v1, :cond_c

    if-nez v3, :cond_d

    .line 380
    :cond_c
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_SEARCHKEY:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_MEMBEROF_CRID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    sget-object v5, Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;->PRI_PROGRAMID:Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMw$MmbFcPgInfoMwSearchFieldIndex;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_d
    return-void

    .end local v1    # "fcSearch":Z
    .end local v3    # "metaSearch":Z
    :cond_e
    move v3, v6

    .line 360
    goto :goto_1

    .restart local v3    # "metaSearch":Z
    :cond_f
    move v1, v6

    .line 361
    goto :goto_2
.end method

.method private setSearchFcResults([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    .locals 9
    .param p1, "aRecords"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .prologue
    .line 541
    new-instance v7, Ljava/util/LinkedHashMap;

    array-length v8, p1

    mul-int/lit8 v8, v8, 0x2

    invoke-direct {v7, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    .line 544
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    add-int/2addr v7, v8

    mul-int/lit8 v1, v7, 0x2

    .line 545
    .local v1, "capacity":I
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 546
    .local v5, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 547
    .local v6, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v7, v6, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setExtSearchFcInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 548
    const-string v7, "crid"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 549
    .local v2, "crid":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 545
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 552
    :cond_0
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 557
    .end local v2    # "crid":Ljava/lang/String;
    .end local v5    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v6    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method private setSearchMetaResults([Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V
    .locals 14
    .param p1, "aRecords"    # [Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;

    .prologue
    const/4 v13, 0x0

    .line 476
    new-instance v11, Ljava/util/LinkedHashMap;

    array-length v12, p1

    mul-int/lit8 v12, v12, 0x2

    invoke-direct {v11, v12}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    .line 479
    const/4 v6, 0x0

    .line 480
    .local v6, "prevCrid":Ljava/lang/String;
    const/4 v8, 0x0

    .line 481
    .local v8, "prevResultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 482
    .local v7, "prevLicenseIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaColumns:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcColumns:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    add-int/2addr v11, v12

    mul-int/lit8 v1, v11, 0x2

    .line 483
    .local v1, "capacity":I
    move-object v0, p1

    .local v0, "arr$":[Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v9, v0, v3

    .line 484
    .local v9, "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 485
    .local v10, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-virtual {v11, v10, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setExtSearchMetaInfoMap(Ljava/util/Map;Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;)V

    .line 486
    const-string v11, "crid"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    .local v2, "crid":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 483
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 491
    :cond_1
    const-string v11, "metaLicenseId"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 494
    .local v5, "licenseId":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 495
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 496
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 502
    :cond_2
    if-eqz v8, :cond_3

    .line 504
    const-string v11, "metaLicenseId"

    new-array v12, v13, [Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 508
    :cond_3
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    move-object v6, v2

    .line 512
    move-object v8, v10

    .line 513
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 514
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .end local v2    # "crid":Ljava/lang/String;
    .end local v5    # "licenseId":Ljava/lang/String;
    .end local v9    # "record":Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchRecord;
    .end local v10    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    if-eqz v8, :cond_5

    .line 519
    const-string v11, "metaLicenseId"

    new-array v12, v13, [Ljava/lang/String;

    invoke-interface {v7, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :cond_5
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

    .line 142
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->init([Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->judgeCallMethod()V

    .line 156
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 157
    invoke-direct {p0, p2, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "expressions":Ljava/util/List;, "Ljava/util/List<Lmmb/android/MmbFcPgInfoMw/MmbFcPgInfoMwSearchExpression;>;"
    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->getListInfo(Ljava/util/List;)Z

    move-result v2

    .line 167
    .local v2, "listResult":Z
    if-eqz v2, :cond_0

    .line 172
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchMetaResults:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mSearchFcResults:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 174
    new-instance v0, Landroid/database/MatrixCursor;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mColumns:Ljava/util/List;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 178
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 181
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 182
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;->getDetailInfo()Landroid/database/Cursor;

    move-result-object v0

    .line 186
    .restart local v0    # "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
