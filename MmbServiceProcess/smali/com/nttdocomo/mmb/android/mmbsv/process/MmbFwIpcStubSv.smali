.class public Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv$Stub;
.source "MmbFwIpcStubSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;
    }
.end annotation


# instance fields
.field private final mAssignUserMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;",
            ">;"
        }
    .end annotation
.end field

.field private mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

.field private final mContext:Landroid/content/Context;

.field private final mJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;",
            ">;"
        }
    .end annotation
.end field

.field private mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

.field private mResponseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcSv$Stub;-><init>()V

    .line 119
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 149
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    .line 154
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    .line 173
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    .line 175
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    .line 177
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mContext:Landroid/content/Context;

    .line 181
    return-void
.end method

.method static synthetic access$1100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;
    .param p1, "x1"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    return-object v0
.end method

.method private declared-synchronized addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 406
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getGlobalJobId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    monitor-exit p0

    return-void

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addSession(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;)V
    .locals 4
    .param p1, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    .prologue
    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "oldEmpty":Z
    const/4 v0, 0x0

    .line 241
    .local v0, "newEmpty":Z
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 243
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 245
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getProcessId()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->setMmApplicationStartup(IZ)V

    .line 248
    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 249
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyFirstSessionCreated()V

    .line 254
    :cond_0
    return-void

    .line 245
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 2
    .param p1, "aBackground"    # Z
    .param p2, "aExp"    # Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 10484
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    if-ne v0, v1, :cond_0

    .line 10485
    invoke-virtual {p0, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10486
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V

    .line 10492
    :cond_0
    return-void
.end method

.method private confirmSession(I)V
    .locals 1
    .param p1, "aSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v0

    .line 597
    :cond_1
    return-void
.end method

.method private createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 3
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 336
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    .line 337
    .local v0, "response":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v2

    .line 338
    .local v2, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-direct {v1, p0, v0, v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;I)V

    .line 342
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    return-object v1
.end method

.method private createSessionObject(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    .locals 2
    .param p1, "aProcessId"    # I

    .prologue
    .line 215
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;-><init>(Landroid/content/Context;I)V

    .line 219
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    return-object v0
.end method

.method private declared-synchronized getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 4
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I

    .prologue
    .line 430
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-static {p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->makeGlobalJobId(II)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    monitor-exit p0

    return-object v0

    .line 430
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    return-object v0
.end method

.method private declared-synchronized getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .locals 5
    .param p1, "aSessionId"    # I

    .prologue
    .line 547
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v2

    .line 548
    .local v2, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getProcessId()I

    move-result v0

    .line 549
    .local v0, "pid":I
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    monitor-exit p0

    return-object v1

    .line 547
    .end local v0    # "pid":I
    .end local v1    # "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .end local v2    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .locals 3
    .param p1, "aProcessId"    # I

    .prologue
    .line 568
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    monitor-exit p0

    return-object v0

    .line 568
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    .locals 3
    .param p1, "aSessionId"    # I

    .prologue
    .line 273
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    monitor-exit p0

    return-object v0

    .line 273
    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private removeSession(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;)V
    .locals 4
    .param p1, "aSession"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    .prologue
    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "oldEmpty":Z
    const/4 v0, 0x0

    .line 299
    .local v0, "newEmpty":Z
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSessionId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 303
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getProcessId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->setMmApplicationStartup(IZ)V

    .line 309
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyLastSessionDeleted()V

    .line 315
    :cond_1
    return-void

    .line 303
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private setMmApplicationStartup(IZ)V
    .locals 3
    .param p1, "aProcessId"    # I
    .param p2, "aStatus"    # Z

    .prologue
    .line 5444
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v1

    .line 5447
    .local v1, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :try_start_0
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5453
    :goto_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setMmApplicationStartup(Z)V

    .line 5454
    if-eqz p2, :cond_0

    .line 5455
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    invoke-static {v2, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->access$800(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5465
    :goto_1
    return-void

    .line 5448
    :catch_0
    move-exception v0

    .line 5449
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 5457
    .end local v0    # "err":Ljava/lang/Exception;
    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    invoke-static {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 5459
    :catch_1
    move-exception v0

    .line 5460
    .restart local v0    # "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public addIpcResponse(ILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;)I
    .locals 4
    .param p1, "aProcessId"    # I
    .param p2, "aResponse"    # Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, "isEmpty":Z
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    .line 625
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    if-eqz v0, :cond_0

    .line 628
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyConnect()V

    .line 630
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 634
    .local v1, "pid":I
    return v1

    .line 626
    .end local v1    # "pid":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public addLicenseInfo(IIBLjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .param p4, "aCrId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1925
    const/4 v4, 0x0

    .line 1926
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1927
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1929
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1930
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1931
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1932
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1933
    const/4 v0, 0x1

    .line 1934
    const/4 v1, 0x0

    .line 1935
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1936
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->addLicenseInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1937
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1942
    if-eqz v0, :cond_0

    .line 1943
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1949
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1938
    :catch_0
    move-exception v3

    .line 1939
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1940
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1942
    if-eqz v0, :cond_0

    .line 1943
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1942
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1943
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public assignResource(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)I
    .locals 5
    .param p1, "aProcessId"    # I
    .param p2, "aResourceUser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8583
    const/4 v0, 0x0

    .line 8586
    .local v0, "ans":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 8587
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v2

    .line 8588
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v2, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->assignResource(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;)I

    move-result v0

    .line 8589
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 8590
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8598
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_0
    :goto_0
    return v0

    .line 8592
    :catch_0
    move-exception v1

    .line 8593
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public autoGetLicense()V
    .locals 5

    .prologue
    .line 9888
    const/4 v1, 0x0

    .line 9889
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9891
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9892
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9893
    const/4 v0, 0x1

    .line 9894
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v3

    .line 9895
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->autoGetLicense(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9902
    if-eqz v0, :cond_0

    .line 9903
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9909
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_0
    :goto_0
    return-void

    .line 9896
    :catch_0
    move-exception v2

    .line 9897
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9898
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9902
    if-eqz v0, :cond_0

    .line 9903
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9899
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9900
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9902
    if-eqz v0, :cond_0

    .line 9903
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9902
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9903
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public backupFiles()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8649
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$10;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$10;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 8661
    return-void
.end method

.method public cancelComplement(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6573
    const/4 v4, 0x0

    .line 6574
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6575
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6576
    .local v0, "added":Z
    const/4 v1, -0x1

    .line 6578
    .local v1, "ans":I
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6579
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6580
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6581
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6582
    const/4 v0, 0x1

    .line 6583
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6584
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6585
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6590
    if-eqz v0, :cond_1

    .line 6591
    if-eqz v2, :cond_0

    .line 6592
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 6594
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6600
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_1
    :goto_0
    return-void

    .line 6586
    :catch_0
    move-exception v3

    .line 6587
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6588
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6590
    if-eqz v0, :cond_1

    .line 6591
    if-eqz v2, :cond_2

    .line 6592
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 6594
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6590
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_4

    .line 6591
    if-eqz v2, :cond_3

    .line 6592
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 6594
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_4
    throw v6
.end method

.method public cancelComplement(Ljava/lang/String;)V
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 10296
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterFunction([Ljava/lang/Object;)V

    .line 10297
    const/4 v2, 0x0

    .line 10298
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10299
    .local v0, "added":Z
    const/4 v1, -0x1

    .line 10301
    .local v1, "ans":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10302
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10303
    const/4 v0, 0x1

    .line 10304
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 10305
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 10312
    if-eqz v0, :cond_1

    .line 10313
    if-eqz v2, :cond_0

    .line 10314
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 10316
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10319
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeaveFunction()V

    .line 10320
    return-void

    .line 10306
    :catch_0
    move-exception v3

    .line 10307
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10312
    if-eqz v0, :cond_1

    .line 10313
    if-eqz v2, :cond_2

    .line 10314
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 10316
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10309
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v3

    .line 10310
    .local v3, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10312
    if-eqz v0, :cond_1

    .line 10313
    if-eqz v2, :cond_3

    .line 10314
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 10316
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10312
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 10313
    if-eqz v2, :cond_4

    .line 10314
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 10316
    :cond_4
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_5
    throw v5
.end method

.method public cancelComplementFdt(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 11728
    const/4 v2, 0x0

    .line 11729
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11730
    .local v0, "added":Z
    const/4 v1, -0x1

    .line 11732
    .local v1, "ans":I
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11733
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11734
    const/4 v0, 0x1

    .line 11735
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 11736
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 11743
    if-eqz v0, :cond_1

    .line 11744
    if-eqz v2, :cond_0

    .line 11745
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 11747
    :cond_0
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11753
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_1
    :goto_0
    return-void

    .line 11737
    :catch_0
    move-exception v3

    .line 11738
    .local v3, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11743
    if-eqz v0, :cond_1

    .line 11744
    if-eqz v2, :cond_2

    .line 11745
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 11747
    :cond_2
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11740
    .end local v3    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v3

    .line 11741
    .local v3, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11743
    if-eqz v0, :cond_1

    .line 11744
    if-eqz v2, :cond_3

    .line 11745
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 11747
    :cond_3
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11743
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 11744
    if-eqz v2, :cond_4

    .line 11745
    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setResult(I)V

    .line 11747
    :cond_4
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_5
    throw v5
.end method

.method public cancelContentExecution(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6320
    const/4 v4, 0x0

    .line 6321
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6322
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6324
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6325
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6326
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6327
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6328
    const/4 v0, 0x1

    .line 6329
    const/4 v1, 0x0

    .line 6330
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6331
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->cancelContentExecution(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6332
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6337
    if-eqz v0, :cond_0

    .line 6338
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6344
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6333
    :catch_0
    move-exception v3

    .line 6334
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6335
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6337
    if-eqz v0, :cond_0

    .line 6338
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6337
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6338
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public cancelDownload(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6115
    const/4 v4, 0x0

    .line 6116
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6117
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6119
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6120
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6121
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6122
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6123
    const/4 v0, 0x1

    .line 6124
    const/4 v1, 0x0

    .line 6125
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6126
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->cancelDownload(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6127
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6132
    if-eqz v0, :cond_0

    .line 6133
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6139
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6128
    :catch_0
    move-exception v3

    .line 6129
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6130
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6132
    if-eqz v0, :cond_0

    .line 6133
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6132
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6133
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public cancelIndividualExport(IILjava/lang/String;)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10569
    const/4 v2, 0x0

    .line 10570
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10572
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10573
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10574
    const/4 v0, 0x1

    .line 10575
    const/4 v1, 0x0

    .line 10576
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 10577
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->cancelIndividualExport(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 10578
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10583
    if-eqz v0, :cond_0

    .line 10584
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10590
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10579
    :catch_0
    move-exception v3

    .line 10580
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10581
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10583
    if-eqz v0, :cond_0

    .line 10584
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10583
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10584
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public cancelJob(II)V
    .locals 2
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getJob(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 922
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    if-eqz v0, :cond_0

    .line 923
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setCanceled(Z)V

    .line 928
    :cond_0
    return-void
.end method

.method public declared-synchronized cancelJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 946
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 947
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setCanceled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    :cond_0
    monitor-exit p0

    return-void

    .line 946
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancelJobAndWait(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 5
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 966
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setCanceled(Z)V

    .line 967
    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getGlobalJobId()J

    move-result-wide v2

    .line 968
    .local v2, "jobid":J
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 970
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "err":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "wait interrupted"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 980
    .end local v0    # "err":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit p0

    return-void

    .line 966
    .end local v2    # "jobid":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public cancelJobAndWaitAll()V
    .locals 12

    .prologue
    .line 998
    const-wide/16 v2, 0x1770

    .line 999
    .local v2, "delayTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    add-long v6, v10, v2

    .line 1000
    .local v6, "limitTime":J
    move-wide v8, v2

    .line 1001
    .local v8, "remainTime":J
    monitor-enter p0

    .line 1005
    :try_start_0
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 1006
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setCanceled(Z)V

    goto :goto_0

    .line 1024
    .end local v0    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1016
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 1017
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v10

    sub-long v8, v6, v10

    .line 1008
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1010
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_0

    .line 1024
    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1025
    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_3

    .line 1027
    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1035
    :cond_3
    :goto_2
    return-void

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "err":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v5, "wait interrupted"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1020
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1028
    .end local v1    # "err":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 1029
    .restart local v1    # "err":Ljava/lang/InterruptedException;
    const-string v5, "sleep interrupted"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v5, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public checkCasdrmInvoked(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1518
    const/4 v4, 0x0

    .line 1519
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1520
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1522
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1523
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1524
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1525
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1526
    const/4 v0, 0x1

    .line 1527
    const/4 v1, 0x0

    .line 1528
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1529
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->checkCasdrmInvoked(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1530
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1542
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1531
    :catch_0
    move-exception v3

    .line 1532
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1533
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1535
    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1535
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1536
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkConflict(IIIIILjava/lang/String;)V
    .locals 12
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aProcessId"    # I
    .param p4, "aServiceType"    # I
    .param p5, "aServiceId"    # I
    .param p6, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7958
    const/4 v10, 0x0

    .line 7959
    .local v10, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v8, 0x0

    .line 7961
    .local v8, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7962
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v10

    .line 7963
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v8

    .line 7964
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7965
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v2

    .line 7966
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    move-object v6, v8

    .line 7967
    .local v6, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    iget-object v11, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;

    move-object v1, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$9;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;I)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7991
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    .end local v6    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    return-void

    .line 7983
    :catch_0
    move-exception v9

    .line 7984
    .local v9, "err":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7985
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 7986
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public checkConnectionInfo(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8402
    const/4 v4, 0x0

    .line 8403
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8404
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8406
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8407
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8408
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8409
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8410
    const/4 v0, 0x1

    .line 8411
    const/4 v1, 0x0

    .line 8412
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8413
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->checkConnectionInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 8414
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8419
    if-eqz v0, :cond_0

    .line 8420
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8426
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8415
    :catch_0
    move-exception v3

    .line 8416
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8417
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8419
    if-eqz v0, :cond_0

    .line 8420
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8419
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8420
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkDatabaseVersion(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7499
    const/4 v4, 0x0

    .line 7500
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7501
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7503
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7504
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7505
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7506
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7507
    const/4 v0, 0x1

    .line 7508
    const/4 v1, 0x0

    .line 7509
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7510
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->checkDatabaseVersion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 7511
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7516
    if-eqz v0, :cond_0

    .line 7517
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7523
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7512
    :catch_0
    move-exception v3

    .line 7513
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7514
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7516
    if-eqz v0, :cond_0

    .line 7517
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7516
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7517
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkForeignMode(ZII)V
    .locals 8
    .param p1, "aDoMeasure"    # Z
    .param p2, "aSessionId"    # I
    .param p3, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8120
    const/4 v4, 0x0

    .line 8121
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8122
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8124
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8125
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8126
    invoke-direct {p0, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8127
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8128
    const/4 v0, 0x1

    .line 8129
    const/4 v1, 0x0

    .line 8130
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8131
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, p1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->checkForeignMode(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 8132
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p2, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8137
    if-eqz v0, :cond_0

    .line 8138
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8144
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8133
    :catch_0
    move-exception v3

    .line 8134
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8135
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p2, p3, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8137
    if-eqz v0, :cond_0

    .line 8138
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8137
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8138
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkRecOverlapSchedule(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11492
    const/4 v4, 0x0

    .line 11493
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11494
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11496
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11497
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11498
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11499
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11500
    const/4 v0, 0x1

    .line 11501
    const/4 v1, 0x0

    .line 11502
    .local v1, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getReccontentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    move-result-object v5

    .line 11503
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->checkRecOverlapSchedule(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v1

    .line 11504
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11509
    if-eqz v0, :cond_0

    .line 11510
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11516
    .end local v1    # "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11505
    :catch_0
    move-exception v3

    .line 11506
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11507
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11509
    if-eqz v0, :cond_0

    .line 11510
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11509
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11510
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkRequiresTierUpdating(IIB)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2220
    const/4 v4, 0x0

    .line 2221
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2222
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2223
    .local v0, "added":Z
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2225
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2226
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2227
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2228
    const/4 v0, 0x1

    .line 2229
    const/4 v1, 0x0

    .line 2230
    .local v1, "ans":Z
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2231
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->checkRequiresTierUpdating(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2232
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2237
    if-eqz v0, :cond_0

    .line 2238
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2244
    .end local v1    # "ans":Z
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2233
    :catch_0
    move-exception v3

    .line 2234
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2235
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2237
    if-eqz v0, :cond_0

    .line 2238
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2237
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2238
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkSdCardFreeSpace(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8214
    const/4 v4, 0x0

    .line 8215
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8216
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8218
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8219
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8220
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8221
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8222
    const/4 v0, 0x1

    .line 8223
    const/4 v1, 0x0

    .line 8224
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8225
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->checkSdCardFreeSpace(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 8226
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8231
    if-eqz v0, :cond_0

    .line 8232
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8238
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8227
    :catch_0
    move-exception v3

    .line 8228
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8229
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8231
    if-eqz v0, :cond_0

    .line 8232
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8231
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8232
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkSdCardMount(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8167
    const/4 v4, 0x0

    .line 8168
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8169
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8171
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8172
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8173
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8174
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8175
    const/4 v0, 0x1

    .line 8176
    const/4 v1, 0x0

    .line 8177
    .local v1, "ans":Z
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8178
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->checkSdCardMount(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v1

    .line 8179
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8184
    if-eqz v0, :cond_0

    .line 8185
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8191
    .end local v1    # "ans":Z
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8180
    :catch_0
    move-exception v3

    .line 8181
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8182
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8184
    if-eqz v0, :cond_0

    .line 8185
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8184
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8185
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public checkTunerConflict(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8500
    const/4 v4, 0x0

    .line 8501
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8502
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8505
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 8506
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8507
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8508
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8509
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8510
    const/4 v0, 0x1

    .line 8511
    const/4 v1, 0x0

    .line 8512
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8513
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->checkTunerConflict(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 8514
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8519
    if-eqz v0, :cond_0

    .line 8520
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8526
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8515
    :catch_0
    move-exception v3

    .line 8516
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8517
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8519
    if-eqz v0, :cond_0

    .line 8520
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8519
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8520
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public clearServiceStatus(IIIILjava/lang/String;)V
    .locals 11
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceType"    # I
    .param p4, "aServiceId"    # I
    .param p5, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7896
    const/4 v9, 0x0

    .line 7897
    .local v9, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v7, 0x0

    .line 7899
    .local v7, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7900
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v9

    .line 7901
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v7

    .line 7902
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7903
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v2

    .line 7904
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    move-object v6, v7

    .line 7905
    .local v6, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;

    move-object v1, p0

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$8;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;IILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7926
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    .end local v6    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    return-void

    .line 7918
    :catch_0
    move-exception v8

    .line 7919
    .local v8, "err":Ljava/lang/Exception;
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7920
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 7921
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public compareParentPassword(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aParentPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4181
    const/4 v4, 0x0

    .line 4182
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4183
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4185
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4186
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4187
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4188
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4189
    const/4 v0, 0x1

    .line 4190
    const/4 v1, 0x0

    .line 4191
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4192
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->compareParentPassword(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4193
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4198
    if-eqz v0, :cond_0

    .line 4199
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4205
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4194
    :catch_0
    move-exception v3

    .line 4195
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4196
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4198
    if-eqz v0, :cond_0

    .line 4199
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4198
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4199
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Z)V

    .line 364
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    return-object v0
.end method

.method public createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .locals 2
    .param p1, "aProcessId"    # I
    .param p2, "aMmbiMode"    # Z

    .prologue
    .line 382
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    .line 383
    .local v0, "response":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;IZ)V

    .line 387
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    return-object v1
.end method

.method public declared-synchronized createSession(I)I
    .locals 5
    .param p1, "aProcessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 851
    monitor-enter p0

    const/4 v1, 0x0

    .line 852
    .local v1, "iserror":Z
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    .line 853
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getProcessId()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 854
    const/4 v1, 0x1

    .line 858
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :cond_1
    const/4 v2, 0x0

    .line 859
    .local v2, "result":I
    if-nez v1, :cond_2

    .line 860
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createSessionObject(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v3

    .line 861
    .restart local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addSession(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;)V

    .line 862
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->startupSession()V

    .line 863
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getSessionId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 868
    .end local v3    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :cond_2
    monitor-exit p0

    return v2

    .line 851
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "result":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public deleteContents(IILjava/util/List;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6066
    .local p3, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 6067
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6068
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6070
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6071
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6072
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6073
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6074
    const/4 v0, 0x1

    .line 6075
    const/4 v1, 0x0

    .line 6076
    .local v1, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6077
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->deleteContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v1

    .line 6078
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6083
    if-eqz v0, :cond_0

    .line 6084
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6090
    .end local v1    # "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6079
    :catch_0
    move-exception v3

    .line 6080
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6081
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6083
    if-eqz v0, :cond_0

    .line 6084
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6083
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6084
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteContractInfo(IIBLjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .param p4, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1775
    const/4 v4, 0x0

    .line 1776
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1777
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1779
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1780
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1781
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1782
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1783
    const/4 v0, 0x1

    .line 1784
    const/4 v1, 0x0

    .line 1785
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1786
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->deleteContractInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1787
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1792
    if-eqz v0, :cond_0

    .line 1793
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1799
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1788
    :catch_0
    move-exception v3

    .line 1789
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1790
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1792
    if-eqz v0, :cond_0

    .line 1793
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1792
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1793
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteDownloadSchedule(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6219
    const/4 v4, 0x0

    .line 6220
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6221
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6223
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6224
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6225
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6226
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6227
    const/4 v0, 0x1

    .line 6228
    const/4 v1, 0x0

    .line 6229
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6230
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->deleteDownloadSchedule(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6231
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6236
    if-eqz v0, :cond_0

    .line 6237
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6243
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6232
    :catch_0
    move-exception v3

    .line 6233
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6234
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6236
    if-eqz v0, :cond_0

    .line 6237
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6236
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6237
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteIndividualContents(IILjava/util/List;)V
    .locals 11
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10663
    .local p3, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 10664
    .local v8, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v7, 0x0

    .line 10666
    .local v7, "added":Z
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v8

    .line 10667
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10668
    const/4 v7, 0x1

    .line 10669
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v2

    .line 10670
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    move-object v4, v8

    .line 10671
    .local v4, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;

    move-object v1, p0

    move-object v3, p3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$12;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;II)V

    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10698
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .end local v4    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :cond_0
    :goto_0
    return-void

    .line 10688
    :catch_0
    move-exception v9

    .line 10689
    .local v9, "err":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10690
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v3

    invoke-interface {v0, v1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 10691
    if-eqz v7, :cond_0

    .line 10692
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public deleteMultiSeries(II[Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aSeriesIdArray"    # [Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6016
    const/4 v4, 0x0

    .line 6017
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6018
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6020
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6021
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6022
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6023
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6024
    const/4 v0, 0x1

    .line 6025
    const/4 v1, 0x0

    .line 6026
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    move-result-object v5

    .line 6027
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;->deleteMultiSeries([Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6028
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6033
    if-eqz v0, :cond_0

    .line 6034
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6040
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6029
    :catch_0
    move-exception v3

    .line 6030
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6031
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6033
    if-eqz v0, :cond_0

    .line 6034
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6033
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6034
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deletePremiumContractInfo(IIBLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityid"    # B
    .param p4, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIB",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2423
    .local p5, "aPurchaseidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2424
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2425
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2427
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2428
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2429
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2430
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2431
    const/4 v0, 0x1

    .line 2432
    const/4 v1, 0x0

    .line 2433
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2434
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->deletePremiumContractInfo(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2436
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2441
    if-eqz v0, :cond_0

    .line 2442
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2448
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2437
    :catch_0
    move-exception v3

    .line 2438
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2439
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2441
    if-eqz v0, :cond_0

    .line 2442
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2441
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2442
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteRecContents(IILjava/util/List;)V
    .locals 11
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11332
    .local p3, "aPrgNoString":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 11333
    .local v7, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v3, 0x0

    .line 11334
    .local v3, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v1, 0x0

    .line 11335
    .local v1, "added":Z
    const/4 v0, 0x0

    .line 11336
    .local v0, "aPrgNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    .line 11337
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "aPrgNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11338
    .restart local v0    # "aPrgNoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 11339
    .local v6, "list":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11343
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11344
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v7

    .line 11345
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v3

    .line 11346
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11347
    const/4 v1, 0x1

    .line 11348
    invoke-virtual {v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getReccontentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    move-result-object v8

    .line 11349
    .local v8, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    invoke-virtual {v8, v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->deleteRecContents(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v2

    .line 11350
    .local v2, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v9

    invoke-interface {v9, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11355
    if-eqz v1, :cond_1

    .line 11356
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11362
    .end local v2    # "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v8    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    :cond_1
    :goto_1
    return-void

    .line 11351
    :catch_0
    move-exception v4

    .line 11352
    .local v4, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11353
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v9

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v10

    invoke-interface {v9, p1, p2, v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11355
    if-eqz v1, :cond_1

    .line 11356
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_1

    .line 11355
    .end local v4    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v1, :cond_2

    .line 11356
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_2
    throw v9
.end method

.method public deleteRecSchedule(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11442
    const/4 v4, 0x0

    .line 11443
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11444
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11446
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11447
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11448
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11449
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11450
    const/4 v0, 0x1

    .line 11451
    const/4 v1, 0x0

    .line 11452
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getReccontentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    move-result-object v5

    .line 11453
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->deleteRecSchedule(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 11454
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11459
    if-eqz v0, :cond_0

    .line 11460
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11466
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11455
    :catch_0
    move-exception v3

    .line 11456
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11457
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11459
    if-eqz v0, :cond_0

    .line 11460
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11459
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11460
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteSchedule(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5807
    const/4 v4, 0x0

    .line 5808
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5809
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5811
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5812
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5813
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5814
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5815
    const/4 v0, 0x1

    .line 5816
    const/4 v1, 0x0

    .line 5817
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    move-result-object v5

    .line 5818
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;->deleteSchedule(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5819
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5824
    if-eqz v0, :cond_0

    .line 5825
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5831
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5820
    :catch_0
    move-exception v3

    .line 5821
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5822
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5824
    if-eqz v0, :cond_0

    .line 5825
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5824
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5825
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteScheduleAt(IILjava/lang/String;JLjava/lang/String;)V
    .locals 10
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aTriggerTime"    # J
    .param p6, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5860
    const/4 v9, 0x0

    .line 5861
    .local v9, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v5, 0x0

    .line 5862
    .local v5, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v6, 0x0

    .line 5864
    .local v6, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5865
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v9

    .line 5866
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    .line 5867
    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5868
    const/4 v6, 0x1

    .line 5869
    const/4 v7, 0x0

    .line 5870
    .local v7, "ans":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    move-result-object v0

    .local v0, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    move-object v1, p3

    move-wide v2, p4

    move-object/from16 v4, p6

    .line 5871
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;->deleteScheduleAt(Ljava/lang/String;JLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v7

    .line 5872
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5877
    if-eqz v6, :cond_0

    .line 5878
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5884
    .end local v0    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    .end local v7    # "ans":I
    :cond_0
    :goto_0
    return-void

    .line 5873
    :catch_0
    move-exception v8

    .line 5874
    .local v8, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5875
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5877
    if-eqz v6, :cond_0

    .line 5878
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5877
    .end local v8    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 5878
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v1
.end method

.method public deleteSeries(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aSeriesId"    # Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5962
    const/4 v4, 0x0

    .line 5963
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5964
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5966
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5967
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5968
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5969
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5970
    const/4 v0, 0x1

    .line 5971
    const/4 v1, 0x0

    .line 5972
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    move-result-object v5

    .line 5973
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;->deleteSeries(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5974
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5979
    if-eqz v0, :cond_0

    .line 5980
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5986
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5975
    :catch_0
    move-exception v3

    .line 5976
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5977
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5979
    if-eqz v0, :cond_0

    .line 5980
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5979
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5980
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public deleteSession(I)Z
    .locals 2
    .param p1, "aSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v1

    .line 891
    .local v1, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->cleanupSession()V

    .line 892
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeSession(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;)V

    .line 893
    const/4 v0, 0x1

    .line 897
    .local v0, "result":Z
    return v0
.end method

.method public executeTaskUnexpectSchedule()V
    .locals 5

    .prologue
    .line 10185
    const/4 v1, 0x0

    .line 10186
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10188
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 10189
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10190
    const/4 v0, 0x1

    .line 10191
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 10192
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->executeTaskUnexpectSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10199
    if-eqz v0, :cond_0

    .line 10200
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10206
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10193
    :catch_0
    move-exception v2

    .line 10194
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10195
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10199
    if-eqz v0, :cond_0

    .line 10200
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10196
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 10197
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10199
    if-eqz v0, :cond_0

    .line 10200
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10199
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 10200
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public executeTaskUnexpectScheduleRec()V
    .locals 5

    .prologue
    .line 11285
    const/4 v1, 0x0

    .line 11286
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11288
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 11289
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11290
    const/4 v0, 0x1

    .line 11291
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v3

    .line 11292
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->executeTaskUnexpectSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11298
    if-eqz v0, :cond_0

    .line 11299
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11306
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 11293
    :catch_0
    move-exception v2

    .line 11294
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11298
    if-eqz v0, :cond_0

    .line 11299
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11295
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceUnsupportedException;
    :catch_1
    move-exception v2

    .line 11296
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11298
    if-eqz v0, :cond_0

    .line 11299
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11298
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 11299
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public gatherMmbSiInfSvByFragmentVersionFromNet(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFragmentVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6981
    const/4 v4, 0x0

    .line 6982
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 6984
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6985
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6986
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 6987
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6988
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 6989
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    move-object v1, v0

    .line 6990
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;

    invoke-direct {v3, p0, v5, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$6;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7001
    .local v3, "runnable":Ljava/lang/Runnable;
    sget-boolean v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->usePseudoServer:Z

    if-eqz v6, :cond_0

    .line 7002
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 7014
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :goto_0
    return-void

    .line 7004
    .restart local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7006
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :catch_0
    move-exception v2

    .line 7007
    .local v2, "err":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7008
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 7009
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvByPeriodFromNet(IIJJ)V
    .locals 11
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aStartTime"    # J
    .param p5, "aEndTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6921
    const/4 v10, 0x0

    .line 6922
    .local v10, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 6924
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6925
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v10

    .line 6926
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 6927
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6928
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v3

    .line 6929
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    move-object v8, v0

    .line 6930
    .local v8, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$5;

    move-object v2, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;JJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6941
    .local v1, "runnable":Ljava/lang/Runnable;
    sget-boolean v2, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->usePseudoServer:Z

    if-eqz v2, :cond_0

    .line 6942
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 6954
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    .end local v8    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    return-void

    .line 6944
    .restart local v1    # "runnable":Ljava/lang/Runnable;
    .restart local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    .restart local v8    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6946
    .end local v1    # "runnable":Ljava/lang/Runnable;
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    .end local v8    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :catch_0
    move-exception v9

    .line 6947
    .local v9, "err":Ljava/lang/Exception;
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6948
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v4

    invoke-interface {v2, p1, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 6949
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvFromAir(II)V
    .locals 7
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7037
    const/4 v3, 0x0

    .line 7038
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 7040
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7041
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v3

    .line 7042
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 7043
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7044
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v4

    .line 7045
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    move-object v1, v0

    .line 7046
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$7;

    invoke-direct {v6, p0, v4, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$7;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7065
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :goto_0
    return-void

    .line 7057
    :catch_0
    move-exception v2

    .line 7058
    .local v2, "err":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7059
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v6

    invoke-interface {v5, p1, p2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 7060
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public gatherMmbSiInfSvFromAirB(Ljava/lang/String;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 9770
    const/4 v1, 0x0

    .line 9771
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9773
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9774
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9775
    const/4 v0, 0x1

    .line 9776
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 9777
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->gatherMmbSiInfSvFromAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9784
    if-eqz v0, :cond_0

    .line 9785
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9791
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 9778
    :catch_0
    move-exception v2

    .line 9779
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9780
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9784
    if-eqz v0, :cond_0

    .line 9785
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9781
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9782
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9784
    if-eqz v0, :cond_0

    .line 9785
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9784
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9785
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public gatherMmbSiInfSvFromNet(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aGatherType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6859
    const/4 v4, 0x0

    .line 6860
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 6862
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6863
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6864
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 6865
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6866
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 6867
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    move-object v1, v0

    .line 6868
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$4;

    invoke-direct {v3, p0, v5, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6879
    .local v3, "runnable":Ljava/lang/Runnable;
    sget-boolean v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->usePseudoServer:Z

    if-eqz v6, :cond_0

    .line 6880
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 6892
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :goto_0
    return-void

    .line 6882
    .restart local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6884
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :catch_0
    move-exception v2

    .line 6885
    .local v2, "err":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6886
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 6887
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public getAccumulatedFlag(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2474
    const/4 v4, 0x0

    .line 2475
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2476
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2478
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2479
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2480
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2481
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2482
    const/4 v0, 0x1

    .line 2483
    const/4 v1, 0x0

    .line 2484
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2485
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->getAccumulatedFlag(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2487
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2499
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2488
    :catch_0
    move-exception v3

    .line 2489
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2490
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2492
    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2492
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2493
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAudioSound(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3254
    const/4 v4, 0x0

    .line 3255
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3256
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3258
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3259
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3260
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3261
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3262
    const/4 v0, 0x1

    .line 3263
    const/4 v1, 0x0

    .line 3264
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3265
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAudioSound(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3266
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3271
    if-eqz v0, :cond_0

    .line 3272
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3278
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3267
    :catch_0
    move-exception v3

    .line 3268
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3269
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3271
    if-eqz v0, :cond_0

    .line 3272
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3271
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3272
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoAcquireLisence(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3840
    const/4 v4, 0x0

    .line 3841
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3842
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3844
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3845
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3846
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3847
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3848
    const/4 v0, 0x1

    .line 3849
    const/4 v1, 0x0

    .line 3850
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3851
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoAcquireLisence(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3852
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3857
    if-eqz v0, :cond_0

    .line 3858
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3864
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3853
    :catch_0
    move-exception v3

    .line 3854
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3855
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3857
    if-eqz v0, :cond_0

    .line 3858
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3857
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3858
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoCompletion(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3739
    const/4 v4, 0x0

    .line 3740
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3741
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3743
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3744
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3745
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3746
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3747
    const/4 v0, 0x1

    .line 3748
    const/4 v1, 0x0

    .line 3749
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3750
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoCompletion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3751
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3756
    if-eqz v0, :cond_0

    .line 3757
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3763
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3752
    :catch_0
    move-exception v3

    .line 3753
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3754
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3756
    if-eqz v0, :cond_0

    .line 3757
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3756
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3757
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoReception(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3545
    const/4 v4, 0x0

    .line 3546
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3547
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3549
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3550
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3551
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3552
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3553
    const/4 v0, 0x1

    .line 3554
    const/4 v1, 0x0

    .line 3555
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3556
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoReception(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3557
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3562
    if-eqz v0, :cond_0

    .line 3563
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3569
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3558
    :catch_0
    move-exception v3

    .line 3559
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3560
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3562
    if-eqz v0, :cond_0

    .line 3563
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3562
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3563
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoReceptionForAutoReceive(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5301
    const/4 v4, 0x0

    .line 5302
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5303
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5305
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5306
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5307
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5308
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5309
    const/4 v0, 0x1

    .line 5310
    const/4 v1, 0x0

    .line 5311
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5312
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoReceptionForAutoReceive(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5313
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5318
    if-eqz v0, :cond_0

    .line 5319
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5325
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5314
    :catch_0
    move-exception v3

    .line 5315
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5316
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5318
    if-eqz v0, :cond_0

    .line 5319
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5318
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5319
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoReceptionForForceReceive(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5401
    const/4 v4, 0x0

    .line 5402
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5403
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5405
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5406
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5407
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5408
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5409
    const/4 v0, 0x1

    .line 5410
    const/4 v1, 0x0

    .line 5411
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5412
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoReceptionForForceReceive(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5413
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5418
    if-eqz v0, :cond_0

    .line 5419
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5425
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5414
    :catch_0
    move-exception v3

    .line 5415
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5416
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5418
    if-eqz v0, :cond_0

    .line 5419
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5418
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5419
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoReceptionForRecommend(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5202
    const/4 v4, 0x0

    .line 5203
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5204
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5206
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5207
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5208
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5209
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5210
    const/4 v0, 0x1

    .line 5211
    const/4 v1, 0x0

    .line 5212
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5213
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoReceptionForRecommend(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5214
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5219
    if-eqz v0, :cond_0

    .line 5220
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5226
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5215
    :catch_0
    move-exception v3

    .line 5216
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5217
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5219
    if-eqz v0, :cond_0

    .line 5220
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5219
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5220
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getAutoRecommendInfo(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4636
    const/4 v4, 0x0

    .line 4637
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4638
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4640
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4641
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4642
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4643
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4644
    const/4 v0, 0x1

    .line 4645
    const/4 v1, 0x0

    .line 4646
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4647
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getAutoRecommendInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4648
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4653
    if-eqz v0, :cond_0

    .line 4654
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4660
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4649
    :catch_0
    move-exception v3

    .line 4650
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4651
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4653
    if-eqz v0, :cond_0

    .line 4654
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4653
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4654
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getBatteryLevel(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1102
    const/4 v4, 0x0

    .line 1103
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1104
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1106
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1107
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1109
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1110
    const/4 v0, 0x1

    .line 1111
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 1112
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->getBatteryLevel(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 1113
    .local v1, "ans":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1125
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1114
    :catch_0
    move-exception v3

    .line 1115
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1116
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1118
    if-eqz v0, :cond_0

    .line 1119
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1118
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1119
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getBatteryStatus(II)V
    .locals 7
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1061
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1062
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1063
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1064
    const/4 v0, 0x1

    .line 1065
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v4

    .line 1066
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getBatteryStatus()I

    move-result v1

    .line 1067
    .local v1, "ans":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    invoke-interface {v5, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1079
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 1068
    :catch_0
    move-exception v3

    .line 1069
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1070
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v6

    invoke-interface {v5, p1, p2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1072
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 1073
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public getBmlBrowser(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5103
    const/4 v4, 0x0

    .line 5104
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5105
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5107
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5108
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5109
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5110
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5111
    const/4 v0, 0x1

    .line 5112
    const/4 v1, 0x0

    .line 5113
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5114
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getBmlBrowser(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5115
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5120
    if-eqz v0, :cond_0

    .line 5121
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5127
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5116
    :catch_0
    move-exception v3

    .line 5117
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5118
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5120
    if-eqz v0, :cond_0

    .line 5121
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5120
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5121
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getBroadcasterName(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aBroadcasterId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7743
    const/4 v4, 0x0

    .line 7744
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7745
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7747
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7748
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7749
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7750
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7751
    const/4 v0, 0x1

    .line 7752
    const/4 v1, 0x0

    .line 7753
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 7754
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    int-to-short v6, p3

    invoke-virtual {v5, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;->getBroadcasterName(SLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 7755
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7760
    if-eqz v0, :cond_0

    .line 7761
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7767
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7756
    :catch_0
    move-exception v3

    .line 7757
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7758
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7760
    if-eqz v0, :cond_0

    .line 7761
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7760
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7761
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getCaptionDisplay(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2867
    const/4 v4, 0x0

    .line 2868
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2869
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2871
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2872
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2873
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2874
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2875
    const/4 v0, 0x1

    .line 2876
    const/4 v1, 0x0

    .line 2877
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2878
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getCaptionDisplay(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2879
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2884
    if-eqz v0, :cond_0

    .line 2885
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2891
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2880
    :catch_0
    move-exception v3

    .line 2881
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2882
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2884
    if-eqz v0, :cond_0

    .line 2885
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2884
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2885
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getCaptionLanguage(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2964
    const/4 v4, 0x0

    .line 2965
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2966
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2968
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2969
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2970
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2971
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2972
    const/4 v0, 0x1

    .line 2973
    const/4 v1, 0x0

    .line 2974
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2975
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getCaptionLanguage(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2976
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2981
    if-eqz v0, :cond_0

    .line 2982
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2988
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2977
    :catch_0
    move-exception v3

    .line 2978
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2979
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2981
    if-eqz v0, :cond_0

    .line 2982
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2981
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2982
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getCompletionId(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aIdentification"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2577
    const/4 v4, 0x0

    .line 2578
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2579
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2581
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2582
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2583
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2584
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2585
    const/4 v0, 0x1

    .line 2586
    const/4 v1, 0x0

    .line 2587
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2588
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getCompletionId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 2589
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2594
    if-eqz v0, :cond_0

    .line 2595
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2601
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2590
    :catch_0
    move-exception v3

    .line 2591
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2592
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2594
    if-eqz v0, :cond_0

    .line 2595
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2594
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2595
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getCompletionThreshold(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aNetworkType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4288
    const/4 v4, 0x0

    .line 4289
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4290
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4292
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4293
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4294
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4295
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4296
    const/4 v0, 0x1

    .line 4297
    const/4 v1, 0x0

    .line 4298
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4299
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getCompletionThreshold(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;

    move-result-object v1

    .line 4300
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4305
    if-eqz v0, :cond_0

    .line 4306
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4312
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThresholdSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4301
    :catch_0
    move-exception v3

    .line 4302
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4303
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4305
    if-eqz v0, :cond_0

    .line 4306
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4305
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4306
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getConfiguration(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aConfigType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9347
    const/4 v4, 0x0

    .line 9348
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9349
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9351
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9352
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9353
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9354
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9355
    const/4 v0, 0x1

    .line 9356
    const/4 v1, 0x0

    .line 9357
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9358
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getConfiguration(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9359
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9364
    if-eqz v0, :cond_0

    .line 9365
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9371
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9360
    :catch_0
    move-exception v3

    .line 9361
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9362
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9364
    if-eqz v0, :cond_0

    .line 9365
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9364
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9365
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getContentSaveDevice(IIZ)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aForApps"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5648
    const/4 v4, 0x0

    .line 5649
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5650
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5652
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5653
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5654
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5655
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5656
    const/4 v0, 0x1

    .line 5657
    const/4 v1, 0x0

    .line 5658
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5659
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getContentSaveDevice(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;

    move-result-object v1

    .line 5660
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5665
    if-eqz v0, :cond_0

    .line 5666
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5672
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSaveDeviceSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5661
    :catch_0
    move-exception v3

    .line 5662
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5663
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5665
    if-eqz v0, :cond_0

    .line 5666
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5665
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5666
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getContentSavePath(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5696
    const/4 v4, 0x0

    .line 5697
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5698
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5700
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5701
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5702
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5703
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5704
    const/4 v0, 0x1

    .line 5705
    const/4 v1, 0x0

    .line 5706
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5707
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getContentSavePath(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;

    move-result-object v1

    .line 5708
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5713
    if-eqz v0, :cond_0

    .line 5714
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5720
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceContentSavePathSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5709
    :catch_0
    move-exception v3

    .line 5710
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5711
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5713
    if-eqz v0, :cond_0

    .line 5714
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5713
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5714
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getDictionary(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aDictionaryType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7091
    const/4 v4, 0x0

    .line 7092
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7093
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7095
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7096
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7097
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7098
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7099
    const/4 v0, 0x1

    .line 7100
    const/4 v1, 0x0

    .line 7101
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7102
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getDictionary(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 7103
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7108
    if-eqz v0, :cond_0

    .line 7109
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7115
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7104
    :catch_0
    move-exception v3

    .line 7105
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7106
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7108
    if-eqz v0, :cond_0

    .line 7109
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7108
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7109
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getDictionaryNameFromTermId(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aTermId"    # Ljava/lang/String;
    .param p4, "aLanguage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7245
    const/4 v4, 0x0

    .line 7246
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7247
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7249
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7250
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7251
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7252
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7253
    const/4 v0, 0x1

    .line 7254
    const/4 v1, 0x0

    .line 7255
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7256
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getDictionaryNameFromTermId(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 7257
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7262
    if-eqz v0, :cond_0

    .line 7263
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7269
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7258
    :catch_0
    move-exception v3

    .line 7259
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7260
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7262
    if-eqz v0, :cond_0

    .line 7263
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7262
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7263
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getDictionaryTermIdFromName(IIILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aDictionaryType"    # I
    .param p4, "aTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7297
    const/4 v4, 0x0

    .line 7298
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7299
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7301
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7302
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7303
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7304
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7305
    const/4 v0, 0x1

    .line 7306
    const/4 v1, 0x0

    .line 7307
    .local v1, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7308
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getDictionaryTermIdFromName(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v1

    .line 7309
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7314
    if-eqz v0, :cond_0

    .line 7315
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7321
    .end local v1    # "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7310
    :catch_0
    move-exception v3

    .line 7311
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7312
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7314
    if-eqz v0, :cond_0

    .line 7315
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7314
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7315
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getDownloadProgress(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6626
    const/4 v4, 0x0

    .line 6627
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6628
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6630
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6631
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6632
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6633
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6634
    const/4 v0, 0x1

    .line 6635
    const/4 v1, 0x0

    .line 6636
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6637
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->getDownloadProgress(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;

    move-result-object v1

    .line 6638
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6643
    if-eqz v0, :cond_0

    .line 6644
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6650
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcAccumulateStateSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6639
    :catch_0
    move-exception v3

    .line 6640
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6641
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6643
    if-eqz v0, :cond_0

    .line 6644
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6643
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6644
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getEntityName(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # Ljava/lang/String;
    .param p4, "aPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4540
    const/4 v4, 0x0

    .line 4541
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4542
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4544
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4545
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4546
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4547
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4548
    const/4 v0, 0x1

    .line 4549
    const/4 v1, 0x0

    .line 4550
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4551
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getEntityName(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 4552
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4557
    if-eqz v0, :cond_0

    .line 4558
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4564
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4553
    :catch_0
    move-exception v3

    .line 4554
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4555
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4557
    if-eqz v0, :cond_0

    .line 4558
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4557
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4558
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getEpgUpdateTime(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3642
    const/4 v4, 0x0

    .line 3643
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3644
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3646
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3647
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3648
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3649
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3650
    const/4 v0, 0x1

    .line 3651
    const/4 v1, 0x0

    .line 3652
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3653
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getEpgUpdateTime(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3654
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3659
    if-eqz v0, :cond_0

    .line 3660
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3666
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3655
    :catch_0
    move-exception v3

    .line 3656
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3657
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3659
    if-eqz v0, :cond_0

    .line 3660
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3659
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3660
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getFcCookieDelete(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9445
    const/4 v4, 0x0

    .line 9446
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9447
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9449
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9450
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9451
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9452
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9453
    const/4 v0, 0x1

    .line 9454
    const/4 v1, 0x0

    .line 9455
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9456
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getFcCookieDelete(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 9457
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9462
    if-eqz v0, :cond_0

    .line 9463
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9469
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9458
    :catch_0
    move-exception v3

    .line 9459
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9460
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9462
    if-eqz v0, :cond_0

    .line 9463
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9462
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9463
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getFcCookieSetting(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4732
    const/4 v4, 0x0

    .line 4733
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4734
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4736
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4737
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4738
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4739
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4740
    const/4 v0, 0x1

    .line 4741
    const/4 v1, 0x0

    .line 4742
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4743
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getFcCookieSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4744
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4749
    if-eqz v0, :cond_0

    .line 4750
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4756
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4745
    :catch_0
    move-exception v3

    .line 4746
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4747
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4749
    if-eqz v0, :cond_0

    .line 4750
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4749
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4750
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getFcJavaScriptSetting(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4925
    const/4 v4, 0x0

    .line 4926
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4927
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4929
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4930
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4931
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4932
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4933
    const/4 v0, 0x1

    .line 4934
    const/4 v1, 0x0

    .line 4935
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4936
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getFcJavaScriptSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4937
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4942
    if-eqz v0, :cond_0

    .line 4943
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4949
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4938
    :catch_0
    move-exception v3

    .line 4939
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4940
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4942
    if-eqz v0, :cond_0

    .line 4943
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4942
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4943
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getFcRefererSetting(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4828
    const/4 v4, 0x0

    .line 4829
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4830
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4832
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4833
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4834
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4835
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4836
    const/4 v0, 0x1

    .line 4837
    const/4 v1, 0x0

    .line 4838
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4839
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getFcRefererSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4840
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4845
    if-eqz v0, :cond_0

    .line 4846
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4852
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4841
    :catch_0
    move-exception v3

    .line 4842
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4843
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4845
    if-eqz v0, :cond_0

    .line 4846
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4845
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4846
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getFragmentVersion(IIIJJ)V
    .locals 12
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aContentType"    # I
    .param p4, "aStartTime"    # J
    .param p6, "aEndTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7452
    const/4 v11, 0x0

    .line 7453
    .local v11, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v6, 0x0

    .line 7454
    .local v6, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v7, 0x0

    .line 7456
    .local v7, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7457
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v11

    .line 7458
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v6

    .line 7459
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7460
    const/4 v7, 0x1

    .line 7461
    const-wide/16 v8, 0x0

    .line 7462
    .local v8, "ans":J
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v0

    .local v0, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    move v1, p3

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    .line 7463
    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getFragmentVersion(IJJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)J

    move-result-wide v8

    .line 7464
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v8, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setLongResult(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7469
    if-eqz v7, :cond_0

    .line 7470
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7476
    .end local v0    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    .end local v8    # "ans":J
    :cond_0
    :goto_0
    return-void

    .line 7465
    :catch_0
    move-exception v10

    .line 7466
    .local v10, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7467
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7469
    if-eqz v7, :cond_0

    .line 7470
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7469
    .end local v10    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_1

    .line 7470
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v1
.end method

.method declared-synchronized getIpcResponse()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1444
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1448
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;>;"
    monitor-exit p0

    return-object v0

    .line 1444
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getLastNetworkId(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3448
    const/4 v4, 0x0

    .line 3449
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3450
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3452
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3453
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3454
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3455
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3456
    const/4 v0, 0x1

    .line 3457
    const/4 v1, 0x0

    .line 3458
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3459
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getLastNetworkId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 3460
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3465
    if-eqz v0, :cond_0

    .line 3466
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3472
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3461
    :catch_0
    move-exception v3

    .line 3462
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3463
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3465
    if-eqz v0, :cond_0

    .line 3466
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3465
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3466
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getLastServiceId(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3351
    const/4 v4, 0x0

    .line 3352
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3353
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3355
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3356
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3357
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3358
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3359
    const/4 v0, 0x1

    .line 3360
    const/4 v1, 0x0

    .line 3361
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3362
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getLastServiceId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 3363
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3368
    if-eqz v0, :cond_0

    .line 3369
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3375
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3364
    :catch_0
    move-exception v3

    .line 3365
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3366
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3368
    if-eqz v0, :cond_0

    .line 3369
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3368
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3369
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getLogoImage(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6726
    const/4 v4, 0x0

    .line 6727
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6728
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6730
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6731
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6732
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6733
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6734
    const/4 v0, 0x1

    .line 6735
    const/4 v1, 0x0

    .line 6736
    .local v1, "ans":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 6737
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->getLogoImage(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6738
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBitmapResult(IILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6743
    if-eqz v0, :cond_0

    .line 6744
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6750
    .end local v1    # "ans":Landroid/graphics/Bitmap;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6739
    :catch_0
    move-exception v3

    .line 6740
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6741
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6743
    if-eqz v0, :cond_0

    .line 6744
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6743
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6744
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getMemoryFreeSpace(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8355
    const/4 v4, 0x0

    .line 8356
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8357
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8359
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8360
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8361
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8362
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8363
    const/4 v0, 0x1

    .line 8364
    const/4 v1, 0x0

    .line 8365
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8366
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->getMemoryFreeSpace(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 8367
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8372
    if-eqz v0, :cond_0

    .line 8373
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8379
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8368
    :catch_0
    move-exception v3

    .line 8369
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8370
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8372
    if-eqz v0, :cond_0

    .line 8373
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8372
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8373
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getMmbStRecordingCurrentState(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11242
    const/4 v4, 0x0

    .line 11243
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11244
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11246
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11247
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11248
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11249
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11250
    const/4 v0, 0x1

    .line 11251
    const/4 v1, 0x0

    .line 11252
    .local v1, "ans":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getRecordingSession()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    move-result-object v5

    .line 11253
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;->getMmbStRecordingCurrentState(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v1

    .line 11254
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11259
    if-eqz v0, :cond_0

    .line 11260
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11267
    .end local v1    # "ans":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingCurrentStateSv;>;"
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11255
    :catch_0
    move-exception v3

    .line 11256
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11257
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11259
    if-eqz v0, :cond_0

    .line 11260
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11259
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11260
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getMobileInfoModelName(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9287
    const/4 v4, 0x0

    .line 9288
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9289
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9291
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9292
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9293
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9294
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9295
    const/4 v0, 0x1

    .line 9296
    const/4 v1, 0x0

    .line 9297
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9298
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getMobileInfoModelName(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9299
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9304
    if-eqz v0, :cond_0

    .line 9305
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9311
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9300
    :catch_0
    move-exception v3

    .line 9301
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9302
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9304
    if-eqz v0, :cond_0

    .line 9305
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9304
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9305
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getMobileInfoOsVer(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9193
    const/4 v4, 0x0

    .line 9194
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9195
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9197
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9198
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9199
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9200
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9201
    const/4 v0, 0x1

    .line 9202
    const/4 v1, 0x0

    .line 9203
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9204
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getMobileInfoOsVer(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9205
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9210
    if-eqz v0, :cond_0

    .line 9211
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9217
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9206
    :catch_0
    move-exception v3

    .line 9207
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9208
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9210
    if-eqz v0, :cond_0

    .line 9211
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9210
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9211
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getMobileInfoSwVer(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9240
    const/4 v4, 0x0

    .line 9241
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9242
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9244
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9245
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9246
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9247
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9248
    const/4 v0, 0x1

    .line 9249
    const/4 v1, 0x0

    .line 9250
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9251
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getMobileInfoSwVer(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9252
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9257
    if-eqz v0, :cond_0

    .line 9258
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9264
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9253
    :catch_0
    move-exception v3

    .line 9254
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9255
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9257
    if-eqz v0, :cond_0

    .line 9258
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9257
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9258
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getNetworkInfoMcc(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9005
    const/4 v4, 0x0

    .line 9006
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9007
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9009
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9010
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9011
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9012
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9013
    const/4 v0, 0x1

    .line 9014
    const/4 v1, 0x0

    .line 9015
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9016
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getNetworkInfoMcc(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9017
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9022
    if-eqz v0, :cond_0

    .line 9023
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9029
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9018
    :catch_0
    move-exception v3

    .line 9019
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9020
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9022
    if-eqz v0, :cond_0

    .line 9023
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9022
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9023
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getNetworkInfoMnc(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9052
    const/4 v4, 0x0

    .line 9053
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9054
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9056
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9057
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9058
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9059
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9060
    const/4 v0, 0x1

    .line 9061
    const/4 v1, 0x0

    .line 9062
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9063
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getNetworkInfoMnc(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9064
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9069
    if-eqz v0, :cond_0

    .line 9070
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9076
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9065
    :catch_0
    move-exception v3

    .line 9066
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9067
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9069
    if-eqz v0, :cond_0

    .line 9070
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9069
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9070
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getNetworkInfoName(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9099
    const/4 v4, 0x0

    .line 9100
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9101
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9103
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9104
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9105
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9106
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9107
    const/4 v0, 0x1

    .line 9108
    const/4 v1, 0x0

    .line 9109
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9110
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getNetworkInfoName(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 9111
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9116
    if-eqz v0, :cond_0

    .line 9117
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9123
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9112
    :catch_0
    move-exception v3

    .line 9113
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9114
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9116
    if-eqz v0, :cond_0

    .line 9117
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9116
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9117
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getNetworkInfoType(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9146
    const/4 v4, 0x0

    .line 9147
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9148
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9150
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9151
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9152
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9153
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9154
    const/4 v0, 0x1

    .line 9155
    const/4 v1, 0x0

    .line 9156
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9157
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getNetworkInfoType(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 9158
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9163
    if-eqz v0, :cond_0

    .line 9164
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9170
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9159
    :catch_0
    move-exception v3

    .line 9160
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9161
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9163
    if-eqz v0, :cond_0

    .line 9164
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9163
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9164
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getNetworkName(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aNetworkId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7693
    const/4 v4, 0x0

    .line 7694
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7695
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7697
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7698
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7699
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7700
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7701
    const/4 v0, 0x1

    .line 7702
    const/4 v1, 0x0

    .line 7703
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 7704
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    int-to-short v6, p3

    invoke-virtual {v5, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;->getNetworkName(SLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 7705
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7710
    if-eqz v0, :cond_0

    .line 7711
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7717
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7706
    :catch_0
    move-exception v3

    .line 7707
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7708
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7710
    if-eqz v0, :cond_0

    .line 7711
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7710
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7711
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getParentalControl(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3937
    const/4 v4, 0x0

    .line 3938
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3939
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3941
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3942
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3943
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3944
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3945
    const/4 v0, 0x1

    .line 3946
    const/4 v1, 0x0

    .line 3947
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3948
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getParentalControl(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3949
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3954
    if-eqz v0, :cond_0

    .line 3955
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3961
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3950
    :catch_0
    move-exception v3

    .line 3951
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3952
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3954
    if-eqz v0, :cond_0

    .line 3955
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3954
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3955
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getParentalControlIndiv(II)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10815
    const/4 v2, 0x0

    .line 10816
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10818
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10819
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10820
    const/4 v0, 0x1

    .line 10821
    const/4 v1, 0x0

    .line 10822
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    .line 10823
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getParentalControl()I

    move-result v1

    .line 10824
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10829
    if-eqz v0, :cond_0

    .line 10830
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10836
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10825
    :catch_0
    move-exception v3

    .line 10826
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10827
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10829
    if-eqz v0, :cond_0

    .line 10830
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10829
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10830
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public getParentalControlRate(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4034
    const/4 v4, 0x0

    .line 4035
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4036
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4038
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4039
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4040
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4041
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4042
    const/4 v0, 0x1

    .line 4043
    const/4 v1, 0x0

    .line 4044
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4045
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getParentalControlRate(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4046
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4051
    if-eqz v0, :cond_0

    .line 4052
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4058
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4047
    :catch_0
    move-exception v3

    .line 4048
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4049
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4051
    if-eqz v0, :cond_0

    .line 4052
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4051
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4052
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getParentalControlRateIndiv(II)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10859
    const/4 v2, 0x0

    .line 10860
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10862
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10863
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10864
    const/4 v0, 0x1

    .line 10865
    const/4 v1, 0x0

    .line 10866
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v4

    .line 10867
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getParentalControlRate()I

    move-result v1

    .line 10868
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10873
    if-eqz v0, :cond_0

    .line 10874
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10880
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10869
    :catch_0
    move-exception v3

    .line 10870
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10871
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10873
    if-eqz v0, :cond_0

    .line 10874
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10873
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10874
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public getPfBackgroundId(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2673
    const/4 v4, 0x0

    .line 2674
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2675
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2677
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2678
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2679
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2680
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2681
    const/4 v0, 0x1

    .line 2682
    const/4 v1, 0x0

    .line 2683
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2684
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getPfBackgroundId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 2685
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2690
    if-eqz v0, :cond_0

    .line 2691
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2697
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2686
    :catch_0
    move-exception v3

    .line 2687
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2688
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2690
    if-eqz v0, :cond_0

    .line 2691
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2690
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2691
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    .locals 4
    .param p1, "aResourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8548
    const/4 v0, 0x0

    .line 8551
    .local v0, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeDeadResponses()V

    .line 8552
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v2

    .line 8553
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->getResourceUser(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResourceUserSv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 8560
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :goto_0
    return-object v0

    .line 8554
    :catch_0
    move-exception v1

    .line 8555
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getSecureClock(II)V
    .locals 9
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8911
    const/4 v5, 0x0

    .line 8912
    .local v5, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v1, 0x0

    .line 8913
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8915
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8916
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v5

    .line 8917
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 8918
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8919
    const/4 v0, 0x1

    .line 8920
    const-wide/16 v2, 0x0

    .line 8921
    .local v2, "ans":J
    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v6

    .line 8922
    .local v6, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v6, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getSecureClock(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)J

    move-result-wide v2

    .line 8923
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v7

    invoke-interface {v7, p1, p2, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setLongResult(IIJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8928
    if-eqz v0, :cond_0

    .line 8929
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8935
    .end local v2    # "ans":J
    .end local v6    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8924
    :catch_0
    move-exception v4

    .line 8925
    .local v4, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8926
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v7

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v8

    invoke-interface {v7, p1, p2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8928
    if-eqz v0, :cond_0

    .line 8929
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8928
    .end local v4    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_1

    .line 8929
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v7
.end method

.method public getServerCertificate(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2078
    const/4 v4, 0x0

    .line 2079
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2080
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2082
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2083
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2084
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2085
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2086
    const/4 v0, 0x1

    .line 2087
    const/4 v1, 0x0

    .line 2088
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2089
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->getServerCertificate(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 2090
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    if-eqz v0, :cond_0

    .line 2096
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2102
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2091
    :catch_0
    move-exception v3

    .line 2092
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2093
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2095
    if-eqz v0, :cond_0

    .line 2096
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2095
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2096
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getServiceList(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aBroadcasterId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7644
    const/4 v4, 0x0

    .line 7645
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7646
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7648
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7649
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7650
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7651
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7652
    const/4 v0, 0x1

    .line 7653
    const/4 v1, 0x0

    .line 7654
    .local v1, "ans":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 7655
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    int-to-short v6, p3

    invoke-virtual {v5, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;->getServiceList(SLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v1

    .line 7656
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7661
    if-eqz v0, :cond_0

    .line 7662
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7668
    .end local v1    # "ans":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceDataSv;>;"
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7657
    :catch_0
    move-exception v3

    .line 7658
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7659
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7661
    if-eqz v0, :cond_0

    .line 7662
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7661
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7662
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getServiceListAll(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7594
    const/4 v4, 0x0

    .line 7595
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7596
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7598
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7599
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7600
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7601
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7602
    const/4 v0, 0x1

    .line 7603
    const/4 v1, 0x0

    .line 7604
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 7605
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;->getServiceListAll(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;

    move-result-object v1

    .line 7606
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7611
    if-eqz v0, :cond_0

    .line 7612
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7618
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7607
    :catch_0
    move-exception v3

    .line 7608
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7609
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7611
    if-eqz v0, :cond_0

    .line 7612
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7611
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7612
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getServiceName(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7792
    const/4 v4, 0x0

    .line 7793
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7794
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7796
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7797
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7798
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7799
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7800
    const/4 v0, 0x1

    .line 7801
    const/4 v1, 0x0

    .line 7802
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 7803
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;->getServiceName(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 7804
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7809
    if-eqz v0, :cond_0

    .line 7810
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7816
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7805
    :catch_0
    move-exception v3

    .line 7806
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7807
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7809
    if-eqz v0, :cond_0

    .line 7810
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7809
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7810
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getServiceProviderName(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7842
    const/4 v4, 0x0

    .line 7843
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7844
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7846
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7847
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7848
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7849
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7850
    const/4 v0, 0x1

    .line 7851
    const/4 v1, 0x0

    .line 7852
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 7853
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;->getServiceProviderName(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 7854
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7859
    if-eqz v0, :cond_0

    .line 7860
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7866
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7855
    :catch_0
    move-exception v3

    .line 7856
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7857
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7859
    if-eqz v0, :cond_0

    .line 7860
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7859
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7860
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getStartupMode(II)V
    .locals 5
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5518
    const/4 v0, 0x0

    .line 5520
    .local v0, "ans":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 5521
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getStartupMode()I

    move-result v0

    .line 5522
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v3

    invoke-interface {v3, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5530
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_0
    return-void

    .line 5523
    :catch_0
    move-exception v1

    .line 5524
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5525
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v3

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v4

    invoke-interface {v3, p1, p2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    goto :goto_0
.end method

.method public getSuperImposeDisplay(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3061
    const/4 v4, 0x0

    .line 3062
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3063
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3065
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3066
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3067
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3068
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3069
    const/4 v0, 0x1

    .line 3070
    const/4 v1, 0x0

    .line 3071
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3072
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getSuperImposeDisplay(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3073
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3078
    if-eqz v0, :cond_0

    .line 3079
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3085
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3074
    :catch_0
    move-exception v3

    .line 3075
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3076
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3078
    if-eqz v0, :cond_0

    .line 3079
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3078
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3079
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getSuperImposeLanguage(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3158
    const/4 v4, 0x0

    .line 3159
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3160
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3162
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3163
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3164
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3165
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3166
    const/4 v0, 0x1

    .line 3167
    const/4 v1, 0x0

    .line 3168
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3169
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getSuperImposeLanguage(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3170
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3175
    if-eqz v0, :cond_0

    .line 3176
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3182
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3171
    :catch_0
    move-exception v3

    .line 3172
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3173
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3175
    if-eqz v0, :cond_0

    .line 3176
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3175
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3176
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getThumbnailSize(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4387
    const/4 v4, 0x0

    .line 4388
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4389
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4391
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4392
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4393
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4394
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4395
    const/4 v0, 0x1

    .line 4396
    const/4 v1, 0x0

    .line 4397
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4398
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getThumbnailSize(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;

    move-result-object v1

    .line 4399
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4404
    if-eqz v0, :cond_0

    .line 4405
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4411
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceThumbnailSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4400
    :catch_0
    move-exception v3

    .line 4401
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4402
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4404
    if-eqz v0, :cond_0

    .line 4405
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4404
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4405
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getTierInfo(IIB)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1873
    const/4 v4, 0x0

    .line 1874
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1875
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1877
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1878
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1879
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1880
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1881
    const/4 v0, 0x1

    .line 1882
    const/4 v1, 0x0

    .line 1883
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1884
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->getTierInfo(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;

    move-result-object v1

    .line 1885
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1897
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierInfoSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1886
    :catch_0
    move-exception v3

    .line 1887
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1888
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1890
    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1890
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1891
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getTierbit(IIB)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1673
    const/4 v4, 0x0

    .line 1674
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1675
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1677
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1678
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1679
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1680
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1681
    const/4 v0, 0x1

    .line 1682
    const/4 v1, 0x0

    .line 1683
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1684
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->getTierbit(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1685
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1697
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1686
    :catch_0
    move-exception v3

    .line 1687
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1688
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1690
    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1690
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1691
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getUimIccId(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8958
    const/4 v4, 0x0

    .line 8959
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8960
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8962
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8963
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8964
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8965
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8966
    const/4 v0, 0x1

    .line 8967
    const/4 v1, 0x0

    .line 8968
    .local v1, "ans":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 8969
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getUimIccId(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/String;

    move-result-object v1

    .line 8970
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setStringResult(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8975
    if-eqz v0, :cond_0

    .line 8976
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8982
    .end local v1    # "ans":Ljava/lang/String;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8971
    :catch_0
    move-exception v3

    .line 8972
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8973
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8975
    if-eqz v0, :cond_0

    .line 8976
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8975
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8976
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public getViewLogTransmission(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2770
    const/4 v4, 0x0

    .line 2771
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2772
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2774
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2775
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2776
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2777
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2778
    const/4 v0, 0x1

    .line 2779
    const/4 v1, 0x0

    .line 2780
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2781
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->getViewLogTransmission(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2782
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2787
    if-eqz v0, :cond_0

    .line 2788
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2794
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2783
    :catch_0
    move-exception v3

    .line 2784
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2785
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2787
    if-eqz v0, :cond_0

    .line 2788
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2787
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2788
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public hasBasicSubscription(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2315
    const/4 v4, 0x0

    .line 2316
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2317
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2319
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2320
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2321
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2322
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2323
    const/4 v0, 0x1

    .line 2324
    const/4 v1, 0x0

    .line 2325
    .local v1, "ans":Z
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2326
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->hasBasicSubscription(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2327
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    if-eqz v0, :cond_0

    .line 2333
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2339
    .end local v1    # "ans":Z
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2328
    :catch_0
    move-exception v3

    .line 2329
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2330
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2332
    if-eqz v0, :cond_0

    .line 2333
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2332
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2333
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public informEmmUpdated(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2171
    const/4 v4, 0x0

    .line 2172
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2173
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2175
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2176
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2177
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2178
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2179
    const/4 v0, 0x1

    .line 2180
    const/4 v1, 0x0

    .line 2181
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2182
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->informEmmUpdated(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2183
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    if-eqz v0, :cond_0

    .line 2189
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2195
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2184
    :catch_0
    move-exception v3

    .line 2185
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2186
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2188
    if-eqz v0, :cond_0

    .line 2189
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2188
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2189
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public initDictionary(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aDictionaryType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7193
    const/4 v4, 0x0

    .line 7194
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7195
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7197
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7198
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7199
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7200
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7201
    const/4 v0, 0x1

    .line 7202
    const/4 v1, 0x0

    .line 7203
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7204
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->initDictionary(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7205
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7210
    if-eqz v0, :cond_0

    .line 7211
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7217
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7206
    :catch_0
    move-exception v3

    .line 7207
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7208
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7210
    if-eqz v0, :cond_0

    .line 7211
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7210
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7211
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public initMmbSiInfSv(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6806
    const/4 v4, 0x0

    .line 6807
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6808
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6810
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6811
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6812
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6813
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6814
    const/4 v0, 0x1

    .line 6815
    const/4 v1, 0x0

    .line 6816
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 6817
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->initMmbSiInfSv(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6818
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6823
    if-eqz v0, :cond_0

    .line 6824
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6830
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6819
    :catch_0
    move-exception v3

    .line 6820
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6821
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6823
    if-eqz v0, :cond_0

    .line 6824
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6823
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6824
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public initUserSetting(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4434
    const/4 v4, 0x0

    .line 4435
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4436
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4438
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4439
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4440
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4441
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4442
    const/4 v0, 0x1

    .line 4443
    const/4 v1, 0x0

    .line 4444
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4445
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->initUserSetting(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4446
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4451
    if-eqz v0, :cond_0

    .line 4452
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4458
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4447
    :catch_0
    move-exception v3

    .line 4448
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4449
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4451
    if-eqz v0, :cond_0

    .line 4452
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4451
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4452
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public initializeCasdrm(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1565
    const/4 v4, 0x0

    .line 1566
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 1568
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1569
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1570
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 1571
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1572
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1573
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    move-object v1, v0

    .line 1574
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$1;

    invoke-direct {v3, p0, v5, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1585
    .local v3, "runnable":Ljava/lang/Runnable;
    sget-boolean v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->usePseudoServer:Z

    if-eqz v6, :cond_0

    .line 1586
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1598
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :goto_0
    return-void

    .line 1588
    .restart local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1590
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :catch_0
    move-exception v2

    .line 1591
    .local v2, "err":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1592
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 1593
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public isA2dpConnected(II)V
    .locals 4
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11629
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11630
    const/4 v0, 0x0

    .line 11631
    .local v0, "ans":Z
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->isA2dpConnected()Z

    move-result v0

    .line 11632
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11640
    .end local v0    # "ans":Z
    :goto_0
    return-void

    .line 11633
    :catch_0
    move-exception v1

    .line 11634
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11635
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    goto :goto_0
.end method

.method public isA2dpScmstSupported(II)V
    .locals 4
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11658
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11659
    const/4 v0, 0x0

    .line 11660
    .local v0, "ans":Z
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->isA2dpScmstSupported()Z

    move-result v0

    .line 11661
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11669
    .end local v0    # "ans":Z
    :goto_0
    return-void

    .line 11662
    :catch_0
    move-exception v1

    .line 11663
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11664
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    goto :goto_0
.end method

.method public isMmApplicationStartup()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5486
    const/4 v1, 0x0

    .line 5488
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 5489
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->isMmApplicationStartup()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5496
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_0
    return v1

    .line 5490
    :catch_0
    move-exception v0

    .line 5491
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isParentPassword(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4131
    const/4 v4, 0x0

    .line 4132
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4133
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4135
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4136
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4137
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4138
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4139
    const/4 v0, 0x1

    .line 4140
    const/4 v1, 0x0

    .line 4141
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4142
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->isParentPassword(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4143
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4148
    if-eqz v0, :cond_0

    .line 4149
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4155
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4144
    :catch_0
    move-exception v3

    .line 4145
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4146
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4148
    if-eqz v0, :cond_0

    .line 4149
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4148
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4149
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public isUimService(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8308
    const/4 v4, 0x0

    .line 8309
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8310
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8312
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8313
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8314
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8315
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8316
    const/4 v0, 0x1

    .line 8317
    const/4 v1, 0x0

    .line 8318
    .local v1, "ans":Z
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8319
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->isUimService(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v1

    .line 8320
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8325
    if-eqz v0, :cond_0

    .line 8326
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8332
    .end local v1    # "ans":Z
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8321
    :catch_0
    move-exception v3

    .line 8322
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8323
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8325
    if-eqz v0, :cond_0

    .line 8326
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8325
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8326
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public isUimStatus(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8261
    const/4 v4, 0x0

    .line 8262
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8263
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8265
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8266
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8267
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8268
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8269
    const/4 v0, 0x1

    .line 8270
    const/4 v1, 0x0

    .line 8271
    .local v1, "ans":Z
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8272
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->isUimStatus(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z

    move-result v1

    .line 8273
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setBooleanResult(IIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8278
    if-eqz v0, :cond_0

    .line 8279
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8285
    .end local v1    # "ans":Z
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8274
    :catch_0
    move-exception v3

    .line 8275
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8276
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8278
    if-eqz v0, :cond_0

    .line 8279
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8278
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8279
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public killSelf()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1486
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->killSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_0
    const/4 v1, 0x1

    .line 1494
    .local v1, "result":Z
    return v1

    .line 1487
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 1488
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method notifyBroadcastAction(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 519
    const/4 v5, 0x0

    .line 520
    .local v5, "sessions":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    monitor-enter p0

    .line 521
    :try_start_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    new-array v7, v7, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-object v5, v0

    .line 522
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    move-object v1, v5

    .local v1, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 524
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyBroadcastAction(Landroid/content/Intent;)V

    .line 523
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    .end local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 529
    .restart local v1    # "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_0
    return-void
.end method

.method public notifyExportFinish(IILjava/lang/String;)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10616
    const/4 v2, 0x0

    .line 10617
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10619
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10620
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10621
    const/4 v0, 0x1

    .line 10622
    const/4 v1, 0x0

    .line 10623
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 10624
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->notifyExportFinish(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 10625
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10630
    if-eqz v0, :cond_0

    .line 10631
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10637
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10626
    :catch_0
    move-exception v3

    .line 10627
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10628
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10630
    if-eqz v0, :cond_0

    .line 10631
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10630
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10631
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public notifyOnCreate(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1254
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnCreate()V

    .line 1258
    return-void
.end method

.method public notifyOnDestroy(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1393
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1394
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnDestroy()V

    .line 1398
    return-void
.end method

.method public notifyOnPause(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1337
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1338
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnPause()V

    .line 1342
    return-void
.end method

.method public notifyOnRestart(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1421
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1422
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnRestart()V

    .line 1426
    return-void
.end method

.method public notifyOnResume(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1309
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1310
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnResume()V

    .line 1314
    return-void
.end method

.method public notifyOnStart(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1281
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1282
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnStart()V

    .line 1286
    return-void
.end method

.method public notifyOnStop(II)V
    .locals 1
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1365
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    .line 1366
    .local v0, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->notifyOnStop()V

    .line 1370
    return-void
.end method

.method public notifyOpenState(Ljava/lang/String;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 9531
    const/4 v1, 0x0

    .line 9532
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9534
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9535
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9536
    const/4 v0, 0x1

    .line 9537
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 9538
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->notifyOpenState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9545
    if-eqz v0, :cond_0

    .line 9546
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9552
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9539
    :catch_0
    move-exception v2

    .line 9540
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9541
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9545
    if-eqz v0, :cond_0

    .line 9546
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9542
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9543
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9545
    if-eqz v0, :cond_0

    .line 9546
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9545
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9546
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public processUnignitedSchedules(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9651
    .local p1, "aScheduledDataList":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;>;"
    const/4 v1, 0x0

    .line 9652
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9654
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9655
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9656
    const/4 v0, 0x1

    .line 9657
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 9658
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->processUnignitedSchedules(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9665
    if-eqz v0, :cond_0

    .line 9666
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9672
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9659
    :catch_0
    move-exception v2

    .line 9660
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9661
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9665
    if-eqz v0, :cond_0

    .line 9666
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9662
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9663
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9665
    if-eqz v0, :cond_0

    .line 9666
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9665
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9666
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public rebuildPurchaseHistory(IIBLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityid"    # B
    .param p4, "aAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIB",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2369
    .local p5, "aPurchaseidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2370
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2371
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2373
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2374
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2375
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2376
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2377
    const/4 v0, 0x1

    .line 2378
    const/4 v1, 0x0

    .line 2379
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2380
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->rebuildPurchaseHistory(BLjava/lang/String;Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2381
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2386
    if-eqz v0, :cond_0

    .line 2387
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2393
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2382
    :catch_0
    move-exception v3

    .line 2383
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2384
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2386
    if-eqz v0, :cond_0

    .line 2387
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2386
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2387
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public registIndividualStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10724
    const/4 v2, 0x0

    .line 10725
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10727
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10728
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10729
    const/4 v0, 0x1

    .line 10730
    const/4 v1, 0x0

    .line 10731
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 10732
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->registIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 10733
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10738
    if-eqz v0, :cond_0

    .line 10739
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10745
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10734
    :catch_0
    move-exception v3

    .line 10735
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10736
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10738
    if-eqz v0, :cond_0

    .line 10739
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10738
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10739
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public registerCallback(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceType"    # I
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8019
    const/4 v4, 0x0

    .line 8020
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8021
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8023
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8024
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8025
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8026
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8027
    const/4 v0, 0x1

    .line 8028
    const/4 v1, 0x0

    .line 8029
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8030
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8031
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8036
    if-eqz v0, :cond_0

    .line 8037
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8043
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8032
    :catch_0
    move-exception v3

    .line 8033
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8034
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8036
    if-eqz v0, :cond_0

    .line 8037
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8036
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8037
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public registerScheduleRc()V
    .locals 5

    .prologue
    .line 10044
    const/4 v1, 0x0

    .line 10045
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10047
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 10048
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10049
    const/4 v0, 0x1

    .line 10050
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecommendModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    move-result-object v3

    .line 10051
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->registerSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10058
    if-eqz v0, :cond_0

    .line 10059
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10065
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 10052
    :catch_0
    move-exception v2

    .line 10053
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10054
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10058
    if-eqz v0, :cond_0

    .line 10059
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10055
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 10056
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10058
    if-eqz v0, :cond_0

    .line 10059
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10058
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 10059
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public registerScheduleVg()V
    .locals 5

    .prologue
    .line 9966
    const/4 v1, 0x0

    .line 9967
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9969
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9970
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9971
    const/4 v0, 0x1

    .line 9972
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getLogModule()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    move-result-object v3

    .line 9973
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->registerSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9980
    if-eqz v0, :cond_0

    .line 9981
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9987
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9974
    :catch_0
    move-exception v2

    .line 9975
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9976
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9980
    if-eqz v0, :cond_0

    .line 9981
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9977
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9978
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9980
    if-eqz v0, :cond_0

    .line 9981
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9980
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9981
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public registerWorkKey(IIB)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1824
    const/4 v4, 0x0

    .line 1825
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1826
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1828
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1829
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1830
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1831
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1832
    const/4 v0, 0x1

    .line 1833
    const/4 v1, 0x0

    .line 1834
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1835
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->registerWorkKey(BLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1836
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1841
    if-eqz v0, :cond_0

    .line 1842
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1848
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1837
    :catch_0
    move-exception v3

    .line 1838
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1839
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1841
    if-eqz v0, :cond_0

    .line 1842
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1841
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1842
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public releaseResource(IILjava/lang/String;)V
    .locals 4
    .param p1, "aProcessId"    # I
    .param p2, "aResourceId"    # I
    .param p3, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8622
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;

    move-result-object v1

    .line 8623
    .local v1, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    invoke-virtual {v1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->releaseResource(ILjava/lang/String;)I

    .line 8624
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8625
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8633
    .end local v1    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 8627
    :catch_0
    move-exception v0

    .line 8628
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public releaseTunerResouce(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8452
    const/4 v4, 0x0

    .line 8453
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8454
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8456
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8457
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8458
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8459
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8460
    const/4 v0, 0x1

    .line 8461
    const/4 v1, 0x0

    .line 8462
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8463
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->releaseTunerResouce(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 8464
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8469
    if-eqz v0, :cond_0

    .line 8470
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8476
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8465
    :catch_0
    move-exception v3

    .line 8466
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8467
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8469
    if-eqz v0, :cond_0

    .line 8470
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8469
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8470
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public removeAllResponses()V
    .locals 6

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getIpcResponse()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 800
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 803
    .local v3, "pid":I
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeIpcResponse(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    :catch_0
    move-exception v0

    .line 805
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "remove error"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 811
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    .end local v3    # "pid":I
    :cond_0
    return-void
.end method

.method public removeDeadResponses()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 761
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getIpcResponse()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 762
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 763
    .local v3, "pid":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    .line 764
    .local v4, "response":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    invoke-interface {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5}, Landroid/os/IBinder;->pingBinder()Z

    move-result v5

    if-nez v5, :cond_0

    .line 765
    const-string v5, "process %d is dead!"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeIpcResponse(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "remove error"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;>;"
    .end local v3    # "pid":I
    .end local v4    # "response":Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;
    :cond_1
    return-void
.end method

.method public removeIpcResponse(I)Z
    .locals 21
    .param p1, "aProcessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v14, 0x0

    .line 656
    .local v14, "isEmpty":Z
    monitor-enter p0

    .line 657
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .line 658
    .local v11, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getProcessId()I

    move-result v16

    .line 659
    .local v16, "pid":I
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 660
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->setCanceled(Z)V

    goto :goto_0

    .line 734
    .end local v11    # "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "pid":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 663
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-object/from16 v19, v0

    .line 665
    .local v19, "sessions":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 666
    move-object/from16 v9, v19

    .local v9, "arr$":[Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    array-length v15, v9

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1
    if-ge v13, v15, :cond_3

    aget-object v18, v9, v13

    .line 667
    .local v18, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getProcessId()I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 668
    invoke-virtual/range {v18 .. v18}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->cleanupSession()V

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeSession(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;)V

    .line 666
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 673
    .end local v18    # "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;

    .line 674
    .local v10, "assignUser":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;
    if-eqz v10, :cond_5

    .line 676
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->getResourceId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v20

    .line 681
    .local v20, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :try_start_2
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->getResourceId()I

    move-result v2

    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwAssignUserSv;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->releaseResource(ILjava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 688
    .end local v20    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_4
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mAssignUserMap:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$000(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_6

    .line 692
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getConflictModule()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v20

    .line 694
    .restart local v20    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;->clearServiceStatus(IILjava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mConflictDataObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;->access$400(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbCfConflictDataSv;I)V

    .line 698
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    const v3, 0x30001

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 705
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    const/high16 v3, 0x70000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 712
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    const/high16 v3, 0x80000

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 724
    .end local v20    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :cond_6
    :goto_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->access$500(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;)I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_7

    .line 726
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v20

    .line 727
    .local v20, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setMmApplicationStartup(Z)V

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->access$600(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mMmAppStartupStatusObj:Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;->access$700(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$MmbFwMmAppStartupStatusSv;I)V

    .line 733
    .end local v20    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mResponseMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v14

    .line 734
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 735
    if-eqz v14, :cond_8

    .line 736
    invoke-direct/range {p0 .. p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->notifyDisconnect()V

    .line 738
    :cond_8
    const/16 v17, 0x1

    .line 742
    .local v17, "result":Z
    return v17

    .line 683
    .end local v17    # "result":Z
    .local v20, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictModuleSv;
    :catch_0
    move-exception v12

    .line 685
    .local v12, "err":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 718
    .end local v12    # "err":Ljava/lang/Exception;
    :catch_1
    move-exception v12

    .line 720
    .restart local v12    # "err":Ljava/lang/Exception;
    invoke-static {v12}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3
.end method

.method declared-synchronized removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 4
    .param p1, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 454
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mJobMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;->getGlobalJobId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :cond_0
    monitor-exit p0

    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeLicenseInfo(IIBLjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # B
    .param p4, "aCrId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1977
    const/4 v4, 0x0

    .line 1978
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1979
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1981
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1982
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1983
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1984
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1985
    const/4 v0, 0x1

    .line 1986
    const/4 v1, 0x0

    .line 1987
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1988
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->removeLicenseInfo(BLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1989
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2001
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1990
    :catch_0
    move-exception v3

    .line 1991
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1992
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1994
    if-eqz v0, :cond_0

    .line 1995
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1994
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1995
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public removeReservedInfo(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2124
    const/4 v4, 0x0

    .line 2125
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2126
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2128
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2129
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2130
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2131
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2132
    const/4 v0, 0x1

    .line 2133
    const/4 v1, 0x0

    .line 2134
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2135
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->removeReservedInfo(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2136
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2141
    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2148
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2137
    :catch_0
    move-exception v3

    .line 2138
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2139
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2141
    if-eqz v0, :cond_0

    .line 2142
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2141
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2142
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public requestData()V
    .locals 5

    .prologue
    .line 10005
    const/4 v1, 0x0

    .line 10006
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10008
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 10009
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10010
    const/4 v0, 0x1

    .line 10011
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecommendModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;

    move-result-object v3

    .line 10012
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;->requestData(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10019
    if-eqz v0, :cond_0

    .line 10020
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10026
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recommend/MmbRcServerControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 10013
    :catch_0
    move-exception v2

    .line 10014
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10015
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10019
    if-eqz v0, :cond_0

    .line 10020
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10016
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 10017
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10019
    if-eqz v0, :cond_0

    .line 10020
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10019
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 10020
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public reserveAutoDeletion()V
    .locals 5

    .prologue
    .line 9691
    const/4 v1, 0x0

    .line 9692
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9694
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9695
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9696
    const/4 v0, 0x1

    .line 9697
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 9698
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->reserveAutoDeletion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9705
    if-eqz v0, :cond_0

    .line 9706
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9712
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9699
    :catch_0
    move-exception v2

    .line 9700
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9701
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9705
    if-eqz v0, :cond_0

    .line 9706
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9702
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9703
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9705
    if-eqz v0, :cond_0

    .line 9706
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9705
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9706
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public reserveDownload(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6167
    const/4 v4, 0x0

    .line 6168
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6169
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6171
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6172
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6173
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6174
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6175
    const/4 v0, 0x1

    .line 6176
    const/4 v1, 0x0

    .line 6177
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6178
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->reserveDownload(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6179
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6184
    if-eqz v0, :cond_0

    .line 6185
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6191
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6180
    :catch_0
    move-exception v3

    .line 6181
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6182
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6184
    if-eqz v0, :cond_0

    .line 6185
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6184
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6185
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public reserveRec(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11390
    const/4 v4, 0x0

    .line 11391
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11392
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11394
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11395
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11396
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11397
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11398
    const/4 v0, 0x1

    .line 11399
    const/4 v1, 0x0

    .line 11400
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getReccontentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    move-result-object v5

    .line 11401
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;->reserveRec(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 11402
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11407
    if-eqz v0, :cond_0

    .line 11408
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11414
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11403
    :catch_0
    move-exception v3

    .line 11404
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11405
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11407
    if-eqz v0, :cond_0

    .line 11408
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11407
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11408
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public restartService(Z)Z
    .locals 3
    .param p1, "aBackground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1469
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->restartService(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    const/4 v1, 0x1

    .line 1477
    .local v1, "result":Z
    return v1

    .line 1470
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 1471
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveFcLog(IIIJLjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCategory"    # I
    .param p4, "aTimeMS"    # J
    .param p6, "aCrid"    # Ljava/lang/String;
    .param p7, "aLabel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8747
    const/4 v10, 0x0

    .line 8748
    .local v10, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v6, 0x0

    .line 8749
    .local v6, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v7, 0x0

    .line 8751
    .local v7, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8752
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v10

    .line 8753
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v6

    .line 8754
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8755
    const/4 v7, 0x1

    .line 8756
    const/4 v8, 0x0

    .line 8757
    .local v8, "ans":I
    invoke-virtual {v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getLogSession()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;

    move-result-object v0

    .local v0, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
    move v1, p3

    move-wide/from16 v2, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    .line 8758
    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8759
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8764
    if-eqz v7, :cond_0

    .line 8765
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8771
    .end local v0    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
    .end local v8    # "ans":I
    :cond_0
    :goto_0
    return-void

    .line 8760
    :catch_0
    move-exception v9

    .line 8761
    .local v9, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8762
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8764
    if-eqz v7, :cond_0

    .line 8765
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8764
    .end local v9    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_1

    .line 8765
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v1
.end method

.method public saveHistory(IIILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 13
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCategory"    # I
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aTitle"    # Ljava/lang/String;
    .param p6, "aReason"    # I
    .param p7, "aTimeMS"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8805
    const/4 v11, 0x0

    .line 8806
    .local v11, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v8, 0x0

    .line 8807
    .local v8, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8809
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8810
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v11

    .line 8811
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v8

    .line 8812
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8813
    const/4 v0, 0x1

    .line 8814
    const/4 v9, 0x0

    .line 8815
    .local v9, "ans":I
    invoke-virtual {v11}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getHistorySession()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;

    move-result-object v1

    .local v1, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;
    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    .line 8816
    invoke-virtual/range {v1 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8817
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-interface {v2, p1, p2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8822
    if-eqz v0, :cond_0

    .line 8823
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8829
    .end local v1    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistorySessionSv;
    .end local v9    # "ans":I
    :cond_0
    :goto_0
    return-void

    .line 8818
    :catch_0
    move-exception v10

    .line 8819
    .local v10, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8820
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v2

    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8822
    if-eqz v0, :cond_0

    .line 8823
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8822
    .end local v10    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 8823
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v2
.end method

.method public saveHistory(ILjava/lang/String;Ljava/lang/String;IJ)V
    .locals 11
    .param p1, "aCategory"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aTitle"    # Ljava/lang/String;
    .param p4, "aReason"    # I
    .param p5, "aTimeMS"    # J

    .prologue
    .line 10110
    const/4 v8, 0x0

    .line 10111
    .local v8, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10113
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v8

    .line 10114
    invoke-direct {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10115
    const/4 v0, 0x1

    .line 10116
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getHistoryModule()Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;

    move-result-object v1

    .local v1, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    .line 10117
    invoke-virtual/range {v1 .. v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;->saveHistory(ILjava/lang/String;Ljava/lang/String;IJLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10124
    if-eqz v0, :cond_0

    .line 10125
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10131
    .end local v1    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/history/MmbPgHistoryModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10118
    :catch_0
    move-exception v9

    .line 10119
    .local v9, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10120
    const/4 v2, 0x1

    invoke-direct {p0, v2, v9, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10124
    if-eqz v0, :cond_0

    .line 10125
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10121
    .end local v9    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v9

    .line 10122
    .local v9, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10124
    if-eqz v0, :cond_0

    .line 10125
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10124
    .end local v9    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 10125
    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v2
.end method

.method public saveServiceList(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceList"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8855
    const/4 v4, 0x0

    .line 8856
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 8858
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8859
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8860
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 8861
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8862
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getServiceListSession()Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;

    move-result-object v5

    .line 8863
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    move-object v1, v0

    .line 8864
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$11;

    invoke-direct {v3, p0, v5, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$11;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiServiceListDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8875
    .local v3, "runnable":Ljava/lang/Runnable;
    sget-boolean v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->usePseudoServer:Z

    if-eqz v6, :cond_0

    .line 8876
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 8888
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :goto_0
    return-void

    .line 8878
    .restart local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .restart local v3    # "runnable":Ljava/lang/Runnable;
    .restart local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v6, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8880
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v3    # "runnable":Ljava/lang/Runnable;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/servicelist/MmbSlServiceListSessionSv;
    :catch_0
    move-exception v2

    .line 8881
    .local v2, "err":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8882
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 8883
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public saveStLog(IIIJLjava/lang/String;)V
    .locals 10
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCategory"    # I
    .param p4, "aTimeMS"    # J
    .param p6, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8691
    const/4 v9, 0x0

    .line 8692
    .local v9, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v5, 0x0

    .line 8693
    .local v5, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v6, 0x0

    .line 8695
    .local v6, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8696
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v9

    .line 8697
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    .line 8698
    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8699
    const/4 v6, 0x1

    .line 8700
    const/4 v7, 0x0

    .line 8701
    .local v7, "ans":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getLogSession()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;

    move-result-object v0

    .local v0, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
    move v1, p3

    move-wide v2, p4

    move-object/from16 v4, p6

    .line 8702
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;->saveStLog(IJLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8703
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8708
    if-eqz v6, :cond_0

    .line 8709
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8715
    .end local v0    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogSessionSv;
    .end local v7    # "ans":I
    :cond_0
    :goto_0
    return-void

    .line 8704
    :catch_0
    move-exception v8

    .line 8705
    .local v8, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8706
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8708
    if-eqz v6, :cond_0

    .line 8709
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8708
    .end local v8    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 8709
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v1
.end method

.method public searchMmbSiInfSvByCridFromNet(IILjava/util/List;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7347
    .local p3, "aCridList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 7348
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7349
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7351
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7352
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7353
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7354
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7355
    const/4 v0, 0x1

    .line 7356
    const/4 v1, 0x0

    .line 7357
    .local v1, "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7358
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->searchMmbSiInfSvByCridFromNet(Ljava/util/List;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;

    move-result-object v1

    .line 7359
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setObjectResult(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7364
    if-eqz v0, :cond_0

    .line 7365
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7371
    .end local v1    # "ans":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataInfXmlDataSv;
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7360
    :catch_0
    move-exception v3

    .line 7361
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7362
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7364
    if-eqz v0, :cond_0

    .line 7365
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7364
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7365
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public searchMmbSiInfSvByFreewordFromNet(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFreeword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7397
    const/4 v4, 0x0

    .line 7398
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7399
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7401
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7402
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7403
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7404
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7405
    const/4 v0, 0x1

    .line 7406
    const/4 v1, 0x0

    .line 7407
    .local v1, "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7408
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->searchMmbSiInfSvByFreewordFromNet(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/util/List;

    move-result-object v1

    .line 7409
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setListResult(IILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7414
    if-eqz v0, :cond_0

    .line 7415
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7421
    .end local v1    # "ans":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7410
    :catch_0
    move-exception v3

    .line 7411
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7412
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7414
    if-eqz v0, :cond_0

    .line 7415
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7414
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7415
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public sendHello(I)V
    .locals 1
    .param p1, "aProcessId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->receiveHello()V

    .line 830
    return-void
.end method

.method public sendLogData()V
    .locals 5

    .prologue
    .line 9927
    const/4 v1, 0x0

    .line 9928
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9930
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9931
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9932
    const/4 v0, 0x1

    .line 9933
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getLogModule()Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;

    move-result-object v3

    .line 9934
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;->sendLogData(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9941
    if-eqz v0, :cond_0

    .line 9942
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9948
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/log/MmbVgLogModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9935
    :catch_0
    move-exception v2

    .line 9936
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9937
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9941
    if-eqz v0, :cond_0

    .line 9942
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9938
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9939
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9941
    if-eqz v0, :cond_0

    .line 9942
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9941
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9942
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public setApplicationMode(IILjava/lang/String;)V
    .locals 6
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    const/4 v3, 0x0

    .line 1209
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v1, 0x0

    .line 1210
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1212
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1213
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v3

    .line 1214
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 1215
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1216
    const/4 v0, 0x1

    .line 1217
    invoke-virtual {v3, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->setApplicationMode(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1218
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, p1, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1223
    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1230
    :cond_0
    :goto_0
    return-void

    .line 1219
    :catch_0
    move-exception v2

    .line 1220
    .local v2, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1221
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1223
    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1223
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public setAudioSound(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAudioState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3207
    const/4 v4, 0x0

    .line 3208
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3209
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3211
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3212
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3213
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3214
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3215
    const/4 v0, 0x1

    .line 3216
    const/4 v1, 0x0

    .line 3217
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3218
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAudioSound(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3219
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3224
    if-eqz v0, :cond_0

    .line 3225
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3231
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3220
    :catch_0
    move-exception v3

    .line 3221
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3222
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3224
    if-eqz v0, :cond_0

    .line 3225
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3224
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3225
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoAcquireLisence(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAutoAcquireLisence"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3793
    const/4 v4, 0x0

    .line 3794
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3795
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3797
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3798
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3799
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3800
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3801
    const/4 v0, 0x1

    .line 3802
    const/4 v1, 0x0

    .line 3803
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3804
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoAcquireLisence(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3805
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3810
    if-eqz v0, :cond_0

    .line 3811
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3817
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3806
    :catch_0
    move-exception v3

    .line 3807
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3808
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3810
    if-eqz v0, :cond_0

    .line 3811
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3810
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3811
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoCompletion(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAutoCompletion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3692
    const/4 v4, 0x0

    .line 3693
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3694
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3696
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3697
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3698
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3699
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3700
    const/4 v0, 0x1

    .line 3701
    const/4 v1, 0x0

    .line 3702
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3703
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoCompletion(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3704
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3709
    if-eqz v0, :cond_0

    .line 3710
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3716
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3705
    :catch_0
    move-exception v3

    .line 3706
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3707
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3709
    if-eqz v0, :cond_0

    .line 3710
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3709
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3710
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoReception(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAutoReception"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3498
    const/4 v4, 0x0

    .line 3499
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3500
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3502
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3503
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3504
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3505
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3506
    const/4 v0, 0x1

    .line 3507
    const/4 v1, 0x0

    .line 3508
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3509
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoReception(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3510
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3515
    if-eqz v0, :cond_0

    .line 3516
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3522
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3511
    :catch_0
    move-exception v3

    .line 3512
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3513
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3515
    if-eqz v0, :cond_0

    .line 3516
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3515
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3516
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoReceptionForAutoReceive(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAutoReception"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5253
    const/4 v4, 0x0

    .line 5254
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5255
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5257
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5258
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5259
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5260
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5261
    const/4 v0, 0x1

    .line 5262
    const/4 v1, 0x0

    .line 5263
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5264
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoReceptionForAutoReceive(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5265
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5270
    if-eqz v0, :cond_0

    .line 5271
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5277
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5266
    :catch_0
    move-exception v3

    .line 5267
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5268
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5270
    if-eqz v0, :cond_0

    .line 5271
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5270
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5271
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoReceptionForForceReceive(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAutoReception"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5353
    const/4 v4, 0x0

    .line 5354
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5355
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5357
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5358
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5359
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5360
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5361
    const/4 v0, 0x1

    .line 5362
    const/4 v1, 0x0

    .line 5363
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5364
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoReceptionForForceReceive(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5365
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5370
    if-eqz v0, :cond_0

    .line 5371
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5377
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5366
    :catch_0
    move-exception v3

    .line 5367
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5368
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5370
    if-eqz v0, :cond_0

    .line 5371
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5370
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5371
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoReceptionForRecommend(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aAutoReception"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5154
    const/4 v4, 0x0

    .line 5155
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5156
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5158
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5159
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5160
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5161
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5162
    const/4 v0, 0x1

    .line 5163
    const/4 v1, 0x0

    .line 5164
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5165
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoReceptionForRecommend(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5166
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5171
    if-eqz v0, :cond_0

    .line 5172
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5178
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5167
    :catch_0
    move-exception v3

    .line 5168
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5169
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5171
    if-eqz v0, :cond_0

    .line 5172
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5171
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5172
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setAutoRecommendInfo(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4589
    const/4 v4, 0x0

    .line 4590
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4591
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4593
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4594
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4595
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4596
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4597
    const/4 v0, 0x1

    .line 4598
    const/4 v1, 0x0

    .line 4599
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4600
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setAutoRecommendInfo(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4601
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4606
    if-eqz v0, :cond_0

    .line 4607
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4613
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4602
    :catch_0
    move-exception v3

    .line 4603
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4604
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4606
    if-eqz v0, :cond_0

    .line 4607
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4606
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4607
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setBmlBrowser(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aDisplay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5062
    const/4 v4, 0x0

    .line 5063
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5064
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5066
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5067
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5068
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5069
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5070
    const/4 v0, 0x1

    .line 5071
    const/4 v1, 0x0

    .line 5072
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5073
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setBmlBrowser(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5074
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5079
    if-eqz v0, :cond_0

    .line 5080
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5086
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5075
    :catch_0
    move-exception v3

    .line 5076
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5077
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5079
    if-eqz v0, :cond_0

    .line 5080
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5079
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5080
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setCaptionDisplay(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCaptionDisplay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2820
    const/4 v4, 0x0

    .line 2821
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2822
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2824
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2825
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2826
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2827
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2828
    const/4 v0, 0x1

    .line 2829
    const/4 v1, 0x0

    .line 2830
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2831
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setCaptionDisplay(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2832
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2837
    if-eqz v0, :cond_0

    .line 2838
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2844
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2833
    :catch_0
    move-exception v3

    .line 2834
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2835
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2837
    if-eqz v0, :cond_0

    .line 2838
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2837
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2838
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setCaptionLanguage(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCaptionLanguage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2917
    const/4 v4, 0x0

    .line 2918
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2919
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2921
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2922
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2923
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2924
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2925
    const/4 v0, 0x1

    .line 2926
    const/4 v1, 0x0

    .line 2927
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2928
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setCaptionLanguage(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2929
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2934
    if-eqz v0, :cond_0

    .line 2935
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2941
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2930
    :catch_0
    move-exception v3

    .line 2931
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2932
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2934
    if-eqz v0, :cond_0

    .line 2935
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2934
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2935
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setCasDrmEventListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2270
    const/4 v4, 0x0

    .line 2271
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2272
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2274
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2275
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2276
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2277
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2278
    const/4 v0, 0x1

    .line 2279
    const/4 v1, 0x0

    .line 2280
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2281
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->setCasDrmEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmEventListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2282
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2287
    if-eqz v0, :cond_0

    .line 2288
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2294
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2283
    :catch_0
    move-exception v3

    .line 2284
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2285
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2287
    if-eqz v0, :cond_0

    .line 2288
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2287
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2288
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setCompletionId(IILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aIdentification"    # Ljava/lang/String;
    .param p4, "aCpId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2527
    const/4 v4, 0x0

    .line 2528
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2529
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2531
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2532
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2533
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2534
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2535
    const/4 v0, 0x1

    .line 2536
    const/4 v1, 0x0

    .line 2537
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2538
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setCompletionId(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2539
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2544
    if-eqz v0, :cond_0

    .line 2545
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2551
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2540
    :catch_0
    move-exception v3

    .line 2541
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2542
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2544
    if-eqz v0, :cond_0

    .line 2545
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2544
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2545
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setCompletionThreshold(IIIII)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aNetworkType"    # I
    .param p4, "aThresholdSize"    # I
    .param p5, "aThresholdRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4237
    const/4 v4, 0x0

    .line 4238
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4239
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4241
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4242
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4243
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4244
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4245
    const/4 v0, 0x1

    .line 4246
    const/4 v1, 0x0

    .line 4247
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4248
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setCompletionThreshold(IIILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4250
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4255
    if-eqz v0, :cond_0

    .line 4256
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4262
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4251
    :catch_0
    move-exception v3

    .line 4252
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4253
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4255
    if-eqz v0, :cond_0

    .line 4256
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4255
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4256
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setContentSaveDevice(IIII)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aContentType"    # I
    .param p4, "aSaveDevice"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5595
    const/4 v4, 0x0

    .line 5596
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5597
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5599
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5600
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5601
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5602
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5603
    const/4 v0, 0x1

    .line 5604
    const/4 v1, 0x0

    .line 5605
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5606
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setContentSaveDevice(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5607
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5612
    if-eqz v0, :cond_0

    .line 5613
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5619
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5608
    :catch_0
    move-exception v3

    .line 5609
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5610
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5612
    if-eqz v0, :cond_0

    .line 5613
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5612
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5613
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setDownloadStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6370
    const/4 v4, 0x0

    .line 6371
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6372
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6374
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6375
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6376
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6377
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6378
    const/4 v0, 0x1

    .line 6379
    const/4 v1, 0x0

    .line 6380
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6381
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->setDownloadStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoDownloadStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6382
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6387
    if-eqz v0, :cond_0

    .line 6388
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6394
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6383
    :catch_0
    move-exception v3

    .line 6384
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6385
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6387
    if-eqz v0, :cond_0

    .line 6388
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6387
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6388
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setEntityName(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEntityId"    # Ljava/lang/String;
    .param p4, "aEntityName"    # Ljava/lang/String;
    .param p5, "aPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4488
    const/4 v4, 0x0

    .line 4489
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4490
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4492
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4493
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4494
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4495
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4496
    const/4 v0, 0x1

    .line 4497
    const/4 v1, 0x0

    .line 4498
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4499
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setEntityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4500
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4505
    if-eqz v0, :cond_0

    .line 4506
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4512
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4501
    :catch_0
    move-exception v3

    .line 4502
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4503
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4505
    if-eqz v0, :cond_0

    .line 4506
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4505
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4506
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setEpgUpdateTime(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aEpgUpdateTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3595
    const/4 v4, 0x0

    .line 3596
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3597
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3599
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3600
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3601
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3602
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3603
    const/4 v0, 0x1

    .line 3604
    const/4 v1, 0x0

    .line 3605
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3606
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setEpgUpdateTime(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3607
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3612
    if-eqz v0, :cond_0

    .line 3613
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3619
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3608
    :catch_0
    move-exception v3

    .line 3609
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3610
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3612
    if-eqz v0, :cond_0

    .line 3613
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3612
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3613
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setExecutionStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6470
    const/4 v4, 0x0

    .line 6471
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6472
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6474
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6475
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6476
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6477
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6478
    const/4 v0, 0x1

    .line 6479
    const/4 v1, 0x0

    .line 6480
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6481
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->setExecutionStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoExecutionStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6482
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6487
    if-eqz v0, :cond_0

    .line 6488
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6494
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6483
    :catch_0
    move-exception v3

    .line 6484
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6485
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6487
    if-eqz v0, :cond_0

    .line 6488
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6487
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6488
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setFcCookieDelete(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 9400
    const/4 v4, 0x0

    .line 9401
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 9402
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9404
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 9405
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 9406
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 9407
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9408
    const/4 v0, 0x1

    .line 9409
    const/4 v1, 0x0

    .line 9410
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 9411
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setFcCookieDelete(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 9412
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9417
    if-eqz v0, :cond_0

    .line 9418
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9424
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 9413
    :catch_0
    move-exception v3

    .line 9414
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9415
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9417
    if-eqz v0, :cond_0

    .line 9418
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9417
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 9418
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setFcCookieSetting(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4685
    const/4 v4, 0x0

    .line 4686
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4687
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4689
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4690
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4691
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4692
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4693
    const/4 v0, 0x1

    .line 4694
    const/4 v1, 0x0

    .line 4695
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4696
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setFcCookieSetting(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4697
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4702
    if-eqz v0, :cond_0

    .line 4703
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4709
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4698
    :catch_0
    move-exception v3

    .line 4699
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4700
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4702
    if-eqz v0, :cond_0

    .line 4703
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4702
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4703
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setFcJavaScriptSetting(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4878
    const/4 v4, 0x0

    .line 4879
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4880
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4882
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4883
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4884
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4885
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4886
    const/4 v0, 0x1

    .line 4887
    const/4 v1, 0x0

    .line 4888
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4889
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setFcJavaScriptSetting(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4890
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4895
    if-eqz v0, :cond_0

    .line 4896
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4902
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4891
    :catch_0
    move-exception v3

    .line 4892
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4893
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4895
    if-eqz v0, :cond_0

    .line 4896
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4895
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4896
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setFcRefererSetting(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4781
    const/4 v4, 0x0

    .line 4782
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4783
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4785
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4786
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4787
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4788
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4789
    const/4 v0, 0x1

    .line 4790
    const/4 v1, 0x0

    .line 4791
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4792
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setFcRefererSetting(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4793
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4798
    if-eqz v0, :cond_0

    .line 4799
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4805
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4794
    :catch_0
    move-exception v3

    .line 4795
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4796
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4798
    if-eqz v0, :cond_0

    .line 4799
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4798
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4799
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setInitializeData(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aInitData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4972
    const/4 v4, 0x0

    .line 4973
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4974
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4976
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4977
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4978
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4979
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4980
    const/4 v0, 0x1

    .line 4981
    const/4 v1, 0x0

    .line 4982
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4983
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setInitializeData(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceInitializeSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4984
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->enableBackgroundOperation()V

    .line 4985
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4990
    if-eqz v0, :cond_0

    .line 4991
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4997
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4986
    :catch_0
    move-exception v3

    .line 4987
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4988
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4990
    if-eqz v0, :cond_0

    .line 4991
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4990
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4991
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setLastNetworkId(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aNetworkId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3401
    const/4 v4, 0x0

    .line 3402
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3403
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3405
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3406
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3407
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3408
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3409
    const/4 v0, 0x1

    .line 3410
    const/4 v1, 0x0

    .line 3411
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3412
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setLastNetworkId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3413
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3418
    if-eqz v0, :cond_0

    .line 3419
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3425
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3414
    :catch_0
    move-exception v3

    .line 3415
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3416
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3418
    if-eqz v0, :cond_0

    .line 3419
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3418
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3419
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setLastServiceId(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3304
    const/4 v4, 0x0

    .line 3305
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3306
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3308
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3309
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3310
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3311
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3312
    const/4 v0, 0x1

    .line 3313
    const/4 v1, 0x0

    .line 3314
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3315
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setLastServiceId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3316
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3321
    if-eqz v0, :cond_0

    .line 3322
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3328
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3317
    :catch_0
    move-exception v3

    .line 3318
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3319
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3321
    if-eqz v0, :cond_0

    .line 3322
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3321
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3322
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setMmbSiInfSvReSchedule()V
    .locals 5

    .prologue
    .line 9849
    const/4 v1, 0x0

    .line 9850
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9852
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9853
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9854
    const/4 v0, 0x1

    .line 9855
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 9856
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiInfSvReSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9863
    if-eqz v0, :cond_0

    .line 9864
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9870
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 9857
    :catch_0
    move-exception v2

    .line 9858
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9859
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9863
    if-eqz v0, :cond_0

    .line 9864
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9860
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9861
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9863
    if-eqz v0, :cond_0

    .line 9864
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9863
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9864
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public setMmbSiInfSvReScheduleAirB(Ljava/lang/String;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 9810
    const/4 v1, 0x0

    .line 9811
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9813
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9814
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9815
    const/4 v0, 0x1

    .line 9816
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 9817
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiInfSvReScheduleAirB(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9824
    if-eqz v0, :cond_0

    .line 9825
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9831
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 9818
    :catch_0
    move-exception v2

    .line 9819
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9820
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9824
    if-eqz v0, :cond_0

    .line 9825
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9821
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9822
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9824
    if-eqz v0, :cond_0

    .line 9825
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9824
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9825
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public setMmbSiInfSvSchedule()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 10335
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logEnterFunction([Ljava/lang/Object;)V

    .line 10337
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v1

    .line 10338
    .local v1, "meta":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiInfSvSetSchedule()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 10348
    .end local v1    # "meta":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :goto_0
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logLeaveFunction()V

    .line 10349
    return-void

    .line 10339
    :catch_0
    move-exception v0

    .line 10340
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10341
    invoke-direct {p0, v3, v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10342
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :catch_1
    move-exception v0

    .line 10343
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10344
    invoke-direct {p0, v3, v0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10345
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_2
    move-exception v0

    .line 10346
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMmbSiInfSvUpdateSchedule()V
    .locals 5

    .prologue
    .line 9730
    const/4 v1, 0x0

    .line 9731
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9733
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9734
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9735
    const/4 v0, 0x1

    .line 9736
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 9737
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->setMmbSiInfSvUpdateSchedule(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9744
    if-eqz v0, :cond_0

    .line 9745
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9751
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 9738
    :catch_0
    move-exception v2

    .line 9739
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9740
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9744
    if-eqz v0, :cond_0

    .line 9745
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9741
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9742
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9744
    if-eqz v0, :cond_0

    .line 9745
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9744
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9745
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public setMmbStRecordingEventListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11196
    const/4 v4, 0x0

    .line 11197
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11198
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11200
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11201
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11202
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11203
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11204
    const/4 v0, 0x1

    .line 11205
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getRecordingSession()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    move-result-object v5

    .line 11206
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;->setMmbStRecordingEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbStRecordingEventListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11207
    .local v1, "ans":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11212
    if-eqz v0, :cond_0

    .line 11213
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11220
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11208
    :catch_0
    move-exception v3

    .line 11209
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11210
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11212
    if-eqz v0, :cond_0

    .line 11213
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11212
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11213
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setNotification(IIIZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aId"    # I
    .param p4, "aOnOff"    # Z
    .param p5, "aValue"    # I
    .param p6, "aTitle"    # Ljava/lang/String;
    .param p7, "aText"    # Ljava/lang/String;
    .param p8, "aIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1161
    const/4 v7, 0x0

    .line 1162
    .local v7, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v8, 0x0

    .line 1164
    .local v8, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1165
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v7

    .line 1166
    invoke-direct {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1167
    const/4 v8, 0x1

    .line 1168
    const/4 v9, 0x0

    .line 1169
    .local v9, "ans":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v0

    move v1, p3

    move v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-virtual/range {v0 .. v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1171
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    invoke-interface {v0, p1, p2, v9}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    if-eqz v8, :cond_0

    .line 1177
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1183
    .end local v9    # "ans":I
    :cond_0
    :goto_0
    return-void

    .line 1172
    :catch_0
    move-exception v10

    .line 1173
    .local v10, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v10}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1174
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v0

    invoke-virtual {p0, v10}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v1

    invoke-interface {v0, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    if-eqz v8, :cond_0

    .line 1177
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1176
    .end local v10    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    .line 1177
    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v0
.end method

.method public setOpenStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6420
    const/4 v4, 0x0

    .line 6421
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6422
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6424
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6425
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6426
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6427
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6428
    const/4 v0, 0x1

    .line 6429
    const/4 v1, 0x0

    .line 6430
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6431
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->setOpenStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoOpenStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6432
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6437
    if-eqz v0, :cond_0

    .line 6438
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6444
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6433
    :catch_0
    move-exception v3

    .line 6434
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6435
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6437
    if-eqz v0, :cond_0

    .line 6438
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6437
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6438
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setParentPassword(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aParentPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4084
    const/4 v4, 0x0

    .line 4085
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4086
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4088
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4089
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4090
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4091
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4092
    const/4 v0, 0x1

    .line 4093
    const/4 v1, 0x0

    .line 4094
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4095
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setParentPassword(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4096
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4101
    if-eqz v0, :cond_0

    .line 4102
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4108
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4097
    :catch_0
    move-exception v3

    .line 4098
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4099
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4101
    if-eqz v0, :cond_0

    .line 4102
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4101
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4102
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setParentalControl(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aParentalControl"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3890
    const/4 v4, 0x0

    .line 3891
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3892
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3894
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3895
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3896
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3897
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3898
    const/4 v0, 0x1

    .line 3899
    const/4 v1, 0x0

    .line 3900
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3901
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setParentalControl(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3902
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3907
    if-eqz v0, :cond_0

    .line 3908
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3914
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3903
    :catch_0
    move-exception v3

    .line 3904
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3905
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3907
    if-eqz v0, :cond_0

    .line 3908
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3907
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3908
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setParentalControlRate(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aParentalControlRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3987
    const/4 v4, 0x0

    .line 3988
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3989
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3991
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3992
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3993
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3994
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3995
    const/4 v0, 0x1

    .line 3996
    const/4 v1, 0x0

    .line 3997
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3998
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setParentalControlRate(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3999
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4004
    if-eqz v0, :cond_0

    .line 4005
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4011
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4000
    :catch_0
    move-exception v3

    .line 4001
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4002
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4004
    if-eqz v0, :cond_0

    .line 4005
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4004
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4005
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setPfBackgroundId(IILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aPfId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2626
    const/4 v4, 0x0

    .line 2627
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2628
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2630
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2631
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2632
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2633
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2634
    const/4 v0, 0x1

    .line 2635
    const/4 v1, 0x0

    .line 2636
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2637
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setPfBackgroundId(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2638
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2650
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2639
    :catch_0
    move-exception v3

    .line 2640
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2641
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2643
    if-eqz v0, :cond_0

    .line 2644
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2643
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2644
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setSchedule(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aScheduleData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .param p5, "aIntentPackageName"    # Ljava/lang/String;
    .param p6, "aIntentClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5754
    const/4 v9, 0x0

    .line 5755
    .local v9, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v5, 0x0

    .line 5756
    .local v5, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v6, 0x0

    .line 5758
    .local v6, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5759
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v9

    .line 5760
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v5

    .line 5761
    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5762
    const/4 v6, 0x1

    .line 5763
    const/4 v7, 0x0

    .line 5764
    .local v7, "ans":I
    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    move-result-object v0

    .local v0, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object/from16 v4, p6

    .line 5765
    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;->setSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v7

    .line 5767
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-interface {v1, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5772
    if-eqz v6, :cond_0

    .line 5773
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5779
    .end local v0    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    .end local v7    # "ans":I
    :cond_0
    :goto_0
    return-void

    .line 5768
    :catch_0
    move-exception v8

    .line 5769
    .local v8, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5770
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5772
    if-eqz v6, :cond_0

    .line 5773
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5772
    .end local v8    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 5773
    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v1
.end method

.method public setSeries(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;
    .param p4, "aPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5911
    const/4 v4, 0x0

    .line 5912
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5913
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5915
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5916
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5917
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5918
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5919
    const/4 v0, 0x1

    .line 5920
    const/4 v1, 0x0

    .line 5921
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getScheduleSession()Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;

    move-result-object v5

    .line 5922
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;->setSeries(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5923
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5928
    if-eqz v0, :cond_0

    .line 5929
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5935
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/schedule/MmbTmScheduleSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5924
    :catch_0
    move-exception v3

    .line 5925
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5926
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5928
    if-eqz v0, :cond_0

    .line 5929
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5928
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5929
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setServerCertificate(IIZLjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aMode"    # Z
    .param p4, "aStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2032
    const/4 v4, 0x0

    .line 2033
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2034
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2036
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2037
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2038
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2039
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2040
    const/4 v0, 0x1

    .line 2041
    const/4 v1, 0x0

    .line 2042
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 2043
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->setServerCertificate(ZLjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2044
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2056
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2045
    :catch_0
    move-exception v3

    .line 2046
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2047
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2049
    if-eqz v0, :cond_0

    .line 2050
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2049
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2050
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setServerUrl(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServerData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5020
    const/4 v4, 0x0

    .line 5021
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 5022
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 5023
    .local v0, "added":Z
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 5025
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 5026
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 5027
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5028
    const/4 v0, 0x1

    .line 5029
    const/4 v1, 0x0

    .line 5030
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 5031
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setServerUrl(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceServerUrlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 5032
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5037
    if-eqz v0, :cond_0

    .line 5038
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 5044
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 5033
    :catch_0
    move-exception v3

    .line 5034
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 5035
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5037
    if-eqz v0, :cond_0

    .line 5038
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 5037
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 5038
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setStartupMode(I)I
    .locals 4
    .param p1, "aStartupMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 5555
    const/4 v0, 0x0

    .line 5557
    .local v0, "ans":I
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v2

    .line 5558
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    invoke-virtual {v2, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->setStartupMode(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5565
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;
    :goto_0
    return v0

    .line 5559
    :catch_0
    move-exception v1

    .line 5560
    .local v1, "err":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setSuperImposeDisplay(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aSuperImposeDisplay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3014
    const/4 v4, 0x0

    .line 3015
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3016
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3018
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3019
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3020
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3021
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3022
    const/4 v0, 0x1

    .line 3023
    const/4 v1, 0x0

    .line 3024
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3025
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setSuperImposeDisplay(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3026
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3031
    if-eqz v0, :cond_0

    .line 3032
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3038
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3027
    :catch_0
    move-exception v3

    .line 3028
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3029
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3031
    if-eqz v0, :cond_0

    .line 3032
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3031
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3032
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setSuperImposeLanguage(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aSuperImposeLanguage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3111
    const/4 v4, 0x0

    .line 3112
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 3113
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 3115
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 3116
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 3117
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 3118
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3119
    const/4 v0, 0x1

    .line 3120
    const/4 v1, 0x0

    .line 3121
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 3122
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setSuperImposeLanguage(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 3123
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3128
    if-eqz v0, :cond_0

    .line 3129
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 3135
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 3124
    :catch_0
    move-exception v3

    .line 3125
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 3126
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3128
    if-eqz v0, :cond_0

    .line 3129
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 3128
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 3129
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setThumbnailSize(IIII)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4340
    const/4 v4, 0x0

    .line 4341
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 4342
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 4344
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 4345
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 4346
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 4347
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4348
    const/4 v0, 0x1

    .line 4349
    const/4 v1, 0x0

    .line 4350
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 4351
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setThumbnailSize(IILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 4352
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4357
    if-eqz v0, :cond_0

    .line 4358
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 4364
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 4353
    :catch_0
    move-exception v3

    .line 4354
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 4355
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4357
    if-eqz v0, :cond_0

    .line 4358
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 4357
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 4358
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setTierbitQuotaInfo(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1624
    const/4 v4, 0x0

    .line 1625
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1626
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1628
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1629
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1630
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1631
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1632
    const/4 v0, 0x1

    .line 1633
    const/4 v1, 0x0

    .line 1634
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1635
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->setTierbitQuotaInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmTierbitQuotaInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1636
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1641
    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1648
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1637
    :catch_0
    move-exception v3

    .line 1638
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1639
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1641
    if-eqz v0, :cond_0

    .line 1642
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1641
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public setViewLogTransmission(III)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aViewLogTransmission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2723
    const/4 v4, 0x0

    .line 2724
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 2725
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 2727
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 2728
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 2729
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 2730
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2731
    const/4 v0, 0x1

    .line 2732
    const/4 v1, 0x0

    .line 2733
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getPreferenceSession()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;

    move-result-object v5

    .line 2734
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;->setViewLogTransmission(ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 2735
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2740
    if-eqz v0, :cond_0

    .line 2741
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 2747
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 2736
    :catch_0
    move-exception v3

    .line 2737
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 2738
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2740
    if-eqz v0, :cond_0

    .line 2741
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 2740
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 2741
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public startAutoComplement(Ljava/lang/String;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 9571
    const/4 v1, 0x0

    .line 9572
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9574
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9575
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9576
    const/4 v0, 0x1

    .line 9577
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 9578
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startAutoComplement(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9579
    const/4 v0, 0x0

    .line 9586
    if-eqz v0, :cond_0

    .line 9587
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9593
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9580
    :catch_0
    move-exception v2

    .line 9581
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 9582
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9586
    if-eqz v0, :cond_0

    .line 9587
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9583
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9584
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9586
    if-eqz v0, :cond_0

    .line 9587
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9586
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9587
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public startAutoComplementFdt(Ljava/lang/String;)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 11688
    const/4 v1, 0x0

    .line 11689
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11691
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 11692
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11693
    const/4 v0, 0x1

    .line 11694
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 11695
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startAutoComplementFdt(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11696
    const/4 v0, 0x0

    .line 11703
    if-eqz v0, :cond_0

    .line 11704
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11710
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 11697
    :catch_0
    move-exception v2

    .line 11698
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 11699
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11703
    if-eqz v0, :cond_0

    .line 11704
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11700
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 11701
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11703
    if-eqz v0, :cond_0

    .line 11704
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11703
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 11704
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public startAutoDeletion()V
    .locals 5

    .prologue
    .line 9611
    const/4 v1, 0x0

    .line 9612
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9614
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9615
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9616
    const/4 v0, 0x1

    .line 9617
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 9618
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startAutoDeletion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9625
    if-eqz v0, :cond_0

    .line 9626
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9632
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9619
    :catch_0
    move-exception v2

    .line 9620
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 9621
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9625
    if-eqz v0, :cond_0

    .line 9626
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9622
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9623
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9625
    if-eqz v0, :cond_0

    .line 9626
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9625
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9626
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public startBackgroundJobThread(Ljava/lang/Thread;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    .locals 1
    .param p1, "aThread"    # Ljava/lang/Thread;
    .param p2, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 11596
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 11598
    :try_start_0
    invoke-direct {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11599
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11608
    :cond_0
    :goto_0
    return-void

    .line 11600
    :catch_0
    move-exception v0

    .line 11601
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11602
    invoke-virtual {p0, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public startComplement(IILjava/lang/String;)V
    .locals 7
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6520
    const/4 v3, 0x0

    .line 6521
    .local v3, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v0, 0x0

    .line 6523
    .local v0, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6524
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v3

    .line 6525
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v0

    .line 6526
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6527
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v4

    .line 6528
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    move-object v1, v0

    .line 6529
    .local v1, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$2;

    invoke-direct {v6, p0, v4, p3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6548
    .end local v1    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :goto_0
    return-void

    .line 6540
    :catch_0
    move-exception v2

    .line 6541
    .local v2, "err":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 6542
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v6

    invoke-interface {v5, p1, p2, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 6543
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public startContentExecution(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aContentsPath"    # Ljava/lang/String;
    .param p5, "aIsRewrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6273
    const/4 v4, 0x0

    .line 6274
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 6275
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 6277
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6278
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 6279
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 6280
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6281
    const/4 v0, 0x1

    .line 6282
    const/4 v1, 0x0

    .line 6283
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v5

    .line 6284
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    invoke-virtual {v5, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;->startContentExecution(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 6285
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6290
    if-eqz v0, :cond_0

    .line 6291
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6297
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 6286
    :catch_0
    move-exception v3

    .line 6287
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6288
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6290
    if-eqz v0, :cond_0

    .line 6291
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 6290
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 6291
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public startDownload(Ljava/lang/String;I)V
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I

    .prologue
    .line 9490
    const/4 v1, 0x0

    .line 9491
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 9493
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 9494
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9495
    const/4 v0, 0x1

    .line 9496
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v3

    .line 9497
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v3, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startDownload(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9498
    const/4 v0, 0x0

    .line 9505
    if-eqz v0, :cond_0

    .line 9506
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 9512
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 9499
    :catch_0
    move-exception v2

    .line 9500
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 9501
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9505
    if-eqz v0, :cond_0

    .line 9506
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9502
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 9503
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9505
    if-eqz v0, :cond_0

    .line 9506
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 9505
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 9506
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public startExportRecThumbnail(IIILjava/lang/String;)V
    .locals 9
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aPrgNo"    # I
    .param p4, "aUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11544
    const/4 v8, 0x0

    .line 11545
    .local v8, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v6, 0x0

    .line 11547
    .local v6, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11548
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v8

    .line 11549
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v6

    .line 11550
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11551
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getReccontentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;

    move-result-object v2

    .line 11552
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    move-object v5, v6

    .line 11553
    .local v5, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$13;

    move-object v1, p0

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$13;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11564
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11573
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/reccontent/MmbStReccontentSessionSv;
    .end local v5    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    return-void

    .line 11565
    :catch_0
    move-exception v7

    .line 11566
    .local v7, "err":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11567
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v3

    invoke-interface {v1, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 11568
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public startExportThumbnail(IILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6676
    const/4 v8, 0x0

    .line 6677
    .local v8, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v6, 0x0

    .line 6679
    .local v6, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 6680
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v8

    .line 6681
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v6

    .line 6682
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6683
    invoke-virtual {v8}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getContentSession()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;

    move-result-object v2

    .line 6684
    .local v2, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    move-object v5, v6

    .line 6685
    .local v5, "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$3;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 6696
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6705
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentSessionSv;
    .end local v5    # "cb":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    :goto_0
    return-void

    .line 6697
    :catch_0
    move-exception v7

    .line 6698
    .local v7, "err":Ljava/lang/Exception;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6699
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v7}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v3

    invoke-interface {v1, p1, p2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    .line 6700
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0
.end method

.method public startIndividualExport(IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aCrid"    # Ljava/lang/String;
    .param p4, "aContentsPath"    # Ljava/lang/String;
    .param p5, "aIsRewrite"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10522
    const/4 v2, 0x0

    .line 10523
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10525
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10526
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10527
    const/4 v0, 0x1

    .line 10528
    const/4 v1, 0x0

    .line 10529
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 10530
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->startIndividualExport(Ljava/lang/String;Ljava/lang/String;ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 10531
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10536
    if-eqz v0, :cond_0

    .line 10537
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10543
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10532
    :catch_0
    move-exception v3

    .line 10533
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10534
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10536
    if-eqz v0, :cond_0

    .line 10537
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10536
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10537
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public startRec(IIILjava/lang/String;I)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceId"    # I
    .param p4, "aCrid"    # Ljava/lang/String;
    .param p5, "aUserParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11055
    const/4 v4, 0x0

    .line 11056
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11057
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11059
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11060
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11061
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11062
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11063
    const/4 v0, 0x1

    .line 11064
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getRecordingSession()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    move-result-object v5

    .line 11065
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    invoke-virtual {v5, p3, p4, p5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;->startRec(ILjava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11066
    .local v1, "ans":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11071
    if-eqz v0, :cond_0

    .line 11072
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11079
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11067
    :catch_0
    move-exception v3

    .line 11068
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11069
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11071
    if-eqz v0, :cond_0

    .line 11072
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11071
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11072
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public startRec(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .param p1, "aServiceId"    # I
    .param p2, "aCrid"    # Ljava/lang/String;
    .param p3, "aPackageName"    # Ljava/lang/String;
    .param p4, "aTriggerTime"    # J

    .prologue
    .line 11102
    const/4 v6, 0x0

    .line 11103
    .local v6, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v7, 0x0

    .line 11105
    .local v7, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v6

    .line 11106
    invoke-direct {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11107
    const/4 v7, 0x1

    .line 11108
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getRecordingModule()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;

    move-result-object v0

    .local v0, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 11109
    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;->startRec(ILjava/lang/String;Ljava/lang/String;JLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11110
    const/4 v7, 0x0

    .line 11117
    if-eqz v7, :cond_0

    .line 11118
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11125
    .end local v0    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 11111
    :catch_0
    move-exception v8

    .line 11112
    .local v8, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V

    .line 11113
    const/4 v1, 0x1

    invoke-direct {p0, v1, v8, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11117
    if-eqz v7, :cond_0

    .line 11118
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11114
    .end local v8    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v8

    .line 11115
    .local v8, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v8}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11117
    if-eqz v7, :cond_0

    .line 11118
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11117
    .end local v8    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_1

    .line 11118
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v1
.end method

.method public stopBackgroundOperation(II)V
    .locals 3
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6773
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->stopBackgroundOperation()V

    .line 6774
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6783
    :goto_0
    return-void

    .line 6776
    :catch_0
    move-exception v0

    .line 6777
    .local v0, "err":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 6778
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V

    goto :goto_0
.end method

.method public stopRec(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 11148
    const/4 v4, 0x0

    .line 11149
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 11150
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 11152
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 11153
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 11154
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 11155
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11156
    const/4 v0, 0x1

    .line 11157
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getRecordingSession()Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;

    move-result-object v5

    .line 11158
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;->stopRec(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 11159
    .local v1, "ans":I
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11164
    if-eqz v0, :cond_0

    .line 11165
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 11172
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/recording/MmbStRecordingSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 11160
    :catch_0
    move-exception v3

    .line 11161
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 11162
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11164
    if-eqz v0, :cond_0

    .line 11165
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 11164
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 11165
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;
    .locals 3
    .param p1, "aErr"    # Ljava/lang/Throwable;

    .prologue
    .line 481
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;-><init>()V

    .line 482
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setClassName(Ljava/lang/String;)V

    .line 483
    instance-of v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 484
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceException;->getErrorCode()I

    move-result v0

    .line 485
    .local v0, "code":I
    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setErrorCode(I)V

    .line 486
    instance-of v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 487
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceDoubleBookingException;->getCrid()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setCrid(Ljava/util/ArrayList;)V

    .line 495
    .end local v0    # "code":I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setMessage(Ljava/lang/String;)V

    .line 499
    return-object v1

    .line 488
    .restart local v0    # "code":I
    :cond_1
    instance-of v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 489
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->getFcExecutionState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setFcExecutionState(I)V

    move-object v2, p1

    .line 490
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceReserveMaxException;->getScheduleType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setScheduleType(I)V

    goto :goto_0

    .line 491
    :cond_2
    instance-of v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 492
    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbSiMetadataNetworkException;->mmbResultCode:I

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwExceptionDataSv;->setResultCode(I)V

    goto :goto_0
.end method

.method public unregistIndividualStateListener(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;)V
    .locals 8
    .param p1, "aProcessId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 10771
    const/4 v2, 0x0

    .line 10772
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10774
    .local v0, "added":Z
    const/4 v5, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(IZ)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 10775
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10776
    const/4 v0, 0x1

    .line 10777
    const/4 v1, 0x0

    .line 10778
    .local v1, "ans":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v4

    .line 10779
    .local v4, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    invoke-virtual {v4, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->unregistIndividualStateListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFcIndividualStateListenerAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 10780
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10785
    if-eqz v0, :cond_0

    .line 10786
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10792
    .end local v1    # "ans":I
    .end local v4    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    :cond_0
    :goto_0
    return-void

    .line 10781
    :catch_0
    move-exception v3

    .line 10782
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10783
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponseByProcessId(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v5, v6, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10785
    if-eqz v0, :cond_0

    .line 10786
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10785
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_1

    .line 10786
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v5
.end method

.method public unregisterCallback(IIILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aServiceType"    # I
    .param p4, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 8071
    const/4 v4, 0x0

    .line 8072
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 8073
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 8075
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 8076
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 8077
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 8078
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8079
    const/4 v0, 0x1

    .line 8080
    const/4 v1, 0x0

    .line 8081
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getConflictSession()Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;

    move-result-object v5

    .line 8082
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackAidlSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8083
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8088
    if-eqz v0, :cond_0

    .line 8089
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 8095
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/arbitration/MmbCfConflictSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 8084
    :catch_0
    move-exception v3

    .line 8085
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 8086
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8088
    if-eqz v0, :cond_0

    .line 8089
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 8088
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 8089
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public updateContractInfo(IILcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aPurchaseInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1723
    const/4 v4, 0x0

    .line 1724
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 1725
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 1727
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 1728
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 1729
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 1730
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1731
    const/4 v0, 0x1

    .line 1732
    const/4 v1, 0x0

    .line 1733
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getCasdrmSession()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;

    move-result-object v5

    .line 1734
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    invoke-virtual {v5, p3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;->updateContractInfo(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCaCasDrmPurchaseInfoSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1735
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1740
    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 1747
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 1736
    :catch_0
    move-exception v3

    .line 1737
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 1738
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1740
    if-eqz v0, :cond_0

    .line 1741
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 1740
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 1741
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public updateDatabaseVersion(II)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7546
    const/4 v4, 0x0

    .line 7547
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7548
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7550
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7551
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7552
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7553
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7554
    const/4 v0, 0x1

    .line 7555
    const/4 v1, 0x0

    .line 7556
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7557
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->updateDatabaseVersion(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)I

    move-result v1

    .line 7558
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7563
    if-eqz v0, :cond_0

    .line 7564
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7570
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7559
    :catch_0
    move-exception v3

    .line 7560
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7561
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7563
    if-eqz v0, :cond_0

    .line 7564
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7563
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7564
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public updateDictionary(IIILjava/lang/String;)V
    .locals 8
    .param p1, "aSessionId"    # I
    .param p2, "aJobId"    # I
    .param p3, "aDictionaryType"    # I
    .param p4, "aPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 7143
    const/4 v4, 0x0

    .line 7144
    .local v4, "session":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;
    const/4 v2, 0x0

    .line 7145
    .local v2, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 7147
    .local v0, "added":Z
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->confirmSession(I)V

    .line 7148
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getSession(I)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;

    move-result-object v4

    .line 7149
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback(II)Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v2

    .line 7150
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7151
    const/4 v0, 0x1

    .line 7152
    const/4 v1, 0x0

    .line 7153
    .local v1, "ans":I
    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwServiceSessionSv;->getMetadataSession()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;

    move-result-object v5

    .line 7154
    .local v5, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    invoke-virtual {v5, p3, p4, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;->updateDictionary(ILjava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7155
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-interface {v6, p1, p2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setIntResult(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7160
    if-eqz v0, :cond_0

    .line 7161
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 7167
    .end local v1    # "ans":I
    .end local v5    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataSessionSv;
    :cond_0
    :goto_0
    return-void

    .line 7156
    :catch_0
    move-exception v3

    .line 7157
    .local v3, "err":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 7158
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getResponse(I)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->toErrorData(Ljava/lang/Throwable;)Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;

    move-result-object v7

    invoke-interface {v6, p1, p2, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwIpcResponseSv;->setError(IILcom/nttdocomo/mmb/android/mmbsv/common/MmbFwParameterSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7160
    if-eqz v0, :cond_0

    .line 7161
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 7160
    .end local v3    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_1

    .line 7161
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v6
.end method

.method public updatePurchaseHistory(Z)V
    .locals 5
    .param p1, "aDbFlag"    # Z

    .prologue
    .line 10224
    const/4 v1, 0x0

    .line 10225
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10227
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 10228
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10229
    const/4 v0, 0x1

    .line 10230
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getCasdrmModule()Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;

    move-result-object v3

    .line 10231
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;->updatePurchaseHistory(ZLcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10238
    if-eqz v0, :cond_0

    .line 10239
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10245
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/casdrm/MmbCaCasDrmClientSv;
    :cond_0
    :goto_0
    return-void

    .line 10232
    :catch_0
    move-exception v2

    .line 10233
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10234
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10238
    if-eqz v0, :cond_0

    .line 10239
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10235
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 10236
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10238
    if-eqz v0, :cond_0

    .line 10239
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10238
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 10239
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method

.method public updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;)V
    .locals 5
    .param p1, "aSeriesData"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;

    .prologue
    .line 10147
    const/4 v1, 0x0

    .line 10148
    .local v1, "callback":Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;
    const/4 v0, 0x0

    .line 10150
    .local v0, "added":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->createCallback()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    move-result-object v1

    .line 10151
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->addJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10152
    const/4 v0, 0x1

    .line 10153
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getMetadataModule()Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;

    move-result-object v3

    .line 10154
    .local v3, "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    invoke-virtual {v3, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;->updateSeriesSchedule(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoSeriesReserveDataSv;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10161
    if-eqz v0, :cond_0

    .line 10162
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    .line 10168
    .end local v3    # "target":Lcom/nttdocomo/mmb/android/mmbsv/process/metadata/MmbSiMetadataControllerSv;
    :cond_0
    :goto_0
    return-void

    .line 10155
    :catch_0
    move-exception v2

    .line 10156
    .local v2, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :try_start_1
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 10157
    const/4 v4, 0x1

    invoke-direct {p0, v4, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->checkFatalException(ZLcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10161
    if-eqz v0, :cond_0

    .line 10162
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10158
    .end local v2    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;
    :catch_1
    move-exception v2

    .line 10159
    .local v2, "err":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10161
    if-eqz v0, :cond_0

    .line 10162
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    goto :goto_0

    .line 10161
    .end local v2    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_1

    .line 10162
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwIpcStubSv;->removeJob(Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V

    :cond_1
    throw v4
.end method
