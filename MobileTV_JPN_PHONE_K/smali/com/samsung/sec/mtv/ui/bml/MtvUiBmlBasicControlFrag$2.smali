.class Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag$2;
.super Ljava/lang/Object;
.source "MtvUiBmlBasicControlFrag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->access$000()Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onKeyEvent(Landroid/view/KeyEvent;)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag$2;->this$0:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->access$300(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 244
    :cond_1
    return-void
.end method
