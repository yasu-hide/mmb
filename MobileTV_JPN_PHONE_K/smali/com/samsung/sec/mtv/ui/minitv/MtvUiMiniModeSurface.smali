.class public Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;
.super Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;
.source "MtvUiMiniModeSurface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiMiniModeSurface"


# instance fields
.field private mVideoHeight:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;-><init>(Landroid/content/Context;)V

    .line 13
    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoWidth:I

    .line 14
    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoHeight:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoWidth:I

    .line 14
    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoHeight:I

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoWidth:I

    .line 14
    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoHeight:I

    .line 24
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 33
    const/4 v3, 0x0

    .line 34
    .local v3, "videoWidth":I
    const/4 v2, 0x0

    .line 35
    .local v2, "videoHeight":I
    const/4 v1, 0x1

    .line 36
    .local v1, "surfaceWidth":I
    const/4 v0, 0x1

    .line 38
    .local v0, "surfaceHeight":I
    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoWidth:I

    .line 39
    iget v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoHeight:I

    .line 40
    invoke-virtual {p0, v3, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->resolveAdjustedSize(II)I

    move-result v1

    .line 41
    invoke-virtual {p0, v2, p2}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->resolveAdjustedSize(II)I

    move-result v0

    .line 43
    if-lez v3, :cond_0

    if-lez v2, :cond_0

    .line 45
    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoWidth:I

    invoke-static {v4, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getDefaultSize(II)I

    move-result v1

    .line 46
    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->mVideoHeight:I

    invoke-static {v4, p2}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getDefaultSize(II)I

    move-result v0

    .line 49
    :cond_0
    const-string v4, "MtvUiMiniModeSurface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setting size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/common/MtvSurfaceView;->setMeasuredDimension(II)V

    .line 51
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 55
    move v0, p1

    .line 56
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 57
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 59
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 72
    :goto_0
    return v0

    .line 61
    :sswitch_0
    move v0, p1

    .line 62
    goto :goto_0

    .line 64
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 65
    goto :goto_0

    .line 67
    :sswitch_2
    move v0, v2

    .line 68
    goto :goto_0

    .line 59
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method
