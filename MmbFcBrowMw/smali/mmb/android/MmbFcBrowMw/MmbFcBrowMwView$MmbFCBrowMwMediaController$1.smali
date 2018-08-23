.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;
.super Ljava/lang/Object;
.source "MmbFcBrowMwView.java"

# interfaces
.implements Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar$OnMmbFcBrowMwSeekbarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field newposition:J

.field final synthetic this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;


# direct methods
.method constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V
    .locals 0

    .prologue
    .line 4782
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;IZ)V
    .locals 8
    .param p1, "aBar"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;
    .param p2, "aProgress"    # I
    .param p3, "aFromuser"    # Z

    .prologue
    .line 4786
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    iget-object v3, v3, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    iget-object v4, v4, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4787
    .local v2, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-eqz p3, :cond_0

    if-nez v2, :cond_1

    .line 4795
    :cond_0
    :goto_0
    return-void

    .line 4791
    :cond_1
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Landroid/widget/MediaController$MediaPlayerControl;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v3

    int-to-long v0, v3

    .line 4792
    .local v0, "duration":J
    int-to-long v4, p2

    mul-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    iput-wide v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->newposition:J

    .line 4793
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4794
    iget-object v3, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5600(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    iget-wide v6, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->newposition:J

    long-to-int v5, v6

    invoke-static {v4, v5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;)V
    .locals 2
    .param p1, "aBar"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    .prologue
    .line 4799
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const v1, 0x36ee80

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    .line 4801
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Z)Z

    .line 4802
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->removeMessages(I)V

    .line 4803
    return-void
.end method

.method public onStopTrackingTouch(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;)V
    .locals 4
    .param p1, "aBar"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwSeekbar;

    .prologue
    .line 4807
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    iget-object v1, v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$2700(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    iget-object v2, v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-static {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->access$3200(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 4808
    .local v0, "dvv":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
    if-nez v0, :cond_0

    .line 4819
    :goto_0
    return-void

    .line 4812
    :cond_0
    iget-wide v2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->newposition:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;->seekTo(I)Z

    .line 4813
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5202(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;Z)Z

    .line 4814
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5100(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)I

    .line 4815
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)V

    .line 4816
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->show(I)V

    .line 4818
    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$1;->this$1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;

    invoke-static {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;->access$5800(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFCBrowMwMediaController$THandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
