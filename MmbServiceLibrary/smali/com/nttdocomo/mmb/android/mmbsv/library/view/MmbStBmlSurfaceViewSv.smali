.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
.source "MmbStBmlSurfaceViewSv.java"


# instance fields
.field private mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field private mDirection:I

.field protected mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    .line 61
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 131
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->init()V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    .line 61
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 111
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->init()V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    .line 61
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 88
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->init()V

    .line 92
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBmlSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V

    .line 158
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 159
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    if-nez v1, :cond_1

    .line 160
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "BmlView null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    .end local v0    # "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setBmlSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V

    .line 176
    :cond_0
    return-void

    .line 164
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mTouchControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public changeBmlDirection(I)V
    .locals 2
    .param p1, "aBmlDirection"    # I

    .prologue
    .line 323
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 325
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "changeBmlDirection"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    .line 332
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->notifyChangeSurface()V

    .line 336
    return-void
.end method

.method protected changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 5
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    const/4 v4, 0x0

    .line 691
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 694
    .local v1, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iget v3, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->isBmlLayoutWidthAdjusted(I)Z

    move-result v0

    .line 695
    .local v0, "isAdjusted":Z
    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    .line 696
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 697
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 702
    :goto_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    return-void

    .line 699
    :cond_0
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 700
    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method protected checkEcoMode()Z
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    return v0
.end method

.method public getBmlBaseHeight()I
    .locals 2

    .prologue
    .line 265
    const/16 v0, 0x1e0

    .line 267
    .local v0, "ret":I
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    if-nez v1, :cond_0

    .line 269
    const/16 v0, 0x3c0

    .line 275
    :cond_0
    return v0
.end method

.method public getBmlBaseWidth()I
    .locals 2

    .prologue
    .line 236
    const/16 v0, 0x354

    .line 238
    .local v0, "ret":I
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    if-nez v1, :cond_0

    .line 240
    const/16 v0, 0x1e0

    .line 246
    :cond_0
    return v0
.end method

.method public getBmlBufferHeight()I
    .locals 2

    .prologue
    .line 294
    const/16 v0, 0xf0

    .line 296
    .local v0, "ret":I
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    if-nez v1, :cond_0

    .line 298
    const/16 v0, 0x1e0

    .line 304
    :cond_0
    return v0
.end method

.method public getBmlScale()F
    .locals 4

    .prologue
    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "ret":F
    const/4 v0, 0x0

    .line 355
    .local v0, "bmlbasesize":F
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    if-nez v3, :cond_0

    .line 356
    const/high16 v0, 0x43700000    # 240.0f

    .line 361
    :goto_0
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getPresentRect()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v1

    .line 366
    .local v1, "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    int-to-float v3, v3

    div-float v2, v3, v0

    .line 375
    return v2

    .line 358
    .end local v1    # "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    :cond_0
    const/high16 v0, 0x43d50000    # 426.0f

    goto :goto_0
.end method

.method public getSurfaceViewHeight()I
    .locals 2

    .prologue
    .line 613
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getSurfaceViewHeight()I

    move-result v0

    .line 617
    .local v0, "result":I
    return v0
.end method

.method public getSurfaceViewPositionX()I
    .locals 2

    .prologue
    .line 640
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getSurfaceViewPositionX()I

    move-result v0

    .line 644
    .local v0, "result":I
    return v0
.end method

.method public getSurfaceViewPositionY()I
    .locals 2

    .prologue
    .line 667
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getSurfaceViewPositionY()I

    move-result v0

    .line 671
    .local v0, "result":I
    return v0
.end method

.method protected getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 2

    .prologue
    .line 532
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 534
    .local v0, "viewregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getFullScreenBmlSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 541
    :cond_0
    return-object v0
.end method

.method public getSurfaceViewWidth()I
    .locals 2

    .prologue
    .line 586
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getSurfaceViewWidth()I

    move-result v0

    .line 590
    .local v0, "result":I
    return v0
.end method

.method protected initSurface(Landroid/view/Surface;)V
    .locals 7
    .param p1, "aSurface"    # Landroid/view/Surface;

    .prologue
    const/16 v6, 0x1e0

    .line 399
    if-nez p1, :cond_0

    .line 400
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v3

    .line 403
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 404
    const-string v3, "Surface has not identity."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    const/4 v4, -0x3

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 413
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;-><init>()V

    .line 414
    .local v0, "displayinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getPresentRect()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v1

    .line 416
    .local v1, "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    iput v3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbHeight:I

    .line 417
    iget v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iput v3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbWidth:I

    .line 420
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    if-nez v3, :cond_4

    .line 421
    const/16 v3, 0x3c0

    iput v3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbHeight:I

    .line 422
    iput v6, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbWidth:I

    .line 427
    :goto_1
    iput-object p1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbSurface:Landroid/view/Surface;

    .line 429
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v3, :cond_3

    .line 431
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setDisplay(Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;)V

    .line 432
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v2

    .line 433
    .local v2, "userparam":I
    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    if-eq v3, v2, :cond_3

    .line 434
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    sget v4, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->CREATED_BML_VIEW:I

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyViewCreated(II)V

    .line 438
    .end local v2    # "userparam":I
    :cond_3
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->notifyCreateView(Landroid/view/View;)V

    goto :goto_0

    .line 424
    :cond_4
    iput v6, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbHeight:I

    .line 425
    const/16 v3, 0x354

    iput v3, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwSetDisplayReqInfo;->mmbWidth:I

    goto :goto_1
.end method

.method public notifyChangeSurface()V
    .locals 2

    .prologue
    .line 464
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;-><init>()V

    .line 476
    .local v0, "changedisplayinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mDirection:I

    iput v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbDirection:I

    .line 478
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 486
    :cond_0
    return-void
.end method

.method protected notifySurfaceDestroyed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_1

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->relDisplay()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "Not initialize BML"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 0
    .param p1, "aBmlView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 218
    return-void
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 0
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 197
    return-void
.end method
