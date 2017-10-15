.class final Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 5832
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16200()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16100()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5833
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16300()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5834
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16400()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 5835
    .local v1, "fm":Landroid/app/FragmentManager;
    const-string v2, "reserve_end_dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 5836
    .local v0, "dialog":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    .line 5838
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16500()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;Landroid/os/Bundle;)V

    .line 5839
    invoke-static {}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$16700()Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5840
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 5861
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_0
    :goto_0
    return-void

    .line 5843
    .restart local v0    # "dialog":Landroid/app/DialogFragment;
    .restart local v1    # "fm":Landroid/app/FragmentManager;
    :cond_1
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "Activity in Background , Cannot remove Reservation End popup... Adding to pending Notification !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 5844
    new-instance v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32$1;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$32;)V

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$5702(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5858
    .end local v0    # "dialog":Landroid/app/DialogFragment;
    .end local v1    # "fm":Landroid/app/FragmentManager;
    :cond_2
    const-string v2, "MtvUiLivePlayer"

    const-string v3, "mCurrentGenericPlayer is null"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
