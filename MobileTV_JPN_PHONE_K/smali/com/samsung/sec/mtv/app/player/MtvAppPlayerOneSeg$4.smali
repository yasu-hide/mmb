.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$4;
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
    .line 2748
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$4;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2751
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 2752
    .local v2, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v1, 0x5000

    .line 2753
    .local v1, "curCommand":I
    const/4 v0, 0x0

    .line 2754
    .local v0, "bclose":Z
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "mRunnablePostOpenFailure enetred"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2755
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$4;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v3}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$3400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2756
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 2757
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    .line 2758
    const-string v3, "MtvAppPlayerOneSeg"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRunnablePostOpenFailure enetred  curState :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  curCommand  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2759
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_1

    const/16 v3, 0x5002

    if-ne v1, v3, :cond_1

    .line 2760
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Sending OPEN_FAILURE since we didn\'t recieve any CB for CMD_OPEN"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    iget-object v3, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$4;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    const/16 v4, 0x66

    const/16 v5, 0xcb

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$3300(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;IIILjava/lang/Object;)Z

    .line 2762
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2763
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    const/16 v4, 0x500e

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->setOp(I)V

    .line 2764
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/broadcast/oneseg/MtvOneSegService;->close()Z

    move-result v0

    .line 2766
    :cond_0
    if-eqz v0, :cond_2

    .line 2767
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "Close called successfully from mRunnablePostOpenFailure"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 2772
    :cond_1
    :goto_0
    return-void

    .line 2769
    :cond_2
    const-string v3, "MtvAppPlayerOneSeg"

    const-string v4, "mRunnablePostOpenFailure Service Close got failed :"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
