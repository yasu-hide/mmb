.class public final Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;
.super Ljava/lang/Object;
.source "MtvAppPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;,
        Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvAppPlaybackState"


# instance fields
.field private cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

.field private msgQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private op:I

.field private state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    .line 61
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->init()V

    .line 62
    monitor-exit p0

    .line 63
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->op:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .line 48
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getOp()I
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->op:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V
    .locals 3
    .param p1, "in"    # Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .prologue
    .line 127
    monitor-enter p0

    :try_start_0
    const-string v0, "MtvAppPlaybackState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New Listerner regiestered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOp(I)V
    .locals 1
    .param p1, "op"    # I

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->op:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 3
    .param p1, "in"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 84
    .local v1, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->state:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .line 86
    .local v0, "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, v1, p1}, Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;->onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V

    .line 94
    :cond_0
    return-void

    .line 86
    .end local v0    # "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    .end local v1    # "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public triggerNotification(III)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .line 148
    .local v0, "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;->onPlayerNotification(III)V

    .line 151
    :cond_0
    return-void

    .line 148
    .end local v0    # "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public triggerNotification(IIIZ)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I
    .param p4, "enqueue"    # Z

    .prologue
    .line 159
    if-nez p4, :cond_0

    .line 160
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 220
    :goto_0
    return-void

    .line 168
    :cond_0
    new-instance v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;

    invoke-direct {v4, p1, p2, p3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;-><init>(III)V

    .line 169
    .local v4, "n":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;
    const/4 v2, 0x0

    .line 171
    .local v2, "havePendingCmds":Z
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .line 174
    .local v1, "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 175
    :cond_1
    const/4 v2, 0x1

    .line 176
    iget-object v5, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v3

    .line 178
    .local v3, "isOffered":Z
    if-nez v3, :cond_2

    .line 180
    const-string v5, "MtvAppPlaybackState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SERIOUS ERROR: Couldnt add cmd ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] to msgQ"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const/4 v2, 0x0

    .line 184
    .end local v3    # "isOffered":Z
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    :cond_3
    if-eqz v1, :cond_7

    .line 194
    if-eqz v2, :cond_6

    .line 195
    monitor-enter p0

    .line 196
    :try_start_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;

    move-object v4, v0

    .line 197
    iget-object v1, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .line 198
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 200
    iget v5, v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->command:I

    iget v6, v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->status:I

    iget v7, v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->extra:I

    invoke-interface {v1, v5, v6, v7}, Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;->onPlayerNotification(III)V

    .line 201
    monitor-enter p0

    .line 202
    :try_start_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 203
    iget-object v5, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->msgQ:Ljava/util/Queue;

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v2, 0x1

    .line 204
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 218
    :goto_2
    if-nez v2, :cond_3

    goto :goto_0

    .line 184
    .end local v1    # "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 198
    .restart local v1    # "cb":Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 203
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 204
    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    .line 207
    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    .line 211
    :cond_6
    iget v5, v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->command:I

    iget v6, v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->status:I

    iget v7, v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$Notification;->extra:I

    invoke-interface {v1, v5, v6, v7}, Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;->onPlayerNotification(III)V

    goto :goto_2

    .line 215
    :cond_7
    const-string v5, "MtvAppPlaybackState"

    const-string v6, "ERROR: Infinte Loop Possibility Found!!! Cb is null. Break Now!"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized unregisterListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V
    .locals 1
    .param p1, "in"    # Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->cb:Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    monitor-exit p0

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
