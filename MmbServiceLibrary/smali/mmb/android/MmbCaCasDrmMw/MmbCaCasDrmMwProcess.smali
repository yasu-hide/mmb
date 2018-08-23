.class abstract Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
.super Ljava/lang/Object;
.source "MmbCaCasDrmMwProcess.java"

# interfaces
.implements Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$ChildProcessListener;,
        Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;
    }
.end annotation


# instance fields
.field private mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

.field private mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

.field private mParentProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

.field private mState:I

.field private mTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;)V
    .locals 1
    .param p1, "aListener"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 44
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mParentProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;

    .prologue
    .line 26
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mParentProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    return-object v0
.end method

.method static synthetic access$100(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;
    .param p1, "x1"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onChildCompleteFromListener(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    return-void
.end method

.method private notifyComplete()V
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

    if-nez v0, :cond_0

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

    invoke-interface {v0, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;->onComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V

    goto :goto_0
.end method

.method private declared-synchronized onChildCompleteFromListener(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)V
    .locals 4
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 469
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 491
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 473
    :cond_1
    const/4 v1, 0x3

    .line 476
    .local v1, "state":I
    :try_start_1
    invoke-virtual {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->getNextChild(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v0

    .line 477
    .local v0, "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    if-nez v0, :cond_2

    .line 478
    invoke-virtual {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onChildComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 484
    :goto_1
    :try_start_2
    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 485
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    const-string v2, "isCompleted()"

    invoke-static {v2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V

    .line 488
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->cancelTimer()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 469
    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .end local v1    # "state":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 480
    .restart local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .restart local v1    # "state":I
    :cond_2
    :try_start_3
    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 481
    const/4 v1, 0x1

    goto :goto_1

    .line 484
    .end local v0    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :catchall_1
    move-exception v2

    :try_start_4
    iput v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 485
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 486
    const-string v3, "isCompleted()"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 487
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V

    .line 488
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->cancelTimer()V

    :cond_3
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private varargs onExecute([Ljava/lang/Object;)I
    .locals 2
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->canExecute([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "!canExecute(aExecuteData)"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->action([Ljava/lang/Object;)I

    move-result v0

    .line 158
    .local v0, "state":I
    return v0
.end method

.method private onWaitComplete()V
    .locals 1

    .prologue
    .line 369
    :goto_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method varargs action([Ljava/lang/Object;)I
    .locals 1
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 168
    const/4 v0, 0x3

    return v0
.end method

.method public varargs declared-synchronized canExecute([Ljava/lang/Object;)Z
    .locals 2
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 57
    monitor-enter p0

    const/4 v0, 0x0

    .line 60
    .local v0, "canExecute":Z
    :try_start_0
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onCanExecute([Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 66
    :goto_0
    monitor-exit p0

    return v0

    .line 63
    :cond_0
    :try_start_1
    iget-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-interface {v1, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->canExecute([Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    :goto_0
    monitor-exit p0

    return-void

    .line 211
    :cond_0
    const/4 v0, 0x4

    :try_start_1
    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :try_start_2
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->cancel()V

    .line 218
    :cond_1
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 220
    :try_start_3
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 220
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method cancelTimer()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 243
    const-string v0, "null != mTimer"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mTimer:Ljava/util/Timer;

    .line 247
    :cond_0
    return-void
.end method

.method public varargs declared-synchronized execute([Ljava/lang/Object;)I
    .locals 5
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :goto_0
    monitor-exit p0

    return v3

    .line 94
    :cond_0
    const/4 v2, 0x3

    .line 97
    .local v2, "state":I
    :try_start_1
    iget v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onFirstExecute([Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v3

    iput-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 101
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 103
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    if-nez v3, :cond_3

    .line 104
    invoke-direct {p0, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onExecute([Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 120
    :goto_1
    :try_start_2
    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 121
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    const-string v3, "isCompleted()"

    invoke-static {v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V

    .line 124
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->cancelTimer()V

    .line 128
    :cond_2
    iget v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 106
    :cond_3
    :try_start_3
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-interface {v3, p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->execute([Ljava/lang/Object;)I

    move-result v0

    .line 107
    .local v0, "childState":I
    invoke-virtual {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-virtual {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->getNextChild(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    move-result-object v1

    .line 109
    .local v1, "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    if-nez v1, :cond_4

    .line 110
    iget-object v3, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-virtual {p0, v3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onChildComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)I

    move-result v2

    goto :goto_1

    .line 112
    :cond_4
    iput-object v1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    const/4 v2, 0x1

    goto :goto_1

    .line 116
    .end local v1    # "nextChild":Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    .line 120
    .end local v0    # "childState":I
    :catchall_0
    move-exception v3

    :try_start_4
    iput v2, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 121
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 122
    const-string v4, "isCompleted()"

    invoke-static {v4}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V

    .line 124
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->cancelTimer()V

    :cond_6
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 89
    .end local v2    # "state":I
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getListener()Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mListener:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf$Listener;

    return-object v0
.end method

.method getNextChild(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 1
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isCompleted()Z
    .locals 1

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    invoke-virtual {p0, v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCompleted(I)Z
    .locals 2
    .param p1, "aState"    # I

    .prologue
    .line 408
    const/4 v0, 0x0

    .line 409
    .local v0, "ret":Z
    const/4 v1, 0x2

    if-gt v1, p1, :cond_0

    .line 410
    const-string v1, "STATE_COMPLETE <= aState"

    invoke-static {v1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 411
    const/4 v0, 0x1

    .line 414
    :cond_0
    return v0
.end method

.method varargs onCanExecute([Ljava/lang/Object;)Z
    .locals 1
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 231
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->cancelTimer()V

    .line 232
    return-void
.end method

.method onChildComplete(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;)I
    .locals 3
    .param p1, "aChildProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .prologue
    .line 189
    const/4 v0, 0x3

    .line 190
    .local v0, "state":I
    const/4 v1, 0x2

    invoke-interface {p1}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 191
    const/4 v0, 0x2

    .line 194
    :cond_0
    return v0
.end method

.method varargs onFirstExecute([Ljava/lang/Object;)Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .locals 1
    .param p1, "aExecuteData"    # [Ljava/lang/Object;

    .prologue
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method declared-synchronized onTimeout()V
    .locals 1

    .prologue
    .line 320
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    const/4 v0, 0x5

    :try_start_1
    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    :try_start_2
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mChildProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    invoke-interface {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;->cancel()V

    .line 331
    :cond_1
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onCancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    :try_start_3
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 333
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->notifyComplete()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public declared-synchronized startTimer(J)V
    .locals 3
    .param p1, "aTimeout"    # J

    .prologue
    .line 258
    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 259
    :try_start_0
    const-string v0, "aTimeout <= 0"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logE(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x3

    iput v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I

    .line 261
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 264
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 265
    const-string v0, "null == mTimer"

    invoke-static {v0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwLogMgr;->logV(Ljava/lang/String;)V

    .line 266
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mTimer:Ljava/util/Timer;

    .line 267
    iget-object v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mTimer:Ljava/util/Timer;

    new-instance v1, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;

    invoke-direct {v1, p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess$TimeoutTask;-><init>(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 269
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized startTimer(Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;J)V
    .locals 2
    .param p1, "aParentProcess"    # Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;
    .param p2, "aTimeout"    # J

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mParentProcess:Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcessIf;

    .line 281
    invoke-virtual {p0, p2, p3}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->startTimer(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    monitor-exit p0

    return-void

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized waitComplete(J)I
    .locals 1
    .param p1, "aTimeout"    # J

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :goto_0
    monitor-exit p0

    return v0

    .line 352
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->startTimer(J)V

    .line 355
    invoke-direct {p0}, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->onWaitComplete()V

    .line 357
    iget v0, p0, Lmmb/android/MmbCaCasDrmMw/MmbCaCasDrmMwProcess;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
