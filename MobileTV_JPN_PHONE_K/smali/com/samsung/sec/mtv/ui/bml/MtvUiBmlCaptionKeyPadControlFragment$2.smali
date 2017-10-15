.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment$2;
.super Ljava/lang/Object;
.source "MtvUiBmlCaptionKeyPadControlFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 167
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->access$100()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->access$300(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 171
    :cond_1
    return-void
.end method
