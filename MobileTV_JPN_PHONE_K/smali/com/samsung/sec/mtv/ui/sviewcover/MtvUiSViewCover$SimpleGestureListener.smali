.class final Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MtvUiSViewCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimpleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;


# direct methods
.method private constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V
    .locals 0

    .prologue
    .line 954
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;
    .param p2, "x1"    # Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$1;

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;-><init>(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 970
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onDoubleTap"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 956
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onDown"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 977
    const-string v4, "MtvUiSViewCover"

    const-string v5, "onFling"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1800(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v4

    const/16 v5, 0x5007

    if-ne v4, v5, :cond_1

    .line 1006
    :cond_0
    :goto_0
    return v3

    .line 980
    :cond_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 981
    const-string v4, "MtvUiSViewCover"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GestrueDetectorSViewCpver : onFling called "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 983
    .local v0, "TempX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 984
    .local v1, "TempY":F
    const/4 v2, 0x0

    .line 986
    .local v2, "dx":I
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v4, v5, :cond_8

    .line 987
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 988
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 990
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    cmpl-float v4, v1, v0

    if-lez v4, :cond_5

    .line 991
    :cond_4
    const-string v4, "MtvUiSViewCover"

    const-string v5, "Up/Down fling, no channel change"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 995
    :cond_5
    cmpl-float v3, p3, v7

    if-lez v3, :cond_7

    .line 996
    const-string v3, "MtvUiSViewCover"

    const-string v4, "onFling: Channel prev"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1c4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    :cond_6
    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v3

    goto/16 :goto_0

    .line 998
    :cond_7
    cmpg-float v3, p3, v7

    if-gez v3, :cond_6

    .line 999
    const-string v3, "MtvUiSViewCover"

    const-string v4, "onFling: Channel next "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$900(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x1c3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1004
    :cond_8
    const-string v3, "MtvUiSViewCover"

    const-string v4, "onFling: ignored ..... still starting DTV"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1011
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1013
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 962
    const-string v0, "MtvUiSViewCover"

    const-string v1, "onSingleTapConfirmed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1600(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)V

    .line 964
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover$SimpleGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;->access$1700(Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    move-result-object v0

    const/16 v1, 0x80

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_RECORD:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 965
    return v4
.end method
