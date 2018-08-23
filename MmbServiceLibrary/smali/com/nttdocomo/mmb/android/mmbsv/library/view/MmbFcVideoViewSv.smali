.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;
.super Landroid/view/ViewGroup;
.source "MmbFcVideoViewSv.java"

# interfaces
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcEventListenerSv;
.implements Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwZOrderedViewSv;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    }
.end annotation


# instance fields
.field private mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

.field private mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 112
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 176
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;

    invoke-direct {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->addViewProtected(Landroid/view/View;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 157
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;

    invoke-direct {v0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->addViewProtected(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->RATIO_16x9:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 136
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;

    invoke-direct {v0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->addViewProtected(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method static final roundDown(II)I
    .locals 1
    .param p0, "aValue"    # I
    .param p1, "aUnit"    # I

    .prologue
    .line 280
    rem-int v0, p0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method static final roundUp(II)I
    .locals 1
    .param p0, "aValue"    # I
    .param p1, "aUnit"    # I

    .prologue
    .line 295
    rem-int v0, p0, p1

    sub-int v0, p1, v0

    rem-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 1
    .param p1, "aChild"    # Landroid/view/View;

    .prologue
    .line 329
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 1
    .param p1, "aChild"    # Landroid/view/View;
    .param p2, "aIndex"    # I

    .prologue
    .line 345
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;II)V
    .locals 1
    .param p1, "aChild"    # Landroid/view/View;
    .param p2, "aWidth"    # I
    .param p3, "aHeight"    # I

    .prologue
    .line 363
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "aChild"    # Landroid/view/View;
    .param p2, "aIndex"    # I
    .param p3, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 397
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "aChild"    # Landroid/view/View;
    .param p2, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected addViewProtected(Landroid/view/View;)V
    .locals 2
    .param p1, "aChild"    # Landroid/view/View;

    .prologue
    .line 195
    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-super {p0, p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 199
    return-void
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 3

    .prologue
    .line 310
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;

    .line 311
    .local v1, "view":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcSurfaceViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 315
    .local v0, "result":Landroid/view/SurfaceHolder;
    return-object v0
.end method

.method public onCreatedDisplay()V
    .locals 0

    .prologue
    .line 587
    return-void
.end method

.method public onDimInfoChanged(ILcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;)V
    .locals 2
    .param p1, "aType"    # I
    .param p2, "aInfo"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;

    .prologue
    .line 529
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 531
    :cond_0
    invoke-virtual {p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcVideoFrameInfoSv;->getAspectRatio()I

    move-result v1

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->access$000(I)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    move-result-object v0

    .line 532
    .local v0, "newRatio":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    if-eq v1, v0, :cond_1

    .line 533
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 537
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->requestLayout()V

    .line 538
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->invalidate()V

    .line 544
    .end local v0    # "newRatio":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;
    :cond_1
    return-void
.end method

.method public onError(I)V
    .locals 0
    .param p1, "aState"    # I

    .prologue
    .line 470
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 207
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 209
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 210
    .local v0, "con":Landroid/content/Context;
    instance-of v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    if-eqz v3, :cond_0

    .line 211
    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    .end local v0    # "con":Landroid/content/Context;
    invoke-interface {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 212
    .local v1, "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getFcPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcPlayerSv;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;

    .line 213
    .local v2, "controller":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    invoke-virtual {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;->setVideoView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;)V

    .line 216
    .end local v1    # "context":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .end local v2    # "controller":Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcControllerSv;
    :cond_0
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->setBackgroundColor(I)V

    .line 217
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    .line 241
    if-nez p1, :cond_0

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    if-eq v6, v7, :cond_1

    .line 242
    :cond_0
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mRequestRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    .line 243
    sub-int v3, p4, p2

    .line 244
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 247
    .local v0, "height":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->height:I

    mul-int/2addr v6, v3

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->width:I

    mul-int/2addr v7, v0

    if-lt v6, v7, :cond_2

    .line 249
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->height:I

    invoke-static {v0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->roundUp(II)I

    move-result v1

    .line 250
    .local v1, "justHeight":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->width:I

    mul-int/2addr v6, v1

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->height:I

    div-int v2, v6, v7

    .line 256
    .local v2, "justWidth":I
    :goto_0
    sub-int v6, v3, v2

    div-int/lit8 v4, v6, 0x2

    .line 257
    .local v4, "x":I
    sub-int v6, v0, v1

    div-int/lit8 v5, v6, 0x2

    .line 261
    .local v5, "y":I
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    add-int v7, v4, v2

    add-int v8, v5, v1

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 266
    .end local v0    # "height":I
    .end local v1    # "justHeight":I
    .end local v2    # "justWidth":I
    .end local v3    # "width":I
    .end local v4    # "x":I
    .end local v5    # "y":I
    :cond_1
    return-void

    .line 253
    .restart local v0    # "height":I
    .restart local v3    # "width":I
    :cond_2
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->width:I

    invoke-static {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->roundUp(II)I

    move-result v2

    .line 254
    .restart local v2    # "justWidth":I
    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v6, v6, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->height:I

    mul-int/2addr v6, v2

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->mAspectRatio:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;

    iget v7, v7, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv$MmbFcAspectRatioSv;->width:I

    div-int v1, v6, v7

    .restart local v1    # "justHeight":I
    goto :goto_0
.end method

.method public onNotifyPosition(I)V
    .locals 0
    .param p1, "aSec"    # I

    .prologue
    .line 508
    return-void
.end method

.method public onPlayStatusChanged(II)V
    .locals 0
    .param p1, "aState"    # I
    .param p2, "aExtra"    # I

    .prologue
    .line 440
    return-void
.end method

.method public onStopPlaying()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public setZOrder(I)V
    .locals 3
    .param p1, "aOrder"    # I

    .prologue
    .line 559
    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 560
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "aOrder is wrong."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    .line 563
    .local v0, "view":Landroid/view/SurfaceView;
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->removeView(Landroid/view/View;)V

    .line 564
    invoke-static {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;->setZOrderData(Landroid/view/SurfaceView;I)V

    .line 565
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFcVideoViewSv;->addViewProtected(Landroid/view/View;)V

    .line 569
    return-void
.end method
