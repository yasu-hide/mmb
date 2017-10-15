.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag$2;
.super Ljava/lang/Object;
.source "MtvUiBmlCaptionBasicControlFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 211
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->access$300(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    :cond_1
    return-void
.end method
