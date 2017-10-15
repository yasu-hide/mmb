.class final Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$1;
.super Landroid/os/Handler;
.source "MtvUiGenericPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 96
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 100
    :sswitch_0
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-nez v3, :cond_1

    .line 102
    const-string v3, "MtvUiGenericPlayer"

    const-string v4, "mCurrentGenericPlayer is null... Ignoring control Animation Runnable !"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    .line 107
    .local v0, "animationString":Ljava/lang/String;
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mCurrentGenericPlayer:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    iget-object v1, v3, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->mControlAnimationRunnable:Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;

    .line 108
    .local v1, "mControlAnimationRunnable":Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 110
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "animationString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 113
    .restart local v0    # "animationString":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 114
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;Z)V

    .line 115
    invoke-static {v1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;Ljava/lang/String;)V

    .line 119
    :goto_1
    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;)V

    goto :goto_0

    .line 117
    :cond_3
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;->access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;Z)V

    goto :goto_1

    .line 124
    .end local v0    # "animationString":Ljava/lang/String;
    .end local v1    # "mControlAnimationRunnable":Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer$ControlAnimationRunnable;
    :sswitch_1
    const/4 v2, 0x0

    .line 125
    .local v2, "mUri":Landroid/broadcast/helper/MtvURI;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/broadcast/helper/MtvURI;

    if-eqz v3, :cond_4

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v2    # "mUri":Landroid/broadcast/helper/MtvURI;
    check-cast v2, Landroid/broadcast/helper/MtvURI;

    .line 126
    .restart local v2    # "mUri":Landroid/broadcast/helper/MtvURI;
    :cond_4
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 128
    const-string v3, "MtvUiGenericPlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dispatching Open of ch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " fileInde = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->fileIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v3

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x12d -> :sswitch_0
        0x143 -> :sswitch_1
    .end sparse-switch
.end method
