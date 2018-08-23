.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;
.source "MmbFwIpcResponseStubSv.java"


# instance fields
.field private mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

.field private mHello:Z

.field private final mJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V
    .locals 1
    .param p1, "aConnection"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv$Stub;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mJobMap:Ljava/util/Map;

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mHello:Z

    .line 74
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .line 78
    return-void
.end method

.method private getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getKey(II)J

    move-result-wide v0

    .line 172
    .local v0, "key":J
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mJobMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 176
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    return-object v2
.end method

.method private getKey(II)J
    .locals 6
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 99
    int-to-long v2, p1

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 103
    .local v0, "result":J
    return-wide v0
.end method

.method private removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "aResult":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v2

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getKey(II)J

    move-result-wide v0

    .line 197
    .local v0, "key":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mJobMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method private toException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;)Ljava/lang/RuntimeException;
    .locals 13
    .param p1, "aError"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 606
    const/4 v6, 0x0

    .line 608
    .local v6, "result":Ljava/lang/RuntimeException;
    :try_start_0
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "classname":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 610
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 611
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 612
    .local v3, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 613
    .local v5, "message":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/RuntimeException;

    .line 615
    .local v4, "err":Ljava/lang/RuntimeException;
    instance-of v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;

    if-eqz v8, :cond_0

    .line 616
    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;

    move-object v7, v0

    .line 617
    .local v7, "serviceexception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->setErrorCode(I)V

    .line 618
    instance-of v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    if-eqz v8, :cond_1

    .line 619
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    .end local v4    # "err":Ljava/lang/RuntimeException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getCrid()Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v4, v5, v8}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 620
    .restart local v4    # "err":Ljava/lang/RuntimeException;
    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    move-object v8, v0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;->setErrorCode(I)V

    .line 630
    .end local v7    # "serviceexception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_0
    :goto_0
    move-object v6, v4

    .line 641
    .end local v1    # "classname":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "err":Ljava/lang/RuntimeException;
    .end local v5    # "message":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 621
    .restart local v1    # "classname":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v4    # "err":Ljava/lang/RuntimeException;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v7    # "serviceexception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_1
    instance-of v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    if-eqz v8, :cond_2

    .line 622
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    .end local v4    # "err":Ljava/lang/RuntimeException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getScheduleType()I

    move-result v8

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getFcExecutionState()I

    move-result v9

    invoke-direct {v4, v5, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;-><init>(Ljava/lang/String;II)V

    .line 624
    .restart local v4    # "err":Ljava/lang/RuntimeException;
    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    move-object v8, v0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->setErrorCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    .end local v1    # "classname":Ljava/lang/String;
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "err":Ljava/lang/RuntimeException;
    .end local v5    # "message":Ljava/lang/String;
    .end local v6    # "result":Ljava/lang/RuntimeException;
    .end local v7    # "serviceexception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :catch_0
    move-exception v4

    .line 635
    .local v4, "err":Ljava/lang/Exception;
    const-string v8, "exception of %s"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 636
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v6, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>(Ljava/lang/Throwable;)V

    .restart local v6    # "result":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 625
    .restart local v1    # "classname":Ljava/lang/String;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v4, "err":Ljava/lang/RuntimeException;
    .restart local v5    # "message":Ljava/lang/String;
    .restart local v7    # "serviceexception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_2
    :try_start_1
    instance-of v8, v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    if-eqz v8, :cond_0

    .line 626
    new-instance v4, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    .end local v4    # "err":Ljava/lang/RuntimeException;
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getResultCode()I

    move-result v8

    invoke-direct {v4, v8, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;-><init>(ILjava/lang/String;)V

    .line 627
    .restart local v4    # "err":Ljava/lang/RuntimeException;
    move-object v0, v4

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    move-object v8, v0

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->getErrorCode()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->setErrorCode(I)V

    goto :goto_0

    .line 632
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v4    # "err":Ljava/lang/RuntimeException;
    .end local v5    # "message":Ljava/lang/String;
    .end local v7    # "serviceexception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;
    :cond_3
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    .end local v6    # "result":Ljava/lang/RuntimeException;
    invoke-direct {v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v6    # "result":Ljava/lang/RuntimeException;
    goto :goto_1
.end method


# virtual methods
.method addJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p1, "aResult":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v2

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getKey(II)J

    move-result-wide v0

    .line 124
    .local v0, "key":J
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mJobMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    return-void
.end method

.method public notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 1
    .param p1, "aIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 662
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 666
    return-void
.end method

.method public notifyFatalError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->notifyFatalError()V

    .line 689
    return-void
.end method

.method public declared-synchronized receiveHello()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mHello:Z

    .line 721
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized resetHello()V
    .locals 1

    .prologue
    .line 705
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mHello:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBitmapResult(IILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # Landroid/graphics/Bitmap;

    .prologue
    .line 533
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 534
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Landroid/graphics/Bitmap;>;"
    if-eqz v0, :cond_0

    .line 535
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 536
    invoke-virtual {v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 543
    :goto_0
    return-void

    .line 538
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBooleanResult(IIZ)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # Z

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 261
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_0

    .line 262
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 263
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 270
    :goto_0
    return-void

    .line 265
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDoubleResult(IID)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # D

    .prologue
    .line 396
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 397
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Double;>;"
    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 399
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 406
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    .locals 9
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aError"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 568
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    if-eqz v3, :cond_1

    .line 569
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 570
    check-cast p3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;

    .end local p3    # "aError":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    invoke-direct {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->toException(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;)Ljava/lang/RuntimeException;

    move-result-object v1

    .line 571
    .local v1, "err":Ljava/lang/RuntimeException;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    if-ne v4, v5, :cond_0

    .line 573
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->setErrorAll()V

    .line 574
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v2

    .line 575
    .local v2, "ipc":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->restartService(Z)Z

    .line 576
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mConnection:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->onErrorOccurred()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v2    # "ipc":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    :cond_0
    :goto_0
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    .line 588
    .end local v1    # "err":Ljava/lang/RuntimeException;
    :goto_1
    return-void

    .line 577
    .restart local v1    # "err":Ljava/lang/RuntimeException;
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "exception of %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 583
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "err":Ljava/lang/RuntimeException;
    .restart local p3    # "aError":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    :cond_1
    const-string v4, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method setErrorAll()V
    .locals 5

    .prologue
    .line 142
    const-string v3, "setErrorAll"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mJobMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 144
    .local v1, "jobs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 145
    .local v2, "other":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setError(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 150
    .end local v2    # "other":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    :cond_0
    return-void
.end method

.method public setFloatResult(IIF)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # F

    .prologue
    .line 362
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 363
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Float;>;"
    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 365
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 372
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setIntResult(III)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # I

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 295
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 297
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 304
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setListResult(IILjava/util/List;)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # Ljava/util/List;

    .prologue
    .line 464
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 465
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/util/List<*>;>;"
    if-eqz v0, :cond_0

    .line 466
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 467
    invoke-virtual {v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 474
    :goto_0
    return-void

    .line 469
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setLongResult(IIJ)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # J

    .prologue
    .line 328
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 329
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 331
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 338
    :goto_0
    return-void

    .line 333
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    .prologue
    .line 498
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 500
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;>;"
    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 502
    invoke-virtual {v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 509
    :goto_0
    return-void

    .line 504
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProgress(IIII)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aStep"    # I
    .param p4, "aTotal"    # I

    .prologue
    .line 227
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 228
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<*>;"
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p3, p4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setProgress(II)V

    .line 236
    :goto_0
    return-void

    .line 231
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setStringResult(IILjava/lang/String;)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aResult"    # Ljava/lang/String;

    .prologue
    .line 430
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    .line 431
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    .line 433
    invoke-virtual {v0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->setResult(Ljava/lang/Object;)V

    .line 440
    :goto_0
    return-void

    .line 435
    :cond_0
    const-string v1, "sessionId(%x) or jobId(%x) is wrong."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method declared-synchronized waitHello(J)Z
    .locals 1
    .param p1, "aWaitTime"    # J

    .prologue
    .line 709
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mHello:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 711
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 715
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->mHello:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 712
    :catch_0
    move-exception v0

    goto :goto_0

    .line 709
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
