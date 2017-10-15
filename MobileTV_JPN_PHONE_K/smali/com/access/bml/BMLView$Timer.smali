.class public Lcom/access/bml/BMLView$Timer;
.super Ljava/lang/Object;
.source "BMLView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Timer"
.end annotation


# instance fields
.field private in_id:I

.field final synthetic this$0:Lcom/access/bml/BMLView;


# direct methods
.method public constructor <init>(Lcom/access/bml/BMLView;I)V
    .locals 0
    .param p2, "in_id"    # I

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/access/bml/BMLView$Timer;->this$0:Lcom/access/bml/BMLView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1867
    iput p2, p0, Lcom/access/bml/BMLView$Timer;->in_id:I

    .line 1868
    return-void
.end method

.method static synthetic access$0(Lcom/access/bml/BMLView$Timer;)I
    .locals 1

    .prologue
    .line 1865
    iget v0, p0, Lcom/access/bml/BMLView$Timer;->in_id:I

    return v0
.end method

.method static synthetic access$1(Lcom/access/bml/BMLView$Timer;)Lcom/access/bml/BMLView;
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/access/bml/BMLView$Timer;->this$0:Lcom/access/bml/BMLView;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 1871
    iget v0, p0, Lcom/access/bml/BMLView$Timer;->in_id:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/access/bml/BMLView$Timer;->this$0:Lcom/access/bml/BMLView;

    invoke-static {v0}, Lcom/access/bml/BMLView;->access$2(Lcom/access/bml/BMLView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    :goto_0
    return-void

    .line 1886
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/access/bml/BMLView$Timer$1;

    invoke-direct {v1, p0}, Lcom/access/bml/BMLView$Timer$1;-><init>(Lcom/access/bml/BMLView$Timer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1899
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public start(I)V
    .locals 4
    .param p1, "in_delay"    # I

    .prologue
    .line 1876
    iget-object v0, p0, Lcom/access/bml/BMLView$Timer;->this$0:Lcom/access/bml/BMLView;

    invoke-static {v0}, Lcom/access/bml/BMLView;->access$1(Lcom/access/bml/BMLView;)Landroid/os/Handler;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1877
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/access/bml/BMLView$Timer;->this$0:Lcom/access/bml/BMLView;

    invoke-static {v0}, Lcom/access/bml/BMLView;->access$1(Lcom/access/bml/BMLView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1881
    return-void
.end method
