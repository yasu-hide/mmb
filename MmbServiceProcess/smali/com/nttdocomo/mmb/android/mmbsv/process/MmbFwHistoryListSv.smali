.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;
.super Ljava/lang/Object;
.source "MmbFwHistoryListSv.java"

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

.field private mPgManager:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

.field private mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

.field private mQueryId:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canGetTargetColumns([Ljava/lang/String;)Z
    .locals 9
    .param p1, "aProjection"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    if-nez p1, :cond_1

    .line 122
    sget-object v4, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->HISTORY_COLUMN_LIST:Ljava/util/List;

    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mColumns:Ljava/util/List;

    :cond_0
    move v4, v5

    .line 139
    :goto_0
    return v4

    .line 125
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

    .line 126
    .local v1, "column":Ljava/lang/String;
    sget-object v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->HISTORY_COLUMN_LIST:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 127
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

    .line 133
    :cond_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mColumns:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getListInfo()Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 153
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mPgManager:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->getHistory()Ljava/util/List;
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 162
    .local v1, "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    new-instance v3, Landroid/database/MatrixCursor;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mColumns:Ljava/util/List;

    new-array v6, v9, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 164
    .local v3, "result":Landroid/database/MatrixCursor;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;

    .line 165
    .local v0, "historydata":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mQueryId:I

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 167
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->initMap(Ljava/util/Map;)V

    .line 169
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mMap:Ljava/util/Map;

    iget-object v7, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCridMap(Ljava/util/Map;Ljava/lang/String;)V

    .line 171
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mMap:Ljava/util/Map;

    invoke-virtual {v5, v6, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setPgMap(Ljava/util/Map;Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;)V

    .line 173
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mMap:Ljava/util/Map;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mColumns:Ljava/util/List;

    new-array v8, v9, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v6, v3, v7, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->setCursor(Landroid/database/MatrixCursor;Ljava/util/Map;[Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .end local v0    # "historydata":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;
    .end local v1    # "historylist":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryDataSv;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "result":Landroid/database/MatrixCursor;
    :catch_0
    move-exception v4

    .line 155
    .local v4, "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 159
    const/4 v3, 0x0

    .line 178
    .end local v4    # "se":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_0
    return-object v3
.end method

.method private init([Ljava/lang/String;I)V
    .locals 1
    .param p1, "aSelectionArgs"    # [Ljava/lang/String;
    .param p2, "aQueryId"    # I

    .prologue
    .line 96
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mQueryId:I

    .line 98
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    .line 99
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->mmbMainService:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mPgManager:Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mColumns:Ljava/util/List;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mMap:Ljava/util/Map;

    .line 106
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
    .line 68
    invoke-direct {p0, p3, p5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->init([Ljava/lang/String;I)V

    .line 69
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->canGetTargetColumns([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 80
    :goto_0
    return-object v0

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mProviderUtil:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->mQueryId:I

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->checkCancel(I)V

    .line 76
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwHistoryListSv;->getListInfo()Landroid/database/Cursor;

    move-result-object v0

    .line 80
    .local v0, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
