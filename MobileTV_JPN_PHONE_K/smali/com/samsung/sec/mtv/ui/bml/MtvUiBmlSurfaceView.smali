.class public Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
.super Lcom/access/bml/BMLNativeView;
.source "MtvUiBmlSurfaceView.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$2;,
        Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$GestrueDetectorBML;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiBmlSurfaceView"


# instance fields
.field private bmlbar_height:I

.field private browser_full_height:I

.field private browser_height:I

.field private browser_normal_height:I

.field private browser_width:I

.field private caption_height:I

.field private mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

.field private mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

.field private mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

.field private mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

.field private mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

.field private statusbar_height:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p1}, Lcom/access/bml/BMLNativeView;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 39
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 40
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    .line 42
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 43
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 44
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 46
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 363
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->initializeBMLDimension(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/access/bml/BMLNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 39
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 40
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    .line 42
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 43
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 44
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 46
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 363
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->initializeBMLDimension(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/access/bml/BMLNativeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 39
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 40
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 41
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    .line 42
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 43
    sget-object v0, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->MTV_APP_BML_CONTROL_BASIC:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 44
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 45
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 46
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 363
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$1;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->initializeBMLDimension(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    return-object v0
.end method

.method private destroyBmlContrlFragment()V
    .locals 0

    .prologue
    .line 495
    return-void
.end method

.method private initializeBMLDimension(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 79
    const/high16 v2, 0x43b40000    # 360.0f

    invoke-static {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    .line 80
    const/high16 v2, 0x44200000    # 640.0f

    invoke-static {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_height:I

    .line 81
    const/high16 v2, 0x42900000    # 72.0f

    invoke-static {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->bmlbar_height:I

    .line 82
    const/high16 v2, 0x42c60000    # 99.0f

    invoke-static {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->caption_height:I

    .line 83
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->statusbar_height:I

    .line 85
    const v0, 0x440c8000    # 562.0f

    .line 86
    .local v0, "tempbrowser_full_height":F
    invoke-static {v0, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_full_height:I

    .line 88
    const v1, 0x43b38000    # 359.0f

    .line 90
    .local v1, "tempbrowser_normal_height":F
    invoke-static {v1, p1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_normal_height:I

    .line 92
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    const-string v2, "MtvUiBmlSurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeBMLDimension: browser_width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser_height: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bmlbar_height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->bmlbar_height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caption_height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->caption_height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser_full_height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_full_height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "browser_normal_height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_normal_height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    return-void
.end method

.method private setBMLLandscapeMode()V
    .locals 2

    .prologue
    .line 403
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "setBMLLandscapeMode: entered "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->destroyBMLDialog()V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->stopBmlAnimation()V

    .line 414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    .line 416
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setVisibility(I)V

    .line 417
    return-void
.end method


# virtual methods
.method public IsBMLCaptionView()Z
    .locals 2

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "IsBMLCaptionView:  TRUE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    .line 564
    :cond_0
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "IsBMLCaptionView:  FALSE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsBMLFullView()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 578
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_full_height:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->bmlbar_height:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    .line 593
    :goto_0
    return v0

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_full_height:I

    if-ne v1, v2, :cond_1

    .line 584
    const-string v1, "MtvUiBmlSurfaceView"

    const-string v2, "IsBMLFullView: TRUE "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :cond_1
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 591
    const-string v0, "MtvUiBmlSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsBMLFullView: FALSE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsBMLTvView()Z
    .locals 3

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_normal_height:I

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_normal_height:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->bmlbar_height:I

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_2

    .line 670
    :cond_1
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "IsBMLTvView:  TRUE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    const/4 v0, 0x1

    .line 676
    :goto_0
    return v0

    .line 675
    :cond_2
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "IsBMLTvView:  FALSE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bmlControlTypeChanged()V
    .locals 0

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->startBmlContrlFragment()V

    .line 549
    return-void
.end method

.method public create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 2
    .param p1, "mplaybackContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .param p2, "fragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 100
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "create() :: "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    if-nez p1, :cond_0

    .line 102
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 106
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 107
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 108
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 109
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->init(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlSurface(Landroid/content/Context;Lcom/access/bml/BMLNativeView;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlSurfaceListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;)V

    .line 112
    iget v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBrowserWidth(I)V

    .line 113
    iget v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_height:I

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBrowserHeight(I)V

    .line 114
    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    goto :goto_0
.end method

.method public onClear()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->destroyBMLDialog()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 236
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "onDestroy:Entered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 247
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 250
    :cond_0
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 251
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    if-eqz v0, :cond_2

    .line 256
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->stopBmlAnimation()V

    .line 257
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    .line 260
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->destroyBmlContrlFragment()V

    .line 262
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->destroyBMLDialog()V

    .line 265
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_4

    .line 270
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->deInit()V

    .line 271
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_5

    .line 274
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 275
    :cond_5
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 277
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->destroyBMLDialog()V

    .line 290
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    sget-object v1, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;->MTV_APP_BML_DIALOG_REPLAY_NO:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getCmd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->sendDialogReply(Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlDialogReply;I)V

    .line 295
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/access/bml/BMLNativeView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V
    .locals 4
    .param p1, "mplaybackContext"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 145
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "onResume:Entered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p1, :cond_6

    .line 149
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 162
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->init(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 164
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlSurface(Landroid/content/Context;Lcom/access/bml/BMLNativeView;)V

    .line 165
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlSurfaceListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;)V

    .line 167
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    if-nez v0, :cond_1

    .line 169
    new-instance v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/samsung/sec/mtv/app/bml/MtvAppBml;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    .line 172
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->getInstance()Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    .line 174
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;Landroid/content/Context;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->setAppcomponents(Lcom/samsung/sec/mtv/app/bml/MtvAppBml;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->checkCanvasValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "onResume:Canvas inValid "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->refreshBMLScreen()V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->updateBMLSurfaceView()V

    .line 196
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    if-eqz v0, :cond_4

    .line 198
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlDialog:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlDialogFrag;->onResume()V

    .line 201
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlAnimation:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlAnimation;->onResume()V

    .line 206
    :cond_5
    return-void

    .line 153
    :cond_6
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    goto/16 :goto_0
.end method

.method public onStart(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V
    .locals 3
    .param p1, "fragHandler"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .prologue
    .line 122
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "onStart: entered "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 124
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 126
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 131
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setVisibility(I)V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setFocusable(Z)V

    .line 134
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$GestrueDetectorBML;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$GestrueDetectorBML;-><init>(Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 135
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->registerBmlSurfaceListener(Lcom/samsung/sec/mtv/app/bml/IMtvAppBmlSurfaceListener;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 304
    const/4 v0, 0x0

    .line 306
    .local v0, "action":I
    if-nez p1, :cond_0

    .line 308
    const-string v1, "MtvUiBmlSurfaceView"

    const-string v2, "onTouchEvent: MotionEvent NULL !! "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return v4

    .line 312
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    const-string v1, "MtvUiBmlSurfaceView"

    const-string v2, "onTouchEvent: Phone is locked return "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_2

    .line 320
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 323
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLCaptionView()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->caption_height:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 328
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->statusbar_height:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v2, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 335
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 337
    :pswitch_0
    const/4 v0, 0x0

    .line 349
    :goto_1
    const-string v1, "MtvUiBmlSurfaceView"

    const-string v2, "onTouchEvent: passing touch event to BML engine "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-nez v1, :cond_5

    .line 352
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    .line 354
    :cond_5
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->processMouseEvent(III)V

    goto :goto_0

    .line 340
    :pswitch_1
    const/4 v0, 0x1

    .line 341
    goto :goto_1

    .line 343
    :pswitch_2
    const/4 v0, 0x2

    .line 344
    goto :goto_1

    .line 335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public openBMLHomePage()V
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "setBMLHomePage: Setting BML home page"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->openBMLHomePage()V

    .line 691
    :cond_0
    return-void
.end method

.method public resetBMLTvView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "setBMLZeroView: setting BML size to zero"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setBMLViewSize(IIII)Z

    .line 659
    :cond_0
    return-void
.end method

.method public setBMLCaptionView()V
    .locals 5

    .prologue
    .line 603
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "setBMLCaptionView: isPhoneLocked TRUE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_normal_height:I

    iget v3, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->caption_height:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->caption_height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setBMLViewSize(IIII)Z

    .line 606
    return-void
.end method

.method public setBMLFullView(Z)V
    .locals 5
    .param p1, "set"    # Z

    .prologue
    .line 615
    if-eqz p1, :cond_1

    .line 616
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "setBMLFullView: set - TRUE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_full_height:I

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->statusbar_height:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setBMLViewSize(IIII)Z

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView:  setBMLCaptionView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLCaptionView()V

    goto :goto_0

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLTvView()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 629
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView:  setBMLTvView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLTvView()V

    goto :goto_0

    .line 634
    :cond_3
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView: else setBMLTvView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLTvView()V

    goto :goto_0
.end method

.method public setBMLTvView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 645
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    if-eqz v0, :cond_0

    .line 646
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "setBMLTvView: isPhoneLocked TRUE "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_width:I

    iget v2, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->browser_normal_height:I

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->setBMLViewSize(IIII)Z

    .line 649
    :cond_0
    return-void
.end method

.method public startBmlContrlFragment()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mBmlApp:Lcom/samsung/sec/mtv/app/bml/MtvAppBml;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/bml/MtvAppBml;->getBmlControlType()Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    .line 426
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 428
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "startBmlOsd: landscape mode return "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLLandscapeMode()V

    .line 475
    :goto_0
    return-void

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mFragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->getActivityType()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 434
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFileFormatImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->stopBmlContrlFragment()V

    goto :goto_0

    .line 440
    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView$2;->$SwitchMap$com$samsung$sec$mtv$app$bml$MtvAppBmlConstants$BmlControlType:[I

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mbmlCntrlType:Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/bml/MtvAppBmlConstants$BmlControlType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 444
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->stopBmlContrlFragment()V

    .line 447
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 449
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->show()V

    goto :goto_0

    .line 453
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->show()V

    goto :goto_0

    .line 460
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->stopBmlContrlFragment()V

    .line 462
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 464
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->show()V

    goto :goto_0

    .line 468
    :cond_3
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->show()V

    goto :goto_0

    .line 440
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startTvLinkTab()V
    .locals 5

    .prologue
    .line 726
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    .line 727
    .local v2, "mCurrentContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    const/16 v4, 0x5007

    if-eq v3, v4, :cond_0

    .line 729
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 730
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "initialize"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 731
    const-string v3, "tab"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 733
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "intent"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 734
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 740
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 738
    :cond_0
    const-string v3, "MtvUiBmlSurfaceView"

    const-string v4, "Going to TVLinks Tab not entertained while recording..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopBmlContrlFragment()V
    .locals 0

    .prologue
    .line 482
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlBasicControlFrag;->hide()V

    .line 483
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlKeyPadControlFragment;->hide()V

    .line 484
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlNumKeyPadFragment;->hide()V

    .line 485
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionKeyPadControlFragment;->hide()V

    .line 486
    invoke-static {}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlCaptionBasicControlFrag;->hide()V

    .line 487
    return-void
.end method

.method public updateBMLSurfaceView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 513
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 515
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "startBmlOsd: landscape mode return "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLLandscapeMode()V

    .line 541
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 521
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView:  setBMLFullView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLFullView(Z)V

    .line 540
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->startBmlContrlFragment()V

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView:  setBMLCaptionView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLCaptionView()V

    goto :goto_1

    .line 529
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLTvView()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 531
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView:  setBMLTvView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLTvView()V

    goto :goto_1

    .line 536
    :cond_3
    const-string v0, "MtvUiBmlSurfaceView"

    const-string v1, "updateBMLSurfaceView: else setBMLTvView  "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLTvView()V

    goto :goto_1
.end method
