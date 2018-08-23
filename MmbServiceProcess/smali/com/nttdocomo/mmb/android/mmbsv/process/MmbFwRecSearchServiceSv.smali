.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;
.super Ljava/lang/Object;
.source "MmbFwRecSearchServiceSv.java"

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
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 9
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    if-nez p1, :cond_1

    .line 145
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->RECSEARCH_COLUMN_LIST:Ljava/util/List;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mColumns:Ljava/util/List;

    :cond_0
    move v4, v5

    .line 162
    :goto_0
    return v4

    .line 148
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

    .line 149
    .local v1, "column":Ljava/lang/String;
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->RECSEARCH_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 150
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

    .line 156
    :cond_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mColumns:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getDetailInfo([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 179
    new-instance v7, Landroid/database/MatrixCursor;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mColumns:Ljava/util/List;

    new-array v9, v12, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    .local v7, "result":Landroid/database/MatrixCursor;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v4, "prgNolist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    array-length v8, p1

    if-ge v1, v8, :cond_0

    .line 184
    aget-object v8, p1, v1

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 189
    .local v3, "prgNo":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mQueryId:I

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 190
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mMap:Ljava/util/Map;

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 191
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;->getSearchModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;

    move-result-object v6

    .line 192
    .local v6, "recContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
    const/4 v5, 0x0

    .line 193
    .local v5, "recContentsDetail":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;->searchDetail(I)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;

    move-result-object v5

    .line 195
    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mMap:Ljava/util/Map;

    invoke-virtual {v8, v9, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setRecMap(Ljava/util/Map;Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 212
    .end local v5    # "recContentsDetail":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    .end local v6    # "recContentsSearch":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
    :goto_2
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mMap:Ljava/util/Map;

    iget-object v8, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mColumns:Ljava/util/List;

    new-array v11, v12, [Ljava/lang/String;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v9, v7, v10, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    goto :goto_1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 198
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->close()V

    .line 202
    const/4 v7, 0x0

    .line 218
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .end local v3    # "prgNo":Ljava/lang/String;
    .end local v7    # "result":Landroid/database/MatrixCursor;
    :cond_1
    return-object v7

    .line 203
    .restart local v3    # "prgNo":Ljava/lang/String;
    .restart local v7    # "result":Landroid/database/MatrixCursor;
    :catch_1
    move-exception v0

    .line 204
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 205
    .end local v0    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_2
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 207
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->close()V

    .line 209
    throw v0
.end method

.method private init([Ljava/lang/String;I)V
    .locals 1
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    .line 117
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mQueryId:I

    .line 119
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 120
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getReccontentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mRecController:Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentControllerSv;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mColumns:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mMap:Ljava/util/Map;

    .line 129
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

    .line 82
    :try_start_0
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->init([Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    :goto_0
    return-object v0

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 93
    .end local v1    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->mQueryId:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 94
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwRecSearchServiceSv;->getDetailInfo([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 99
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
