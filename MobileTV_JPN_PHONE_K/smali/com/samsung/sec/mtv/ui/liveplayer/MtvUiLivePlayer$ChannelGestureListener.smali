.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MtvUiLivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)V
    .locals 0

    .prologue
    .line 3973
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const v9, 0x7f07029a

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 4058
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4059
    const-string v5, "MtvUiLivePlayer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GestrueDetectorUiPlayer : onFling called "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 4061
    .local v0, "TempX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 4062
    .local v1, "TempY":F
    const/4 v2, 0x0

    .line 4063
    .local v2, "dx":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    .line 4065
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "player locked , ignoring fling..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4134
    :goto_0
    return v3

    .line 4069
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x5007

    if-ne v5, v6, :cond_5

    .line 4071
    .local v3, "isRecording":Z
    :goto_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v5, v6, :cond_e

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v5

    if-eqz v5, :cond_e

    if-nez v3, :cond_e

    .line 4073
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 4074
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v2, v5

    .line 4076
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_3

    cmpl-float v5, v1, v0

    if-lez v5, :cond_6

    .line 4078
    :cond_3
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4079
    const-string v5, "MtvUiLivePlayer"

    const-string v6, "Up/Down fling...no channel change"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, v4

    .line 4080
    goto :goto_0

    .end local v3    # "isRecording":Z
    :cond_5
    move v3, v4

    .line 4069
    goto :goto_1

    .line 4083
    .restart local v3    # "isRecording":Z
    :cond_6
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 4084
    cmpl-float v4, p3, v8

    if-lez v4, :cond_b

    .line 4085
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "onFling: Channel prev"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v3, :cond_a

    .line 4088
    :cond_7
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    .line 4102
    :cond_8
    :goto_2
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 4103
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    new-instance v5, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;-><init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;)V

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4134
    :cond_9
    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    goto/16 :goto_0

    .line 4091
    :cond_a
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x137

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 4092
    :cond_b
    cmpg-float v4, p3, v8

    if-gez v4, :cond_8

    .line 4093
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "onFling: Channel next "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4095
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v3, :cond_d

    .line 4096
    :cond_c
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4, v9}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I)V

    goto :goto_2

    .line 4098
    :cond_d
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x136

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 4130
    :cond_e
    const-string v4, "MtvUiLivePlayer"

    const-string v5, "onFling: ignored ..... still starting DTV"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4027
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4028
    const-string v3, "MtvUiLivePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLongPress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4033
    .local v2, "progInfo":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$7700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$7800(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4055
    :cond_1
    :goto_0
    return-void

    .line 4035
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$7900(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8000(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getTot()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->getCurrentProgramByPhCh(Landroid/content/Context;IJ)Lcom/samsung/sec/mtv/provider/MtvProgram;

    move-result-object v1

    .line 4036
    .local v1, "pgm":Lcom/samsung/sec/mtv/provider/MtvProgram;
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4037
    const-string v3, "MtvUiLivePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pgm:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4038
    :cond_3
    if-eqz v1, :cond_5

    .line 4039
    const-string v3, "pgmPch"

    iget v4, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4040
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget v4, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPch:I

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v5}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$8100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findByPChannel(Landroid/content/Context;II)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 4041
    .local v0, "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_4

    .line 4042
    const-string v3, "channelName"

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mChannelName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4047
    :cond_4
    const-string v3, "startTime"

    iget-wide v4, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeStart:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4048
    const-string v3, "endtime"

    iget-wide v4, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mTimeEnd:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4049
    const-string v3, "programName"

    iget-object v4, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4050
    const-string v3, "MtvUiLivePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pgm.mPgmDetail :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4051
    const-string v3, "programDesc"

    iget-object v4, v1, Lcom/samsung/sec/mtv/provider/MtvProgram;->mPgmDetail:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4052
    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const v4, 0x7f0a001c

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v3, v2, v4, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/os/Bundle;ILandroid/app/Activity;)V

    .line 4054
    .end local v0    # "mchannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :cond_5
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 3980
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$7600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3982
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "player locked... ignoring singleTap..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4023
    :goto_0
    return v3

    .line 3985
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/16 v1, 0xe1

    const/4 v2, 0x0

    new-array v2, v2, [I

    invoke-static {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$6500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;I[I)V

    goto :goto_0
.end method
