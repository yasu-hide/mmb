.class public Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
.source "MtvUiFilePlayer.java"

# interfaces
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/ui/bml/IMtvUiBmlActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;,
        Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MtvTmpFileManagerRunnable;,
        Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;,
        Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;
    }
.end annotation


# static fields
.field public static final FILE_INDEX:Ljava/lang/String; = "fileIndex"

.field public static final FILE_UPDATE_TIME:Ljava/lang/String; = "fileUpdateTime"

.field public static final FLING_MAJOR_MOVE:I = 0x64

.field private static final IS_STARTED_FROM_MINI_MODE:Ljava/lang/String; = "isStartedFromMiniMode"

.field private static final TAG:Ljava/lang/String; = "MtvUiFilePlayer"

.field private static final TIMEOUT_EXTRA_INTERVAL_VALUE:I = 0x3e8

.field private static final TIMEOUT_INTERVAL_VALUE:I = 0x1388

.field public static final TV_FILES_LIST:Ljava/lang/String; = "tvFilesList"

.field private static mCurrTrickMode:I

.field private static mCurrTrickSpeed:I

.field public static mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

.field private static mMtvFileIndex:I

.field private static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private IsBMLFullView:Z

.field private RunnableRemoveRotateButton:Ljava/lang/Runnable;

.field private RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

.field private isPauseTrickMode:Z

.field private isPausedInMiniMode:Z

.field private isStartedFromMiniMode:Z

.field private mCallStateListener:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;

.field private mChannelGestureDetector:Landroid/view/GestureDetector;

.field private mImage:Landroid/widget/ImageView;

.field private mImgViewerScreen:Landroid/widget/AbsoluteLayout;

.field private mLocalUiMsgHandler:Landroid/os/Handler;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

.field private mRunnableUpdateFragsBasedOnLockState:Ljava/lang/Runnable;

.field private mVidViewerScreen:Landroid/widget/AbsoluteLayout;

.field rotateLayout1:Landroid/widget/RelativeLayout;

.field rotateLayout2:Landroid/widget/RelativeLayout;

.field private runnableMenuKeyPress:Ljava/lang/Runnable;

.field private runnableVolumeDecreasing:Ljava/lang/Runnable;

.field private runnableVolumeEscalating:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    sput-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 95
    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    .line 109
    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 110
    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 2589
    sput-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;-><init>()V

    .line 87
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewerScreen:Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVidViewerScreen:Landroid/widget/AbsoluteLayout;

    .line 97
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 98
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 101
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isStartedFromMiniMode:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPausedInMiniMode:Z

    .line 117
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 119
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPauseTrickMode:Z

    .line 120
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCallStateListener:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;

    .line 125
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$1;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->postHeadsetUpdate:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$2;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    .line 148
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$3;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    .line 537
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$7;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$7;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    .line 648
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$8;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$8;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableUpdateFragsBasedOnLockState:Ljava/lang/Runnable;

    .line 991
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$9;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    .line 2132
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$18;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    .line 2145
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$19;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$19;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    .line 2159
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$20;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$20;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableMenuKeyPress:Ljava/lang/Runnable;

    .line 2717
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateFragsBasedOnLockState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getStatusBarText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->invalidateViews()V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadNextFile()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadCurrentFileUI()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadPrevFile()V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateCaptions()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setScreenRatio(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;I[I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
    .param p1, "x1"    # I
    .param p2, "x2"    # [I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPrevNextEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->showControl()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5400()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    return v0
.end method

.method static synthetic access$5500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->handleUnlock()V

    return-void
.end method

.method static synthetic access$6000(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    return v0
.end method

.method static synthetic access$7200()I
    .locals 1

    .prologue
    .line 85
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;Z[I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;
    .param p1, "x1"    # Z
    .param p2, "x2"    # [I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private varargs addRemoveResetFragments(I[I)V
    .locals 13
    .param p1, "addRemoveReset"    # I
    .param p2, "timeout"    # [I

    .prologue
    const/16 v12, 0x191

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 2952
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "addRemoveResetFragments"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    const/16 v8, 0x1388

    .line 2954
    .local v8, "timeoutFragment":I
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v6

    .line 2955
    .local v6, "fileFormat":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v7

    .line 2956
    .local v7, "orientation":I
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 2957
    aget v8, p2, v4

    .line 2958
    :cond_0
    const/16 v0, 0xe1

    if-ne p1, v0, :cond_8

    .line 2960
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2962
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2963
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2965
    if-ne v11, v6, :cond_3

    .line 2966
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2967
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2968
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2979
    :goto_0
    new-array v0, v4, [I

    invoke-direct {p0, v10, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 2980
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v0

    if-lez v0, :cond_2

    .line 2981
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2982
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2983
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3046
    :cond_2
    :goto_1
    return-void

    .line 2971
    :cond_3
    if-ne v7, v10, :cond_4

    .line 2972
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_0

    .line 2974
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2975
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2976
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2988
    :cond_5
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "removing fragments"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2990
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2991
    if-ne v7, v10, :cond_6

    .line 2992
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2999
    :goto_2
    new-array v0, v4, [I

    invoke-direct {p0, v4, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 3000
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3001
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3003
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne v7, v10, :cond_2

    .line 3004
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_1

    .line 2994
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2995
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x75

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2996
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2997
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 3012
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    if-nez v0, :cond_a

    .line 3013
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3014
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 3017
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3020
    :cond_a
    if-ne v7, v10, :cond_d

    move v9, v8

    .line 3021
    .local v9, "timeout_frag":I
    :goto_4
    if-eq v11, v6, :cond_f

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3022
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3023
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 3026
    :goto_5
    if-nez v7, :cond_b

    .line 3027
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3028
    if-lez v8, :cond_b

    .line 3029
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3038
    :cond_b
    :goto_6
    new-array v0, v10, [I

    aput v8, v0, v4

    invoke-direct {p0, v10, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 3039
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v0

    if-lez v0, :cond_2

    .line 3040
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3041
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3042
    if-lez v8, :cond_2

    .line 3043
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    int-to-long v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 3015
    .end local v9    # "timeout_frag":I
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3016
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v8

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_3

    .line 3020
    :cond_d
    const/4 v9, -0x1

    goto :goto_4

    .line 3025
    .restart local v9    # "timeout_frag":I
    :cond_e
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_5

    .line 3033
    :cond_f
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3034
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto :goto_6

    .line 3036
    :cond_10
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    int-to-long v2, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_6
.end method

.method private clearCaptionView()V
    .locals 2

    .prologue
    .line 1204
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "Inside Clear caption"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1206
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1209
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1210
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1214
    :cond_1
    return-void
.end method

.method private clearNotification()V
    .locals 2

    .prologue
    .line 2592
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "clearNotification..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2593
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2594
    return-void
.end method

.method private drawImageFile()V
    .locals 18

    .prologue
    .line 332
    const/4 v12, 0x0

    .line 333
    .local v12, "stream":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 334
    .local v2, "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/4 v4, 0x0

    .line 335
    .local v4, "decBuf":Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .line 339
    .local v9, "inputData":Ljava/nio/ByteBuffer;
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    sget-object v14, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v14}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .local v13, "stream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;

    const/4 v14, 0x2

    invoke-direct {v3, v14}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;-><init>(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 341
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .local v3, "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    const/4 v11, 0x0

    .line 342
    .local v11, "outSize":I
    const/4 v8, 0x0

    .line 344
    .local v8, "inSize":I
    const/4 v14, 0x2

    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v15

    invoke-virtual {v15}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    invoke-virtual {v3, v14, v15}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->getOutputSize(II)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    .line 350
    :goto_0
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v14

    long-to-int v8, v14

    .line 356
    :goto_1
    if-lez v11, :cond_1

    if-lez v8, :cond_1

    .line 358
    :try_start_4
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 361
    :try_start_5
    invoke-virtual {v13}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v14

    long-to-int v14, v14

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v9

    .line 367
    :goto_2
    const/4 v10, -0x1

    .line 369
    .local v10, "numbrerOfBytesRead":I
    if-eqz v9, :cond_0

    .line 370
    :try_start_6
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    .line 371
    :cond_0
    const-string v14, "MtvUiFilePlayer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " numbrerOfBytesRead "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 376
    :goto_3
    :try_start_7
    invoke-virtual {v3, v9, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;->decryptData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    .line 377
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    invoke-static/range {v15 .. v17}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v14, :cond_1

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    sget v15, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    invoke-virtual {v14, v15}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 386
    .end local v10    # "numbrerOfBytesRead":I
    :cond_1
    if-eqz v13, :cond_2

    .line 387
    :try_start_8
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_2
    move-object v2, v3

    .end local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    move-object v12, v13

    .line 394
    .end local v8    # "inSize":I
    .end local v11    # "outSize":I
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :cond_3
    :goto_4
    return-void

    .line 345
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "inSize":I
    .restart local v11    # "outSize":I
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    .line 346
    .local v6, "e1":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 382
    .end local v6    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    move-object v12, v13

    .line 383
    .end local v8    # "inSize":I
    .end local v11    # "outSize":I
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 386
    if-eqz v12, :cond_3

    .line 387
    :try_start_b
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_4

    .line 390
    :catch_2
    move-exception v5

    .line 391
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 351
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "inSize":I
    .restart local v11    # "outSize":I
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .line 353
    .local v7, "e2":Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 385
    .end local v7    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    move-object v2, v3

    .end local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    move-object v12, v13

    .line 386
    .end local v8    # "inSize":I
    .end local v11    # "outSize":I
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v12, :cond_4

    .line 387
    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 392
    :cond_4
    :goto_7
    throw v14

    .line 362
    .end local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v8    # "inSize":I
    .restart local v11    # "outSize":I
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v5

    .line 363
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_e
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 372
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v10    # "numbrerOfBytesRead":I
    :catch_5
    move-exception v6

    .line 373
    .restart local v6    # "e1":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_3

    .line 390
    .end local v6    # "e1":Ljava/io/IOException;
    .end local v10    # "numbrerOfBytesRead":I
    :catch_6
    move-exception v5

    .line 391
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    .restart local v2    # "cryptoInst":Lcom/samsung/sec/mtv/utility/MtvUtilCrypto;
    move-object v12, v13

    .line 393
    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 390
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "inSize":I
    .end local v11    # "outSize":I
    :catch_7
    move-exception v5

    .line 391
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 385
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    goto :goto_6

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v14

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 382
    :catch_8
    move-exception v5

    goto :goto_5

    .end local v12    # "stream":Ljava/io/FileInputStream;
    .restart local v13    # "stream":Ljava/io/FileInputStream;
    :catch_9
    move-exception v5

    move-object v12, v13

    .end local v13    # "stream":Ljava/io/FileInputStream;
    .restart local v12    # "stream":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method private getLocalVideoSurfaceView(Z)Landroid/view/SurfaceView;
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1060
    if-nez p1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1064
    :goto_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    :goto_1
    return-object v0

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 1064
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mHiddenSurfaceView:Landroid/view/SurfaceView;

    goto :goto_1
.end method

.method private getStatusBarText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 546
    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No Program Name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "programName":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getChannelName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 546
    .end local v0    # "programName":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleUnlock()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2181
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setPhoneLocked(Z)V

    .line 2182
    new-array v0, v2, [I

    const/16 v1, 0x1388

    aput v1, v0, v4

    invoke-direct {p0, v2, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 2183
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->unhideAllFragments()V

    .line 2184
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2185
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableUpdateFragsBasedOnLockState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2186
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    .line 2187
    const/16 v0, 0xbb

    invoke-virtual {p0, v0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    .line 2189
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->showControl()V

    .line 2190
    return-void
.end method

.method private initMtvFilePlayer()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/16 v6, 0x12d

    .line 1217
    const-string v3, "MtvUiFilePlayer"

    const-string v4, "initMtvFilePlayer..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 1221
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1222
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPausedInMiniMode:Z

    if-eqz v3, :cond_0

    .line 1224
    const/16 v3, 0x117

    invoke-virtual {p0, v3, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    .line 1225
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPausedInMiniMode:Z

    .line 1227
    :cond_0
    const/4 v0, 0x0

    .line 1228
    .local v0, "isContextDifferent":Z
    const/4 v1, 0x0

    .line 1230
    .local v1, "isCurrentSessionClosing":Z
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    const/16 v4, 0x500e

    if-ne v3, v4, :cond_1

    .line 1232
    const/4 v1, 0x1

    .line 1234
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v3, v4, :cond_3

    .line 1236
    :cond_2
    const/4 v0, 0x1

    .line 1237
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const v5, 0x7f07021d

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1238
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLocalTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1239
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    .line 1240
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v3, :cond_3

    .line 1242
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 1246
    :cond_3
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 1248
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    .line 1251
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1253
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->registerVideoSurfaceView(Z)V

    .line 1254
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3, v7}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1258
    :cond_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateCaptions()V

    .line 1260
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1261
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadImageFile()V

    .line 1283
    :cond_5
    :goto_0
    return-void

    .line 1265
    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    .line 1267
    :cond_7
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadVideoFile()V

    goto :goto_0

    .line 1271
    :cond_8
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 1272
    .local v2, "pbState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const-string v3, "MtvUiFilePlayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pbState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_9

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_a

    .line 1275
    :cond_9
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1276
    :cond_a
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v3, :cond_b

    .line 1277
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const v5, 0x7f070268

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1278
    :cond_b
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_5

    .line 1279
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadVideoFile()V

    goto :goto_0
.end method

.method private initViewControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setContentView(I)V

    .line 419
    const v0, 0x7f0a002a

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    .line 420
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$4;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$4;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    const v0, 0x7f0a0030

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    .line 430
    const v0, 0x7f0a0023

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mAnimationlayout:Landroid/widget/RelativeLayout;

    .line 431
    const v0, 0x7f0a0024

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mAnimationImage:Landroid/widget/ImageView;

    .line 432
    const/high16 v0, 0x7f040000

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->rotatingAnimation:Landroid/view/animation/Animation;

    .line 433
    const v0, 0x7f0a0025

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mTxtAnimation:Landroid/widget/TextView;

    .line 434
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mAnimationlayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    .line 437
    const v0, 0x7f0a0021

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mHiddenSurfaceView:Landroid/view/SurfaceView;

    .line 438
    const v0, 0x7f0a001d

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewerScreen:Landroid/widget/AbsoluteLayout;

    .line 439
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVidViewerScreen:Landroid/widget/AbsoluteLayout;

    .line 440
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 441
    const v0, 0x7f0a0028

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    .line 443
    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    .line 444
    const v0, 0x7f0a001e

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImage:Landroid/widget/ImageView;

    .line 446
    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    .line 447
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 449
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$5;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 477
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$ChannelGestureListener;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mChannelGestureDetector:Landroid/view/GestureDetector;

    .line 478
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setImageViewDuringNoChannel(Z)V

    .line 480
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setScreen()V

    .line 481
    return-void
.end method

.method private invalidateViews()V
    .locals 4

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->clearCaptionView()V

    .line 557
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setBMLLayoutFullView(Z)V

    .line 560
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->closeOptionsMenu()V

    .line 561
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x89

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 562
    return-void
.end method

.method private isPrevNextEnabled()Z
    .locals 4

    .prologue
    .line 1627
    const/4 v0, 0x0

    .line 1628
    .local v0, "mbPrevNextEnabled":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    .line 1629
    .local v1, "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlayerCommand()I

    move-result v2

    .line 1631
    .local v2, "playerCommand":I
    const/16 v3, 0x5000

    if-ne v3, v2, :cond_2

    .line 1632
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v3, v1, :cond_0

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v3, v1, :cond_0

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v1, :cond_1

    .line 1633
    :cond_0
    const/4 v0, 0x1

    .line 1641
    :cond_1
    :goto_0
    return v0

    .line 1635
    :cond_2
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v1, :cond_3

    const/16 v3, 0x5009

    if-eq v3, v2, :cond_5

    :cond_3
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v1, :cond_4

    const/16 v3, 0x500a

    if-eq v3, v2, :cond_5

    :cond_4
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v1, :cond_1

    const/16 v3, 0x500b

    if-ne v3, v2, :cond_1

    .line 1638
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStartOfClip(I)Z
    .locals 4
    .param p1, "timeInMillis"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2464
    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 2466
    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    if-ne v2, v0, :cond_2

    .line 2468
    add-int/lit16 v2, p1, -0x7d0

    if-gtz v2, :cond_1

    .line 2481
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 2468
    goto :goto_0

    .line 2470
    :cond_2
    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2472
    add-int/lit16 v2, p1, -0x2710

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2476
    goto :goto_0

    :cond_4
    move v0, v1

    .line 2481
    goto :goto_0
.end method

.method private loadCurrentFileUI()V
    .locals 2

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setScreen()V

    .line 299
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->showControl()V

    .line 300
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateFragsBasedOnLockState()V

    .line 302
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 306
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 307
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadImageFile()V

    .line 310
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadVideoFile()V

    goto :goto_0
.end method

.method private loadImageFile()V
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFileFormatImage(Z)V

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v2, :cond_1

    .line 317
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->stopBmlContrlFragment()V

    .line 320
    :cond_1
    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v2, :cond_2

    .line 321
    const/4 v1, 0x0

    .line 322
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v0

    .line 323
    .local v0, "fileIndex":I
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLocalTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 324
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/broadcast/helper/MtvURI;-><init>(ILjava/lang/String;I)V

    .line 325
    .restart local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v2, v3, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 328
    .end local v0    # "fileIndex":I
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    :cond_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->drawImageFile()V

    .line 329
    return-void
.end method

.method private loadNextFile()V
    .locals 2

    .prologue
    .line 253
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 254
    const/4 v0, 0x0

    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    .line 258
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 259
    return-void

    .line 256
    :cond_0
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    goto :goto_0
.end method

.method private loadNextFileHover()V
    .locals 3

    .prologue
    .line 273
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "loadNextFileHover is called....:"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v1, :cond_0

    .line 276
    sget v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 277
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 280
    .local v0, "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setNextFileInfo(Ljava/lang/String;)V

    .line 282
    .end local v0    # "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_0
    return-void

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    .restart local v0    # "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    goto :goto_0
.end method

.method private loadPrevFile()V
    .locals 2

    .prologue
    .line 262
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    if-nez v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    aget-object v0, v0, v1

    sput-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 268
    return-void

    .line 265
    :cond_0
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    goto :goto_0
.end method

.method private loadPrevFileHover()V
    .locals 3

    .prologue
    .line 285
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "loadPrevFileHover is called....:"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v1, :cond_0

    .line 288
    sget v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    if-nez v1, :cond_1

    .line 289
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .line 293
    .local v0, "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setPreFileInfo(Ljava/lang/String;)V

    .line 295
    .end local v0    # "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    .restart local v0    # "mtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    goto :goto_0
.end method

.method private loadVideoFile()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 397
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFileFormatImage(Z)V

    .line 399
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 400
    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v4, 0x12d

    const v5, 0x7f070268

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v2, :cond_1

    .line 402
    const/4 v1, 0x0

    .line 403
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v0

    .line 404
    .local v0, "fileIndex":I
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v2, 0x1

    invoke-direct {v1, v2, v6, v0}, Landroid/broadcast/helper/MtvURI;-><init>(ILjava/lang/String;I)V

    .line 405
    .restart local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLocalTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 406
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v2, v3, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 408
    .end local v0    # "fileIndex":I
    .end local v1    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v2, :cond_2

    .line 409
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    sget v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    .line 410
    :cond_2
    return-void
.end method

.method private postLockUpdate(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V
    .locals 3
    .param p1, "fragType"    # Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x70

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 646
    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_0

    .line 486
    new-instance v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$6;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 497
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 498
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 499
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "registerContentObserver - mRotationObserver is registered"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .end local v0    # "mUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private setCaptionText()V
    .locals 3

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1172
    .local v0, "result":Landroid/text/SpannableStringBuilder;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getCaption()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgCaptionComponent;->getBuffer()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 1174
    :cond_0
    if-eqz v0, :cond_1

    .line 1175
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImageViewDuringNoChannel(Z)V
    .locals 3
    .param p1, "noChannel"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1309
    if-eqz p1, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1311
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1316
    :goto_0
    return-void

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1314
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewNoChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private varargs setRotateButtonVisibility(Z[I)V
    .locals 6
    .param p1, "flag"    # Z
    .param p2, "timeout"    # [I

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 512
    const/16 v0, 0x1388

    .line 513
    .local v0, "timeoutFragment":I
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    .line 514
    aget v0, p2, v3

    .line 515
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v1

    if-nez v1, :cond_4

    .line 516
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 517
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 518
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 520
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    if-nez v1, :cond_1

    .line 521
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRequestedOrientation(I)V

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    if-nez v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 525
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    if-lez v0, :cond_1

    .line 527
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 532
    :cond_4
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotateButtonFilePlayer:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 533
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveRotateButton:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 240
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewerScreen:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 242
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVidViewerScreen:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v3}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImgViewerScreen:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v3}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVidViewerScreen:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private setScreenRatio(I)V
    .locals 14
    .param p1, "value"    # I

    .prologue
    const/high16 v13, 0x43b40000    # 360.0f

    .line 2534
    const v7, 0x3fe38e39

    .line 2535
    .local v7, "screenRatio":F
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 2536
    .local v4, "mContext":Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v6

    .line 2540
    .local v6, "orientation":I
    const/4 v9, 0x0

    .local v9, "x":I
    const/4 v10, 0x0

    .local v10, "y":I
    const/4 v8, 0x0

    .local v8, "w":I
    const/4 v2, 0x0

    .line 2542
    .local v2, "h":I
    const/4 v11, 0x1

    if-ne v6, v11, :cond_1

    .line 2543
    const-string v11, "MtvUiFilePlayer"

    const-string v12, "setScreenRatio landscape"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    invoke-static {v13, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v0, v11

    .line 2545
    .local v0, "LCD_HEIGHT":I
    const/high16 v11, 0x44200000    # 640.0f

    invoke-static {v11, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v1, v11

    .line 2553
    .local v1, "LCD_WIDTH":I
    :goto_0
    const-string v11, "MtvUiFilePlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenRatio LCD_HEIGHT:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "LCD_WIDTH:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2556
    const v11, 0x3fe38e39

    cmpl-float v11, v7, v11

    if-nez v11, :cond_3

    .line 2557
    if-nez p1, :cond_2

    .line 2558
    const-string v11, "MtvUiFilePlayer"

    const-string v12, "setScreenRatio 16:9 NORMAL"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    move v8, v1

    .line 2561
    div-int/lit8 v5, v1, 0x10

    .line 2562
    .local v5, "multiple_factor":I
    mul-int/lit8 v2, v5, 0x9

    .line 2581
    .end local v5    # "multiple_factor":I
    :goto_1
    sub-int v11, v1, v8

    div-int/lit8 v9, v11, 0x2

    .line 2582
    sub-int v11, v0, v2

    div-int/lit8 v10, v11, 0x2

    .line 2583
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2584
    const-string v11, "MtvUiFilePlayer"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setScreenRatio x = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " y = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " w = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " h = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    :cond_0
    new-instance v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v3, v8, v2, v9, v10}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 2586
    .local v3, "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    iget-object v11, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v11, v3}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2587
    return-void

    .line 2547
    .end local v0    # "LCD_HEIGHT":I
    .end local v1    # "LCD_WIDTH":I
    .end local v3    # "lp":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_1
    const-string v11, "MtvUiFilePlayer"

    const-string v12, "setScreenRatio portrait"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    const/high16 v11, 0x434b0000    # 203.0f

    invoke-static {v11, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v0, v11

    .line 2549
    .restart local v0    # "LCD_HEIGHT":I
    invoke-static {v13, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v11

    float-to-int v1, v11

    .restart local v1    # "LCD_WIDTH":I
    goto/16 :goto_0

    .line 2564
    :cond_2
    const-string v11, "MtvUiFilePlayer"

    const-string v12, "setScreenRatio 16:9 ENLARGE "

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2565
    move v8, v1

    .line 2566
    move v2, v0

    goto :goto_1

    .line 2569
    :cond_3
    if-nez p1, :cond_4

    .line 2570
    const-string v11, "MtvUiFilePlayer"

    const-string v12, "setScreenRatio 4:3 NORMAL "

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    move v2, v0

    .line 2572
    div-int/lit8 v5, v0, 0x3

    .line 2573
    .restart local v5    # "multiple_factor":I
    mul-int/lit8 v8, v5, 0x4

    goto :goto_1

    .line 2575
    .end local v5    # "multiple_factor":I
    :cond_4
    const-string v11, "MtvUiFilePlayer"

    const-string v12, "setScreenRatio 4:3 ENLARGE "

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    move v8, v1

    .line 2577
    move v2, v0

    goto/16 :goto_1
.end method

.method private showControl()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const-wide/16 v2, 0x1388

    const/16 v10, 0x191

    const/4 v4, 0x0

    .line 159
    const-wide/16 v8, -0x1

    .line 160
    .local v8, "timeOut":J
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v6

    .line 161
    .local v6, "fileFormat":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v7

    .line 164
    .local v7, "orientation":I
    if-ne v7, v11, :cond_0

    .line 165
    const-wide/16 v8, 0x1388

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 172
    :cond_1
    const/4 v0, 0x2

    if-ne v0, v6, :cond_7

    .line 173
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_BMLBASIC:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_4

    .line 184
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 185
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_6

    .line 194
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 235
    :cond_3
    :goto_1
    new-array v0, v11, [I

    const/16 v1, 0x1388

    aput v1, v0, v4

    invoke-direct {p0, v11, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 236
    return-void

    .line 188
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-nez v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 190
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 196
    :cond_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_1

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 203
    :cond_8
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_a

    .line 210
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 211
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_c

    .line 220
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    move-wide v2, v8

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_1

    .line 214
    :cond_a
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-nez v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 216
    :cond_b
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 225
    :cond_c
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 227
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x7b

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 228
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_1
.end method

.method private startVolumeControlBar()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x1770

    const/4 v7, 0x1

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    .line 2004
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v6

    .line 2006
    .local v6, "orientation":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2007
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "onTouchEvent, adding status fragment"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2008
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2009
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2010
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2019
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2020
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v7, [I

    const v7, 0x7f0a0032

    aput v7, v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2024
    :goto_1
    return-void

    .line 2013
    :cond_1
    if-ne v6, v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2014
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 2015
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_0

    .line 2022
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto :goto_1
.end method

.method private unregisterContentObserver()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRotationObserver:Landroid/database/ContentObserver;

    .line 507
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "unregisterContentObserver - mRotationObserver is unregistered"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    return-void
.end method

.method private updateCaptions()V
    .locals 2

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1189
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setCaptionText()V

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFragsBasedOnLockState()V
    .locals 15

    .prologue
    const/16 v14, 0x194

    const-wide/16 v2, -0x1

    const/4 v13, 0x2

    const/4 v4, 0x0

    .line 567
    const-string v0, "MtvUiFilePlayer"

    const-string v5, "updateFragsBasedOnLockState..."

    invoke-static {v0, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v12

    .line 569
    .local v12, "orientation":I
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_NONE:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 570
    .local v1, "fragType":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    if-ne v0, v13, :cond_1

    .line 571
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    .line 575
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-nez v0, :cond_2

    .line 577
    const-string v0, "MtvUiFilePlayer"

    const-string v2, "updateFragsBasedOnLockState: fragHandler is null "

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_0
    :goto_1
    return-void

    .line 573
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    goto :goto_0

    .line 581
    :cond_2
    if-nez v12, :cond_8

    .line 583
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 585
    const-string v0, "MtvUiFilePlayer"

    const-string v5, "FilePlayer in lock mode...disable all listeners"

    invoke-static {v0, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 592
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    new-array v5, v13, [I

    fill-array-data v5, :array_0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 639
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_1

    .line 597
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->postLockUpdate(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2

    .line 602
    :cond_5
    const-string v0, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FilePlayer not in lock mode...enable back listeners:: fragHandler.isFragPresent(FRAG_TYPE.TYPE_STATUS_BAR):: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isBmlFullView(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 606
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v7, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v11, v4, [I

    move-wide v8, v2

    move v10, v4

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 608
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v5, 0x191

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 611
    :cond_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 613
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    new-array v5, v13, [I

    fill-array-data v5, :array_1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 618
    :goto_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 616
    :cond_7
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->postLockUpdate(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_3

    .line 623
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 625
    const-string v0, "MtvUiFilePlayer"

    const-string v2, "FilePlayer in lock mode...disable all listeners"

    invoke-static {v0, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 627
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 629
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 630
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_2

    .line 635
    :cond_a
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 594
    :array_0
    .array-data 4
        0x7f0a0031
        0x1
    .end array-data

    .line 613
    :array_1
    .array-data 4
        0x7f0a0031
        0x0
    .end array-data
.end method

.method private updateTrickParams(I)V
    .locals 4
    .param p1, "requestedMode"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1592
    if-ne p1, v2, :cond_3

    .line 1594
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    if-ne v0, v3, :cond_1

    .line 1596
    sput v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1597
    sput v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 1625
    :cond_0
    :goto_0
    return-void

    .line 1601
    :cond_1
    sput v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1602
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    if-nez v0, :cond_2

    .line 1603
    sput v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    goto :goto_0

    .line 1604
    :cond_2
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    if-ne v0, v1, :cond_0

    .line 1605
    sput v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    goto :goto_0

    .line 1608
    :cond_3
    if-ne p1, v3, :cond_0

    .line 1610
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    if-ne v0, v2, :cond_4

    .line 1612
    sput v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1613
    sput v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    goto :goto_0

    .line 1617
    :cond_4
    sput v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1618
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    if-nez v0, :cond_5

    .line 1619
    sput v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    goto :goto_0

    .line 1620
    :cond_5
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    if-ne v0, v1, :cond_0

    .line 1621
    sput v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    goto :goto_0
.end method


# virtual methods
.method public checkIsFileRunning()V
    .locals 7

    .prologue
    .line 2656
    const/4 v2, 0x0

    .line 2657
    .local v2, "mTmpMtvFile":Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    .line 2658
    .local v3, "mTmpMtvFileList":[Lcom/samsung/sec/mtv/provider/MtvFile;
    const/4 v0, 0x0

    .line 2659
    .local v0, "fileisTher":Z
    const-string v4, "MtvUiFilePlayer"

    const-string v5, "onMtvAppLiveBroadcastNotify MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT/MTVAPP_ANDROID_SERVICE_MEDIA_EJECT"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    if-nez v3, :cond_1

    .line 2663
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    .line 2686
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 2669
    aget-object v2, v3, v1

    .line 2670
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT for loop"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2674
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT: FILE iS THERE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2675
    const/4 v0, 0x1

    .line 2681
    :cond_2
    if-nez v0, :cond_0

    .line 2683
    const-string v4, "MtvUiFilePlayer"

    const-string v5, "MTVAPP_ANDROID_SERVICE_MEDIA_MOUNT: FILE NOT THERE FINISHING "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    goto :goto_0

    .line 2667
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getCurrentFileIndex()I
    .locals 1

    .prologue
    .line 2444
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getIndex()I

    move-result v0

    return v0
.end method

.method public getFileFormat()I
    .locals 1

    .prologue
    .line 2430
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_0

    .line 2431
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v0

    .line 2433
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getFileTotalTime()I
    .locals 1

    .prologue
    .line 2437
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_0

    .line 2438
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getDurationOfRecording()I

    move-result v0

    .line 2440
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .locals 1

    .prologue
    .line 1153
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1154
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    .line 1155
    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .line 1157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    goto :goto_0
.end method

.method public getPlayerCommand()I
    .locals 1

    .prologue
    .line 1161
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1162
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v0, :cond_0

    .line 1163
    const/16 v0, 0x5000

    .line 1166
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    goto :goto_0
.end method

.method protected getTrickMode()I
    .locals 1

    .prologue
    .line 2448
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    return v0
.end method

.method protected getTrickModeSpeed()I
    .locals 1

    .prologue
    .line 2453
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    return v0
.end method

.method public isBmlFullView()Z
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    .line 1084
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInTrickMode()Z
    .locals 1

    .prologue
    .line 2459
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 2289
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "onBackPressed"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-nez v1, :cond_0

    .line 2308
    :goto_0
    return-void

    .line 2293
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 2294
    .local v0, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_1

    .line 2295
    const-string v1, "MtvUiFilePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed: currentCmd - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Type - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LOCALTV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    const/16 v2, 0x5000

    if-ne v1, v2, :cond_2

    .line 2301
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->unregisterListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 2302
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onBackPressed()V

    goto :goto_0

    .line 2297
    :cond_1
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "mMtvAppPlaybackContext is null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2305
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07029b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 658
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onCreate(Landroid/os/Bundle;)V

    .line 659
    const-string v3, "MtvUiFilePlayer"

    const-string v4, "onCreate..."

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0a0031

    invoke-direct {v3, v4, v7, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;-><init>(Landroid/app/FragmentManager;II)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    .line 663
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    .line 664
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    sput-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mNotificationManager:Landroid/app/NotificationManager;

    .line 666
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->clearNotification()V

    .line 667
    if-eqz p1, :cond_7

    .line 668
    const-string v3, "isStartedFromMiniMode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isStartedFromMiniMode:Z

    .line 672
    const-string v3, "tvFilesList"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 673
    .local v2, "tempFileList":[Ljava/lang/Object;
    if-eqz v2, :cond_5

    .line 675
    array-length v3, v2

    const-class v4, [Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/sec/mtv/provider/MtvFile;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 677
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    sget v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    aget-object v3, v3, v4

    sput-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 697
    :cond_0
    :goto_0
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTime()I

    move-result v3

    if-ltz v3, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlayerCommand()I

    move-result v3

    const/16 v4, 0x500c

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_1

    .line 702
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 703
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 706
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v3, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->fillFragHandlerData(Landroid/os/Bundle;)V

    .line 745
    .end local v2    # "tempFileList":[Ljava/lang/Object;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->initViewControl()V

    .line 746
    if-eqz p1, :cond_3

    .line 748
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    const-string v4, "lockVisibility"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    const-string v4, "sleeptimer"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 752
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 754
    new-instance v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$1;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCallStateListener:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;

    .line 756
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCallStateListener:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 760
    sget-boolean v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v3, :cond_4

    .line 761
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 763
    :cond_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->registerContentObserver()V

    .line 764
    return-void

    .line 681
    .restart local v2    # "tempFileList":[Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "MtvFile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/samsung/sec/mtv/provider/MtvFile;

    sput-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 682
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 684
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 688
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-nez v3, :cond_6

    .line 690
    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    goto/16 :goto_0

    .line 686
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 712
    .end local v0    # "i":I
    .end local v2    # "tempFileList":[Ljava/lang/Object;
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "isStartedFromMiniMode"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isStartedFromMiniMode:Z

    .line 713
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isStartedFromMiniMode:Z

    if-eqz v3, :cond_8

    .line 714
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "currentSeekTime"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 715
    .local v1, "mCurrentInSecond":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_9

    .line 717
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->updatePlaybackTime(I)V

    .line 718
    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPausedInMiniMode:Z

    .line 726
    .end local v1    # "mCurrentInSecond":I
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "MtvFile"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/samsung/sec/mtv/provider/MtvFile;

    sput-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 728
    invoke-static {v6}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    .line 730
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 732
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 734
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/provider/MtvFile;->getCreationTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-nez v3, :cond_a

    .line 736
    sput v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    goto/16 :goto_1

    .line 722
    .end local v0    # "i":I
    .restart local v1    # "mCurrentInSecond":I
    :cond_9
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->resumePlaybackTimer(I)V

    goto :goto_3

    .line 732
    .end local v1    # "mCurrentInSecond":I
    .restart local v0    # "i":I
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 874
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onDestroy()V

    .line 875
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "...onDestroy()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 878
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCallStateListener:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$CallStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 879
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFileFormatImage(Z)V

    .line 881
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 883
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->stopPlaybackTimer()V

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByFromMiniMode(Z)V

    .line 891
    :cond_1
    sput v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 892
    sput v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->reset()V

    .line 896
    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 897
    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mChannelGestureDetector:Landroid/view/GestureDetector;

    .line 899
    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->unbindDrawables(Landroid/view/View;)V

    .line 900
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 901
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 12
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v11, 0x1770

    const-wide/16 v2, 0x1388

    const/16 v9, 0xe2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1319
    const-string v0, "MtvUiFilePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFragEvent: event["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    sparse-switch p1, :sswitch_data_0

    .line 1578
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1327
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_0
    sget-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilTvOut;->isHDMIPlugged:Z

    if-nez v0, :cond_1

    .line 1328
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->startAppinAppMode()V

    goto :goto_0

    .line 1331
    :cond_1
    const v0, 0x7f07020e

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1337
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1352
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v10, [I

    const v8, 0x7f0a0032

    aput v8, v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 1353
    new-array v0, v10, [I

    aput v11, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto :goto_0

    .line 1357
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1358
    new-array v0, v10, [I

    const/16 v1, 0x1388

    aput v1, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto :goto_0

    .line 1366
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 1369
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v8, 0x1770

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 1370
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v8, 0x1770

    invoke-virtual {v0, v1, v8, v9}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 1373
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1375
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v10, [I

    const v8, 0x7f0a0032

    aput v8, v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    goto/16 :goto_0

    .line 1379
    :cond_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1384
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1385
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1386
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1387
    new-array v0, v10, [I

    const/16 v1, 0x1388

    aput v1, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto/16 :goto_0

    .line 1391
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1392
    new-array v0, v10, [I

    aput v11, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    .line 1393
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 1394
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_0

    .line 1399
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1401
    new-array v0, v10, [I

    aput v11, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    .line 1402
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1407
    :sswitch_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1408
    new-array v0, v10, [I

    aput v11, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    .line 1409
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    goto/16 :goto_0

    .line 1413
    :sswitch_7
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    if-eqz v0, :cond_5

    .line 1414
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1415
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 1416
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_5

    .line 1417
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x78

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1421
    :cond_5
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->stopPlaybackTimer()V

    .line 1422
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1425
    :sswitch_8
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    if-eqz v0, :cond_6

    .line 1426
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1427
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 1428
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_6

    .line 1429
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x78

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1433
    :cond_6
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->stopPlaybackTimer()V

    .line 1434
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x193

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1439
    :sswitch_9
    sget v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    if-nez v0, :cond_0

    .line 1440
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->pause(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 1441
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->showControl()V

    goto/16 :goto_0

    .line 1445
    :sswitch_a
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->checkIsCalling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1447
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getCurrentVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setVolumeLevel(I)V

    .line 1448
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->resume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 1450
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->checkIsCalling()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1451
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 1452
    :cond_8
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->showControl()V

    .line 1454
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1456
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1462
    :sswitch_b
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->reposition(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;I)Z

    move-result v6

    .line 1463
    .local v6, "bRetValue":Z
    if-eqz v6, :cond_0

    .line 1465
    const/16 v0, 0x500c

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 1466
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->pausePlaybackTimer()V

    .line 1468
    :cond_9
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "Clear caption in case seek start"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->clearCaptionView()V

    goto/16 :goto_0

    .line 1473
    .end local v6    # "bRetValue":Z
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_c
    new-array v0, v4, [I

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto/16 :goto_0

    .line 1483
    :sswitch_d
    const-string v0, "MtvUiFilePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting trick mode FF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateTrickParams(I)V

    .line 1487
    new-array v0, v4, [I

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    .line 1490
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->clearCaptionView()V

    .line 1492
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    sget v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTimeInMillis()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->trickmode(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;III)Z

    .line 1493
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->pausePlaybackTimer()V

    .line 1494
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0, v10}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto/16 :goto_0

    .line 1497
    :sswitch_e
    const-string v0, "MtvUiFilePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting trick mode REW: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateTrickParams(I)V

    .line 1501
    new-array v0, v4, [I

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    .line 1504
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->clearCaptionView()V

    .line 1505
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    sget v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTimeInMillis()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->trickmode(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;III)Z

    .line 1506
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->pausePlaybackTimer()V

    .line 1507
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0, v10}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto/16 :goto_0

    .line 1511
    :sswitch_f
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 1512
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 1513
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x78

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1514
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTimeInMillis()I

    move-result v2

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->trickmode(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;III)Z

    .line 1516
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    goto/16 :goto_0

    .line 1519
    :sswitch_10
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_a

    .line 1520
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->updateBMLSurfaceView()V

    .line 1521
    :cond_a
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->updateCaptions()V

    goto/16 :goto_0

    .line 1525
    :sswitch_11
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1531
    :sswitch_12
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v0

    if-lez v0, :cond_0

    .line 1532
    const/16 v0, 0xe1

    new-array v1, v4, [I

    invoke-direct {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto/16 :goto_0

    .line 1535
    :sswitch_13
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x19e

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1538
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_14
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1539
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1542
    :sswitch_15
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableHideProgressBarInPortrait:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1545
    :sswitch_16
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x19d

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1560
    :sswitch_17
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 1561
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "sending unupdate for 51ch"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x7f

    sget-object v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto/16 :goto_0

    .line 1566
    :sswitch_18
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    move-object v7, p2

    .line 1568
    check-cast v7, Ljava/lang/Boolean;

    .line 1569
    .local v7, "isReset":Ljava/lang/Boolean;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1570
    new-array v0, v10, [I

    const/4 v1, -0x1

    aput v1, v0, v4

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto/16 :goto_0

    .line 1572
    :cond_b
    new-array v0, v4, [I

    invoke-direct {p0, v9, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->addRemoveResetFragments(I[I)V

    goto/16 :goto_0

    .line 1321
    nop

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_13
        0xca -> :sswitch_10
        0xcb -> :sswitch_16
        0xd0 -> :sswitch_17
        0xd1 -> :sswitch_18
        0xd6 -> :sswitch_1
        0xd9 -> :sswitch_4
        0xda -> :sswitch_5
        0xdb -> :sswitch_6
        0xdc -> :sswitch_3
        0xdd -> :sswitch_2
        0xde -> :sswitch_11
        0xdf -> :sswitch_12
        0xec -> :sswitch_0
        0x114 -> :sswitch_7
        0x115 -> :sswitch_8
        0x116 -> :sswitch_9
        0x117 -> :sswitch_a
        0x118 -> :sswitch_b
        0x119 -> :sswitch_c
        0x11a -> :sswitch_d
        0x11b -> :sswitch_e
        0x11c -> :sswitch_f
        0x11d -> :sswitch_14
        0x11e -> :sswitch_15
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x18

    const/4 v7, 0x2

    const/16 v5, 0x19

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 2035
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2036
    const-string v3, "MtvUiFilePlayer"

    const-string v4, "onKeyDown"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2038
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v3

    if-ne v3, v2, :cond_2

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_2

    if-eq p1, v8, :cond_2

    if-eq p1, v5, :cond_2

    .line 2043
    const-string v3, "MtvUiFilePlayer"

    const-string v4, "Locked Key not supported"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2113
    :cond_1
    :goto_0
    return v2

    .line 2047
    :cond_2
    if-eq p1, v5, :cond_3

    if-ne p1, v8, :cond_6

    .line 2048
    :cond_3
    sget-object v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v3

    if-ne v7, v3, :cond_5

    .line 2049
    if-ne p1, v5, :cond_4

    .line 2050
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeDown()V

    goto :goto_0

    .line 2052
    :cond_4
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeUp()V

    goto :goto_0

    .line 2055
    :cond_5
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->startVolumeControlBar()V

    .line 2056
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    goto :goto_0

    .line 2068
    :cond_6
    const/16 v3, 0x4f

    if-eq p1, v3, :cond_7

    const/16 v3, 0x55

    if-eq p1, v3, :cond_7

    const/16 v3, 0x7e

    if-eq p1, v3, :cond_7

    const/16 v3, 0x7f

    if-ne p1, v3, :cond_9

    .line 2070
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    .line 2071
    .local v1, "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v1, :cond_8

    .line 2072
    const/16 v3, 0x116

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 2073
    :cond_8
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v1, :cond_1

    .line 2074
    const/16 v3, 0x117

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 2076
    .end local v1    # "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_9
    const/16 v3, 0x57

    if-eq p1, v3, :cond_a

    const/16 v3, 0x58

    if-ne p1, v3, :cond_e

    .line 2077
    :cond_a
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPlayNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2079
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getFileFormat()I

    move-result v0

    .line 2080
    .local v0, "fileFormat":I
    if-eq v0, v7, :cond_b

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPrevNextEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2083
    :cond_b
    const/16 v3, 0x57

    if-ne p1, v3, :cond_c

    .line 2084
    const/16 v3, 0x114

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 2086
    :cond_c
    const/16 v3, 0x115

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 2091
    .end local v0    # "fileFormat":I
    :cond_d
    const-string v3, "MtvUiFilePlayer"

    const-string v4, "AutoPlayNext is FALSE"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    goto :goto_0

    .line 2097
    :cond_e
    const/16 v3, 0x59

    if-eq p1, v3, :cond_f

    const/16 v3, 0x5a

    if-ne p1, v3, :cond_11

    .line 2098
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    .line 2099
    .restart local v1    # "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v3, :cond_1

    .line 2101
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v3, :cond_1

    .line 2102
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v4, 0x74

    sget-object v5, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v3, v4, v6, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2104
    const/16 v3, 0x5a

    if-ne v3, p1, :cond_10

    .line 2105
    const/16 v3, 0x11a

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2107
    :cond_10
    const/16 v3, 0x11b

    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 2113
    .end local v1    # "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    :cond_11
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const-wide/16 v4, 0xa

    const/4 v0, 0x1

    .line 2120
    const/16 v1, 0x18

    if-ne p1, v1, :cond_0

    .line 2121
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2128
    :goto_0
    return v0

    .line 2123
    :cond_0
    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 2124
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2128
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v9, 0x18

    const/4 v5, 0x0

    const-wide/16 v2, 0x1388

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2194
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2195
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "onKeyUp"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-nez v0, :cond_1

    move v0, v8

    .line 2284
    :goto_0
    return v0

    .line 2200
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-ne v0, v8, :cond_2

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    if-eq p1, v9, :cond_2

    const/16 v0, 0x19

    if-eq p1, v0, :cond_2

    .line 2205
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "Locked Key not supported"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v8

    .line 2206
    goto :goto_0

    .line 2210
    :cond_2
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2211
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2212
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "onKeyUp, adding touch lock fragment"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setPhoneLocked(Z)V

    .line 2214
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->hideAllFragments()V

    .line 2215
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableUpdateFragsBasedOnLockState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2216
    new-array v0, v4, [I

    invoke-direct {p0, v4, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 2218
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    .line 2219
    const/16 v0, 0xbb

    invoke-virtual {p0, v0, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    :goto_1
    move v0, v8

    .line 2224
    goto :goto_0

    .line 2221
    :cond_3
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "onKeyUp, removing touch lock fragment"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->handleUnlock()V

    goto :goto_1

    .line 2225
    :cond_4
    if-eq p1, v9, :cond_5

    const/16 v0, 0x19

    if-ne p1, v0, :cond_8

    .line 2227
    :cond_5
    const/4 v0, 0x2

    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 2228
    if-ne p1, v9, :cond_7

    .line 2230
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeEscalating:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2232
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6a

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    :cond_6
    :goto_2
    move v0, v8

    .line 2246
    goto/16 :goto_0

    .line 2238
    :cond_7
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableVolumeDecreasing:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2240
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6b

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_VOLUME:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_2

    .line 2248
    :cond_8
    const/16 v0, 0x52

    if-ne p1, v0, :cond_e

    .line 2250
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v6

    .line 2251
    .local v6, "fileFormat":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v7

    .line 2252
    .local v7, "orientation":I
    const/4 v0, 0x2

    if-ne v0, v6, :cond_b

    .line 2253
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2254
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2255
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2256
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2257
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableMenuKeyPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    move v0, v8

    .line 2281
    goto/16 :goto_0

    .line 2260
    :cond_9
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_IMG:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 2261
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2262
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 2263
    :cond_a
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x81

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_3

    .line 2266
    :cond_b
    if-ne v7, v8, :cond_d

    .line 2267
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 2268
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2269
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2270
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2271
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runnableMenuKeyPress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 2273
    :cond_c
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 2274
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->resetTimer(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;J)V

    .line 2275
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x81

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_3

    .line 2278
    :cond_d
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x81

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_3

    .line 2283
    .end local v6    # "fileFormat":I
    .end local v7    # "orientation":I
    :cond_e
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "Super called for key"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 2
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 2648
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2649
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2650
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    .line 2651
    return-void
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2599
    const-string v1, "MtvUiFilePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMtvAppLiveBroadcastNotify called: what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    sparse-switch p1, :sswitch_data_0

    .line 2639
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 2644
    :cond_0
    :goto_0
    return-void

    .line 2605
    :sswitch_0
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "onMtvAppLiveBroadcastNotify: MTVAPP_ANDROID_SERVICE_ANTENNA_CLOSED called"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2613
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    goto :goto_0

    .line 2618
    :sswitch_2
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 2619
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 2620
    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setPreferredOrientation(I)V

    .line 2621
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2622
    const/16 v1, 0x11c

    invoke-virtual {p0, v1, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    .line 2623
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setSViewRunning(Z)V

    .line 2624
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/sviewcover/MtvUiSViewCover;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2625
    .local v0, "coverIntent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2626
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2633
    .end local v0    # "coverIntent":Landroid/content/Intent;
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 2634
    const/16 v1, 0x116

    invoke-virtual {p0, v1, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 2600
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x6 -> :sswitch_1
        0x11 -> :sswitch_0
        0x13 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2426
    :cond_0
    :goto_0
    :pswitch_0
    return v8

    .line 2381
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->transferToPhone()V

    goto :goto_0

    .line 2384
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->transferToBT()V

    goto :goto_0

    .line 2387
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 2388
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->openBMLHomePage()V

    goto :goto_0

    .line 2391
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2395
    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setBMLLayoutFullView(Z)V

    .line 2396
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2397
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2398
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, -0x1

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 2399
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 2404
    :cond_1
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setBMLLayoutFullView(Z)V

    goto :goto_0

    .line 2409
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 2411
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2412
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setBMLLayoutFullView(Z)V

    goto :goto_0

    .line 2418
    :pswitch_6
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2419
    .local v6, "selectionBundle":Landroid/os/Bundle;
    invoke-static {v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiSettingsDialogFrag;

    move-result-object v7

    .line 2420
    .local v7, "selectionFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "MtvUiSettingsDialogFrag"

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2379
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 2374
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2375
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 784
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onPause()V

    .line 791
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 793
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->registerVideoSurfaceView(Z)V

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 798
    const-string v0, "MtvUiFilePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() :getPlaybackState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 800
    const/16 v0, 0x116

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    .line 804
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsDtvStartedByFromMiniMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 805
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 809
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 810
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByFromMiniMode(Z)V

    .line 813
    :cond_4
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onPause()V

    .line 814
    return-void
.end method

.method public onPlayerNotification(III)V
    .locals 12
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x6005

    const/16 v7, 0x194

    .line 1770
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification ...:command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    packed-switch p1, :pswitch_data_0

    .line 1995
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1775
    :pswitch_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1776
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadNextFileHover()V

    .line 1777
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->loadPrevFileHover()V

    .line 1779
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v4, :cond_1

    .line 1780
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v5, 0xed

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_ALL:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v4, v5, v9, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1784
    :cond_1
    const/16 v4, 0x6001

    if-ne v4, p2, :cond_2

    .line 1785
    sget-object v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v6, 0x12d

    const v7, 0x7f070268

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1786
    :cond_2
    const/16 v4, 0x6004

    if-ne v4, p2, :cond_0

    .line 1787
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    goto :goto_0

    .line 1790
    :pswitch_2
    if-ne v8, p2, :cond_3

    .line 1793
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$10;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$10;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1808
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$11;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$11;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1822
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1824
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->startPlaybackTimer()V

    .line 1825
    sget-object v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mGenericMsgHAndler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v6, 0x12d

    invoke-virtual {v5, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1826
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$12;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$12;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1835
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v4, :cond_0

    .line 1836
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 1837
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1838
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 1839
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->updateCurrentAudioEffectAndMode()Z

    goto/16 :goto_0

    .line 1842
    :cond_3
    const/16 v4, 0x6010

    if-ne v4, p2, :cond_4

    .line 1845
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$13;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$13;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1864
    :cond_4
    const/16 v4, 0x6004

    if-ne v4, p2, :cond_5

    .line 1866
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    goto/16 :goto_0

    .line 1868
    :cond_5
    const/16 v4, 0x6011

    if-ne v4, p2, :cond_0

    .line 1871
    const-string v4, "MtvUiFilePlayer"

    const-string v5, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1873
    const-string v4, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    invoke-static {p0, v4, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1877
    .local v0, "message":Landroid/widget/Toast;
    const/16 v4, 0x77

    invoke-virtual {v0, v4, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 1878
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1880
    .end local v0    # "message":Landroid/widget/Toast;
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1885
    :pswitch_3
    if-ne v8, p2, :cond_0

    .line 1886
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->resumePlaybackTimer()V

    .line 1887
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1892
    :pswitch_4
    if-ne v8, p2, :cond_0

    .line 1893
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->pausePlaybackTimer()V

    .line 1894
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1898
    :pswitch_5
    const/16 v4, 0x600d

    if-ne p2, v4, :cond_7

    .line 1899
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v6, 0x199

    invoke-virtual {v5, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1900
    :cond_7
    const/16 v4, 0x600e

    if-ne p2, v4, :cond_8

    .line 1903
    const-string v4, "MtvUiFilePlayer"

    const-string v5, "IMtvAppPlayerOneSeg.STAT_TIME_UPDT"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1905
    :cond_8
    const/16 v4, 0x6017

    if-ne p2, v4, :cond_0

    .line 1906
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1907
    .local v1, "progressIntent":Landroid/content/Intent;
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification: STAT_DEL_FILE -> result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1908
    const-string v4, "deleteTVFileConfirmation"

    invoke-virtual {v1, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1909
    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1910
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1914
    .end local v1    # "progressIntent":Landroid/content/Intent;
    :pswitch_6
    const/16 v4, 0x6001

    if-ne p2, v4, :cond_9

    .line 1916
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$14;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$14;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1922
    :cond_9
    if-ne p2, v8, :cond_0

    .line 1924
    if-ltz p3, :cond_a

    .line 1925
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1927
    .local v2, "timeStamp":Ljava/lang/Integer;
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->resumePlaybackTimer(I)V

    .line 1931
    .end local v2    # "timeStamp":Ljava/lang/Integer;
    :cond_a
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$15;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$15;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1940
    :pswitch_7
    packed-switch p2, :pswitch_data_1

    :pswitch_8
    goto/16 :goto_0

    .line 1942
    :pswitch_9
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1943
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$16;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1956
    :pswitch_a
    if-ltz p3, :cond_0

    .line 1957
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1959
    .local v3, "updateTime":Ljava/lang/Integer;
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEEK_PROGRESS time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->updatePlayBackTimeInMillis(J)V

    .line 1962
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isStartOfClip(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1964
    new-instance v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$17;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$17;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;)V

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1976
    .end local v3    # "updateTime":Ljava/lang/Integer;
    :pswitch_b
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1977
    move v2, p3

    .line 1978
    .local v2, "timeStamp":I
    const-string v4, "MtvUiFilePlayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEEK_COMPLETED time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPauseTrickMode:Z

    if-eqz v4, :cond_b

    .line 1981
    const/16 v4, 0x116

    invoke-virtual {p0, v4, v9}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1985
    :cond_b
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v4

    div-int/lit16 v5, v2, 0x3e8

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->resumePlaybackTimer(I)V

    goto/16 :goto_0

    .line 1771
    :pswitch_data_0
    .packed-switch 0x5002
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1940
    :pswitch_data_1
    .packed-switch 0x6001
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v8, 0x7f0200b9

    const/4 v3, 0x1

    const/4 v7, 0x2

    const/4 v4, 0x0

    .line 2313
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_5

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v6

    if-ne v5, v6, :cond_5

    const/16 v5, 0x5000

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v0, v3

    .line 2315
    .local v0, "bIsStatePlaying":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v2

    .line 2316
    .local v2, "mbIsBMLFullView":Z
    sget-object v5, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    .line 2318
    .local v1, "currentFileFormat":I
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2326
    if-eq v1, v7, :cond_0

    if-eq v1, v7, :cond_1

    if-nez v2, :cond_1

    .line 2328
    :cond_0
    const/16 v5, 0x8

    const v6, 0x7f0702dc

    invoke-interface {p1, v4, v5, v4, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v6, 0x7f0200b6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2342
    :cond_1
    if-eq v1, v7, :cond_4

    .line 2344
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2345
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBTConnected()Z

    move-result v5

    if-ne v5, v3, :cond_6

    .line 2346
    const/16 v3, 0xc

    const v5, 0x7f0702f8

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2351
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    if-eqz v3, :cond_4

    .line 2354
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    if-nez v3, :cond_7

    .line 2355
    const/16 v3, 0x9

    const v5, 0x7f07025a

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0200ac

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2361
    :goto_2
    const/16 v3, 0xa

    const v5, 0x7f0701f1

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0200b8

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2369
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    return v3

    .end local v0    # "bIsStatePlaying":Z
    .end local v1    # "currentFileFormat":I
    .end local v2    # "mbIsBMLFullView":Z
    :cond_5
    move v0, v4

    .line 2313
    goto :goto_0

    .line 2348
    .restart local v0    # "bIsStatePlaying":Z
    .restart local v1    # "currentFileFormat":I
    .restart local v2    # "mbIsBMLFullView":Z
    :cond_6
    const/16 v3, 0xb

    const v5, 0x7f0701d9

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 2357
    :cond_7
    const/16 v3, 0xe

    const v5, 0x7f070305

    invoke-interface {p1, v4, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v5, 0x7f0200ad

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 905
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onResume()V

    .line 906
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "onResume..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.stop.app-in-app"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "stopFromDtv"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sendBroadcast(Landroid/content/Intent;)V

    .line 909
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 913
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v1, :cond_0

    .line 915
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 917
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 919
    const-string v1, "MtvUiFilePlayer"

    const-string v2, "isExiting..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    .line 966
    :cond_1
    :goto_0
    return-void

    .line 926
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 928
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 929
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->stopService(Landroid/content/Intent;)Z

    .line 930
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFilePlayMiniMode(Z)V

    .line 931
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsDtvStartedByFromMiniMode(Z)V

    .line 934
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_3
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPauseTrickMode:Z

    .line 936
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->initMtvFilePlayer()V

    .line 938
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 939
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 941
    :cond_4
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->resumePlaybackTimer()V

    .line 943
    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v1, :cond_5

    .line 944
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v1, :cond_5

    .line 946
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    .line 952
    :cond_5
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->showControl()V

    .line 954
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v1

    if-lez v1, :cond_6

    .line 955
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 957
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->RunnableRemoveSleepTimerIcon:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 960
    :cond_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mRunnableUpdateFragsBasedOnLockState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 961
    const/16 v1, 0x1a

    invoke-virtual {p0, v1, v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    .line 962
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v1, :cond_1

    .line 963
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 964
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 970
    const-string v0, "MtvUiFilePlayer"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 975
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->putFragHandlerData(Landroid/os/Bundle;)V

    .line 977
    const-string v0, "lockVisibility"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->lockImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 978
    const-string v0, "sleeptimer"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->sleepTimer:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 982
    const-string v0, "fileIndex"

    sget v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 983
    const-string v0, "tvFilesList"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileList:[Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 984
    const-string v0, "isStartedFromMiniMode"

    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isStartedFromMiniMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 988
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 989
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onStart()V

    .line 773
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onStart(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    .line 779
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 1765
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 843
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->onStop()V

    .line 844
    sget-object v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onStop()V

    .line 852
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MtvUiSettingsBroadcast"

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isActivityOnForeground(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    :cond_1
    const-string v0, "MtvUiFilePlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() :getPlaybackState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 856
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickMode:I

    .line 857
    sput v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    .line 859
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x78

    sget v2, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCurrTrickSpeed:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 860
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTimeInMillis()I

    move-result v2

    invoke-interface {v0, v1, v4, v4, v2}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->trickmode(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;III)Z

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPauseTrickMode:Z

    .line 870
    :cond_2
    :goto_0
    return-void

    .line 866
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 867
    const/16 v0, 0x116

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 1581
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->IsBMLFullView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1587
    :cond_0
    :goto_0
    return v0

    .line 1584
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mChannelGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1585
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    const/16 v1, 0x1a

    .line 2170
    if-eqz p1, :cond_1

    .line 2171
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    .line 2173
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    if-eqz v0, :cond_0

    .line 2174
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 2178
    :cond_0
    :goto_0
    return-void

    .line 2176
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestSystemKeyEvent(IZ)Z

    goto :goto_0
.end method

.method protected registerVideoSurfaceView(Z)V
    .locals 2
    .param p1, "which"    # Z

    .prologue
    .line 1072
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 1074
    const/4 v0, 0x0

    .line 1075
    .local v0, "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_0

    .line 1077
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getLocalVideoSurfaceView(Z)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 1079
    .end local v0    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    return-void
.end method

.method public setBMLLayoutFullView(Z)V
    .locals 9
    .param p1, "isFull"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xee

    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1092
    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1094
    .local v6, "dummyView":Landroid/view/View;
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    if-eqz v0, :cond_0

    .line 1096
    if-eqz p1, :cond_1

    .line 1101
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x76

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1103
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0, v7}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLFullView(Z)V

    .line 1106
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRequestedOrientation(I)V

    .line 1107
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0, v7}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setKeepScreenOn(Z)V

    .line 1108
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->registerVideoSurfaceView(Z)V

    .line 1109
    new-array v0, v4, [I

    invoke-direct {p0, v4, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 1110
    iput-boolean v7, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    .line 1112
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1150
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    const/16 v1, 0x77

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    .line 1120
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1121
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_STATUS_BAR:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    const-wide/16 v2, 0x1388

    new-array v5, v4, [I

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->addFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;JZ[I)V

    .line 1122
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mLocalUiMsgHandler:Landroid/os/Handler;

    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1124
    :cond_2
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setBMLFullView(Z)V

    .line 1126
    sget v0, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->preferred_orientation:I

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->requestOrientation(I)V

    .line 1130
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getIsFilePlayMiniMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1132
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->setKeepScreenOn(Z)V

    .line 1133
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->registerVideoSurfaceView(Z)V

    .line 1135
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isCaptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1137
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mCaptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setCaptionText()V

    .line 1140
    :cond_4
    new-array v0, v4, [I

    invoke-direct {p0, v7, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->setRotateButtonVisibility(Z[I)V

    .line 1141
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->IsBMLFullView:Z

    .line 1143
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->isFragPresent(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->fragHandler:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_FP_MAIN_VID:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-virtual {v0, v8, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->onUpdate(ILjava/lang/Object;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;)V

    goto :goto_0
.end method

.method public startAppinAppMode()V
    .locals 6

    .prologue
    const/16 v5, 0x3c

    .line 2490
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/samsung/sec/mtv/ui/minitv/MtvMiniModeService;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2491
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 2492
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "class"

    const-string v3, "MtvUiFilePlayer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2494
    const-string v2, "currentSeekTime"

    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTime()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2495
    const-string v2, "selectedFileIndex"

    sget v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2496
    const-string v2, "MtvUiFilePlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAppinAppMode file index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFileIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setIsFilePlayMiniMode(Z)V

    .line 2498
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->registerVideoSurfaceView(Z)V

    .line 2499
    const-string v2, "window.pos.x"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2500
    const-string v2, "window.pos.y"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2501
    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2508
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2509
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->resetBMLTvView()V

    .line 2510
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->pausePlaybackTimer()V

    .line 2511
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->finish()V

    .line 2512
    return-void
.end method
