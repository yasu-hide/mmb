.class Lcom/access/bml/BMLView$3;
.super Ljava/lang/Object;
.source "BMLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/access/bml/BMLView;->BML_CB_WakeUpUsingHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/access/bml/BMLView;


# direct methods
.method constructor <init>(Lcom/access/bml/BMLView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/access/bml/BMLView$3;->this$0:Lcom/access/bml/BMLView;

    .line 1560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1564
    :try_start_0
    iget-object v1, p0, Lcom/access/bml/BMLView$3;->this$0:Lcom/access/bml/BMLView;

    iget-object v1, v1, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1565
    iget-object v1, p0, Lcom/access/bml/BMLView$3;->this$0:Lcom/access/bml/BMLView;

    invoke-virtual {v1}, Lcom/access/bml/BMLView;->BML_WakeUp()V

    .line 1566
    iget-object v1, p0, Lcom/access/bml/BMLView$3;->this$0:Lcom/access/bml/BMLView;

    iget-object v1, v1, Lcom/access/bml/BMLView;->available:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :goto_0
    return-void

    .line 1567
    :catch_0
    move-exception v0

    .line 1568
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
