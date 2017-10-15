.class Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$5;
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
    .line 2775
    iput-object p1, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$5;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2780
    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 2781
    .local v1, "curState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v0, 0x5000

    .line 2783
    .local v0, "curCommand":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg$5;->this$0:Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;

    invoke-static {v2}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$3400(Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2784
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    .line 2785
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    .line 2792
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_2

    :cond_0
    const/16 v2, 0x500e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x500f

    if-eq v0, v2, :cond_2

    .line 2795
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$500()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    const/16 v3, 0x5005

    if-eq v2, v3, :cond_1

    .line 2796
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->access$900()Landroid/broadcast/oneseg/MtvOneSegService;

    move-result-object v2

    invoke-virtual {v2}, Landroid/broadcast/oneseg/MtvOneSegService;->getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;

    .line 2802
    :cond_1
    :goto_0
    return-void

    .line 2799
    :cond_2
    const-string v2, "MtvAppPlayerOneSeg"

    const-string v3, "Invalid State, not extracting signal quality!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
