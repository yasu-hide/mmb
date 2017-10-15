.class Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;
.super Ljava/lang/Object;
.source "MtvUiLivePlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;)V
    .locals 0

    .prologue
    .line 4103
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    .line 4107
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9100(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4108
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9200(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4109
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onFling, adding Status fragment in GestrueDetectorUiPlayer : onFling called "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4110
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9300(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 4111
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9400(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4112
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$2700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v1, v1, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9500(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4115
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9600(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4116
    const-string v0, "MtvUiLivePlayer"

    const-string v1, "onFling, adding Main fragment in GestrueDetectorUiPlayer : onFling called "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 4117
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener$1;->this$1:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->access$9700(Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_UI_MAIN:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 4120
    :cond_1
    return-void
.end method
