.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
.source "MmbStTvViewSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->init()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->init()V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->init()V

    .line 98
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setTvView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setTvView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;)V

    .line 230
    :cond_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "TvView null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 2

    .prologue
    .line 248
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getFullScreenTvSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 252
    .local v0, "tvregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    return-object v0
.end method

.method protected initSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "aSurface"    # Landroid/view/Surface;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 116
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v0

    .line 117
    .local v0, "userparam":I
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    if-eq v1, v0, :cond_0

    .line 118
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->CREATED_TV_VIEW:I

    invoke-virtual {v1, v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyViewCreated(II)V

    .line 122
    .end local v0    # "userparam":I
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->notifyCreateView(Landroid/view/View;)V

    .line 129
    :cond_1
    return-void
.end method

.method protected notifyChangeSurface()V
    .locals 6

    .prologue
    .line 165
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getPresentRect()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 168
    .local v0, "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setVideoDisplayAreaInfo(IIII)V

    .line 175
    .end local v0    # "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    :cond_0
    return-void
.end method

.method protected notifySurfaceChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 192
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->videoMute(I)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v1, "exception(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected notifySurfaceDestroyed()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setVideoSurface(Landroid/view/Surface;)V

    .line 277
    :cond_0
    return-void
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 0
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 150
    return-void
.end method
