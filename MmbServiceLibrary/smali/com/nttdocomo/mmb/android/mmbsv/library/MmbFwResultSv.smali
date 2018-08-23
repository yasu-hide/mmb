.class public Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;
.super Ljava/lang/Object;
.source "MmbFwResultSv.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field private mError:Ljava/lang/RuntimeException;

.field private mFinished:Z

.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mProgress:D

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;)V
    .locals 2
    .param p1, "aContext"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .prologue
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mFinished:Z

    .line 88
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mResult:Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)D
    .locals 2
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mProgress:D

    return-wide v0
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mFinished:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    .local p1, "aListener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    monitor-exit p0

    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 158
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mResult:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 160
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getSessionId()I

    move-result v2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getJobId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->cancelJob(II)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :try_start_2
    const-string v1, "disconnected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 158
    .end local v0    # "err":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceConnectionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getJobId()I
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 139
    .local v0, "result":I
    return v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mFinished:Z

    if-nez v1, :cond_0

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "err":Ljava/lang/InterruptedException;
    :try_start_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInterruptedException;

    invoke-direct {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInterruptedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    .end local v0    # "err":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 307
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    throw v1

    .line 313
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mResult:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1
.end method

.method getSessionId()I
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getSessionId()I

    move-result v0

    .line 116
    .local v0, "result":I
    return v0
.end method

.method public declared-synchronized removeListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    .local p1, "aListener":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultListenerSv<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    .line 369
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setError(Ljava/lang/RuntimeException;)V
    .locals 2
    .param p1, "aError"    # Ljava/lang/RuntimeException;

    .prologue
    .line 258
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mResult:Ljava/lang/Object;

    .line 259
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mFinished:Z

    .line 261
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 263
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$3;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    :cond_0
    monitor-exit p0

    return-void

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProgress(II)V
    .locals 4
    .param p1, "aStep"    # I
    .param p2, "aTotal"    # I

    .prologue
    .line 190
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    monitor-enter p0

    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    :try_start_0
    iput-wide v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mProgress:D

    .line 191
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    .local p1, "aResult":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mResult:Ljava/lang/Object;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mFinished:Z

    .line 226
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 227
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 389
    .local p0, "this":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbFwResultSv [mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mProgress:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFinished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mResult:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mError:Ljava/lang/RuntimeException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mListeners="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->mListeners:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
