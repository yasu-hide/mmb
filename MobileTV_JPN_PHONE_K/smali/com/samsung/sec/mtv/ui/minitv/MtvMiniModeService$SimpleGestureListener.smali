.class final Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MtvMiniModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;

    .prologue
    .line 718
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 734
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onDoubleTap isAppExiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ignoreDoubleTap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07029a

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 754
    :cond_1
    :goto_0
    return v5

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2500(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    .line 741
    .local v0, "state":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2600(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 742
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070306

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 744
    :cond_3
    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v0, v1, :cond_1

    .line 745
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 748
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 750
    :cond_5
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->switchToNormalMode()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 720
    const-string v0, "MtvMiniModeService"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 726
    const-string v0, "MtvMiniModeService"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$1700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    :goto_0
    return v2

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
