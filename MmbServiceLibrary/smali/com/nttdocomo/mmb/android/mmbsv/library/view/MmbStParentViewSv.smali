.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
.super Landroid/widget/RelativeLayout;
.source "MmbStParentViewSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
    }
.end annotation


# static fields
.field public static NOT_NOTIFY_VIEW_CREATED:I


# instance fields
.field private mAddViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;",
            ">;"
        }
    .end annotation
.end field

.field private mCallAddViewStatus:Z

.field private mChangeLayoutInformationState:Z

.field private mChangeLayoutState:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserParam:I

.field private mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

.field private mHandler:Landroid/os/Handler;

.field private mRemoveViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveUserParam:I

.field private mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

.field private mSurfaceIndex:I

.field private mUpdateLayoutState:Z

.field private mUpdateViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;",
            ">;"
        }
    .end annotation
.end field

.field private mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, -0x1

    sput v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 64
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 69
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 96
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    .line 101
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutState:Z

    .line 106
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateLayoutState:Z

    .line 111
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    .line 116
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCallAddViewStatus:Z

    .line 121
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    .line 126
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mReserveUserParam:I

    .line 152
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->init(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 64
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 69
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 96
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    .line 101
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutState:Z

    .line 106
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateLayoutState:Z

    .line 111
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    .line 116
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCallAddViewStatus:Z

    .line 121
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    .line 126
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mReserveUserParam:I

    .line 180
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->init(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mContext:Landroid/content/Context;

    .line 59
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 64
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 69
    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;-><init>()V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    .line 96
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    .line 101
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutState:Z

    .line 106
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateLayoutState:Z

    .line 111
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    .line 116
    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCallAddViewStatus:Z

    .line 121
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    .line 126
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mReserveUserParam:I

    .line 209
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->init(Landroid/content/Context;)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->callSuperAddView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V

    return-void
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->reflectView(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;
    .param p1, "x1"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    return-void
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->rollbackSurfaceViewSize()V

    return-void
.end method

.method private callSuperAddView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V
    .locals 3
    .param p1, "aViewInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .prologue
    const/4 v2, 0x1

    .line 340
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkViewExist(Landroid/view/View;)Z

    move-result v1

    if-ne v2, v1, :cond_0

    .line 341
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 343
    :cond_0
    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCallAddViewStatus:Z

    .line 345
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 346
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_1

    .line 347
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 349
    :cond_1
    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v1

    invoke-static {p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)I

    move-result v2

    invoke-super {p0, v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 350
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCallAddViewStatus:Z

    .line 354
    return-void
.end method

.method private callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1177
    return-void
.end method

.method private changeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 2
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 1074
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1076
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    .line 1081
    :cond_0
    return-void
.end method

.method private changeSurfaceViewSize(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 3
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 1048
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewWidth:I

    iget v2, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1050
    .local v0, "layout":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewX:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1051
    iget v1, p1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;->mmbSurfaceViewY:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1052
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    return-void
.end method

.method private checkChangeLayoutState()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutState:Z

    return v0
.end method

.method private checkUpdateLayoutState()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateLayoutState:Z

    return v0
.end method

.method private checkUpdateViewList(Landroid/view/View;)Z
    .locals 3
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 875
    const/4 v1, 0x0

    .line 876
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 877
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 878
    const/4 v1, 0x1

    .line 885
    :cond_0
    return v1

    .line 876
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createUpdateViewList(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 847
    .local p1, "aAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;>;"
    const/4 v6, 0x0

    .local v6, "loopcnt":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 849
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .line 851
    .local v7, "viewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkUpdateViewList(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 852
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v2

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)I

    move-result v3

    invoke-static {v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;)V

    .line 854
    .local v0, "createviewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    .end local v0    # "createviewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 860
    .end local v7    # "viewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mContext:Landroid/content/Context;

    .line 235
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    invoke-interface {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v0

    .line 243
    .local v0, "servicecontext":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getStPlayer()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    .line 244
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    if-nez v1, :cond_1

    .line 245
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->getBmlFullScreenControl()Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    .line 250
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    if-nez v1, :cond_2

    .line 251
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceFatalException;-><init>()V

    throw v1

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 256
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    invoke-virtual {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->setParentView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    .line 261
    return-void
.end method

.method private notifyReflectViewFinished()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->setViewBackgroundColor(Z)V

    .line 814
    sget v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->NOT_NOTIFY_VIEW_CREATED:I

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    if-eq v0, v1, :cond_1

    .line 815
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mStPlayer:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerSv;

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;

    sget v1, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStConstantsSv;->CREATED_ALL_VIEW:I

    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    invoke-virtual {v0, v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStPlayerExternalIfSv;->notifyViewCreated(II)V

    .line 825
    :goto_0
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutState(Z)V

    .line 826
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkUpdateLayoutState()Z

    move-result v0

    if-ne v4, v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestReflectView()V

    .line 832
    :cond_0
    return-void

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v0

    if-ne v4, v0, :cond_2

    .line 819
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callReplyStartFullDisp()V

    goto :goto_0

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->callReplyStopFullDisp()V

    goto :goto_0
.end method

.method private reflectView(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, "aAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;>;"
    .local p2, "aRemoveList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 748
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 750
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkViewExist(Landroid/view/View;)Z

    move-result v3

    if-ne v2, v3, :cond_0

    .line 751
    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->removeViewFromService(Landroid/view/View;)V

    .line 754
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->removeFromAddViewList(Ljava/util/ArrayList;Landroid/view/View;)V

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->createUpdateViewList(Ljava/util/ArrayList;)V

    .line 759
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 760
    const/4 v2, 0x0

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    .line 761
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addViewFromService(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V

    .line 768
    :goto_1
    return-void

    .line 763
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->notifyReflectViewFinished()V

    goto :goto_1
.end method

.method private removeAllViewsFromService()V
    .locals 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 550
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 552
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutState(Z)V

    .line 553
    invoke-super {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 555
    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkUpdateLayoutState()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 557
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestReflectView()V

    .line 562
    :cond_0
    return-void
.end method

.method private removeFromAddViewList(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 2
    .param p2, "aView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 785
    .local p1, "aAddList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;>;"
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 787
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-static {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 789
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 796
    :cond_0
    return-void

    .line 785
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeViewFromService(Landroid/view/View;)V
    .locals 0
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 505
    return-void
.end method

.method private requestReflectView()V
    .locals 4

    .prologue
    .line 707
    iget v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mReserveUserParam:I

    iput v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    .line 709
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setChangeLayoutState(Z)V

    .line 710
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setUpdateLayoutState(Z)V

    .line 711
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 713
    .local v0, "addlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 715
    .local v1, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 717
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$3;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method private rollbackSurfaceViewSize()V
    .locals 2

    .prologue
    .line 1126
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1127
    .local v0, "layout":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_0

    .line 1128
    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1133
    :cond_0
    return-void
.end method

.method private setChangeLayoutState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 617
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutState:Z

    .line 621
    return-void
.end method

.method private setUpdateLayoutState(Z)V
    .locals 0
    .param p1, "aState"    # Z

    .prologue
    .line 663
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateLayoutState:Z

    .line 667
    return-void
.end method

.method private setViewObject(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "aChild"    # Landroid/view/View;
    .param p2, "aIndex"    # I
    .param p3, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v6, 0x1

    .line 961
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;)V

    .line 964
    .local v0, "viewinfo":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    if-ne v6, v1, :cond_1

    .line 965
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v6, v1, :cond_0

    .line 971
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v1

    if-ne v6, v1, :cond_0

    .line 975
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "aChild"    # Landroid/view/View;
    .param p2, "aIndex"    # I
    .param p3, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 283
    invoke-direct {p0, p1, p2, p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setViewObject(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 287
    return-void
.end method

.method public addViewFromService(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V
    .locals 2
    .param p1, "aViewInformation"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    .prologue
    .line 308
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    .line 309
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$1;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method protected checkAddViewStatus()Z
    .locals 1

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCallAddViewStatus:Z

    return v0
.end method

.method public checkViewExist(Landroid/view/View;)Z
    .locals 3
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 388
    const/4 v1, 0x0

    .line 390
    .local v1, "result":Z
    const/4 v0, 0x0

    .local v0, "loopcnt":I
    :goto_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 392
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 393
    const/4 v1, 0x1

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    :cond_1
    return v1
.end method

.method protected getUserParam()I
    .locals 1

    .prologue
    .line 1249
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mCurrentUserParam:I

    return v0
.end method

.method public getViewList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "loopcnt":I
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1226
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1231
    :cond_0
    return-object v0
.end method

.method protected notifyCreateView(Landroid/view/View;)V
    .locals 2
    .param p1, "aView"    # Landroid/view/View;

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    if-le v0, v1, :cond_1

    .line 1194
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-static {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;->access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mSurfaceIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;

    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->addViewFromService(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$MmbStViewSettingInformationSv;)V

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mUpdateViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1200
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->notifyReflectViewFinished()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    .line 912
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 914
    if-nez p1, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    if-eqz v0, :cond_0

    .line 927
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mFullScreenControl:Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/streaming/MmbStBmlFullScreenControlSv;->checkBmlFullDispStatus()Z

    move-result v0

    if-nez v0, :cond_2

    .line 928
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 929
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->getNormalStateRect()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setPresentRect(IIII)V

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mAddViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 450
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestRemoveAllViewsFromService()V

    .line 454
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "aChild"    # Landroid/view/View;

    .prologue
    .line 421
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    if-ne v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mRemoveViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    return-void
.end method

.method public requestChangeBmlFullDispSurfaceView(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V
    .locals 2
    .param p1, "aSurfaceRegion"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$4;

    invoke-direct {v1, p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$4;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewPointRegionSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1030
    return-void
.end method

.method public requestRemoveAllViewsForFullDisp()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$2;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$2;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 483
    return-void
.end method

.method public requestRemoveAllViewsFromService()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->removeAllViewsFromService()V

    .line 529
    return-void
.end method

.method public requestRollbackSurfaceViewSize()V
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$5;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv$5;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1109
    return-void
.end method

.method public setChangeLayoutInformationState(ZI)V
    .locals 1
    .param p1, "aState"    # Z
    .param p2, "aUserParam"    # I

    .prologue
    .line 582
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    .line 584
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mChangeLayoutInformationState:Z

    if-nez v0, :cond_1

    .line 586
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->setUpdateLayoutState(Z)V

    .line 588
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->checkChangeLayoutState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->requestReflectView()V

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mReserveUserParam:I

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "aHandler"    # Landroid/os/Handler;

    .prologue
    .line 999
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mHandler:Landroid/os/Handler;

    .line 1003
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "aParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->mViewInformation:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;

    invoke-virtual {v0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStViewInformationManageSv;->setNormalStateRect(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1152
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbStParentViewSv;->callSuperSetLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1156
    return-void
.end method
