.class public Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
.super Landroid/app/Activity;
.source "MtvUiTestMode.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;,
        Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;,
        Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;,
        Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;
    }
.end annotation


# static fields
.field private static final LAYOUT_HORIZONTAL:Z = true

.field private static final LAYOUT_VERTICAL:Z = false

.field private static final MENU_CHANGE_LAYOUT:I = 0x2

.field private static final MENU_SECRET_CONFIGRATION:I = 0x4

.field private static final MENU_SIGNAL:I = 0x1

.field private static final MENU_SIMUL_MODE:I = 0x3

.field private static final MENU_STOP:I = 0x0

.field private static final MENU_UPDATE_CHANNEL_LIST:I = 0x5

.field private static final MENU_VIEW_SCAN_RESULTS:I = 0x6

.field private static final MTV_CHANNEL_DEFAULT_CHANNEL_NO:I = 0x1b

.field private static final MTV_CHANNEL_NO_MAX_VAL:I = 0x34

.field private static final MTV_CHANNEL_NO_MIN_VAL:I = 0xd

.field private static final SECRET_CONFIGRATION_ENABLED:Z = true

.field private static final TAG:Ljava/lang/String; = "MtvUiTestMode"

.field public static final TESTSCANS_URI:Landroid/net/Uri;

.field private static final TEST_MODE_MSG_START_LIVE_PLAY_AFTER_SCAN:I = 0x1

.field private static final TEST_MODE_MSG_UPDATE_SIGNAL:I

.field private static mCurrentLayoutState:Z

.field private static mShowSignalState:Z


# instance fields
.field private bFactoryTestSuccess:Z

.field private bFromFactoryTest:Z

.field private bIsCreateComplete:Z

.field private haveToFinish:Z

.field private mChannelInfoTextView:Landroid/widget/TextView;

.field private mChannelNumber:I

.field private mChannelScanInfoTextView:Landroid/widget/TextView;

.field private mChannelScanStartedMSecs:J

.field private mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

.field private mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

.field private mDebugSetting:Landroid/broadcast/helper/MtvUtilDebug;

.field private mFirstDetectedChannelNumber:I

.field private mHandler:Landroid/os/Handler;

.field private mLastChannelSwapTime:J

.field private mLastScanTimeMsecs:J

.field private mMaxChannelScanTimeMsecs:J

.field private mMinChannelScanTimeMsecs:J

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mNumDetectedChannels:I

.field private mSavedVolumeLevel:I

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mSignalDetailsTextView:Landroid/widget/TextView;

.field private mSignalInfoTextView:Landroid/widget/TextView;

.field private mSignalParamsLayout:Landroid/widget/LinearLayout;

.field private mStartChannelSwapTimeMsecs:J

.field private mStartScanTimeMsecs:J

.field private mStopChannelSwapTimeMsecs:J

.field private mStopScanTimeMsecs:J

.field private mTestmodeChannelListAdapter:Landroid/widget/ListAdapter;

.field private mTestmodeChannelListView:Landroid/widget/ListView;

.field private mVideoSurfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mCurrentLayoutState:Z

    .line 104
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    .line 126
    const-string v0, "content://com.samung.sec.mtv.ui.TestMode.TestScans/testscansinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->TESTSCANS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 106
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    .line 107
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    .line 108
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanInfoTextView:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalInfoTextView:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalDetailsTextView:Landroid/widget/TextView;

    .line 111
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalParamsLayout:Landroid/widget/LinearLayout;

    .line 112
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListView:Landroid/widget/ListView;

    .line 113
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListAdapter:Landroid/widget/ListAdapter;

    .line 114
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    .line 118
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartScanTimeMsecs:J

    .line 119
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStopScanTimeMsecs:J

    .line 120
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMaxChannelScanTimeMsecs:J

    .line 121
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMinChannelScanTimeMsecs:J

    .line 122
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanStartedMSecs:J

    .line 123
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastScanTimeMsecs:J

    .line 124
    iput v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    .line 125
    iput v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    .line 128
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartChannelSwapTimeMsecs:J

    .line 129
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStopChannelSwapTimeMsecs:J

    .line 130
    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    .line 131
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bIsCreateComplete:Z

    .line 133
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    .line 134
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFactoryTestSuccess:Z

    .line 135
    iput v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSavedVolumeLevel:I

    .line 136
    const/16 v0, 0x1b

    iput v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    .line 139
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebug;

    .line 140
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 141
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 142
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->haveToFinish:Z

    .line 144
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    .line 146
    new-instance v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    .line 708
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 79
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getSignalValue()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)J
    .locals 2
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;J)J
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartChannelSwapTimeMsecs:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->cancelUpdateChannelList()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->releaseMtvPlayer()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalParamsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Landroid/broadcast/helper/types/MtvOneSegSignal;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
    .param p1, "x1"    # Landroid/broadcast/helper/types/MtvOneSegSignal;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getSignalValue(Landroid/broadcast/helper/types/MtvOneSegSignal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalDetailsTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->invalidate()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private cancelUpdateChannelList()V
    .locals 3

    .prologue
    .line 456
    const-string v1, "MtvUiTestMode"

    const-string v2, "Start : TEST MODE cancelUpdateChannelList"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 459
    .local v0, "mPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v1, :cond_1

    .line 461
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    invoke-interface {v2, v0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelScanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 463
    const-string v1, "MtvUiTestMode"

    const-string v2, "SUCCESS : TEST MODE cancelUpdateChannelList"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 468
    :cond_0
    const-string v1, "MtvUiTestMode"

    const-string v2, "FAILURE FROM FRAMEWORK: TEST MODE cancelUpdateChannelList"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_1
    const-string v1, "MtvUiTestMode"

    const-string v2, "FAILURE : TEST MODE cancelUpdateChannelList"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeLayout(Z)V
    .locals 10
    .param p1, "layout"    # Z

    .prologue
    const v9, 0x7f0a004a

    const v8, 0x7f0a0049

    const v7, 0x7f0a0048

    const v6, 0x7f0a0047

    const/4 v2, 0x1

    .line 568
    sput-boolean p1, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mCurrentLayoutState:Z

    .line 569
    if-ne p1, v2, :cond_0

    .line 570
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setRequestedOrientation(I)V

    .line 571
    const v2, 0x7f03000a

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setContentView(I)V

    .line 572
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 573
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    .line 574
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanInfoTextView:Landroid/widget/TextView;

    .line 575
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanInfoTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Scan Time (msecs) [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastScanTimeMsecs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]    Num of Ch. found ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalInfoTextView:Landroid/widget/TextView;

    .line 577
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalDetailsTextView:Landroid/widget/TextView;

    .line 578
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalParamsLayout:Landroid/widget/LinearLayout;

    .line 579
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    .line 581
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListView:Landroid/widget/ListView;

    .line 604
    :goto_0
    new-instance v2, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Channel["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]  SwapTime(msecs) ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 608
    return-void

    .line 583
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setRequestedOrientation(I)V

    .line 584
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setContentView(I)V

    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v1, "physicalChannelList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const v2, 0x7f0a004c

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    .line 587
    const v2, 0x7f0a004d

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanInfoTextView:Landroid/widget/TextView;

    .line 588
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanInfoTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last Scan Time (msecs) [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastScanTimeMsecs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]     Num of Ch. found ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalInfoTextView:Landroid/widget/TextView;

    .line 590
    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalDetailsTextView:Landroid/widget/TextView;

    .line 591
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalParamsLayout:Landroid/widget/LinearLayout;

    .line 592
    invoke-virtual {p0, v9}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    .line 593
    const v2, 0x7f0a004e

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListView:Landroid/widget/ListView;

    .line 594
    new-instance v2, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;

    const v3, 0x7f030030

    invoke-direct {v2, p0, p0, v3, v1}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$ChannelAdapter;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListAdapter:Landroid/widget/ListAdapter;

    .line 596
    const/16 v0, 0xd

    .local v0, "i":I
    :goto_1
    const/16 v2, 0x34

    if-gt v0, v2, :cond_1

    .line 597
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 598
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 599
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 600
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mTestmodeChannelListView:Landroid/widget/ListView;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelection(I)V

    .line 602
    sget-boolean v2, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->showSignal(Z)V

    goto/16 :goto_0
.end method

.method private createCancelScanProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 420
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    .line 421
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 424
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    new-instance v2, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$2;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$2;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    invoke-virtual {v0, v1, p3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 432
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mScanDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 434
    return-void
.end method

.method private getScanProgessPercentage()I
    .locals 7

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "channel":I
    const/4 v1, 0x0

    .line 301
    .local v1, "channelDiff":I
    const/4 v2, 0x0

    .line 303
    .local v2, "progPercent":I
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v4, v5, :cond_1

    .line 305
    :cond_0
    const/4 v3, 0x0

    .line 306
    .local v3, "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    .line 307
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v4, v5, :cond_1

    .line 308
    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 311
    .end local v3    # "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_2

    .line 312
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getLastScannedChannel()I

    move-result v0

    .line 313
    const-string v4, "MtvUiTestMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pg*** mMtvAppPlaybackContext  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2
    const/16 v1, 0x28

    .line 317
    const/16 v4, 0xd

    if-lt v0, v4, :cond_3

    const/16 v4, 0x34

    if-gt v0, v4, :cond_3

    if-lez v1, :cond_3

    .line 318
    const-string v4, "MtvUiTestMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pg*** % ***    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    add-int/lit8 v4, v0, -0xc

    mul-int/lit8 v4, v4, 0x64

    div-int v2, v4, v1

    .line 321
    :cond_3
    const-string v4, "MtvUiTestMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pg*** % ***    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    return v2
.end method

.method private getSignalValue()Landroid/broadcast/helper/types/MtvOneSegSignal;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getSignalStatistics()Landroid/broadcast/helper/types/MtvOneSegSignal;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSignalValue(Landroid/broadcast/helper/types/MtvOneSegSignal;)Ljava/lang/String;
    .locals 4
    .param p1, "signalValue"    # Landroid/broadcast/helper/types/MtvOneSegSignal;

    .prologue
    .line 635
    const-string v0, "CN["

    .line 636
    .local v0, "signal":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getCN()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    const-string v1, "] RSSI["

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getRSSI()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    const-string v1, "] BER["

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-virtual {p1}, Landroid/broadcast/helper/types/MtvOneSegSignal;->getBER()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 642
    return-object v0
.end method

.method private getVolumeLevel()I
    .locals 5

    .prologue
    .line 1116
    const/4 v1, 0x0

    .line 1117
    .local v1, "volumeLevel":I
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1118
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1120
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1121
    const-string v2, "MtvUiTestMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVolumeLevel() : volume= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_0
    return v1

    .line 1125
    :cond_0
    const-string v2, "MtvUiTestMode"

    const-string v3, "Error in retrieving Volume Level !"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private invalidate()V
    .locals 4

    .prologue
    .line 754
    const v1, 0x7f0a004b

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 755
    .local v0, "signalLayout":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 756
    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 757
    :cond_0
    new-instance v1, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 758
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalInfoTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSignalDetailsTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 762
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 763
    return-void
.end method

.method private releaseMtvPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bIsCreateComplete:Z

    .line 404
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 405
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_1

    .line 410
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->reset()V

    .line 411
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 412
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 414
    :cond_1
    return-void
.end method

.method private setVolumeLevel(I)V
    .locals 4
    .param p1, "volumeLevel"    # I

    .prologue
    .line 1131
    if-gtz p1, :cond_0

    .line 1132
    const/4 p1, 0x0

    .line 1133
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1134
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 1136
    const-string v1, "MtvUiTestMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolumeLevel() : volume= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1143
    :goto_0
    return-void

    .line 1141
    :cond_1
    const-string v1, "MtvUiTestMode"

    const-string v2, "Error in setting Stram Volume !"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showConfigrationSettings()V
    .locals 3

    .prologue
    .line 651
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 652
    .local v0, "i":Landroid/content/Intent;
    const-class v1, Lcom/samsung/sec/mtv/ui/configration/MtvUiConfigration;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 653
    const-string v1, "MtvUiTestMode"

    const-string v2, "Start Activity - MtvUiConfigration"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->startActivity(Landroid/content/Intent;)V

    .line 656
    return-void
.end method

.method private showSignal(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 615
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 616
    return-void
.end method

.method private stopOneSegPlayer()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method private updateChannelList()V
    .locals 5

    .prologue
    .line 438
    const-string v2, "MtvUiTestMode"

    const-string v3, "Start : TEST MODE updateChannelList"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getScanner()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 441
    .local v1, "mPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    const-string v2, "Scan Progress"

    const-string v3, "Completion Status: 0%"

    const-string v4, "Cancel"

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->createCancelScanProgressDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 442
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 444
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 445
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 446
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartScanTimeMsecs:J

    .line 447
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    invoke-interface {v2, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->scanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 452
    .end local v0    # "date":Ljava/util/Date;
    :goto_0
    return-void

    .line 450
    :cond_0
    const-string v2, "MtvUiTestMode"

    const-string v3, "FAILURE : TEST MODE updateChannelList "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public checkIsCalling()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1173
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1174
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 1176
    .local v0, "callState":I
    const-string v3, "MtvUiTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIsCalling() - tm.getCallState(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 1178
    :cond_0
    const-string v3, "MtvUiTestMode"

    const-string v4, "checkIsCalling() - in call "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 328
    const-string v0, "MtvUiTestMode"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    if-eqz v0, :cond_0

    .line 331
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFactoryTestSuccess:Z

    if-eqz v0, :cond_4

    .line 332
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setResult(I)V

    .line 336
    :cond_0
    :goto_0
    const-string v0, "MtvUiTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bFactoryTestSuccess -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFactoryTestSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bFromFactoryTest - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    if-eqz v0, :cond_1

    .line 340
    iget v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSavedVolumeLevel:I

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setVolumeLevel(I)V

    .line 342
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 345
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v0, v1, :cond_6

    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->haveToFinish:Z

    if-nez v0, :cond_6

    .line 352
    const-string v0, "MtvUiTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting - OneSeg already initialized so deleting OneSeg and waiting till delete callback  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 355
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v1, 0x500f

    if-ne v0, v1, :cond_5

    .line 357
    const-string v0, "MtvUiTestMode"

    const-string v1, "cannot issue delete as already one delete operation is going on..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_3
    :goto_1
    return-void

    .line 334
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setResult(I)V

    goto/16 :goto_0

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->delete(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    goto :goto_1

    .line 363
    :cond_6
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v0

    const/16 v1, 0x5001

    if-ne v0, v1, :cond_7

    .line 365
    const-string v0, "MtvUiTestMode"

    const-string v1, "Create in Progress..Cannot finish..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->haveToFinish:Z

    goto :goto_1

    .line 371
    :cond_7
    const-string v0, "MtvUiTestMode"

    const-string v1, "finish()-ed"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->finish()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->requestWindowFeature(I)Z

    .line 225
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 227
    sget-boolean v3, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mCurrentLayoutState:Z

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->changeLayout(Z)V

    .line 229
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    .line 230
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->getDebugInstance()Landroid/broadcast/helper/MtvUtilDebug;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebug;

    .line 231
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mDebugSetting:Landroid/broadcast/helper/MtvUtilDebug;

    invoke-virtual {v3}, Landroid/broadcast/helper/MtvUtilDebug;->loadDbgInfoFromFile()V

    .line 233
    const-string v3, "MtvUiTestMode"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 236
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "fromFactoryTest"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    .line 237
    iput-boolean v6, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFactoryTestSuccess:Z

    .line 238
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    invoke-direct {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;-><init>()V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    .line 239
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->getConfigFromFile()Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    .line 243
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 245
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 247
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "bCreateStatus":Z
    if-nez p1, :cond_4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v3, v4, :cond_4

    .line 252
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 253
    iput-boolean v6, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bIsCreateComplete:Z

    .line 254
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v3, v4, v5, v7}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 255
    const-string v3, "MtvUiTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate first create : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    if-nez v0, :cond_0

    .line 258
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->screwupCleanup()V

    .line 259
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v3, v4, v5, v7}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    move-result v0

    .line 260
    const-string v3, "MtvUiTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate second create : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    if-eqz v3, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getVolumeLevel()I

    move-result v3

    iput v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mSavedVolumeLevel:I

    .line 276
    const/16 v3, 0xf

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setVolumeLevel(I)V

    .line 279
    :cond_1
    sget-boolean v3, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v3, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 281
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v3, "/efs/imei/.nvdevicekey.info"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 284
    const-string v3, "MtvUiTestMode"

    const-string v4, "Cannot record on SD CARD, Device Key is not present..!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_3
    return-void

    .line 263
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    iput-boolean v8, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bIsCreateComplete:Z

    .line 264
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 265
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 266
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v3, v4}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 268
    :cond_5
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 381
    const-string v0, "MtvUiTestMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 399
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    .line 737
    const-string v2, "MtvUiTestMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick pos="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", channel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    new-instance v1, Landroid/broadcast/helper/MtvURI;

    const/4 v2, 0x4

    iget v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-direct {v1, v2, v3}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 739
    .local v1, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->invalidate()V

    .line 744
    new-instance v2, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Channel ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " searching started... SwapTime(msecs) ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 746
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 747
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartChannelSwapTimeMsecs:J

    .line 748
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    if-eqz v2, :cond_0

    .line 749
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 751
    :cond_0
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 5
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 506
    const-string v0, "MtvUiTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 554
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 510
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->stopOneSegPlayer()V

    goto :goto_0

    .line 514
    :pswitch_1
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    if-eqz v0, :cond_1

    .line 515
    sput-boolean v3, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    .line 518
    :goto_1
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->showSignal(Z)V

    goto :goto_0

    .line 517
    :cond_1
    sput-boolean v4, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    goto :goto_1

    .line 522
    :pswitch_2
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mCurrentLayoutState:Z

    if-nez v0, :cond_2

    .line 523
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->changeLayout(Z)V

    goto :goto_0

    .line 525
    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->changeLayout(Z)V

    goto :goto_0

    .line 530
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-boolean v0, v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    if-eqz v0, :cond_3

    .line 531
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iput-boolean v3, v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    .line 536
    :goto_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSettingControl:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSettingControl;->setConfigToFile(Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "MtvUiTestMode"

    const-string v1, "setConfigToFile false!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iput-boolean v4, v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    goto :goto_2

    .line 542
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->showConfigrationSettings()V

    goto :goto_0

    .line 546
    :pswitch_5
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->updateChannelList()V

    goto :goto_0

    .line 549
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.sec.mtv.testmode.LAUNCH_SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 507
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onPlayerNotification(III)V
    .locals 16
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 781
    packed-switch p1, :pswitch_data_0

    .line 1070
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 783
    :pswitch_1
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...:CMD_CREATE"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 812
    :pswitch_2
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OneSeg Error ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 786
    :pswitch_3
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bIsCreateComplete:Z

    .line 787
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->haveToFinish:Z

    if-eqz v11, :cond_1

    .line 789
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$3;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 799
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 800
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 801
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v11, v12}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 803
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 805
    new-instance v3, Landroid/broadcast/helper/MtvURI;

    const/4 v11, 0x4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-direct {v3, v11, v12}, Landroid/broadcast/helper/MtvURI;-><init>(II)V

    .line 806
    .local v3, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] searching started"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v11, v12, v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto/16 :goto_0

    .line 826
    .end local v3    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    :pswitch_4
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...:CMD_OPEN"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 844
    :pswitch_5
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...:CMD_OPEN - STAT_FAILURE"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v11, "MtvUiTestMode"

    const-string v12, "Channel searching failed..."

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    .line 848
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] searching failed ... SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 831
    :pswitch_6
    const-string v11, "MtvUiTestMode"

    const-string v12, "***oneseg open completed"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartChannelSwapTimeMsecs:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    .line 834
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 835
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStopChannelSwapTimeMsecs:J

    .line 836
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStopChannelSwapTimeMsecs:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartChannelSwapTimeMsecs:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    .line 838
    .end local v2    # "date":Ljava/util/Date;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 839
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v11, v12}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    goto/16 :goto_0

    .line 860
    :pswitch_7
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel searching "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%    SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 864
    :pswitch_8
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel searching done..... SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 865
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]       SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 866
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    if-eqz v11, :cond_0

    .line 867
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFactoryTestSuccess:Z

    goto/16 :goto_0

    .line 876
    :pswitch_9
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...:CMD_PLAY"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->setAudioMute(Z)V

    .line 879
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 881
    :sswitch_0
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel Play Error ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]        SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 889
    :sswitch_1
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] buffering start       SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 893
    :sswitch_2
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] buffering "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%      SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 897
    :sswitch_3
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelNumber:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]        SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 898
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFromFactoryTest:Z

    if-eqz v11, :cond_0

    .line 899
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bFactoryTestSuccess:Z

    goto/16 :goto_0

    .line 903
    :sswitch_4
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v11

    if-nez v11, :cond_0

    .line 905
    const-string v11, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 909
    .local v4, "message":Landroid/widget/Toast;
    const/16 v11, 0x77

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Landroid/widget/Toast;->setGravity(III)V

    .line 910
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 911
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$4;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 927
    .end local v4    # "message":Landroid/widget/Toast;
    :pswitch_a
    const-string v11, "MtvUiTestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onPlayerNotification ...:CMD_CLOSE: Status-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    packed-switch p2, :pswitch_data_3

    goto/16 :goto_0

    .line 930
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v11, :cond_0

    .line 931
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v11}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    goto/16 :goto_0

    .line 940
    :pswitch_c
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...:CMD_DELETE"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/16 v11, 0x6005

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    .line 943
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$5;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 952
    :pswitch_d
    const-string v11, "MtvUiTestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onPlayerNotification ...:CMD_STATUS_UPDT Status-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    packed-switch p2, :pswitch_data_4

    goto/16 :goto_0

    .line 956
    :pswitch_e
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Channel searching failed ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]        SwapTime(msecs) ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastChannelSwapTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 970
    :pswitch_f
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification ...:CMD_SCAN"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_0

    .line 974
    :sswitch_5
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification :CMD_SCAN : STAT_STARTED"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 976
    .restart local v2    # "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanStartedMSecs:J

    .line 977
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMaxChannelScanTimeMsecs:J

    .line 978
    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMinChannelScanTimeMsecs:J

    .line 979
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    .line 980
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    goto/16 :goto_0

    .line 985
    .end local v2    # "date":Ljava/util/Date;
    :sswitch_6
    const/4 v5, 0x0

    .line 986
    .local v5, "progpercent":I
    const-string v11, "MtvUiTestMode"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onPlayerNotification :CMD_SCAN : STAT_CHNL_DETECTED extra:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 988
    .restart local v2    # "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanStartedMSecs:J

    sub-long v6, v12, v14

    .line 989
    .local v6, "mtemptimeMSecs":J
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanStartedMSecs:J

    .line 990
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMaxChannelScanTimeMsecs:J

    cmp-long v11, v6, v12

    if-lez v11, :cond_4

    .line 991
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMaxChannelScanTimeMsecs:J

    .line 993
    :cond_4
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMinChannelScanTimeMsecs:J

    cmp-long v11, v6, v12

    if-ltz v11, :cond_5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMinChannelScanTimeMsecs:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_6

    .line 994
    :cond_5
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMinChannelScanTimeMsecs:J

    .line 996
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    .line 997
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    if-nez v11, :cond_7

    .line 998
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    .line 1000
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getScanProgessPercentage()I

    move-result v5

    .line 1001
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Completion Status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1007
    .end local v2    # "date":Ljava/util/Date;
    .end local v5    # "progpercent":I
    .end local v6    # "mtemptimeMSecs":J
    :sswitch_7
    const/4 v5, 0x0

    .line 1008
    .restart local v5    # "progpercent":I
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1009
    .restart local v2    # "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanStartedMSecs:J

    .line 1010
    invoke-direct/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getScanProgessPercentage()I

    move-result v5

    .line 1011
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Completion Status: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateAlertDialogText;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1017
    .end local v2    # "date":Ljava/util/Date;
    .end local v5    # "progpercent":I
    :sswitch_8
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification :CMD_SCAN : STAT_COMPLETED"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 1019
    .restart local v2    # "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStopScanTimeMsecs:J

    .line 1020
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStopScanTimeMsecs:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mStartScanTimeMsecs:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastScanTimeMsecs:J

    .line 1021
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mChannelScanInfoTextView:Landroid/widget/TextView;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Last Scan Time (msecs) [ "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastScanTimeMsecs:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ]     Num of Ch. found ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableUpdateText;-><init>(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1022
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1024
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1025
    .local v10, "values":Landroid/content/ContentValues;
    const-string v11, "scantime"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mLastScanTimeMsecs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1026
    const-string v11, "numchannels"

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string v11, "maxchanneltime"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMaxChannelScanTimeMsecs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1028
    const-string v11, "minchanneltime"

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMinChannelScanTimeMsecs:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1029
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v8, v12, v14

    .line 1030
    .local v8, "unixtime":J
    const-string v11, "unixtime"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1031
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->TESTSCANS_URI:Landroid/net/Uri;

    invoke-virtual {v11, v12, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1033
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    if-nez v11, :cond_8

    .line 1034
    const/16 v11, 0x1b

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    .line 1035
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1039
    .end local v2    # "date":Ljava/util/Date;
    .end local v8    # "unixtime":J
    .end local v10    # "values":Landroid/content/ContentValues;
    :sswitch_9
    const-string v11, "MtvUiTestMode"

    const-string v12, "onPlayerNotification :CMD_SCAN : STAT_FAILURE"

    invoke-static {v11, v12}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1041
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    if-nez v11, :cond_9

    .line 1042
    const/16 v11, 0x1b

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    .line 1043
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1052
    :pswitch_10
    packed-switch p2, :pswitch_data_5

    goto/16 :goto_0

    .line 1056
    :pswitch_11
    new-instance v11, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v12}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$RunnableRemoveAlertDialog;-><init>(Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode$1;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1057
    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mNumDetectedChannels:I

    if-nez v11, :cond_a

    .line 1058
    const/16 v11, 0x1b

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mFirstDetectedChannelNumber:I

    .line 1059
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mHandler:Landroid/os/Handler;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_1
        :pswitch_4
        :pswitch_d
        :pswitch_9
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
    .end packed-switch

    .line 784
    :pswitch_data_1
    .packed-switch 0x6004
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 827
    :pswitch_data_2
    .packed-switch 0x6004
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 879
    :sswitch_data_0
    .sparse-switch
        0x6004 -> :sswitch_0
        0x6006 -> :sswitch_1
        0x6007 -> :sswitch_2
        0x6008 -> :sswitch_3
        0x6011 -> :sswitch_4
    .end sparse-switch

    .line 928
    :pswitch_data_3
    .packed-switch 0x6005
        :pswitch_b
    .end packed-switch

    .line 953
    :pswitch_data_4
    .packed-switch 0x600c
        :pswitch_e
    .end packed-switch

    .line 971
    :sswitch_data_1
    .sparse-switch
        0x6001 -> :sswitch_5
        0x6004 -> :sswitch_9
        0x6005 -> :sswitch_8
        0x6015 -> :sswitch_6
        0x6016 -> :sswitch_7
    .end sparse-switch

    .line 1052
    :pswitch_data_5
    .packed-switch 0x6004
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 480
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 482
    const-string v0, "stop"

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 483
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "Hide OneSeg Signal"

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 487
    :goto_0
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mCurrentLayoutState:Z

    if-nez v0, :cond_1

    .line 488
    const-string v0, "Horizontal"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 491
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mConfigSetting:Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;

    iget-boolean v0, v0, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->iTsFileSimul:Z

    if-eqz v0, :cond_2

    .line 492
    const-string v0, "Simul mode Off"

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 497
    :goto_2
    const/4 v0, 0x4

    const-string v1, "Configration"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 499
    const/4 v0, 0x5

    const-string v1, "Update Channel List"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 500
    const/4 v0, 0x6

    const-string v1, "View Past Scan Results"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 486
    :cond_0
    const-string v0, "Show OneSeg Signal"

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 490
    :cond_1
    const-string v0, "Vertical"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1

    .line 494
    :cond_2
    const-string v0, "Simul mode On"

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 1090
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 1075
    packed-switch p1, :pswitch_data_0

    .line 1084
    :goto_0
    return-void

    .line 1077
    :pswitch_0
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mShowSignalState:Z

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->showSignal(Z)V

    goto :goto_0

    .line 1075
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 1094
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1095
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->bIsCreateComplete:Z

    if-eqz v0, :cond_1

    .line 1098
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 1099
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 1105
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mVideoSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    .line 1106
    return-void
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 773
    return-void
.end method

.method public setAudioMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    .line 1147
    const-string v2, "MtvUiTestMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inside setAudioMute : mute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->checkIsCalling()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_0

    .line 1149
    const-string v2, "MtvUiTestMode"

    const-string v3, "setAudioMute() unmute request ignored while call"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/4 p1, 0x1

    .line 1152
    :cond_0
    const/4 v1, 0x0

    .line 1153
    .local v1, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/TestMode/MtvUiTestMode;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1155
    if-nez p1, :cond_3

    .line 1156
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 1157
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v0

    .line 1158
    .local v0, "intf":Landroid/broadcast/IMtvOneSegAudioControl;
    if-eqz v0, :cond_1

    .line 1159
    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->unmuteAudio()Z

    .line 1167
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 1169
    .end local v0    # "intf":Landroid/broadcast/IMtvOneSegAudioControl;
    :cond_2
    return-void

    .line 1162
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 1163
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v0

    .line 1164
    .restart local v0    # "intf":Landroid/broadcast/IMtvOneSegAudioControl;
    if-eqz v0, :cond_1

    .line 1165
    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->muteAudio()Z

    goto :goto_0
.end method
