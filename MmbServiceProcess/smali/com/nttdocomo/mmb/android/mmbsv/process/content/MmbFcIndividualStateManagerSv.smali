.class Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;
.super Ljava/lang/Object;
.source "MmbFcIndividualStateManagerSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;,
        Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    }
.end annotation


# instance fields
.field private mStateMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    return-void
.end method


# virtual methods
.method public getCridCount(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)I
    .locals 2
    .param p1, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getCridList(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 369
    return v0
.end method

.method public getCridList(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)Ljava/util/List;
    .locals 4
    .param p1, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 336
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 337
    .local v2, "stateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    iget-object v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    if-ne v3, p1, :cond_0

    .line 338
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "stateEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;>;"
    :cond_1
    return-object v1
.end method

.method public getInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .locals 3
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz p1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    .line 286
    .restart local v0    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    :cond_0
    return-object v0
.end method

.method public getState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    .locals 2
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 306
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->NONE:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    .line 307
    .local v0, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->getInfo(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    move-result-object v1

    .line 308
    .local v1, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz v1, :cond_0

    .line 309
    iget-object v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    .line 314
    :cond_0
    return-object v0
.end method

.method public removeState(Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .locals 5
    .param p1, "aCrid"    # Ljava/lang/String;

    .prologue
    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz p1, :cond_0

    .line 213
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v3

    .line 214
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    move-object v1, v0

    .line 215
    monitor-exit v3

    .line 220
    :cond_0
    return-object v1

    .line 215
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;)Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    .prologue
    .line 243
    const/4 v2, 0x0

    .line 244
    .local v2, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v3, v2

    .line 260
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .local v3, "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    :goto_0
    return-object v3

    .line 250
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    :cond_1
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v6

    .line 251
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "keyCrid":Ljava/lang/String;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    .line 253
    .local v4, "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    if-eqz v4, :cond_2

    iget-object v5, v4, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;->mmbState:Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;

    invoke-virtual {p2, v5}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 254
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    move-object v2, v0

    .line 256
    :cond_2
    monitor-exit v6

    move-object v3, v2

    .line 260
    .end local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .restart local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    goto :goto_0

    .line 256
    .end local v1    # "keyCrid":Ljava/lang/String;
    .end local v3    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .end local v4    # "stateInfo":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .restart local v2    # "result":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setState(Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;I)Z
    .locals 7
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aState"    # Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;
    .param p3, "aCallerPid"    # I

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "result":Z
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v2, v1

    .line 190
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 175
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v4

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    invoke-direct {v6, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateSv;I)V

    invoke-virtual {v3, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;

    .line 178
    .local v0, "oldValue":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    monitor-exit v4

    .line 179
    if-nez v0, :cond_2

    .line 180
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 190
    .restart local v2    # "result":I
    goto :goto_0

    .line 178
    .end local v0    # "oldValue":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 182
    .restart local v0    # "oldValue":Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv$MmbFcIndividualStateInfoSv;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "MmbFcIndividualStateManagerSv [mStateMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/process/content/MmbFcIndividualStateManagerSv;->mStateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 377
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
