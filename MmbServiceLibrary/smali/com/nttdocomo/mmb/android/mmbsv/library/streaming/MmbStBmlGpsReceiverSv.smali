.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;
.super Ljava/lang/Object;
.source "MmbStBmlGpsReceiverSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    }
.end annotation


# instance fields
.field protected mListSession:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;",
            ">;"
        }
    .end annotation
.end field

.field protected mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 1
    .param p1, "aService"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 70
    return-void
.end method

.method private declared-synchronized garbageSessionList()Z
    .locals 5

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 229
    .local v1, "removelst":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;>;"
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    .line 230
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->getNotified()Z

    move-result v2

    .line 231
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 232
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "removelst":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;>;"
    .end local v2    # "ret":Z
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 235
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "removelst":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 242
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    monitor-exit p0

    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getListSession()[Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public delete()Z
    .locals 7

    .prologue
    .line 97
    const/4 v3, 0x0

    .line 99
    .local v3, "result":Z
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->getListSession()[Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    move-result-object v0

    .local v0, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v5, v0, v1

    .line 100
    .local v5, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->setCancel()Z

    move-result v4

    .line 101
    .local v4, "ret":Z
    if-eqz v4, :cond_0

    .line 102
    const/4 v3, 0x1

    .line 99
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v4    # "ret":Z
    .end local v5    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    :cond_1
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 108
    monitor-exit p0

    .line 113
    return v3

    .line 108
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mService:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getGpsPosition(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V
    .locals 10
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;
    .param p2, "aClient"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;

    .prologue
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 129
    const/4 v4, 0x0

    .line 130
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    const/4 v1, 0x0

    .line 131
    .local v1, "locationmanager":Landroid/location/LocationManager;
    const/4 v2, 0x0

    .line 132
    .local v2, "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    const/4 v3, 0x0

    .line 135
    .local v3, "res":Z
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "location"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "locationmanager":Landroid/location/LocationManager;
    check-cast v1, Landroid/location/LocationManager;

    .line 138
    .restart local v1    # "locationmanager":Landroid/location/LocationManager;
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->garbageSessionList()Z

    .line 141
    iget v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;->mmbPosInfo:I

    packed-switch v5, :pswitch_data_0

    .line 165
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v5

    .line 146
    :pswitch_0
    :try_start_0
    const-string v5, "gps"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 169
    :goto_0
    if-nez v3, :cond_0

    .line 170
    new-instance v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;

    .end local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    invoke-direct {v2}, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;-><init>()V

    .line 171
    .restart local v2    # "replyinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;
    iput-wide v8, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLatitude:D

    .line 172
    iput-wide v8, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbLongitude:D

    .line 173
    iput-wide v8, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbAccurary:D

    .line 175
    iget v5, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;->mmbPosInfo:I

    packed-switch v5, :pswitch_data_1

    .line 188
    :goto_1
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p2, v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;->replyGps(ZLmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 210
    :goto_2
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "Provider gps requires ACCESS_FINE_LOCATION permission"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 149
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_2
    const-string v5, "network"

    invoke-virtual {v1, v5}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v3

    goto :goto_0

    .line 158
    :catch_2
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v5, "Provider cb requires ACCESS_COARSE_LOCATION permission"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 160
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v5, "gps"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B

    goto :goto_1

    .line 180
    :pswitch_3
    const-string v5, "network"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iput-object v5, v2, Lmmb/android/MmbStBmlMw/MmbStBmlMwGpsReplyInfo;->mmbProvider:[B

    goto :goto_1

    .line 189
    :catch_4
    move-exception v0

    .line 190
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 200
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    .end local v4    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;-><init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;)V

    .line 201
    .restart local v4    # "session":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;
    invoke-virtual {v4, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->start(Lmmb/android/MmbStBmlMw/MmbStBmlMwGetGpsReqInfo;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlMwClientWrapperSv;)V

    .line 203
    monitor-enter p0

    .line 204
    :try_start_3
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv;->mListSession:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 175
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onWaitGpsTimeout(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)Z
    .locals 6
    .param p1, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 260
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;->mStopCond:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v4, 0x493e0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 265
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected preOnLocationChanged(Landroid/location/Location;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;)Z
    .locals 1
    .param p1, "aLocation"    # Landroid/location/Location;
    .param p2, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlGpsReceiverSv$MmbStBmlGpsReceiverSessionSv;

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method
