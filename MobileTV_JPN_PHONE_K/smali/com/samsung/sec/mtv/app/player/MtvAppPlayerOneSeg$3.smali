.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$3;
.super Ljava/lang/Object;
.source "MtvAppPlayerOneSeg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)V
    .locals 0

    .prologue
    .line 2723
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$3;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2726
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$3;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$3400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2727
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Low- Signal:: Go to good signal area else TV will be stopped immediately!!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v0, v1, :cond_2

    .line 2735
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2736
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    const/16 v1, 0x5003

    const/16 v2, 0x600c

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$300()Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;->access$1100(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$MtvAppPlayerPendingParams;)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->triggerNotification(III)V

    .line 2743
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$3;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$2600(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;Z)V

    .line 2745
    :cond_0
    return-void

    .line 2738
    :cond_1
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Invalid Pending Parameters.. May be nobody interested in receiving the notification !!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2741
    :cond_2
    const-string v0, "MtvAppPlayerOneSeg"

    const-string v1, "Live is not going on! How come low-signal now -- Anyways ignore it!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
