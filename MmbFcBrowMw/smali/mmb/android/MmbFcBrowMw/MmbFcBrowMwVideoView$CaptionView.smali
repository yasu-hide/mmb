.class Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
.super Landroid/view/SurfaceView;
.source "MmbFcBrowMwVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptionView"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceWidth:I

.field final synthetic this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;


# direct methods
.method public constructor <init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;Landroid/content/Context;)V
    .locals 2
    .param p2, "aContext"    # Landroid/content/Context;

    .prologue
    .line 1028
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->this$0:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView;

    .line 1029
    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 1016
    const/4 v0, 0x0

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1052
    new-instance v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;

    invoke-direct {v0, p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView$1;-><init>(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)V

    iput-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 1030
    iput-object p2, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->context:Landroid/content/Context;

    .line 1031
    invoke-direct {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->initCaptionView()V

    .line 1032
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->log:Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;

    const-string v1, "CaptionView(Context aContext)"

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/common/MmbFcBrowMwLog;->mmbLogV(Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method static synthetic access$500(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;

    .prologue
    .line 1015
    iget-object v0, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$502(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1015
    iput-object p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->surfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$602(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
    .param p1, "x1"    # I

    .prologue
    .line 1015
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->surfaceWidth:I

    return p1
.end method

.method static synthetic access$702(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;I)I
    .locals 0
    .param p0, "x0"    # Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;
    .param p1, "x1"    # I

    .prologue
    .line 1015
    iput p1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->surfaceHeight:I

    return p1
.end method

.method private initCaptionView()V
    .locals 2

    .prologue
    .line 1043
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1047
    invoke-virtual {p0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwVideoView$CaptionView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1050
    return-void
.end method
