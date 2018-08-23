.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V
    .locals 0

    .prologue
    .line 1677
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 10
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aFormat"    # I
    .param p3, "aW"    # I
    .param p4, "aH"    # I

    .prologue
    const/16 v9, 0xc8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1679
    sget-object v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v6, "VideoView.mSHCallback.surfaceChanged() w=%d h=%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1680
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v5, p3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 1681
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v5, p4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1302(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;I)I

    .line 1682
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1683
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v5

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v6, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v6

    iget v6, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    if-ne v5, v6, :cond_0

    .line 1684
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v5

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v6, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v6, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v9, v6, v4, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1685
    .local v2, "msg":Landroid/os/Message;
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v5

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    iget-object v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v6, v6, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v9, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1686
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v5

    iget-object v5, v5, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->webkitMsgHandler:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;

    invoke-virtual {v5, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$WebkitMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1689
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    move v1, v3

    .line 1690
    .local v1, "isValidState":Z
    :goto_0
    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1400(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v5

    if-ne v5, p3, :cond_5

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v5

    if-ne v5, p4, :cond_5

    move v0, v3

    .line 1691
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 1692
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1693
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->seekTo(I)V

    .line 1696
    :cond_1
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-virtual {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->start()V

    .line 1697
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1698
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1699
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    .line 1702
    :cond_2
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V

    .line 1705
    :cond_3
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_4
    move v1, v4

    .line 1689
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_5
    move v0, v4

    .line 1690
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v6, 0x1

    .line 1708
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "VideoView.mSHCallback.surfaceCreated()"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1709
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 1710
    .local v0, "surface":Landroid/view/Surface;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1711
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 1712
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "VideoView.mSHCallback.surfaceCreated() targetState : %d"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogI(Ljava/lang/String;)V

    .line 1713
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    move-result-object v1

    iget v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setResourcedMediaId:I

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$900(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->access$1000(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;)Lmmb/android/MmbFcMp4Mw/MmbFcMp4MwPlayer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1715
    :cond_0
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)V

    .line 1720
    :cond_1
    :goto_0
    return-void

    .line 1718
    :cond_2
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v2, "VideoView.mSHCallback.surfaceCreated() aHolder.getSurface is invalid!"

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1723
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "VideoView.mSHCallback.surfaceDestroyed()"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogD(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$402(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 1725
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;->access$1700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 1727
    :cond_0
    return-void
.end method
