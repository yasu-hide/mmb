.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;
.super Landroid/widget/FrameLayout;
.source "MmbStBmlFrameLayoutSv.java"


# instance fields
.field private mBmlHeight:I

.field mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

.field private mBmlWidth:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 55
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mHandler:Landroid/os/Handler;

    .line 60
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlWidth:I

    .line 65
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlHeight:I

    .line 80
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 55
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mHandler:Landroid/os/Handler;

    .line 60
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlWidth:I

    .line 65
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlHeight:I

    .line 100
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->init(Landroid/content/Context;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 55
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mHandler:Landroid/os/Handler;

    .line 60
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlWidth:I

    .line 65
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlHeight:I

    .line 121
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->init(Landroid/content/Context;)V

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->changeBmlFrameLayoutSize()V

    return-void
.end method

.method private changeBmlFrameLayoutSize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlWidth:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 183
    .local v0, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 184
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 185
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->checkEcoStatus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v4, v1, :cond_0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispReserve()Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->clearBmlFullDispReserve()V

    .line 198
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 141
    move-object v5, p1

    check-cast v5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    invoke-interface {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v1

    .line 145
    .local v1, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getStPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    move-result-object v3

    .line 146
    .local v3, "stplayer":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
    check-cast v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    .end local v3    # "stplayer":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlTouchControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;

    move-result-object v4

    .line 149
    .local v4, "touchctl":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;
    invoke-virtual {v4, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlTouchControlSv;->setFrameLayout(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;)V

    .line 152
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mHandler:Landroid/os/Handler;

    .line 156
    new-instance v5, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-direct {v5, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 157
    const/4 v2, -0x2

    .line 158
    .local v2, "size":I
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 159
    .local v0, "layout":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v5, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->addView(Landroid/view/View;)V

    .line 165
    return-void
.end method


# virtual methods
.method protected setBmlViewSize(II)V
    .locals 2
    .param p1, "aWidth"    # I
    .param p2, "aHeight"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlWidth:I

    .line 213
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mBmlHeight:I

    .line 214
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv$1;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlFrameLayoutSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    return-void
.end method
