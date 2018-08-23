.class public Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentsSearchSv;
.super Ljava/lang/Object;
.source "MmbStReccontentsSearchSv.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public getContentsInfoDetailList([ILmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    .locals 5
    .param p1, "aPrgNoList"    # [I
    .param p2, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .prologue
    .line 196
    if-nez p2, :cond_0

    .line 197
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "aSort null"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 200
    :cond_0
    const/4 v0, 0x0

    .line 201
    .local v0, "contentsList":[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 207
    .local v2, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getContentsInfoDetailList([ILmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetailList;
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    .line 211
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-virtual {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getError()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 217
    invoke-virtual {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :pswitch_0
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 215
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 212
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method

.method public searchDetail(I)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    .locals 5
    .param p1, "aPrgNo"    # I

    .prologue
    .line 138
    if-lez p1, :cond_0

    const v3, 0x7fffffff

    if-le p1, v3, :cond_1

    .line 139
    :cond_0
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "aPrgNo abnormal"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 142
    :cond_1
    const/4 v0, 0x0

    .line 143
    .local v0, "contentsDetail":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 149
    .local v2, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :try_start_0
    invoke-virtual {v2, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getContentsInfoDetail(I)Lmmb/android/MmbStRecCmMw/MmbStRecCmMwDetail;
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 155
    invoke-virtual {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getError()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    .line 156
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 157
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 159
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchList(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    .locals 5
    .param p1, "aSort"    # Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v4, "aSort null"

    invoke-direct {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "contentsList":[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    new-instance v2, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;

    invoke-direct {v2}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;-><init>()V

    .line 99
    .local v2, "mwRecCient":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;
    :try_start_0
    invoke-virtual {v2, p1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwClient;->getContentsInfoList(Lmmb/android/MmbStRecCmMw/MmbStRecCmMwSort;)[Lmmb/android/MmbStRecCmMw/MmbStRecCmMwList;
    :try_end_0
    .catch Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 105
    invoke-virtual {v1}, Lmmb/android/MmbStRecCmMw/MmbStRecCmMwException;->getError()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1

    .line 106
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 108
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
