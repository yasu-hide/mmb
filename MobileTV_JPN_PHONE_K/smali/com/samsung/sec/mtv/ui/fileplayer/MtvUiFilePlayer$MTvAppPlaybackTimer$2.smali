.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;
.super Ljava/lang/Object;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)V
    .locals 0

    .prologue
    .line 2792
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 2795
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->access$7100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 2797
    const-string v1, "MtvAppPlaybackTimer"

    const-string v6, "MtvAppPlaybackTimer:: Playback Timer is reset...Exiting Counter..."

    invoke-static {v1, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    :cond_0
    :goto_0
    return-void

    .line 2807
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$7200()I

    move-result v1

    if-nez v1, :cond_0

    .line 2809
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 2810
    .local v0, "mCurrContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_2

    .line 2812
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->getPlaybackTime(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)J

    move-result-wide v2

    .line 2813
    .local v2, "playbackTime":J
    const-string v1, "MtvAppPlaybackTimer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " PlayTIme = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    const-wide/32 v6, 0x79999999

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 2816
    long-to-double v6, v2

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 2817
    .local v4, "roundedPlaybackTime":J
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->access$7300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2819
    const-string v1, "MtvAppPlaybackTimer"

    const-string v6, "MtvAppPlaybackTimer:: updating playback time..."

    invoke-static {v1, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2820
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    long-to-int v6, v4

    invoke-static {v1, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->access$7102(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;I)I

    .line 2822
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->access$7400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->access$7400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x196

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2830
    .end local v2    # "playbackTime":J
    .end local v4    # "roundedPlaybackTime":J
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer$2;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->access$7400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2826
    .restart local v2    # "playbackTime":J
    .restart local v4    # "roundedPlaybackTime":J
    :cond_3
    const-string v1, "MtvAppPlaybackTimer"

    const-string v6, "Cannot update playbck time as Already in Stopped State !"

    invoke-static {v1, v6}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
