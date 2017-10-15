.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$1;
.super Ljava/lang/Object;
.source "MtvUiBmlKeyPadControlFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 179
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment$1;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->access$200(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :cond_1
    return-void
.end method
