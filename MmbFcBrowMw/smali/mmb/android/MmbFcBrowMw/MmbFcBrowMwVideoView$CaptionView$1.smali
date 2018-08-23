.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)V
    .locals 0

    .prologue
    .line 1052
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aFormat"    # I
    .param p3, "aW"    # I
    .param p4, "aH"    # I

    .prologue
    const/16 v7, 0xc8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1054
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "CaptionView.mSHCallback.surfaceChanged() w=%d h=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1055
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v1, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$602(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;I)I

    .line 1056
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v1, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;I)I

    .line 1057
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1058
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v2

    iget v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    if-ne v1, v2, :cond_0

    .line 1059
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v7, v2, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1060
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1061
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1064
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1067
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "CaptionView.mSHCallback.surfaceCreated()"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1068
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 1069
    .local v1, "surface":Landroid/view/Surface;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1070
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v2, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 1072
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 1073
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-eqz v0, :cond_0

    .line 1075
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1084
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    :goto_0
    return-void

    .line 1077
    .restart local v0    # "canvas":Landroid/graphics/Canvas;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v2

    .line 1082
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    :cond_1
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v3, "CaptionView.mSHCallback.surfaceCreated() aHolder.getSurface is invalid!"

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1087
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "CaptionView.mSHCallback.surfaceDestroyed()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1088
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->access$502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 1089
    return-void
.end method
