.class public Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiStatusBarFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final STATUS_BAR_MODE_LIVE:I = 0x0

.field public static final STATUS_BAR_MODE_LOCAL:I = 0x1

.field private static final STATUS_BAR_RSRC_SIGNAL_LEVEL:[I

.field private static final TAG:Ljava/lang/String; = "MtvUiStatusBarFrag"


# instance fields
.field private fragment_mode:I

.field private mBatteryPercentage:Landroid/widget/TextView;

.field private mCalendar:Ljava/util/Calendar;

.field private mChannelName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

.field private mImageView5_1Channel:Landroid/widget/ImageView;

.field private mImageViewBattery:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

.field private mImageViewSignalLevel:Landroid/widget/ImageView;

.field private mIsPopupMenuShowing:Z

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMainBarLayout:Landroid/widget/RelativeLayout;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mProgramChannelDetail:Ljava/lang/String;

.field private mProgramName:Ljava/lang/String;

.field private mRootlayout:Landroid/widget/RelativeLayout;

.field private mRotateButton:Landroid/widget/ImageButton;

.field private mTextViewChannelName:Landroid/widget/TextView;

.field private mTextViewClock:Landroid/widget/TextView;

.field private mTextViewProgramName:Landroid/widget/TextView;

.field private mViewStatusBar:Landroid/view/View;

.field private mVolumeButton:Landroid/widget/ImageButton;

.field private mVolumeMuteButton:Landroid/widget/ImageButton;

.field volumeOnClickListener:Landroid/view/View$OnClickListener;

.field volumeOnLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->STATUS_BAR_RSRC_SIGNAL_LEVEL:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0200c4
        0x7f0200c5
        0x7f0200c6
        0x7f0200c7
        0x7f0200c8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mViewStatusBar:Landroid/view/View;

    .line 86
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMainBarLayout:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mRootlayout:Landroid/widget/RelativeLayout;

    .line 88
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    .line 89
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewBattery:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    .line 90
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mBatteryPercentage:Landroid/widget/TextView;

    .line 92
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    .line 93
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewClock:Landroid/widget/TextView;

    .line 94
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mCalendar:Ljava/util/Calendar;

    .line 95
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewChannelName:Landroid/widget/TextView;

    .line 96
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    .line 99
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    .line 100
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 101
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    .line 103
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mRotateButton:Landroid/widget/ImageButton;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramName:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mChannelName:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 111
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 113
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 616
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnClickListener:Landroid/view/View$OnClickListener;

    .line 625
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 121
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 85
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mViewStatusBar:Landroid/view/View;

    .line 86
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMainBarLayout:Landroid/widget/RelativeLayout;

    .line 87
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mRootlayout:Landroid/widget/RelativeLayout;

    .line 88
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    .line 89
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewBattery:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    .line 90
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mBatteryPercentage:Landroid/widget/TextView;

    .line 92
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    .line 93
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewClock:Landroid/widget/TextView;

    .line 94
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mCalendar:Ljava/util/Calendar;

    .line 95
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewChannelName:Landroid/widget/TextView;

    .line 96
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    .line 98
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    .line 99
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    .line 100
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 101
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    .line 103
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mRotateButton:Landroid/widget/ImageButton;

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramName:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mChannelName:Ljava/lang/String;

    .line 109
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 111
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 113
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 616
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnClickListener:Landroid/view/View$OnClickListener;

    .line 625
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 125
    iput p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->fragment_mode:I

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->toggleVolumeButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    return p1
.end method

.method private getSignalQuality()I
    .locals 2

    .prologue
    .line 320
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 321
    .local v0, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getSignalLevel()I

    move-result v1

    .line 323
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 439
    .local v0, "b24":Z
    const/4 v3, 0x0

    .line 441
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    if-eqz v0, :cond_0

    .line 442
    const-string v1, "HH:mm"

    .line 443
    .local v1, "format":Ljava/lang/String;
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_0
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 446
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "locale":Ljava/lang/String;
    const-string v4, "en"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 448
    const-string v1, "h:mm a"

    .line 453
    .restart local v1    # "format":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    .end local v3    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .restart local v3    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_0

    .line 451
    .end local v1    # "format":Ljava/lang/String;
    :cond_1
    const-string v1, "a h:mm"

    .restart local v1    # "format":Ljava/lang/String;
    goto :goto_1
.end method

.method private initializeUI(Landroid/view/View;)V
    .locals 3
    .param p1, "mViewStatusBar"    # Landroid/view/View;

    .prologue
    .line 167
    const v1, 0x7f0a00e4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMainBarLayout:Landroid/widget/RelativeLayout;

    .line 168
    const v1, 0x7f0a00e3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mRootlayout:Landroid/widget/RelativeLayout;

    .line 169
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mRootlayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 170
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMainBarLayout:Landroid/widget/RelativeLayout;

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 172
    :cond_0
    const v1, 0x7f0a00e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    .line 173
    const v1, 0x7f0a00e9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewBattery:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    .line 174
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewBattery:Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiBatteryView;->setAlpha(F)V

    .line 175
    const v1, 0x7f0a00ed

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mBatteryPercentage:Landroid/widget/TextView;

    .line 177
    const v1, 0x7f0a00e7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    .line 179
    const v1, 0x7f0a00eb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    .line 180
    const v1, 0x7f0a00ec

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    .line 181
    const v1, 0x7f0a0008

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 184
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->volumeOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 188
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudio51Enabled(Z)V

    .line 196
    :cond_1
    const v1, 0x7f0a00e8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewClock:Landroid/widget/TextView;

    .line 197
    const v1, 0x7f0a00e6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewChannelName:Landroid/widget/TextView;

    .line 198
    const v1, 0x7f0a00ea

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    .line 200
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getSignalQuality()I

    move-result v0

    .line 201
    .local v0, "signalQuality":I
    const/16 v1, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->onUpdate(ILjava/lang/Object;)V

    .line 202
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setProgramChannelDetails(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->update5_1Channel()V

    .line 204
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateSleepTimer()V

    .line 205
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateBattery()V

    .line 206
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateClock()V

    .line 207
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateBatteryPercentage()V

    .line 211
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->initilizePopupForHoverEvents()V

    .line 213
    :cond_2
    return-void
.end method

.method private initilizePopupForHoverEvents()V
    .locals 6

    .prologue
    const/16 v5, 0x3031

    const/16 v4, 0x12c

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, -0xa

    .line 216
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 218
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 219
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 220
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 225
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 226
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 227
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 230
    :cond_1
    return-void
.end method

.method private setProgramChannelDetails(Ljava/lang/String;)V
    .locals 5
    .param p1, "inProgramChannelDetails"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "sChannelName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 333
    .local v2, "sProgramName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 335
    move-object v0, p1

    .line 337
    .local v0, "prg_name":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\n"

    invoke-direct {v3, v0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 339
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 340
    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 341
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 342
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setStatusBarProgramDetails(Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setStatusBarChannelDetails(Ljava/lang/String;)V

    .line 350
    .end local v0    # "prg_name":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->update5_1Channel()V

    .line 352
    return-void

    .line 347
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setStatusBarProgramDetails(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setStatusBarChannelDetails(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStatusBarChannelDetails(Ljava/lang/String;)V
    .locals 2
    .param p1, "inChannelName"    # Ljava/lang/String;

    .prologue
    .line 381
    if-eqz p1, :cond_1

    .line 382
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mChannelName:Ljava/lang/String;

    .line 386
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewChannelName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewChannelName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mChannelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 388
    :cond_0
    return-void

    .line 384
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mChannelName:Ljava/lang/String;

    goto :goto_0
.end method

.method private setStatusBarProgramDetails(Ljava/lang/String;)V
    .locals 3
    .param p1, "inProgramName"    # Ljava/lang/String;

    .prologue
    .line 359
    if-eqz p1, :cond_2

    .line 360
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramName:Ljava/lang/String;

    .line 363
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 371
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    :cond_1
    return-void

    .line 366
    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramName:Ljava/lang/String;

    .line 367
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewProgramName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07028a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private toggleVolumeButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 585
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    sget-object v1, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->mMtvFile:Lcom/samsung/sec/mtv/provider/MtvFile;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/provider/MtvFile;->getFileFormat()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 586
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 613
    :cond_1
    :goto_0
    return-void

    .line 591
    :cond_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v0

    .line 592
    .local v0, "volumeLevel":I
    if-nez v0, :cond_5

    .line 593
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    .line 594
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 595
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 596
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 607
    :cond_4
    :goto_1
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070312

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 599
    :cond_5
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    .line 600
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 601
    :cond_6
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_4

    .line 602
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method private update5_1Channel()V
    .locals 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isAudio51Enabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    .line 408
    const/4 v0, 0x1

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->fragment_mode:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0xd0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 410
    :cond_1
    return-void

    .line 406
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateBattery()V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateBatteryInfo()V

    .line 465
    return-void
.end method

.method private updateBatteryInfo()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 479
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 480
    .local v1, "ifilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 482
    .local v0, "batteryStatus":Landroid/content/Intent;
    if-eqz v0, :cond_1

    .line 484
    const-string v5, "status"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 486
    .local v2, "isCharging":Z
    :goto_0
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->setBatteryCharging(Z)V

    .line 488
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 489
    .local v4, "scale":I
    const-string v5, "level"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 490
    .local v3, "level":I
    invoke-static {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->updateBatteryLevel(II)V

    .line 496
    .end local v2    # "isCharging":Z
    .end local v3    # "level":I
    .end local v4    # "scale":I
    :goto_1
    return-void

    .line 484
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 494
    :cond_1
    const-string v5, "MtvUiStatusBarFrag"

    const-string v6, "battery_change_intent not broadcasted not able to update :("

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateBatteryPercentage()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 471
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mBatteryPercentage:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mBatteryPercentage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvBatteryInfo;->getBatteryLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mBatteryPercentage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_battery_percentage"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    :cond_0
    return-void

    .line 473
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateClock()V
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 431
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewClock:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mTextViewClock:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    :cond_0
    return-void
.end method

.method private updateComponentsOnLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 648
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 650
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 651
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mVolumeMuteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 652
    return-void
.end method

.method private updateSignalLevel(I)V
    .locals 2
    .param p1, "signal"    # I

    .prologue
    .line 413
    if-gez p1, :cond_0

    .line 414
    const/4 p1, 0x0

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->STATUS_BAR_RSRC_SIGNAL_LEVEL:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 418
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->fragment_mode:I

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    :cond_1
    :goto_0
    return-void

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageViewSignalLevel:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSleepTimer()V
    .locals 2

    .prologue
    .line 394
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAutoPowerOffTime()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 399
    .local v0, "active":Z
    :goto_0
    return-void

    .line 394
    .end local v0    # "active":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closePopupMenu()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    .line 662
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 516
    const-string v0, "TAG"

    const-string v1, "onAttach"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 519
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 552
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 581
    :goto_0
    return-void

    .line 555
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0xd1

    new-instance v2, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 557
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->showPopupMenu()V

    goto :goto_0

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0008
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->fragment_mode:I

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .line 157
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setRetainInstance(Z)V

    .line 159
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mCalendar:Ljava/util/Calendar;

    .line 160
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 129
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mContext:Landroid/content/Context;

    .line 131
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 132
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 133
    const v0, 0x7f03002a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mViewStatusBar:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mViewStatusBar:Landroid/view/View;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mViewStatusBar:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->initializeUI(Landroid/view/View;)V

    .line 147
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->toggleVolumeButton()V

    .line 148
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mViewStatusBar:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 541
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 548
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 502
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroyView()V

    .line 503
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 507
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "onDetach"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 511
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 512
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 526
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateSleepTimer()V

    .line 533
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateBatteryPercentage()V

    .line 534
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->update5_1Channel()V

    .line 535
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->toggleVolumeButton()V

    .line 536
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x2

    .line 238
    const-string v2, "MtvUiStatusBarFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate : what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sparse-switch p1, :sswitch_data_0

    .line 312
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 243
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_0
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 244
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateComponentsOnLock(Z)V

    goto :goto_0

    .line 249
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->toggleVolumeButton()V

    goto :goto_0

    .line 252
    :sswitch_2
    const/4 v1, 0x0

    .line 253
    .local v1, "level":I
    if-eqz p2, :cond_1

    .line 254
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 256
    :cond_1
    const-string v2, "MtvUiStatusBarFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate: UPDATE_ANNOUNCE_SIGNAL : level= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateSignalLevel(I)V

    goto :goto_0

    .line 262
    .end local v1    # "level":I
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_3
    if-eqz p2, :cond_2

    .line 263
    check-cast p2, Ljava/lang/String;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    .line 266
    :goto_1
    const-string v2, "MtvUiStatusBarFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate: UPDATE_NOW_PROGRAM : mProgramChannelDetail= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->setProgramChannelDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mProgramChannelDetail:Ljava/lang/String;

    goto :goto_1

    .line 275
    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_0

    .line 276
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateBattery()V

    .line 277
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateBatteryPercentage()V

    .line 278
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getSignalQuality()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateSignalLevel(I)V

    goto :goto_0

    .line 284
    :sswitch_5
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateClock()V

    goto/16 :goto_0

    .line 289
    :sswitch_6
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->update5_1Channel()V

    goto/16 :goto_0

    .line 293
    :sswitch_7
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->updateSleepTimer()V

    goto/16 :goto_0

    .line 296
    :sswitch_8
    const/4 v0, 0x0

    .line 297
    .local v0, "format":I
    if-eqz p2, :cond_3

    .line 298
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 299
    :cond_3
    if-ne v0, v5, :cond_4

    .line 300
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mImageView5_1Channel:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 301
    :cond_4
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->toggleVolumeButton()V

    goto/16 :goto_0

    .line 304
    .end local v0    # "format":I
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->showPopupMenu()V

    goto/16 :goto_0

    .line 307
    :sswitch_a
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->closePopupMenu()V

    goto/16 :goto_0

    .line 241
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_1
        0x6b -> :sswitch_1
        0x6c -> :sswitch_1
        0x70 -> :sswitch_0
        0x7f -> :sswitch_8
        0x81 -> :sswitch_9
        0x89 -> :sswitch_a
    .end sparse-switch
.end method

.method public showPopupMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 665
    const-string v0, "MtvUiStatusBarFrag"

    const-string v1, "showPopupMenu()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 687
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$4;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag$5;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 714
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    if-ne v0, v4, :cond_0

    .line 715
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 719
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 720
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/Activity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 721
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mIsPopupMenuShowing:Z

    .line 722
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiStatusBarFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 723
    return-void
.end method
