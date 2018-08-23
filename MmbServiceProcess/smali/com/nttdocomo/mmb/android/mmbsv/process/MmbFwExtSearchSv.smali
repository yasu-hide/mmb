.class Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtSearchSv;
.super Ljava/lang/Object;
.source "MmbFwExtSearchSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private judgeQueryType(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    .locals 7
    .param p1, "aSelection"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v2, 0x0

    .line 84
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;-><init>()V

    .line 85
    .local v1, "providerUtil":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;
    const-string v3, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND DownloadStatus = ? AND "

    invoke-virtual {v1, p1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwContentProviderUtilSv;->getConditionString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "condition":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 89
    const-string v3, "crid "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 90
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;

    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtMetaFcSearchSv;-><init>()V

    .line 96
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 97
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

    .line 102
    :cond_1
    return-object v2

    .line 91
    :cond_2
    const-string v3, "recPrgNo in (?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 92
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;

    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtRecSearchSv;-><init>()V

    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    goto :goto_0
.end method


# virtual methods
.method public query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7
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
    .line 53
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwExtSearchSv;->judgeQueryType(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;

    move-result-object v0

    .line 54
    .local v0, "query":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;
    if-nez v0, :cond_0

    .line 58
    const/4 v6, 0x0

    .line 66
    :goto_0
    return-object v6

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 61
    invoke-interface/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwQuerySv;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, "cursor":Landroid/database/Cursor;
    goto :goto_0
.end method
