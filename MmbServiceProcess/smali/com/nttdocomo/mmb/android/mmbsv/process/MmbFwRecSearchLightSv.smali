.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;
.super Ljava/lang/Object;
.source "MmbFwRecSearchLightSv.java"

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

.field private mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;


# direct methods
.method public constructor <init>()V
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

    .line 147
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "recPrgNo"

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    if-nez p1, :cond_1

    .line 151
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    move v5, v6

    .line 168
    :goto_0
    return v5

    .line 154
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

    .line 155
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 156
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

    .line 162
    :cond_2
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mColumns:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getListInfo()Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    .line 184
    const/4 v3, 0x0

    .line 187
    .local v3, "recContentsList":[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    move-result-object v4

    .line 188
    .local v4, "recContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
    new-instance v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    invoke-direct {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;-><init>()V

    .line 189
    .local v1, "expressions":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    const/4 v6, 0x1

    iput v6, v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mColumn:I

    .line 190
    const/4 v6, -0x1

    iput v6, v1, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mOrder:I

    .line 191
    invoke-virtual {v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;->searchList(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 201
    .end local v1    # "expressions":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    .end local v4    # "recContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
    :goto_0
    if-eqz v3, :cond_0

    array-length v6, v3

    if-nez v6, :cond_2

    .line 202
    :cond_0
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "No data is selected in the specified SearchCondition."

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v5, Landroid/database/MatrixCursor;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mColumns:Ljava/util/List;

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 220
    :cond_1
    :goto_1
    return-object v5

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 197
    const/4 v5, 0x0

    goto :goto_1

    .line 198
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v0

    .line 199
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_2
    new-instance v5, Landroid/database/MatrixCursor;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mColumns:Ljava/util/List;

    new-array v7, v10, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 209
    .local v5, "result":Landroid/database/MatrixCursor;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v3

    if-ge v2, v6, :cond_1

    .line 210
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mQueryId:I

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 212
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mMap:Ljava/util/Map;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 213
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mMap:Ljava/util/Map;

    aget-object v8, v3, v2

    invoke-virtual {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setSearchRecInfoMap(Ljava/util/Map;Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;)V

    .line 214
    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mMap:Ljava/util/Map;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mColumns:Ljava/util/List;

    new-array v9, v10, [Ljava/lang/String;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v5, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private init([Ljava/lang/String;I)V
    .locals 1
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    .line 120
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mQueryId:I

    .line 122
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 123
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mColumns:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mMap:Ljava/util/Map;

    .line 132
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

    .line 85
    :try_start_0
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->init([Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 96
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->mQueryId:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 97
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchLightSv;->getListInfo()Landroid/database/Cursor;

    move-result-object v0

    .line 102
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
