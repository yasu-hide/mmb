.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;
.super Ljava/lang/Object;
.source "MmbFcComplementFdtStateManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    }
.end annotation


# instance fields
.field private mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

.field private mStateInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

.field mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;)V
    .locals 1
    .param p1, "aContentModule"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    .line 219
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 223
    return-void
.end method


# virtual methods
.method public changeStateCancel(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 374
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v0

    .line 375
    .local v0, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-nez v0, :cond_0

    .line 376
    const-string v1, "State is no entry"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 387
    .end local v0    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 380
    .restart local v0    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-eq v1, v3, :cond_1

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v1, v3, :cond_2

    .line 382
    :cond_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->CANCELING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    .line 387
    monitor-exit v2

    .line 392
    return-void

    .line 384
    :cond_2
    const-string v1, "State unmatch [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 385
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public changeStateExecuting(Ljava/lang/String;)V
    .locals 6
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 334
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 335
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v0

    .line 336
    .local v0, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-nez v0, :cond_0

    .line 337
    const-string v1, "State is no entry"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1

    .line 348
    .end local v0    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 341
    .restart local v0    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :cond_0
    :try_start_1
    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    if-ne v1, v3, :cond_1

    .line 342
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->EXECUTING:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    iput-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    .line 343
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    .line 348
    monitor-exit v2

    .line 353
    return-void

    .line 345
    :cond_1
    const-string v1, "State unmatch [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method getActiveInfo()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .locals 3

    .prologue
    .line 589
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    .line 591
    .local v0, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    monitor-exit v2

    .line 596
    return-object v0

    .line 591
    .end local v0    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mContentModule:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    .line 242
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;
    if-nez v0, :cond_0

    .line 243
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 248
    :cond_0
    return-object v0
.end method

.method public getCridList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 468
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 469
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 470
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v2

    .line 475
    return-object v0

    .line 470
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->NONE:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    .line 440
    .local v0, "state":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-result-object v1

    .line 441
    .local v1, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    if-eqz v1, :cond_0

    .line 442
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    .line 448
    :cond_0
    return-object v0
.end method

.method public getStateInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 412
    .local v1, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v3

    .line 413
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-object v1, v0

    .line 414
    monitor-exit v3

    .line 419
    return-object v1

    .line 414
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getStateInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 495
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 496
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 497
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    monitor-exit v2

    .line 502
    return-object v0

    .line 497
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isComplementFdt(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 559
    const/4 v0, 0x0

    .line 560
    .local v0, "result":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v2

    .line 561
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 562
    monitor-exit v2

    .line 567
    return v0

    .line 562
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeState(Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->setWakeup(J)V

    .line 527
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    iget-object v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbCrid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateInfo:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    .line 532
    :cond_0
    monitor-exit v1

    .line 537
    return-void

    .line 532
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInitialState(Ljava/lang/String;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)Z
    .locals 14
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aType"    # I
    .param p3, "aCallback"    # Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;

    .prologue
    .line 277
    const/4 v5, 0x1

    .line 279
    .local v5, "result":Z
    const/4 v7, 0x0

    .line 280
    .local v7, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    iget-object v10, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    monitor-enter v10

    .line 281
    :try_start_0
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    move-object v7, v0

    .line 282
    if-eqz v7, :cond_0

    .line 284
    const-string v9, "Already complement FDT State [%s]"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v7, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    aput-object v13, v11, v12

    invoke-static {v9, v11}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logInfo(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const/4 v5, 0x0

    .line 289
    monitor-exit v10

    move v6, v5

    .line 313
    .end local v5    # "result":Z
    .local v6, "result":I
    :goto_0
    return v6

    .line 293
    .end local v6    # "result":I
    .restart local v5    # "result":Z
    :cond_0
    new-instance v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;

    sget-object v9, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;->INITIAL:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v8, p1, v9, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;-><init>(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateSv;ILcom/nttdocomo/mmb/android/mmbsv/process/MmbFwCallbackSv;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 297
    .end local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .local v8, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :try_start_1
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->getContentModule()Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcContentsModuleSv;->getMainService()Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/MmbFwMainServiceSv;->getPreferenceModule()Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nttdocomo/mmb/android/mmbsv/process/preference/MmbPrPreferenceModuleSv;->getSecureClock()J

    move-result-wide v2

    .line 300
    .local v2, "currentTime":J
    iput-wide v2, v8, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;->mmbStartTime:J
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    iget-object v9, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    monitor-exit v10

    move-object v7, v8

    .end local v8    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .restart local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    move v6, v5

    .line 313
    .restart local v6    # "result":I
    goto :goto_0

    .line 301
    .end local v2    # "currentTime":J
    .end local v6    # "result":I
    .end local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .restart local v8    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :catch_0
    move-exception v4

    .line 302
    .local v4, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    invoke-static {v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 303
    new-instance v9, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v9}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .end local v4    # "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceIOException;
    :catchall_0
    move-exception v9

    move-object v7, v8

    .end local v8    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    .restart local v7    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv$MmbFcComplementFdtStateInfoSv;
    :goto_1
    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    :catchall_1
    move-exception v9

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFcComplementFdtStateManagerSv [mStateMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcComplementFdtStateManagerSv;->mStateMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
