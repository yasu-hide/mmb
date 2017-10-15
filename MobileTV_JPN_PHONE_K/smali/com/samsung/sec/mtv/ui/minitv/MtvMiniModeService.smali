.class public Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
.super Lcom/sec/android/app/minimode/MiniModeService;
.source "MtvMiniModeService.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;,
        Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;,
        Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;,
        Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;
    }
.end annotation


# static fields
.field private static final BOTTOM_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 1.02

.field private static final DNIe_UI_MODE:I = 0x0

.field private static final DNIe_VIDEO_MODE:I = 0x1

.field private static final HANDLE_ADJUST_X_Y_POSITION:I = 0xd

.field private static final HANDLE_CANCEL_EXIT:I = 0xc

.field private static final HANDLE_SINGLE_TOUCH:I = 0xb

.field private static final HANDLE_UPDATE_STATUS_TEXT:I = 0xe

.field private static final INIT_POS:I = -0x270f

.field private static final LEFT_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.4

.field private static final RIGHT_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D = 0.6

.field private static final SMOOTHING_FACTOR:F = 1.3f

.field private static final TAG:Ljava/lang/String; = "MtvMiniModeService"

.field private static final TOP_PERCENT_CAN_BE_OUTSIDE_OF_SCREEN:D

.field public static classname:Ljava/lang/String;

.field private static defaultSurfaceHeight:I

.field private static defaultSurfaceWidth:I

.field public static mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

.field private static mMtvFileIndex:I

.field private static maxScale:F

.field private static minScale:F

.field private static pivotX:I

.field private static pivotY:I

.field private static scaledHeight:I

.field private static scaledWidth:I


# instance fields
.field private final MTV_UI_FILE_PLAYER:Ljava/lang/String;

.field private final MTV_UI_LIVE_PLAYER:Ljava/lang/String;

.field private RunnableCallUpdatePresentation:Ljava/lang/Runnable;

.field private beginMiniModeTime:J

.field private currentScale:F

.field private currentSeekTime:I

.field private endMiniModeTime:J

.field private ignoreDoubleTap:Z

.field private isAppExiting:Z

.field private isScaling:Z

.field private mContext:Landroid/content/Context;

.field mDownNextX:I

.field mDownNextY:I

.field private mExitLayout:Landroid/widget/RelativeLayout;

.field final mForegroundToken:Landroid/os/IBinder;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field public mMediaRouter:Landroid/media/MediaRouter;

.field public final mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field public final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mPresentation:Landroid/app/Presentation;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleFactor:F

.field private mStatusText:Landroid/widget/TextView;

.field private mXpos:I

.field private mYpos:I

.field private miniMainView:Landroid/view/View;

.field presentationDisplay:Landroid/view/Display;

.field private prevExitVisible:Z

.field private runnableEnableDoubleTap:Ljava/lang/Runnable;

.field private screenHeight:I

.field private screenWidth:I

.field private selectedFileIndex:I

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    sput-object v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    .line 112
    sput-object v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 120
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->maxScale:F

    .line 121
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->minScale:F

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, -0x270f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/minimode/MiniModeService;-><init>()V

    .line 83
    const-string v0, "MtvUiLivePlayer"

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->MTV_UI_LIVE_PLAYER:Ljava/lang/String;

    .line 84
    const-string v0, "MtvUiFilePlayer"

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->MTV_UI_FILE_PLAYER:Ljava/lang/String;

    .line 85
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->miniMainView:Landroid/view/View;

    .line 86
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    .line 93
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 94
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    .line 96
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 97
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 98
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    .line 100
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->toast:Landroid/widget/Toast;

    .line 104
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 105
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 106
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isAppExiting:Z

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->ignoreDoubleTap:Z

    .line 109
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mStatusText:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 115
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 116
    iput v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    .line 122
    iput v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    .line 123
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isScaling:Z

    .line 127
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->prevExitVisible:Z

    .line 129
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mForegroundToken:Landroid/os/IBinder;

    .line 134
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->presentationDisplay:Landroid/view/Display;

    .line 142
    iput v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mDownNextX:I

    .line 143
    iput v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mDownNextY:I

    .line 146
    iput v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mXpos:I

    .line 147
    iput v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mYpos:I

    .line 567
    new-instance v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 899
    new-instance v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$2;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    .line 1272
    new-instance v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$3;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    .line 1295
    new-instance v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$4;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->RunnableCallUpdatePresentation:Ljava/lang/Runnable;

    .line 1338
    new-instance v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$5;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$5;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1347
    new-instance v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$6;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$6;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->runnableEnableDoubleTap:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    return p1
.end method

.method static synthetic access$032(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # F

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$040(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # F

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    div-float/2addr v0, p1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleFactor:F

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isScaling:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    return v0
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    return p0
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isScaling:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    return v0
.end method

.method static synthetic access$1202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    return p0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isAppExiting:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pauseMinimode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->closeOneseg(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->selectedFileIndex:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->ignoreDoubleTap:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->ignoreDoubleTap:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->checkIsCalling(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/view/ScaleGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->prevExitVisible:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->changeFilePlayMode()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->prevExitVisible:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mXpos:I

    return p1
.end method

.method static synthetic access$3202(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mYpos:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    return p0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    return v0
.end method

.method static synthetic access$602(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 79
    sput p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;
    .param p1, "x1"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    return p1
.end method

.method static synthetic access$800()F
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->minScale:F

    return v0
.end method

.method static synthetic access$900()F
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->maxScale:F

    return v0
.end method

.method private changeFilePlayMode()V
    .locals 1

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->resumeMinimode()V

    .line 959
    :goto_0
    return-void

    .line 957
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pauseMinimode()V

    goto :goto_0
.end method

.method private checkIsCalling(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->checkIsCalling()Z

    move-result v0

    return v0
.end method

.method private closeOneseg(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1225
    const-string v0, "MtvMiniModeService"

    const-string v1, "closeOneSeg"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isAppExiting:Z

    if-eqz v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1227
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isAppExiting:Z

    .line 1228
    invoke-virtual {p0, p1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->showToast(I)V

    .line 1229
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsLivePlayMiniMode(Z)V

    .line 1230
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFilePlayMiniMode(Z)V

    .line 1231
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 1232
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->loseFocus()V

    .line 1233
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->forceresetMtvVisibiltySettings(Landroid/content/Context;)Z

    .line 1234
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->releaseAndDeletePartialWakeLock()V

    .line 1235
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unregisterRecievers()V

    .line 1236
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    goto :goto_0
.end method

.method private isPaused()Z
    .locals 2

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pauseMinimode()V
    .locals 6

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->pause(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 1241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->endMiniModeTime:J

    .line 1242
    iget v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    iget-wide v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->endMiniModeTime:J

    iget-wide v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->beginMiniModeTime:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    .line 1243
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->loseFocus()V

    .line 1246
    :cond_0
    return-void
.end method

.method private registerIntents()V
    .locals 3

    .prologue
    .line 440
    const-string v1, "MtvMiniModeService"

    const-string v2, "registerIntents: entered "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 442
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 443
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    const-string v1, "intent.stop.app-in-app"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 445
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v1, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v1, "intent.finished.app-in-app"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v1, "android.media.IMediaPlayer.videoexist"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v1, "MTV_MINIMODE_AUDIO_FOCUS_LOSS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v1, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->is3LMEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    const-string v1, "android.action.emergencylockenabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 464
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 465
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 467
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 468
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 475
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string v1, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 479
    :cond_1
    return-void
.end method

.method private resumeMinimode()V
    .locals 2

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isRecordActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1250
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->resume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 1251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->beginMiniModeTime:J

    .line 1253
    :cond_0
    return-void
.end method

.method private setScreenRatio()V
    .locals 13

    .prologue
    const/16 v12, 0x3c

    .line 1178
    sget v9, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    int-to-float v9, v9

    sget v10, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    int-to-float v10, v10

    div-float v4, v9, v10

    .line 1180
    .local v4, "screenRatio":F
    const/4 v7, 0x0

    .local v7, "x":I
    const/4 v8, 0x0

    .local v8, "y":I
    const/4 v6, 0x0

    .local v6, "w":I
    const/4 v0, 0x0

    .line 1181
    .local v0, "h":I
    const-string v9, "MtvMiniModeService"

    const-string v10, "setScreenRatio landscape"

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1186
    const-string v9, "MtvMiniModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setScreenRatio LCD_HEIGHT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "LCD_WIDTH:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    :cond_0
    const v9, 0x3fe38e39

    invoke-static {v4, v9}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    .line 1191
    .local v5, "screentRatio_equality":I
    if-nez v5, :cond_3

    .line 1192
    const-string v9, "MtvMiniModeService"

    const-string v10, "setScreenRatio 16:9 NORMAL"

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    sget v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    .line 1194
    sget v9, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    div-int/lit8 v3, v9, 0x10

    .line 1195
    .local v3, "multiple_factor":I
    mul-int/lit8 v0, v3, 0x9

    .line 1204
    :goto_0
    sget v9, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    sub-int/2addr v9, v6

    div-int/lit8 v7, v9, 0x2

    .line 1205
    sget v9, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    sub-int/2addr v9, v0

    div-int/lit8 v8, v9, 0x2

    .line 1206
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1207
    const-string v9, "MtvMiniModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setScreenRatio x = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " y = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " w = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " h = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1210
    .local v1, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-virtual {v9, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1212
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1213
    .local v2, "lp1":Landroid/view/WindowManager$LayoutParams;
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1214
    iput v12, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1215
    const/16 v9, 0x33

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1216
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1217
    sget-boolean v9, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v9, :cond_2

    .line 1218
    iget v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v9, v9, 0x2000

    iput v9, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1219
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1220
    return-void

    .line 1197
    .end local v1    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "lp1":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "multiple_factor":I
    :cond_3
    const-string v9, "MtvMiniModeService"

    const-string v10, "setScreenRatio 4:3 NORMAL "

    invoke-static {v9, v10}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    sget v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    .line 1199
    sget v9, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    div-int/lit8 v3, v9, 0x3

    .line 1200
    .restart local v3    # "multiple_factor":I
    mul-int/lit8 v6, v3, 0x4

    goto :goto_0
.end method

.method private setStatusText(I)V
    .locals 4
    .param p1, "stringId"    # I

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1065
    return-void
.end method

.method private setWithinBounds(IIII)V
    .locals 5
    .param p1, "prevScaledWidth"    # I
    .param p2, "prevScaledHeight"    # I
    .param p3, "newX"    # I
    .param p4, "newY"    # I

    .prologue
    .line 415
    move v0, p3

    .line 416
    .local v0, "tempX":I
    move v1, p4

    .line 417
    .local v1, "tempY":I
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWithinBounds :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWithinBounds : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    if-ltz v2, :cond_0

    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    if-gt v2, v3, :cond_0

    .line 420
    if-gez p3, :cond_2

    .line 421
    const/4 v0, 0x0

    .line 427
    :cond_0
    :goto_0
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    if-ltz v2, :cond_1

    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    if-gt v2, v3, :cond_1

    .line 428
    if-gez p4, :cond_3

    .line 429
    const/4 v1, 0x0

    .line 435
    :cond_1
    :goto_1
    sput v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    .line 436
    sput v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    .line 437
    return-void

    .line 423
    :cond_2
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    add-int/2addr v2, p3

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    if-le v2, v3, :cond_0

    .line 424
    iget v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    sub-int v0, v2, v3

    goto :goto_0

    .line 431
    :cond_3
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    add-int/2addr v2, p4

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    if-le v2, v3, :cond_1

    .line 432
    iget v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    sub-int v1, v2, v3

    goto :goto_1
.end method

.method private unRegisterIntents()V
    .locals 2

    .prologue
    .line 484
    const-string v0, "MtvMiniModeService"

    const-string v1, "unregister()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    return-void
.end method


# virtual methods
.method public adjustSizeOnOrientationChange()V
    .locals 7

    .prologue
    .line 392
    const-string v4, "MtvMiniModeService"

    const-string v5, "adjustSizeOnOrientationChange"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 394
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lp.y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    .line 396
    .local v3, "prevScaledWidth":I
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    .line 397
    .local v2, "prevScaledHeight":I
    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    sget v5, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->maxScale:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 398
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->maxScale:F

    iput v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    .line 399
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    .line 400
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    sput v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    .line 401
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.width"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lp.height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 403
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 404
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledWidth:I

    sget v5, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->scaledHeight:I

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 405
    .local v1, "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-virtual {v4, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .end local v1    # "lp1":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setWithinBounds(IIII)V

    .line 408
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 409
    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 410
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pivotX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pivotY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->pivotY:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v4, "MtvMiniModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp.x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lp.y:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 413
    return-void
.end method

.method public hide()V
    .locals 6

    .prologue
    .line 491
    const-string v2, "MtvMiniModeService"

    const-string v3, "hide() :: calling MtvMinimode specific implementation..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 493
    invoke-super {p0}, Lcom/sec/android/app/minimode/MiniModeService;->hide()V

    .line 497
    :try_start_0
    const-string v2, "com.sec.android.app.minimode.MiniModeService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFirstShow"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 498
    .local v1, "isFirstShowMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 499
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 504
    const-string v2, "MtvMiniModeService"

    const-string v3, "setProcessForeground : false"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 521
    .end local v1    # "isFirstShowMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local v1    # "isFirstShowMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    .line 510
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isFirstShowMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 511
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 512
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 514
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 516
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 518
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 519
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public initScaleDetection()V
    .locals 6

    .prologue
    .line 237
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 238
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 239
    .local v0, "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 240
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 241
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    .line 242
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    .line 243
    const-string v3, "MtvMiniModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initScaleDetection screenWidth:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenHeight"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenWidth:I

    int-to-float v3, v3

    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->screenHeight:I

    int-to-float v4, v4

    sget v5, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sput v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->maxScale:F

    .line 245
    const-string v3, "MtvMiniModeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initScaleDetection maxScale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->maxScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public isOutsideOfScreenLimit(Landroid/view/MotionEvent;)Z
    .locals 30
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 778
    const/4 v14, 0x0

    .line 779
    .local v14, "retVal":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getWidth()I

    move-result v19

    .line 780
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->getHeight()I

    move-result v10

    .line 782
    .local v10, "height":I
    const/16 v17, 0x0

    .local v17, "screenWidth":I
    const/16 v16, 0x0

    .line 783
    .local v16, "screenHeight":I
    new-instance v9, Landroid/graphics/Point;

    invoke-direct {v9}, Landroid/graphics/Point;-><init>()V

    .line 784
    .local v9, "fullScreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v24, "window"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/WindowManager;

    .line 785
    .local v20, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v20 .. v20}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 786
    iget v0, v9, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    .line 787
    iget v0, v9, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 789
    const-wide/16 v24, 0x0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fd999999999999aL    # 0.4

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v11, v0

    .line 790
    .local v11, "leftLimit":I
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fe3333333333333L    # 0.6

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v15, v0

    .line 791
    .local v15, "rightLimit":I
    const-wide/16 v24, 0x0

    int-to-double v0, v10

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v18, v0

    .line 792
    .local v18, "topLimit":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v24, v0

    int-to-double v0, v10

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff051eb851eb852L    # 1.02

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v8, v0

    .line 794
    .local v8, "bottomLimit":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    iget v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 795
    .local v12, "nextX":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v23

    move-object/from16 v0, v23

    iget v13, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 797
    .local v13, "nextY":I
    if-gt v12, v11, :cond_b

    const/4 v5, 0x1

    .line 798
    .local v5, "blockLeft":Z
    :goto_0
    if-lt v12, v15, :cond_c

    const/4 v6, 0x1

    .line 799
    .local v6, "blockRight":Z
    :goto_1
    move/from16 v0, v18

    if-gt v13, v0, :cond_d

    const/4 v7, 0x1

    .line 800
    .local v7, "blockTop":Z
    :goto_2
    if-lt v13, v8, :cond_e

    const/4 v4, 0x1

    .line 802
    .local v4, "blockBottom":Z
    :goto_3
    if-nez v5, :cond_0

    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-eqz v4, :cond_a

    .line 803
    :cond_0
    const/4 v14, 0x1

    .line 805
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    packed-switch v23, :pswitch_data_0

    .line 815
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mDownNextX:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v12, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mDownNextY:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-ne v13, v0, :cond_1

    .line 816
    const/4 v14, 0x0

    .line 818
    :cond_1
    move/from16 v21, v12

    .line 819
    .local v21, "x":I
    move/from16 v22, v13

    .line 821
    .local v22, "y":I
    if-eqz v5, :cond_3

    .line 822
    if-le v12, v11, :cond_2

    .line 823
    const/4 v14, 0x0

    .line 825
    :cond_2
    move/from16 v21, v11

    .line 828
    :cond_3
    if-eqz v6, :cond_5

    .line 829
    if-ge v12, v15, :cond_4

    .line 830
    const/4 v14, 0x0

    .line 832
    :cond_4
    move/from16 v21, v15

    .line 835
    :cond_5
    if-eqz v7, :cond_7

    .line 836
    move/from16 v0, v18

    if-le v13, v0, :cond_6

    .line 837
    const/4 v14, 0x0

    .line 839
    :cond_6
    move/from16 v22, v18

    .line 842
    :cond_7
    if-eqz v4, :cond_9

    .line 843
    if-ge v13, v8, :cond_8

    .line 844
    const/4 v14, 0x0

    .line 846
    :cond_8
    move/from16 v22, v8

    .line 849
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setXY(II)V

    .line 850
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mXpos:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mYpos:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->move(II)V

    .line 853
    .end local v21    # "x":I
    .end local v22    # "y":I
    :cond_a
    return v14

    .line 797
    .end local v4    # "blockBottom":Z
    .end local v5    # "blockLeft":Z
    .end local v6    # "blockRight":Z
    .end local v7    # "blockTop":Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_0

    .line 798
    .restart local v5    # "blockLeft":Z
    :cond_c
    const/4 v6, 0x0

    goto :goto_1

    .line 799
    .restart local v6    # "blockRight":Z
    :cond_d
    const/4 v7, 0x0

    goto :goto_2

    .line 800
    .restart local v7    # "blockTop":Z
    :cond_e
    const/4 v4, 0x0

    goto :goto_3

    .line 807
    .restart local v4    # "blockBottom":Z
    :pswitch_0
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mDownNextX:I

    .line 808
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mDownNextY:I

    goto :goto_4

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onClose(I)Z
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v0, 0x1

    .line 250
    const-string v1, "MtvMiniModeService"

    const-string v2, "onClose"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    if-eq p1, v0, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 386
    const-string v0, "MtvMiniModeService"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    invoke-super {p0, p1}, Lcom/sec/android/app/minimode/MiniModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->initScaleDetection()V

    .line 389
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->adjustSizeOnOrientationChange()V

    .line 390
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const v3, 0x7f0a011e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 260
    const-string v1, "MtvMiniModeService"

    const-string v2, "onCreate: entered "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-super {p0}, Lcom/sec/android/app/minimode/MiniModeService;->onCreate()V

    .line 262
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    .line 263
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 264
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 265
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030031

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->miniMainView:Landroid/view/View;

    .line 266
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->miniMainView:Landroid/view/View;

    const v2, 0x7f0a011b

    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setContentView(Landroid/view/View;II)V

    .line 267
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 268
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->miniMainView:Landroid/view/View;

    const v2, 0x7f0a011c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    .line 269
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    new-instance v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$miniModeSurfaceOnTouchListener;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 270
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-virtual {v1, v5}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setKeepScreenOn(Z)V

    .line 275
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->miniMainView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    .line 276
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$OnExitTouchListener;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 279
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->miniMainView:Landroid/view/View;

    const v2, 0x7f0a011d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mStatusText:Landroid/widget/TextView;

    .line 281
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;

    invoke-direct {v3, p0, v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$SimpleGestureListener;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mGestureDetector:Landroid/view/GestureDetector;

    .line 282
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 283
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 286
    :cond_0
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;

    invoke-direct {v3, p0, v4}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$ScaleListener;-><init>(Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 290
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 292
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->enableDragRestriction(Z)V

    .line 293
    const/high16 v1, 0x43820000    # 260.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    .line 294
    const/high16 v1, 0x43120000    # 146.0f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    .line 295
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->ignoreDoubleTap:Z

    .line 296
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->runnableEnableDoubleTap:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    const-string v0, "MtvMiniModeService"

    const-string v1, "onDestroy: entered "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 340
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 341
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setKeepScreenOn(Z)V

    .line 343
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isAppExiting:Z

    if-eqz v0, :cond_1

    .line 344
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->unRegisterIntents()V

    .line 345
    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/minimode/MiniModeService;->onDestroy()V

    .line 346
    return-void
.end method

.method public onPlayerNotification(III)V
    .locals 9
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    const v8, 0x7f07027e

    const/16 v7, 0x6005

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 1068
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPlayerNotification command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    sparse-switch p1, :sswitch_data_0

    .line 1171
    const-string v2, "MtvMiniModeService"

    const-string v3, "Invalid CMD ignored..!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1073
    :sswitch_0
    const/16 v2, 0x6010

    if-ne v2, p2, :cond_6

    .line 1075
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPlayNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1076
    const v2, 0x7f070268

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setStatusText(I)V

    .line 1078
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1079
    sput v5, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    .line 1082
    :goto_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    aget-object v2, v2, v3

    sput-object v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 1084
    :goto_2
    sget-object v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1086
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1087
    sput v5, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    .line 1090
    :goto_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    aget-object v2, v2, v3

    sput-object v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    goto :goto_2

    .line 1081
    :cond_1
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    goto :goto_1

    .line 1089
    :cond_2
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    goto :goto_3

    .line 1092
    :cond_3
    sget-object v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v2, :cond_4

    .line 1094
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Next File Index to Play: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] mMtvFileIndex["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v1, 0x0

    .line 1096
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    sget-object v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v0

    .line 1097
    .local v0, "fileIndex":I
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/broadcast/helper/MtvURI;-><init>(ILjava/lang/String;I)V

    .line 1098
    .restart local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLocalTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1099
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v2, v3, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 1101
    .end local v0    # "fileIndex":I
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    :cond_4
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    iput v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->selectedFileIndex:I

    .line 1102
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    goto/16 :goto_0

    .line 1107
    :cond_5
    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 1108
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->stopPlaybackTimer()V

    .line 1109
    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->closeOneseg(I)V

    goto/16 :goto_0

    .line 1112
    :cond_6
    if-ne v7, p2, :cond_7

    .line 1114
    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setStatusText(I)V

    .line 1116
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v2, :cond_0

    .line 1117
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 1118
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1119
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 1120
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->updateCurrentAudioEffectAndMode()Z

    goto/16 :goto_0

    .line 1125
    :cond_7
    const-string v2, "MtvMiniModeService"

    const-string v3, "Status ignored in PLAY CMD..!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1132
    :sswitch_1
    packed-switch p2, :pswitch_data_0

    .line 1145
    const-string v2, "MtvMiniModeService"

    const-string v3, "Status ignored in STATUS_UPDT CMD..!!!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1139
    :pswitch_0
    const-string v2, "MtvMiniModeService"

    const-string v3, "closeOneSeg from STAT_SIGNAL_LOW"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-direct {p0, v8}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->closeOneseg(I)V

    goto/16 :goto_0

    .line 1154
    :sswitch_2
    if-ne p2, v7, :cond_0

    .line 1155
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v2, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 1156
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->reset()V

    .line 1157
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->reset()V

    .line 1158
    iput-boolean v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isAppExiting:Z

    .line 1160
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isConflictHandlerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->closeService()V

    .line 1163
    invoke-static {}, Lcom/samsung/sec/mtv/ui/conflict/MtvConflictHandler;->reset()V

    .line 1165
    :cond_8
    invoke-static {}, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;->releaseReservationWakeLock()V

    .line 1166
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->stopSelf()V

    goto/16 :goto_0

    .line 1069
    nop

    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0x5004 -> :sswitch_0
        0x500f -> :sswitch_2
    .end sparse-switch

    .line 1132
    :pswitch_data_0
    .packed-switch 0x600c
        :pswitch_0
    .end packed-switch
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 352
    const-string v0, "MtvMiniModeService"

    const-string v1, "onStartCommand: entered "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    if-eqz p1, :cond_3

    .line 354
    const-string v0, "currentSeekTime"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    .line 355
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->beginMiniModeTime:J

    .line 357
    :cond_0
    const-string v0, "class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    .line 359
    sget-object v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v1, "MtvUiFilePlayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    const-string v0, "selectedFileIndex"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->selectedFileIndex:I

    sput v0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    .line 362
    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 363
    const-string v0, "MtvMiniModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start File Index to Play: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] mMtvFileIndex["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)Z

    .line 368
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->playMiniMode()V

    .line 369
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->initScaleDetection()V

    .line 371
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 372
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->resumeMinimode()V

    .line 375
    :cond_2
    const-string v0, "media_router"

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouter:Landroid/media/MediaRouter;

    .line 376
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 380
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/minimode/MiniModeService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 1061
    return-void
.end method

.method public playMiniMode()V
    .locals 5

    .prologue
    .line 1029
    const-string v2, "MtvMiniModeService"

    const-string v3, "playMiniMode"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1032
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_1

    .line 1034
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 1035
    const/4 v1, 0x0

    .line 1036
    .local v1, "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v1

    .line 1038
    if-eqz v1, :cond_0

    .line 1039
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-interface {v1, v2}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 1041
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1042
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lp.width"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lp.height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceWidth:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1044
    sget v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->defaultSurfaceHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1045
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1046
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 1051
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->setScreenRatio()V

    .line 1052
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->registerIntents()V

    .line 1054
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v2, :cond_2

    .line 1055
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 1056
    :cond_2
    return-void
.end method

.method public setXY(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/16 v8, 0xd

    .line 759
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 760
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    :cond_0
    iput p1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mXpos:I

    .line 763
    iput p2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mYpos:I

    .line 765
    const/4 v2, 0x0

    .local v2, "screenWidth":I
    const/4 v1, 0x0

    .line 766
    .local v1, "screenHeight":I
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 767
    .local v0, "fullScreen":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 768
    .local v3, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 769
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 770
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 772
    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mXpos:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mYpos:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mXpos:I

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v4, v5

    if-gt v4, v2, :cond_1

    iget v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mYpos:I

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    if-le v4, v1, :cond_2

    .line 773
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 775
    :cond_2
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 526
    const-string v3, "MtvMiniModeService"

    const-string v4, "show() :: calling MtvMinimode specific implementation..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 528
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-virtual {v3, v5}, Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;->setVisibility(I)V

    .line 529
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 530
    const/4 v2, 0x0

    .line 531
    .local v2, "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v2

    .line 532
    if-eqz v2, :cond_1

    .line 533
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMiniTvSurface:Lcom/samsung/sec/mtv/ui/minitv/MtvUiMiniModeSurface;

    invoke-interface {v2, v3}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 536
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/minimode/MiniModeService;->show()V

    .line 540
    :try_start_0
    const-string v3, "com.sec.android.app.minimode.MiniModeService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isFirstShow"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 541
    .local v1, "isFirstShowMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 542
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v3

    if-eqz v3, :cond_0

    .line 545
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 547
    const-string v3, "MtvMiniModeService"

    const-string v4, "setProcessForeground : true"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    .line 565
    .end local v1    # "isFirstShowMethod":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 535
    :cond_1
    const-string v3, "MtvMiniModeService"

    const-string v4, "Control Interface is null ! "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 548
    .restart local v1    # "isFirstShowMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    .line 553
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "isFirstShowMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 555
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_2
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 557
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 559
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 561
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1
.end method

.method public showToast(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->toast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->toast:Landroid/widget/Toast;

    .line 1267
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1268
    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public switchToNormalMode()V
    .locals 8

    .prologue
    const/high16 v7, 0x14000000

    const/4 v6, 0x1

    .line 987
    const/4 v0, 0x0

    .line 988
    .local v0, "mIntent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 989
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "classname:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    sget-object v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->classname:Ljava/lang/String;

    const-string v2, "MtvUiLivePlayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 992
    .restart local v0    # "mIntent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 993
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1020
    :goto_0
    const-string v1, "MtvMiniModeService"

    const-string v2, "Start Activity"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->stopSelf()V

    .line 1023
    return-void

    .line 997
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "mIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 998
    .restart local v0    # "mIntent":Landroid/content/Intent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->endMiniModeTime:J

    .line 999
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old currentSeekTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1001
    iget v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    iget-wide v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->endMiniModeTime:J

    iget-wide v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->beginMiniModeTime:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    .line 1004
    :cond_1
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated currentSeekTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    const-string v1, "currentSeekTime"

    iget v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->currentSeekTime:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1006
    const-string v1, "isStartedFromMiniMode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1007
    const-string v1, "startFilePlayer"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1009
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1011
    const-string v1, "MtvMiniModeService"

    const-string v2, "startFilePlayer MTV_UPDATE_FRAG_CMD_DIALOGS_LAUNCH_FILE_PLAYER"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string v1, "MtvMiniModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected file index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->selectedFileIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string v1, "MtvFile"

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->selectedFileIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1016
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1017
    const-string v1, "MtvMiniModeService"

    const-string v2, "Starting Fileplayer via Liveplayer"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public updatePresentation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1303
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 1305
    .local v0, "route":Landroid/media/MediaRouter$RouteInfo;
    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->presentationDisplay:Landroid/view/Display;

    .line 1306
    if-eqz v0, :cond_0

    .line 1307
    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->presentationDisplay:Landroid/view/Display;

    .line 1309
    :cond_0
    const-string v2, "MtvMiniModeService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updatePresentation :: presentationDisplay ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->presentationDisplay:Landroid/view/Display;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mPresentation ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->presentationDisplay:Landroid/view/Display;

    if-eqz v2, :cond_4

    .line 1315
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    .line 1317
    .local v1, "state":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_4

    .line 1318
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1321
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 1322
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mExitLayout:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1326
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mMediaRouterCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 1328
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    if-eqz v2, :cond_3

    .line 1329
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v2}, Landroid/app/Presentation;->dismiss()V

    .line 1330
    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->mPresentation:Landroid/app/Presentation;

    .line 1333
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;->switchToNormalMode()V

    .line 1336
    .end local v1    # "state":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_4
    return-void
.end method
