.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
.source "MmbStSuperimposeViewSv.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->init()V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->init()V

    .line 62
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V

    .line 134
    :cond_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v1, "SuperimposeView null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkEcoMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "result":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getSuperimposeOnOffStatus()Z

    move-result v0

    .line 318
    if-ne v3, v0, :cond_1

    .line 319
    const/4 v0, 0x0

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    const/4 v0, 0x1

    .line 322
    const/4 v1, 0x0

    .line 324
    .local v1, "retAutoflag":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getSuperimposeAutoDisplayStatus()Z

    move-result v1

    .line 326
    if-ne v3, v1, :cond_0

    .line 327
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 263
    .local v0, "viewregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getFullScreenSuperimposeSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 270
    :cond_0
    return-object v0
.end method

.method protected initSurface(Landroid/view/Surface;)V
    .locals 4
    .param p1, "aSurface"    # Landroid/view/Surface;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, -0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 152
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 155
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v0

    .line 156
    .local v0, "userparam":I
    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    if-eq v1, v0, :cond_0

    .line 157
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->CREATED_SUPERIMPOSE_VIEW:I

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getUserParam()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyViewCreated(II)V

    .line 161
    .end local v0    # "userparam":I
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->notifyCreateView(Landroid/view/View;)V

    .line 168
    :cond_1
    return-void
.end method

.method protected notifyChangeSurface()V
    .locals 6

    .prologue
    .line 204
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getPresentRect()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 207
    .local v0, "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    iget v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iget v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iget v4, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setSuperimposeDisplayAreaInfo(IIII)V

    .line 215
    .end local v0    # "region":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    :cond_0
    return-void
.end method

.method protected notifySurfaceChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 232
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->pause(IIZ)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;
    const-string v1, "exception(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStException;->getExceptionDetail()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected notifySurfaceDestroyed()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setSuperimposeSurface(Landroid/view/Surface;)V

    .line 295
    :cond_0
    return-void
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 0
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 189
    return-void
.end method
