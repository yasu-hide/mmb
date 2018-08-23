.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;
.super Ljava/lang/Object;
.source "MmbFwConnectionSv.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContextSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorOccured:Z

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreCount:I

.field private mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

.field private mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

.field private mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

.field private mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;)V
    .locals 3
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    .line 96
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 101
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    .line 106
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    .line 111
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mErrorOccured:Z

    .line 130
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    .line 133
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->createIpcIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceListenerSv;

    return-object v0
.end method

.method private createIpcIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "result":Landroid/content/Intent;
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.process"

    const-string v2, "com.nttdocomo.mmb.android.mmbsv.process.MmbFwMainServiceSv"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    return-object v0
.end method

.method private doConnectService()V
    .locals 4

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->createIpcIntent()Landroid/content/Intent;

    move-result-object v2

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContext:Landroid/content/Context;

    .line 160
    .local v1, "context":Landroid/content/Context;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 161
    .local v0, "binded":Z
    if-nez v0, :cond_0

    .line 162
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 165
    :cond_0
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 172
    return-void
.end method

.method private doDisconnectService()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContext:Landroid/content/Context;

    .line 191
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 192
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 199
    return-void
.end method


# virtual methods
.method addContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 2
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 613
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    monitor-enter v1

    .line 614
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 615
    monitor-exit v1

    .line 619
    return-void

    .line 615
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ensureConnection()Z
    .locals 3

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 398
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    if-eq v1, v2, :cond_1

    .line 400
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    if-ne v1, v2, :cond_0

    .line 401
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    if-ne v1, v2, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->doConnectService()V

    .line 406
    const/4 v0, 0x1

    .line 412
    :cond_1
    return v0
.end method

.method ensureDisconnection()Z
    .locals 12

    .prologue
    .line 431
    const/4 v8, 0x0

    .line 433
    .local v8, "result":Z
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    if-eq v9, v10, :cond_2

    .line 435
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    if-ne v9, v10, :cond_0

    .line 436
    new-instance v9, Ljava/lang/IllegalStateException;

    invoke-direct {v9}, Ljava/lang/IllegalStateException;-><init>()V

    throw v9

    .line 439
    :cond_0
    const/4 v3, 0x0

    .line 440
    .local v3, "contexts":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    monitor-enter v10

    .line 441
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    new-array v11, v11, [Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-interface {v9, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-object v3, v0

    .line 442
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    move-object v1, v3

    .local v1, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v1, v5

    .line 444
    .local v2, "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->onDestroy()V

    .line 443
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v2    # "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 446
    .restart local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 448
    .local v7, "pid":I
    :try_start_2
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    invoke-interface {v9, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->removeIpcResponse(I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 452
    :goto_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->doDisconnectService()V

    .line 453
    const/4 v8, 0x1

    .line 458
    .end local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v3    # "contexts":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "pid":I
    :cond_2
    return v8

    .line 449
    .restart local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .restart local v3    # "contexts":[Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "pid":I
    :catch_0
    move-exception v4

    .line 450
    .local v4, "err":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public getConnection()Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    .locals 2

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>()V

    throw v1

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    .line 484
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;
    return-object v0
.end method

.method public getResponse()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;
    .locals 2

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;-><init>()V

    throw v1

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    .line 510
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;
    return-object v0
.end method

.method isConnected()Z
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mErrorOccured:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 659
    .local v0, "result":Z
    :goto_0
    return v0

    .line 655
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 4
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 530
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    monitor-enter v3

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 532
    .local v0, "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    goto :goto_0

    .line 534
    .end local v0    # "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    return-void
.end method

.method notifyFatalError()V
    .locals 2

    .prologue
    .line 556
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    if-lez v0, :cond_0

    .line 557
    const-string v0, "ignore fatal error which is thrown by restartService() invoking."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 578
    :goto_0
    return-void

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->setErrorAll()V

    .line 560
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->onErrorOccurred()V

    .line 561
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$6;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method onErrorOccurred()V
    .locals 4

    .prologue
    .line 591
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mErrorOccured:Z

    .line 592
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    monitor-enter v3

    .line 593
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 594
    .local v0, "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->onErrorOccured()V

    goto :goto_0

    .line 596
    .end local v0    # "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9
    .param p1, "aComponentName"    # Landroid/content/ComponentName;
    .param p2, "aBinder"    # Landroid/os/IBinder;

    .prologue
    .line 246
    invoke-static {p2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    move-result-object v5

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    .line 247
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    if-eqz v5, :cond_1

    .line 249
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    invoke-direct {v5, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    .line 251
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 252
    .local v3, "pid":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    invoke-interface {v5, v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->addIpcResponse(ILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;)I

    move-result v4

    .line 253
    .local v4, "rid":I
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->resetHello()V

    .line 254
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    invoke-interface {v5, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->sendHello(I)V

    .line 255
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    const-wide/16 v6, 0x5dc

    invoke-virtual {v5, v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;->waitHello(J)Z

    move-result v2

    .line 256
    .local v2, "ok":Z
    if-nez v2, :cond_0

    .line 257
    const-string v5, "reboot service %d cause binder is broken."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :try_start_1
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;->restartService(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 265
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContext:Landroid/content/Context;

    .line 266
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 268
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 270
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "ok":Z
    .end local v3    # "pid":I
    .end local v4    # "rid":I
    :goto_1
    return-void

    .line 262
    .restart local v2    # "ok":Z
    .restart local v3    # "pid":I
    .restart local v4    # "rid":I
    :catch_0
    move-exception v1

    .line 263
    .local v1, "err":Landroid/os/RemoteException;
    const-string v5, "service disconnected"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 301
    .end local v1    # "err":Landroid/os/RemoteException;
    .end local v2    # "ok":Z
    .end local v3    # "pid":I
    .end local v4    # "rid":I
    :catch_1
    move-exception v1

    .line 303
    .restart local v1    # "err":Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContext:Landroid/content/Context;

    .line 304
    .restart local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 306
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTING:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 311
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$3;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 286
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "err":Landroid/os/RemoteException;
    .restart local v2    # "ok":Z
    .restart local v3    # "pid":I
    .restart local v4    # "rid":I
    :cond_0
    const/4 v5, 0x0

    :try_start_3
    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    .line 289
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->CONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 294
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$2;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 321
    .end local v2    # "ok":Z
    .end local v3    # "pid":I
    .end local v4    # "rid":I
    :cond_1
    sget-object v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 323
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$4;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "aComponentName"    # Landroid/content/ComponentName;

    .prologue
    .line 356
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    if-lez v0, :cond_0

    .line 357
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIgnoreCount:I

    .line 376
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    .line 361
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;->DISCONNECTED:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    .line 365
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$5;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method removeContext(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 2
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .line 635
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    monitor-enter v1

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mContextSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 637
    monitor-exit v1

    .line 641
    return-void

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwConnectionSv [mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mState:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv$MMbFwStateSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpc:Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIpcResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwConnectionSv;->mIpcResponse:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwIpcResponseStubSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
