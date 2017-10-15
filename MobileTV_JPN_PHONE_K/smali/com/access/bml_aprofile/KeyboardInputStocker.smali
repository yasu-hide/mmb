.class public Lcom/access/bml_aprofile/KeyboardInputStocker;
.super Ljava/lang/Object;
.source "KeyboardInputStocker.java"


# instance fields
.field private queue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lcom/access/bml_aprofile/KeyboardInputResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputStocker;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 21
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputStocker;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    .line 55
    return-void
.end method

.method public peekResult()Lcom/access/bml_aprofile/KeyboardInputResult;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputStocker;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml_aprofile/KeyboardInputResult;

    return-object v0
.end method

.method public pollResult()Lcom/access/bml_aprofile/KeyboardInputResult;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputStocker;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/access/bml_aprofile/KeyboardInputResult;

    return-object v0
.end method

.method public setResult(Lcom/access/bml_aprofile/KeyboardInputResult;)Z
    .locals 1
    .param p1, "result"    # Lcom/access/bml_aprofile/KeyboardInputResult;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/access/bml_aprofile/KeyboardInputStocker;->queue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
