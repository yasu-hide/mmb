.class public Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
.super Ljava/lang/Object;
.source "MmbStBmlFullScreenControlSv.java"


# instance fields
.field private mBmlFullLayoutRes:Z

.field private mBmlFullLayoutSt:Z

.field private mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

.field private mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

.field private mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

.field private mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

.field private mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

.field private mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

.field private mFullScreenCaptionRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

.field private mFullScreenHeight:I

.field private mFullScreenStartReplayState:Z

.field private mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

.field private mFullScreenSuperimposeRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

.field private mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

.field private mFullScreenTvRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

.field private mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

.field private mRestoreMode:Z

.field private mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

.field private mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aBrowser"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 62
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 67
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    .line 72
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 77
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 82
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 87
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .line 92
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 97
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 102
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenTvRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 107
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenCaptionRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 112
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 117
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .line 122
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .line 128
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .line 134
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    .line 139
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutRes:Z

    .line 144
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mRestoreMode:Z

    .line 149
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    .line 154
    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenHeight:I

    .line 159
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenStartReplayState:Z

    .line 182
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 183
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 184
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 185
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v2, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 188
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    .line 191
    new-instance v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    invoke-direct {v0}, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .line 192
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    .line 193
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    new-instance v1, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    invoke-direct {v1}, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;-><init>()V

    iput-object v1, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    .line 194
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v0, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    .line 195
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v0, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iput v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    .line 196
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v0, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    .line 197
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v0, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iput v2, v0, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    .line 200
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    .line 205
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setMmbStSubtitleSuperimposeDispReq(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    return-void
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->requestSurfaceCreateForFullDisp(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;
    .param p1, "x1"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callFullDispStartListener(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    return-object v0
.end method

.method private declared-synchronized callFullDispStartListener(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V
    .locals 4
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    const/4 v3, 0x1

    .line 680
    monitor-enter p0

    if-nez p1, :cond_0

    .line 681
    :try_start_0
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v3, "onStartFullDispReq"

    invoke-direct {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 685
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkMember()V

    .line 686
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkSetBmlFullDispRect()V

    .line 689
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .line 691
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 693
    .local v1, "listener":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;
    if-eqz v1, :cond_1

    .line 695
    invoke-interface {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;->onRequestStartFullDisplay()V

    .line 698
    :cond_1
    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    if-ne v3, v2, :cond_2

    .line 699
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getViewList()Ljava/util/List;

    move-result-object v0

    .line 700
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_2

    .line 701
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->comparisonZorder(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 703
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setViewBackgroundColor(Z)V

    .line 705
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestRemoveAllViewsForFullDisp()V

    .line 707
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->fullDispLayoutChange()V

    .line 709
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$2;

    invoke-direct {v3, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 716
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->fullDispLayoutChange()V

    .line 717
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callReplyStartFullDisp()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkMember()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    if-nez v0, :cond_1

    .line 1051
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    const-string v1, "checkMember null"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1057
    :cond_1
    return-void
.end method

.method private checkSetBmlFullDispRect()V
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v0, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    if-gtz v0, :cond_1

    .line 1078
    :cond_0
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 1083
    :cond_1
    return-void
.end method

.method private checkSurfaceExist(Landroid/view/View;Ljava/util/List;)Z
    .locals 3
    .param p1, "aView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1471
    .local p2, "aList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1472
    .local v1, "result":Z
    if-eqz p2, :cond_0

    .line 1473
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1474
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 1475
    const/4 v1, 0x1

    .line 1483
    .end local v0    # "loopcnt":I
    :cond_0
    return v1

    .line 1473
    .restart local v0    # "loopcnt":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private comparisonZorder(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "aZorder":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1395
    const/4 v0, 0x0

    .line 1396
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1399
    .local v1, "viewnum":I
    if-gtz v1, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return v2

    .line 1402
    :cond_1
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkViewExist(Landroid/view/View;)Z

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1404
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    if-ne v4, v5, :cond_0

    .line 1410
    add-int/lit8 v0, v0, 0x1

    .line 1411
    if-ne v0, v1, :cond_2

    move v2, v3

    .line 1412
    goto :goto_0

    .line 1415
    :cond_2
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkViewExist(Landroid/view/View;)Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 1417
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    if-ne v4, v5, :cond_0

    .line 1423
    add-int/lit8 v0, v0, 0x1

    .line 1424
    if-ne v0, v1, :cond_3

    move v2, v3

    .line 1425
    goto :goto_0

    .line 1428
    :cond_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkViewExist(Landroid/view/View;)Z

    move-result v4

    if-ne v3, v4, :cond_4

    .line 1430
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    if-ne v4, v5, :cond_0

    .line 1436
    add-int/lit8 v0, v0, 0x1

    .line 1437
    if-ne v0, v1, :cond_4

    move v2, v3

    .line 1438
    goto :goto_0

    .line 1441
    :cond_4
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    invoke-virtual {v4, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkViewExist(Landroid/view/View;)Z

    move-result v4

    if-ne v3, v4, :cond_5

    .line 1443
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    if-ne v4, v5, :cond_0

    :cond_5
    move v2, v3

    .line 1453
    goto :goto_0
.end method

.method private fullDispLayoutChange()V
    .locals 5

    .prologue
    .line 626
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 627
    .local v0, "bmlfullrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getLeft()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 628
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 629
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v3, v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iput v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 630
    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenHeight:I

    iput v3, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 631
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 640
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v3, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->createBmlFullDispRect(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v1

    .line 641
    .local v1, "bmlrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v3, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 647
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getTvViewLayoutSize(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v2

    .line 650
    .local v2, "tvviewrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenTvRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 652
    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenTvRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-virtual {v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 655
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setMmbStSubtitleSuperimposeDispReq(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    .line 659
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    invoke-direct {p0, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setMmbStSubtitleSuperimposeDispReq(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    .line 665
    return-void
.end method

.method private getTvViewLayoutSize(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 12
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    .line 942
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 950
    .local v1, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getViewScale()F

    move-result v2

    .line 956
    .local v2, "scale":F
    const/4 v7, 0x0

    .line 957
    .local v7, "width":F
    iget-object v10, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v10, v10, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    int-to-float v4, v10

    .line 959
    .local v4, "tvviewfrombmlwidth":F
    mul-float v7, v4, v2

    .line 965
    const/4 v0, 0x0

    .line 966
    .local v0, "height":F
    iget-object v10, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v10, v10, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    int-to-float v3, v10

    .line 968
    .local v3, "tvviewfrombmlheight":F
    mul-float v0, v3, v2

    .line 971
    const/4 v8, 0x0

    .line 972
    .local v8, "x":F
    iget-object v10, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v10, v10, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    int-to-float v5, v10

    .line 974
    .local v5, "tvviewfrombmlx":F
    mul-float v8, v5, v2

    .line 977
    const/4 v9, 0x0

    .line 978
    .local v9, "y":F
    iget-object v10, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v10, v10, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    int-to-float v6, v10

    .line 980
    .local v6, "tvviewfrombmly":F
    mul-float v9, v6, v2

    .line 984
    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 985
    float-to-double v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 986
    float-to-double v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 987
    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 992
    return-object v1
.end method

.method private requestSurfaceCreateForFullDisp(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x1

    .line 739
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkSurfaceExist(Landroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-ne v2, v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addView(Landroid/view/View;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkSurfaceExist(Landroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-ne v2, v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addView(Landroid/view/View;)V

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkSurfaceExist(Landroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-ne v2, v0, :cond_2

    .line 746
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addView(Landroid/view/View;)V

    .line 748
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    invoke-direct {p0, v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkSurfaceExist(Landroid/view/View;Ljava/util/List;)Z

    move-result v0

    if-ne v2, v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addView(Landroid/view/View;)V

    .line 751
    :cond_3
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    invoke-virtual {v0, v2, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 753
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    const/4 v1, 0x0

    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 758
    return-void
.end method

.method private rollbackSurfaceViewSize(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1349
    .local p1, "aZorder":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestRollbackSurfaceViewSize()V

    .line 1350
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1351
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 1352
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBaseViewSv;->requestRollbackSurfaceViewSize()V

    .line 1350
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1354
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->requestRollbackSurfaceViewSize()V

    goto :goto_1

    .line 1360
    :cond_1
    return-void
.end method

.method private rollbackSurfaceViews()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1294
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getViewList()Ljava/util/List;

    move-result-object v0

    .line 1295
    .local v0, "zorder":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 1296
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->comparisonZorder(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1298
    invoke-virtual {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setViewBackgroundColor(Z)V

    .line 1300
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestRemoveAllViewsForFullDisp()V

    .line 1301
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->rollbackSurfaceViewSize(Ljava/util/List;)V

    .line 1302
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    sget v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    invoke-virtual {v1, v3, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 1304
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    const/4 v2, 0x0

    sget v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    invoke-virtual {v1, v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutInformationState(ZI)V

    .line 1314
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->rollbackSurfaceViewSize(Ljava/util/List;)V

    .line 1308
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callReplyStopFullDisp()V

    goto :goto_0
.end method

.method private setBackgroundColor(Landroid/view/View;I)V
    .locals 0
    .param p1, "aView"    # Landroid/view/View;
    .param p2, "aColor"    # I

    .prologue
    .line 1549
    if-eqz p1, :cond_0

    .line 1550
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1556
    :cond_0
    return-void
.end method

.method private setMmbStSubtitleSuperimposeDispReq(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V
    .locals 8
    .param p1, "aType"    # I
    .param p2, "aSubtitleSuperimposeSetting"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .prologue
    .line 549
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    invoke-direct {p0, v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->getTvViewLayoutSize(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    move-result-object v0

    .line 550
    .local v0, "tvviewrect":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;-><init>()V

    .line 553
    .local v2, "view":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    iget v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v1, v5, v6

    .line 554
    .local v1, "verticalratio":F
    const/4 v4, 0x0

    .line 555
    .local v4, "viewytemp":F
    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    int-to-float v5, v5

    mul-float v3, v5, v1

    .line 558
    .local v3, "viewheighttemp":F
    iget v5, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    if-nez v5, :cond_0

    .line 559
    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    int-to-float v4, v5

    .line 567
    :goto_0
    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 568
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 569
    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 570
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    iput v5, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 573
    if-nez p1, :cond_1

    .line 575
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenCaptionRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 577
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenCaptionRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 587
    :goto_1
    return-void

    .line 561
    :cond_0
    iget v5, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    int-to-float v5, v5

    iget v6, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    int-to-float v6, v6

    sub-float/2addr v6, v3

    add-float v4, v5, v6

    goto :goto_0

    .line 580
    :cond_1
    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .line 582
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    iget-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    invoke-virtual {v5, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized callReplyStartFullDisp()V
    .locals 2

    .prologue
    .line 841
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenStartReplayState:Z

    if-nez v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->replyStartFullDisp(Z)V

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenStartReplayState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :cond_0
    monitor-exit p0

    return-void

    .line 841
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public callReplyStopFullDisp()V
    .locals 2

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenStartReplayState:Z

    if-nez v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callReplyStartFullDisp()V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->replyStopFullDisp(Z)V

    .line 875
    return-void
.end method

.method public checkBmlFullDispReserve()Z
    .locals 1

    .prologue
    .line 1126
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutRes:Z

    return v0
.end method

.method public checkBmlFullDispStatus()Z
    .locals 1

    .prologue
    .line 1104
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    return v0
.end method

.method public clearBmlFullDispReserve()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutRes:Z

    .line 1148
    return-void
.end method

.method protected getFullScreenBmlHeight()I
    .locals 1

    .prologue
    .line 1256
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenHeight:I

    return v0
.end method

.method public getFullScreenBmlSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    return-object v0
.end method

.method public getFullScreenCaptionSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 1

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenCaptionRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    return-object v0
.end method

.method public getFullScreenSuperimposeSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    return-object v0
.end method

.method public getFullScreenTvSurfaceViewSize()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenTvRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getViewScale()F
    .locals 3

    .prologue
    .line 1010
    const/4 v1, 0x0

    .line 1011
    .local v1, "ret":F
    const/4 v0, 0x0

    .line 1014
    .local v0, "bmlbasesize":F
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->getBmlBaseWidth()I

    move-result v2

    int-to-float v0, v2

    .line 1020
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    int-to-float v2, v2

    div-float v1, v2, v0

    .line 1029
    return v1
.end method

.method public declared-synchronized onStartFullDispReq(Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)Z
    .locals 5
    .param p1, "aInfo"    # Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 782
    monitor-enter p0

    if-nez p1, :cond_0

    .line 784
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->replyStartFullDisp(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    :goto_0
    monitor-exit p0

    return v1

    .line 789
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    if-ne v2, v3, :cond_1

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    if-eqz v3, :cond_1

    .line 790
    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbX:I

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbPosition:Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;

    iget v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwPositionInfo;->mmbY:I

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbHeight:I

    if-ne v3, v4, :cond_1

    iget-object v3, p1, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v3, v3, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullDispTvPos:Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;

    iget-object v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;->mmbRect:Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;

    iget v4, v4, Lmmb/android/MmbStBmlMw/MmbStBmlMwRectInfo;->mmbWidth:I

    if-ne v3, v4, :cond_1

    .line 795
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->replyStartFullDisp(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 782
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 800
    :cond_1
    move-object v0, p1

    .line 802
    .local v0, "fulldispinfo":Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;

    invoke-direct {v3, p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;Lmmb/android/MmbStBmlMw/MmbStBmlMwStartFullDispReqInfo;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    if-nez v1, :cond_2

    .line 811
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutRes:Z

    .line 815
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    .line 817
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenStartReplayState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 823
    goto :goto_0
.end method

.method public onStopFullDispReq()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 895
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    .line 898
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$4;

    invoke-direct {v2, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 910
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mRestoreMode:Z

    if-ne v1, v2, :cond_0

    .line 911
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->rollbackSurfaceViews()V

    .line 922
    :goto_0
    return-void

    .line 913
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callReplyStopFullDisp()V
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, "e":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;
    const-string v1, "onStopFullDispReq state error"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setBMLFullDispCaptionRect(ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V
    .locals 3
    .param p1, "aType"    # I
    .param p2, "aBmlFullDispCaptionRect"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .prologue
    .line 481
    if-nez p1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    if-ne v1, v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    .line 491
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    .line 493
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSubtitleSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .line 511
    .local v0, "subtitlesuperimposerect":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;
    :goto_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    if-ne v1, v2, :cond_0

    .line 513
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;ILcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 496
    .end local v0    # "subtitlesuperimposerect":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    if-eq v1, v2, :cond_0

    .line 504
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbPosition:I

    .line 505
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    iget v2, p2, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;->mmbVerticalRatio:I

    .line 507
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenSuperimposeSettingData:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;

    .restart local v0    # "subtitlesuperimposerect":Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStSubtitleSuperimposeBmlFullScreenSettingDataSv;
    goto :goto_1
.end method

.method public setBmlFullDispRect(IIII)V
    .locals 3
    .param p1, "aX"    # I
    .param p2, "aY"    # I
    .param p3, "aWidth"    # I
    .param p4, "aHeight"    # I

    .prologue
    .line 424
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    invoke-virtual {v1, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->AdjustBmlLayoutWidth(I)I

    move-result v0

    .line 427
    .local v0, "adjustWidth":I
    if-eq v0, p3, :cond_1

    .line 428
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    sub-int v2, p3, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 429
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 430
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput v0, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 431
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    mul-int/lit8 v2, v0, 0x2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 432
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenHeight:I

    .line 448
    :goto_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkSetBmlFullDispRect()V

    .line 451
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    if-ne v1, v2, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->fullDispLayoutChange()V

    .line 458
    :cond_0
    return-void

    .line 433
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBrowser:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlBrowserControllerSv;->getBmlDirection()I

    move-result v1

    if-nez v1, :cond_2

    .line 434
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 435
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 436
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 437
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    mul-int/lit8 v2, p3, 0x2

    iput v2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 438
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenHeight:I

    goto :goto_0

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p1, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    .line 441
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p2, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    .line 442
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p3, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    .line 443
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenBmlRect:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    iput p4, v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    .line 444
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mFullScreenHeight:I

    goto :goto_0
.end method

.method public setBmlSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;)V
    .locals 2
    .param p1, "aBmlSurfaceView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "setBmlSurfaceView"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    .line 268
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;->setHandler(Landroid/os/Handler;)V

    .line 274
    return-void
.end method

.method public setBmlView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;)V
    .locals 2
    .param p1, "aBmlView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "setBmlView"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    .line 233
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;->setHandler(Landroid/os/Handler;)V

    .line 239
    return-void
.end method

.method public setCaptionView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;)V
    .locals 2
    .param p1, "aCaptionView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .prologue
    .line 329
    if-nez p1, :cond_0

    .line 330
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "setCaptionView"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 334
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    .line 337
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;->setHandler(Landroid/os/Handler;)V

    .line 342
    return-void
.end method

.method public setMmbStBmlEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .prologue
    .line 605
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mListener:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlEventListenerSv;

    .line 609
    return-void
.end method

.method public setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 2
    .param p1, "aParentView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .line 399
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setHandler(Landroid/os/Handler;)V

    .line 403
    return-void
.end method

.method public setRestoreMode(Z)V
    .locals 0
    .param p1, "aRestoreMode"    # Z

    .prologue
    .line 1329
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mRestoreMode:Z

    .line 1333
    return-void
.end method

.method public setSuperimposeView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;)V
    .locals 2
    .param p1, "aSuperimposeView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "setSuperimposeView"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    .line 371
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;->setHandler(Landroid/os/Handler;)V

    .line 377
    return-void
.end method

.method public setTvView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;)V
    .locals 2
    .param p1, "aTvView"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 296
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    const-string v1, "setTvView"

    invoke-direct {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    .line 303
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;->setHandler(Landroid/os/Handler;)V

    .line 308
    return-void
.end method

.method public setViewBackgroundColor(Z)V
    .locals 3
    .param p1, "aFlag"    # Z

    .prologue
    .line 1506
    if-eqz p1, :cond_0

    .line 1507
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1508
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1509
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1510
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1511
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1512
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    const/high16 v2, -0x1000000

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1528
    :goto_0
    return-void

    .line 1514
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlSurfaceView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlSurfaceViewSv;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1515
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStBmlViewSv;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1516
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mCaptionView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStCaptionViewSv;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1517
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mParentView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1518
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mSuperimposeView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStSuperimposeViewSv;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V

    .line 1519
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mTvView:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStTvViewSv;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setBackgroundColor(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopBmlBrowser()V
    .locals 1

    .prologue
    .line 1271
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->mBmlFullLayoutSt:Z

    if-eqz v0, :cond_0

    .line 1272
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->onStopFullDispReq()V

    .line 1278
    :cond_0
    return-void
.end method
