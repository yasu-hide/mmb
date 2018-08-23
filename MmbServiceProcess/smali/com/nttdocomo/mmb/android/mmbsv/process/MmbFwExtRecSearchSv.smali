.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;
.super Ljava/lang/Object;
.source "MmbFwExtRecSearchSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# instance fields
.field private mColumns:[Ljava/lang/String;

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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 10
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    new-instance v4, Ljava/util/HashSet;

    const/16 v7, 0x10

    invoke-direct {v4, v7}, Ljava/util/HashSet;-><init>(I)V

    .line 167
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->RECEXT_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 169
    if-nez p1, :cond_0

    .line 170
    sget-object v7, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->RECEXT_COLUMN_LIST:Ljava/util/List;

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v7, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mColumns:[Ljava/lang/String;

    :goto_0
    move v5, v6

    .line 187
    :goto_1
    return v5

    .line 173
    :cond_0
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 174
    .local v1, "column":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 175
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

    goto :goto_1

    .line 173
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 182
    .end local v1    # "column":Ljava/lang/String;
    :cond_2
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mColumns:[Ljava/lang/String;

    goto :goto_0
.end method

.method private createCondition(Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 5
    .param p1, "aSelection"    # Ljava/lang/String;
    .param p2, "aSelectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 204
    const/4 v3, 0x6

    aget-object v3, p2, v3

    if-nez v3, :cond_1

    array-length v3, p2

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 209
    const/4 v2, 0x0

    .line 223
    :cond_0
    return-object v2

    .line 212
    :cond_1
    array-length v3, p2

    add-int/lit8 v3, v3, -0x6

    new-array v2, v3, [I

    .line 213
    .local v2, "prgNoList":[I
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 215
    add-int/lit8 v3, v1, -0x6

    :try_start_0
    aget-object v4, p2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getListInfo([I)Landroid/database/Cursor;
    .locals 10
    .param p1, "aPrgNoList"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 238
    const/4 v2, 0x0

    .line 240
    .local v2, "recContentsList":[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    move-result-object v3

    .line 241
    .local v3, "recContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
    new-instance v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    invoke-direct {v5}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;-><init>()V

    .line 242
    .local v5, "sort":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;
    iput v7, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mColumn:I

    .line 243
    const/4 v6, -0x1

    iput v6, v5, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;->mOrder:I

    .line 245
    if-nez p1, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;->searchList(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;

    .line 249
    :cond_0
    invoke-virtual {v3, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;->getContentsInfoDetailList([ILmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 259
    :goto_0
    if-eqz v2, :cond_1

    array-length v6, v2

    if-nez v6, :cond_3

    .line 260
    :cond_1
    const-string v6, "%s"

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "No data is selected in the specified SearchCondition."

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    new-instance v4, Landroid/database/MatrixCursor;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mColumns:[Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 278
    :cond_2
    :goto_1
    return-object v4

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 255
    const/4 v4, 0x0

    goto :goto_1

    .line 256
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v0

    .line 257
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 265
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_3
    new-instance v4, Landroid/database/MatrixCursor;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mColumns:[Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 267
    .local v4, "result":Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v6, v2

    if-ge v1, v6, :cond_2

    .line 268
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mQueryId:I

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 270
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mMap:Ljava/util/Map;

    invoke-virtual {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 271
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mMap:Ljava/util/Map;

    aget-object v8, v2, v1

    invoke-virtual {v6, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setRecMap(Ljava/util/Map;Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;)V

    .line 272
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mColumns:[Ljava/lang/String;

    invoke-virtual {v6, v4, v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    .line 267
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private init([Ljava/lang/String;I)Z
    .locals 4
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mQueryId:I

    .line 134
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 136
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v3

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mMap:Ljava/util/Map;

    .line 150
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    const-string v3, "%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 142
    goto :goto_0
.end method


# virtual methods
.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 6
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

    .line 79
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->init([Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->createCondition(Ljava/lang/String;[Ljava/lang/String;)[I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 103
    .local v2, "prgNoList":[I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->mQueryId:I

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 104
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;->getListInfo([I)Landroid/database/Cursor;

    move-result-object v0

    .line 108
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0

    .line 95
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v2    # "prgNoList":[I
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
