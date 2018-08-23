.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
.source "MmbStCaptionViewSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->init()V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->init()V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->init()V

    .line 65
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 124
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V

    .line 137
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "CaptionView null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkEcoMode()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method protected getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getFullScreenCaptionSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 271
    .local v0, "captionregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    return-object v0
.end method

.method protected initSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "aSurface"    # Landroid/view/Surface;

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 155
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 158
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v0

    .line 159
    .local v0, "userparam":I
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    if-eq v1, v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->CREATED_CAPTION_VIEW:I

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyViewCreated(II)V

    .line 164
    .end local v0    # "userparam":I
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->notifyCreateView(Landroid/view/View;)V

    .line 171
    :cond_1
    return-void
.end method

.method protected notifyChangeSurface()V
    .locals 6

    .prologue
    .line 208
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getPresentRect()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 211
    .local v0, "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setCaptionDisplayAreaInfo(IIII)V

    .line 219
    .end local v0    # "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    :cond_0
    return-void
.end method

.method protected notifySurfaceChanged()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 236
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->pause(IIZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v1, "exception(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->getExceptionDetail()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected notifySurfaceDestroyed()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setCaptionSurface(Landroid/view/Surface;)V

    .line 296
    :cond_0
    return-void
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 0
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 192
    return-void
.end method
