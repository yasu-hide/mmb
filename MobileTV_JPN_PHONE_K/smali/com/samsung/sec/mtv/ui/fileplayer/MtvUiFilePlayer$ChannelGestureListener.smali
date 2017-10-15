.class Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MtvUiFilePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChannelGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;


# direct methods
.method constructor <init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1721
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1722
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GestrueDetectorUiPlayer : onFling called "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    :cond_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1726
    const-string v3, "MtvUiFilePlayer"

    const-string v4, "File Player in Lock Mode onFling cannot be processed..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    const/4 v3, 0x1

    .line 1759
    :cond_1
    :goto_0
    return v3

    .line 1729
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1730
    .local v0, "TempX":F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1731
    .local v1, "TempY":F
    const/4 v2, 0x0

    .line 1733
    .local v2, "dx":I
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1734
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 1736
    :cond_3
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    cmpl-float v4, v1, v0

    if-lez v4, :cond_5

    .line 1738
    :cond_4
    const-string v4, "MtvUiFilePlayer"

    const-string v5, "Up/Down fling...no channel change"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1742
    :cond_5
    sget-object v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1749
    :cond_6
    cmpl-float v4, p3, v7

    if-lez v4, :cond_7

    .line 1751
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    const/16 v5, 0x115

    invoke-virtual {v4, v5, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 1753
    :cond_7
    cmpg-float v4, p3, v7

    if-gez v4, :cond_1

    .line 1755
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    const/16 v5, 0x114

    invoke-virtual {v4, v5, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1646
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-static {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1648
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "player locked... ignoring singleTap..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1649
    const/4 v0, 0x1

    .line 1717
    :goto_0
    return v0

    .line 1651
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;->this$0:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    const/16 v2, 0xe1

    new-array v3, v0, [I

    invoke-static {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->access$3600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;I[I)V

    goto :goto_0
.end method
