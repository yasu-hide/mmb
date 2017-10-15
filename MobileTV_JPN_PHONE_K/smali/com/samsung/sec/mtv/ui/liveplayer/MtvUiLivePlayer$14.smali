.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onPlayerNotification(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0

    .prologue
    .line 4652
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4674
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4675
    .local v0, "epgItent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_DTV_VIEW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 4676
    .local v1, "isEPGIntent":Z
    :goto_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "exit_confirmation"

    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->removeDialog(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 4677
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->getBatteryLevel()I

    move-result v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_2

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->isBatteryCharging()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4679
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Battery Level is low ! Not Launching ChannelGudie... !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4680
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$11600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V

    .line 4684
    :cond_0
    :goto_1
    return-void

    .end local v1    # "isEPGIntent":Z
    :cond_1
    move v1, v2

    .line 4675
    goto :goto_0

    .line 4682
    .restart local v1    # "isEPGIntent":Z
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 4683
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$14;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$11700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto :goto_1
.end method
