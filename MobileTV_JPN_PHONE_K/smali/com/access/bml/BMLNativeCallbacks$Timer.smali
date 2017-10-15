.class public Lcom/access/bml/BMLNativeCallbacks$Timer;
.super Ljava/lang/Object;
.source "BMLNativeCallbacks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/access/bml/BMLNativeCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Timer"
.end annotation


# instance fields
.field private in_delay:I

.field private in_id:I

.field final synthetic this$0:Lcom/access/bml/BMLNativeCallbacks;


# direct methods
.method public constructor <init>(Lcom/access/bml/BMLNativeCallbacks;I)V
    .locals 0
    .param p2, "in_id"    # I

    .prologue
    .line 307
    iput-object p1, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput p2, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->in_id:I

    .line 309
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->in_id:I

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-boolean v0, v0, Lcom/access/bml/BMLNativeCallbacks;->bQuit:Z

    if-eqz v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget v1, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->in_id:I

    invoke-virtual {v0, v1}, Lcom/access/bml/BMLNativeCallbacks;->onTimer(I)V

    goto :goto_0
.end method

.method public start(I)V
    .locals 4
    .param p1, "in_delay"    # I

    .prologue
    .line 316
    iput p1, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->in_delay:I

    .line 317
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v0, v0, Lcom/access/bml/BMLNativeCallbacks;->handler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/access/bml/BMLNativeCallbacks$Timer;->this$0:Lcom/access/bml/BMLNativeCallbacks;

    iget-object v0, v0, Lcom/access/bml/BMLNativeCallbacks;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method
