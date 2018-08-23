.class public abstract Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
.super Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;
.source "MmbStBaseViewSv.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mConstructorFlag:Z

.field private mContext:Landroid/content/Context;

.field protected mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

.field private mHandler:Landroid/os/Handler;

.field protected mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

.field protected mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

.field protected mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 56
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 61
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mConstructorFlag:Z

    .line 76
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 81
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 160
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->init(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 56
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 61
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mConstructorFlag:Z

    .line 76
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 81
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 134
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->init(Landroid/content/Context;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 56
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 61
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mConstructorFlag:Z

    .line 76
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 81
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 106
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->init(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->rollbackSurfaceViewSize()V

    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
    .param p1, "x1"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeEcoDispSurfaceViewPost(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    return-void
.end method

.method private changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 2
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 734
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 736
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 741
    :cond_0
    return-void
.end method

.method private changeEcoDispSurfaceViewPost(I)V
    .locals 5
    .param p1, "aMode"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 785
    if-nez p1, :cond_1

    .line 788
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v2

    if-ne v3, v2, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 791
    .local v0, "fulldispregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 797
    .end local v0    # "fulldispregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->chengeEcoStatus(Z)V

    .line 817
    :goto_1
    return-void

    .line 794
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->changeEcoLayoutChange(Z)V

    .line 795
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->requestRollbackSurfaceViewSize()V

    goto :goto_0

    .line 799
    :cond_1
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 800
    .local v1, "surfaceregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iput v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 801
    iput v4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 802
    iput v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 803
    iput v3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 806
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkSameLayout(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 808
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->changeEcoLayoutChange(Z)V

    .line 810
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 812
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->chengeEcoStatus(Z)V

    goto :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mContext:Landroid/content/Context;

    .line 184
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->setInstance()V

    .line 186
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 191
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 195
    return-void
.end method

.method private rollbackSurfaceViewSize()V
    .locals 2

    .prologue
    .line 662
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 663
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 669
    :cond_0
    return-void
.end method

.method private setInstance()V
    .locals 3

    .prologue
    .line 213
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mConstructorFlag:Z

    if-ne v1, v2, :cond_3

    .line 215
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    invoke-interface {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v0

    .line 223
    .local v0, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getStPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 224
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-nez v1, :cond_1

    .line 225
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 231
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    if-nez v1, :cond_2

    .line 232
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 234
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mConstructorFlag:Z

    .line 239
    .end local v0    # "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    :cond_3
    return-void
.end method


# virtual methods
.method protected callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    return-void
.end method

.method protected cancelEcoMode()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeEcoDispSurfaceView(I)V

    .line 617
    return-void
.end method

.method public changeEcoDispSurfaceView(I)V
    .locals 2
    .param p1, "aMode"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    return-void
.end method

.method protected changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 3
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 861
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 863
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 864
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 865
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 869
    return-void
.end method

.method protected checkEcoMode()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method protected getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 2

    .prologue
    .line 711
    const-string v0, "Design Error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "aSurface"    # Landroid/view/Surface;

    .prologue
    .line 545
    const-string v0, "Design Error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 549
    return-void
.end method

.method protected notifyChangeSurface()V
    .locals 2

    .prologue
    .line 570
    const-string v0, "Design Error"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 574
    return-void
.end method

.method protected notifySurfaceChanged()V
    .locals 0

    .prologue
    .line 524
    return-void
.end method

.method protected notifySurfaceDestroyed()V
    .locals 0

    .prologue
    .line 596
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    const/4 v4, 0x1

    .line 386
    invoke-super/range {p0 .. p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbFwViewSv;->onLayout(ZIIII)V

    .line 388
    if-nez p1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    if-eqz v2, :cond_0

    .line 396
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->checkEcoMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 398
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 399
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    :cond_2
    const/4 v1, 0x1

    .line 404
    .local v1, "notifysurfacesize":Z
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkEcoLayoutChange()Z

    move-result v0

    .line 405
    .local v0, "ecoLayoutChangeFlg":Z
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->checkEcoMode()Z

    move-result v2

    if-ne v4, v2, :cond_3

    .line 407
    invoke-virtual {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeEcoDispSurfaceView(I)V

    .line 408
    const/4 v1, 0x0

    .line 411
    :cond_3
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setPresentRect(IIII)V

    .line 412
    if-ne v4, v0, :cond_4

    .line 414
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->changeEcoLayoutChange(Z)V

    .line 416
    :cond_4
    if-ne v4, v1, :cond_0

    .line 418
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->processChangeSurface()V

    goto :goto_0
.end method

.method protected processChangeSurface()V
    .locals 0

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->notifyChangeSurface()V

    .line 503
    return-void
.end method

.method protected processInitSurface()V
    .locals 5

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 468
    .local v2, "surfaceholder":Landroid/view/SurfaceHolder;
    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 471
    .local v1, "surface":Landroid/view/Surface;
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->initSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "exception":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;
    const-string v3, "Surface null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 2
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 843
    return-void
.end method

.method public requestRollbackSurfaceViewSize()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method public resetStPlayerObject()V
    .locals 1

    .prologue
    .line 886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 890
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mHandler:Landroid/os/Handler;

    .line 691
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    if-eqz v0, :cond_3

    .line 322
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkAddViewStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 323
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkEcoStatus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    invoke-virtual {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    :cond_1
    return-void

    .line 325
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;
    .param p2, "aFormat"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 303
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v2, 0x1

    .line 261
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->setInstance()V

    .line 263
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->processInitSurface()V

    .line 265
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->checkEcoMode()Z

    move-result v1

    if-ne v2, v1, :cond_1

    .line 266
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeEcoDispSurfaceView(I)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->getSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 270
    .local v0, "fulldispregion":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "aHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->cancelEcoMode()V

    .line 443
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->notifySurfaceDestroyed()V

    .line 447
    return-void
.end method
