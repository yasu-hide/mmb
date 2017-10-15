.class Lcom/access/bml/BMLView$Timer$1;
.super Ljava/lang/Object;
.source "BMLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLView$Timer;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/access/bml/BMLView$Timer;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLView$Timer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLView$Timer$1;->this$1:Lcom/access/bml/BMLView$Timer;

    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1891
    :try_start_0
    iget-object v1, p0, Lcom/access/bml/BMLView$Timer$1;->this$1:Lcom/access/bml/BMLView$Timer;

    invoke-static {v1}, Lcom/access/bml/BMLView$Timer;->access$1(Lcom/access/bml/BMLView$Timer;)Lcom/access/bml/BMLView;

    move-result-object v1

    iget-object v1, v1, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1892
    iget-object v1, p0, Lcom/access/bml/BMLView$Timer$1;->this$1:Lcom/access/bml/BMLView$Timer;

    invoke-static {v1}, Lcom/access/bml/BMLView$Timer;->access$1(Lcom/access/bml/BMLView$Timer;)Lcom/access/bml/BMLView;

    move-result-object v1

    iget-object v2, p0, Lcom/access/bml/BMLView$Timer$1;->this$1:Lcom/access/bml/BMLView$Timer;

    invoke-static {v2}, Lcom/access/bml/BMLView$Timer;->access$0(Lcom/access/bml/BMLView$Timer;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/access/bml/BMLView;->onTimer(I)V

    .line 1893
    iget-object v1, p0, Lcom/access/bml/BMLView$Timer$1;->this$1:Lcom/access/bml/BMLView$Timer;

    invoke-static {v1}, Lcom/access/bml/BMLView$Timer;->access$1(Lcom/access/bml/BMLView$Timer;)Lcom/access/bml/BMLView;

    move-result-object v1

    iget-object v1, v1, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1894
    iget-object v1, p0, Lcom/access/bml/BMLView$Timer$1;->this$1:Lcom/access/bml/BMLView$Timer;

    invoke-static {v1}, Lcom/access/bml/BMLView$Timer;->access$1(Lcom/access/bml/BMLView$Timer;)Lcom/access/bml/BMLView;

    move-result-object v1

    invoke-static {v1}, Lcom/access/bml/BMLView;->access$3(Lcom/access/bml/BMLView;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :goto_0
    return-void

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
