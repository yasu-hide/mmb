.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
.super Landroid/widget/ScrollView;
.source "MmbStBmlViewSv.java"


# instance fields
.field mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

.field private mDirection:I

.field protected mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

.field private mHandler:Landroid/os/Handler;

.field protected mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

.field protected mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

.field mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

.field protected mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 60
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .line 65
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 70
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 80
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 85
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    .line 106
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->init(Landroid/content/Context;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 60
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .line 65
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 70
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 80
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 85
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    .line 127
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->init(Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 60
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .line 65
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 70
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    .line 75
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 80
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 85
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    .line 149
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->init(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->rollbackSurfaceViewSize()V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;
    .param p1, "x1"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceViewPost(I)V

    return-void
.end method

.method private callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeBmlFrameLayoutSize()V

    .line 268
    return-void
.end method

.method private changeBmlFrameLayoutSize()V
    .locals 6

    .prologue
    .line 748
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 751
    .local v2, "rect":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x0

    .line 752
    .local v3, "width":I
    const/4 v1, 0x0

    .line 753
    .local v1, "height":I
    if-eqz v2, :cond_0

    .line 754
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->AdjustBmlLayoutWidth(I)I

    move-result v0

    .line 755
    .local v0, "adjustWidth":I
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-eq v4, v0, :cond_1

    .line 756
    const-string v4, "Over SurfaceLimitSize"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logDebug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    .end local v0    # "adjustWidth":I
    :cond_0
    :goto_0
    return-void

    .line 759
    .restart local v0    # "adjustWidth":I
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkEcoStatus()Z

    move-result v4

    if-nez v4, :cond_3

    .line 760
    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 761
    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    if-nez v4, :cond_2

    .line 762
    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v1, v4, 0x2

    .line 770
    :goto_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    invoke-virtual {v4, v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->setBmlViewSize(II)V

    goto :goto_0

    .line 764
    :cond_2
    iget v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    .line 767
    :cond_3
    const/4 v3, 0x1

    .line 768
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 2
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 431
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 433
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 438
    :cond_0
    return-void
.end method

.method private changeEcoDispSurfaceViewPost(I)V
    .locals 6
    .param p1, "aMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 617
    if-nez p1, :cond_2

    .line 619
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->chengeEcoStatus(Z)V

    .line 622
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v3

    if-ne v4, v3, :cond_1

    .line 623
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getFullScreenBmlSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v1

    .line 625
    .local v1, "fulldispregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->createBmlFullDispRect(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 627
    .local v0, "bmlrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 660
    .end local v0    # "bmlrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .end local v1    # "fulldispregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->changeEcoLayoutChange(Z)V

    .line 631
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->requestRollbackSurfaceViewSize()V

    goto :goto_0

    .line 638
    :cond_2
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->chengeEcoStatus(Z)V

    .line 640
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 641
    .local v2, "surfaceregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 642
    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 643
    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 644
    iput v4, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 647
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkSameLayout(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 649
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->changeEcoLayoutChange(Z)V

    .line 651
    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    goto :goto_0
.end method

.method private changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 3
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 483
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 485
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 486
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 487
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    move-object v3, p1

    .line 173
    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    invoke-interface {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 177
    .local v1, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getStPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    move-result-object v3

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 178
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    move-result-object v3

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    .line 181
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setScrollView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 183
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v3

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 184
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 187
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v3, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    .line 190
    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    invoke-direct {v3, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .line 191
    const/4 v2, -0x2

    .line 192
    .local v2, "size":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v0, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mBmlFrameLayout:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->addView(Landroid/view/View;)V

    .line 199
    return-void
.end method

.method private notifyChangeScrollView()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;-><init>()V

    .line 380
    .local v0, "changedisplayinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    iput v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;->mmbDirection:I

    .line 382
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->changeDisp(Lmmb/android/MmbStBmlMw/MmbStBmlMwChangeDispReqInfo;)V

    .line 390
    :cond_0
    return-void
.end method

.method private rollbackSurfaceViewSize()V
    .locals 2

    .prologue
    .line 536
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 537
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 538
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method public AdjustBmlLayoutWidth(I)I
    .locals 4
    .param p1, "width"    # I

    .prologue
    .line 791
    move v1, p1

    .line 793
    .local v1, "adjustWidth":I
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    if-nez v3, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    move-result-object v0

    .line 795
    .local v0, "MmbPoInfoSpIns":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->getSurfaceViewportDimsMax()I

    move-result v2

    .line 800
    .local v2, "surfaceViewportDimsMax":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    mul-int/lit8 v3, p1, 0x2

    if-ge v2, v3, :cond_0

    .line 802
    div-int/lit8 v1, v2, 0x2

    .line 812
    .end local v0    # "MmbPoInfoSpIns":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    .end local v2    # "surfaceViewportDimsMax":I
    :cond_0
    return v1
.end method

.method public changeEcoDispSurfaceView(I)V
    .locals 2
    .param p1, "aMode"    # I

    .prologue
    .line 591
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 600
    return-void
.end method

.method protected checkEcoMode()Z
    .locals 2

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 679
    .local v0, "result":Z
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-eqz v1, :cond_0

    .line 680
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlOnOffStatus()Z

    move-result v0

    .line 682
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 683
    const/4 v0, 0x0

    .line 691
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createBmlFullDispRect(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 2
    .param p1, "aBmlViewRect"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    const/4 v1, 0x0

    .line 859
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 860
    .local v0, "bmlrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 861
    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 862
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 863
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    iput v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 867
    return-object v0
.end method

.method public getSurfaceViewHeight()I
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getSurfaceViewHeight()I

    move-result v0

    .line 572
    .local v0, "result":I
    return v0
.end method

.method public isBmlLayoutWidthAdjusted(I)Z
    .locals 4
    .param p1, "width"    # I

    .prologue
    .line 828
    const/4 v1, 0x0

    .line 830
    .local v1, "result":Z
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    if-nez v3, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;

    move-result-object v0

    .line 832
    .local v0, "MmbPoInfoSpIns":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;->getSurfaceViewportDimsMax()I

    move-result v2

    .line 834
    .local v2, "surfaceViewportDimsMax":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    mul-int/lit8 v3, p1, 0x2

    if-ne v2, v3, :cond_0

    .line 836
    const/4 v1, 0x1

    .line 843
    .end local v0    # "MmbPoInfoSpIns":Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoInfoSp/MmbPoInfoSp;
    .end local v2    # "surfaceViewportDimsMax":I
    :cond_0
    return v1
.end method

.method public notifyBmlDirection(I)V
    .locals 2
    .param p1, "aBmlDirection"    # I

    .prologue
    .line 710
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    .line 712
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "changeBmlDirection"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 714
    :cond_0
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 716
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mDirection:I

    .line 717
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeBmlFrameLayoutSize()V

    .line 723
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 314
    invoke-super/range {p0 .. p5}, Landroid/widget/ScrollView;->onLayout(ZIIII)V

    .line 315
    if-nez p1, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->checkEcoMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 324
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 325
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkEcoLayoutChange()Z

    move-result v0

    .line 330
    .local v0, "ecoLayoutChangeFlg":Z
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->checkEcoMode()Z

    move-result v1

    if-ne v3, v1, :cond_3

    .line 332
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->changeEcoDispSurfaceView(I)V

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1, p2, p3, p4, p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setPresentRect(IIII)V

    .line 336
    if-ne v3, v0, :cond_4

    .line 338
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->changeEcoLayoutChange(Z)V

    .line 345
    :cond_4
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->notifyChangeScrollView()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mTouchCtl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->onTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 896
    const/4 v1, 0x1

    return v1

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "Content none"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 2
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void
.end method

.method public requestRollbackSurfaceViewSize()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 519
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mHandler:Landroid/os/Handler;

    .line 413
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .param p1, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 219
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->AdjustBmlLayoutWidth(I)I

    move-result v0

    .line 221
    .local v0, "adjustWidth":I
    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v0, :cond_0

    move-object v1, p1

    .line 222
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 223
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v1, :cond_4

    .line 227
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkAddViewStatus()Z

    move-result v1

    if-nez v1, :cond_3

    .line 228
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkEcoStatus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 239
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    :cond_2
    return-void

    .line 230
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 231
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 235
    :cond_4
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 0
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 289
    return-void
.end method
