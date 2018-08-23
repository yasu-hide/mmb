.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
.super Ljava/lang/Object;
.source "MmbFwCallbackSv.java"


# instance fields
.field private mCanceled:Z

.field private mDone:Z

.field private mError:Ljava/lang/Throwable;

.field private mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

.field private mJobId:I

.field private mListenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;",
            ">;"
        }
    .end annotation
.end field

.field private mMmbiMode:Z

.field private mProcessId:I

.field private mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

.field private mResult:Ljava/lang/Object;

.field private mSessionId:I


# direct methods
.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;IZ)V
    .locals 2
    .param p1, "aIpc"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    .param p2, "aResponse"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .param p3, "aProcessId"    # I
    .param p4, "aMmbiMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    .line 324
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    .line 158
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .line 159
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mProcessId:I

    .line 160
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    .line 161
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    .line 162
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    .line 163
    iput-boolean p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mMmbiMode:Z

    .line 167
    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;I)V
    .locals 2
    .param p1, "aIpc"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    .param p2, "aResponse"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .param p3, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    .param p4, "aJobId"    # I

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    .line 324
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    .line 96
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .line 97
    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getProcessId()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mProcessId:I

    .line 98
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    .line 99
    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSessionId()I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    .line 100
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    .line 101
    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->isMmbiMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mMmbiMode:Z

    .line 105
    return-void
.end method

.method constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Z)V
    .locals 3
    .param p1, "aIpc"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    .param p2, "aMmbiMode"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    .line 324
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    .line 334
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    .line 123
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .line 124
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mProcessId:I

    .line 125
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    .line 126
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    .line 127
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    .line 128
    iput-boolean p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mMmbiMode:Z

    .line 132
    return-void
.end method

.method static makeGlobalJobId(II)J
    .locals 6
    .param p0, "aSessionId"    # I
    .param p1, "aJobId"    # I

    .prologue
    .line 279
    int-to-long v2, p0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 283
    .local v0, "result":J
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized addCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 515
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;->onCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_0
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getGlobalJobId()J
    .locals 4

    .prologue
    .line 254
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->makeGlobalJobId(II)J

    move-result-wide v0

    .line 258
    .local v0, "result":J
    return-wide v0
.end method

.method public declared-synchronized getIntResult()I
    .locals 4

    .prologue
    .line 450
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 453
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 450
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 458
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 459
    new-instance v1, Ljava/lang/RuntimeException;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    monitor-exit p0

    return v1
.end method

.method public getProcessId()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mProcessId:I

    .line 189
    .local v0, "result":I
    return v0
.end method

.method public declared-synchronized isCanceled()Z
    .locals 2

    .prologue
    .line 588
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    .local v0, "result":Z
    monitor-exit p0

    return v0

    .line 588
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isMmbiMode()Z
    .locals 1

    .prologue
    .line 606
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mMmbiMode:Z

    return v0
.end method

.method public recycleCallBack()V
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    .line 425
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 426
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    .line 427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    .line 428
    monitor-exit p0

    .line 432
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized removeCallbackListener(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;)V
    .locals 1
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    monitor-exit p0

    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCanceled(Z)V
    .locals 3
    .param p1, "aCanceled"    # Z

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mCanceled:Z

    .line 562
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 563
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;

    .line 564
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;
    invoke-interface {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;->onCanceled()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 561
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackListenerSv;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 570
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "aError"    # Ljava/lang/Throwable;

    .prologue
    .line 481
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 482
    monitor-enter p0

    .line 483
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 484
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mError:Ljava/lang/Throwable;

    .line 485
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 486
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    if-eqz v1, :cond_0

    .line 488
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 485
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 489
    :catch_0
    move-exception v0

    .line 490
    .local v0, "err":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setProgress(II)V
    .locals 3
    .param p1, "aCurrentStep"    # I
    .param p2, "aTotalStep"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 310
    :cond_0
    if-le p1, p2, :cond_1

    .line 311
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setProgress(IIII)V

    .line 319
    :cond_2
    return-void
.end method

.method public setResult(I)V
    .locals 4
    .param p1, "aResult"    # I

    .prologue
    .line 354
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 355
    monitor-enter p0

    .line 356
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 357
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 359
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    if-eqz v1, :cond_0

    .line 362
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    invoke-interface {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 359
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "err":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setResult(Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    .locals 4
    .param p1, "aResult"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    .prologue
    .line 390
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 391
    monitor-enter p0

    .line 392
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mDone:Z

    .line 393
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResult:Ljava/lang/Object;

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    if-eqz v1, :cond_0

    .line 398
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    invoke-interface {v1, v2, v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 395
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "err":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwCallbackSv [mResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mResponse:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mJobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mJobId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanceled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMmbiMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mMmbiMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListenerSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->mListenerSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
