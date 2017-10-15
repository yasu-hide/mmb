.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->initViewControl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 453
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "OnClick will not be served if locked"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    .line 458
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 468
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRequestedOrientation(I)V

    .line 469
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    goto :goto_0

    .line 460
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRequestedOrientation(I)V

    .line 461
    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    goto :goto_0

    .line 464
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRequestedOrientation(I)V

    .line 465
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    goto :goto_0

    .line 458
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
