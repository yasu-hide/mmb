.class public Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiFilePlayerVidFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiFilePlayerVidFrag"

.field private static final TIMEOUT_EXTRA_INTERVAL_VALUE:I = 0x3e8

.field private static final TIMEOUT_INTERVAL_VALUE:I = 0x1388


# instance fields
.field private TRICKMODESPEED_NONE:I

.field private isLocked:Z

.field private mAppInAppButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mControlLayout:Landroid/widget/RelativeLayout;

.field private mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

.field private mIsPopupMenuShowing:Z

.field private mLayoutView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPlayPauseButton:Landroid/widget/ImageButton;

.field private mPlayerSeekBar:Landroid/widget/SeekBar;

.field private mPlayerSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mPlayingTimeTextView:Landroid/widget/TextView;

.field private mPlayingTotalTimeTextView:Landroid/widget/TextView;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mProgressBarArea:Landroid/widget/RelativeLayout;

.field private mTotalDurationInSecond:I

.field private mTrickModeText:Landroid/widget/TextView;

.field private mVideoFragMsgHandler:Landroid/os/Handler;

.field private mbIsTouching:Z

.field private nextFile:Ljava/lang/String;

.field private previousFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 48
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    .line 52
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 53
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mIsPopupMenuShowing:Z

    .line 54
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 55
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 56
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 57
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    .line 58
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    .line 59
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mAppInAppButton:Landroid/widget/ImageButton;

    .line 66
    iput v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    .line 67
    iput v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->TRICKMODESPEED_NONE:I

    .line 69
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mbIsTouching:Z

    .line 72
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->isLocked:Z

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->previousFile:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->nextFile:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 342
    new-instance v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mVideoFragMsgHandler:Landroid/os/Handler;

    .line 83
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "isLocked"    # I

    .prologue
    const/4 v0, 0x1

    .line 87
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;-><init>()V

    .line 88
    if-ne p1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->isLocked:Z

    .line 89
    return-void

    .line 88
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mbIsTouching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method private getDurationInSeconds(I)I
    .locals 1
    .param p1, "milisec"    # I

    .prologue
    .line 890
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 891
    const/4 v0, 0x1

    .line 893
    :goto_0
    return v0

    :cond_0
    add-int/lit16 v0, p1, 0x384

    div-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method private initializeUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 277
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getFileTotalTime()I

    move-result v1

    .line 278
    .local v1, "totaltime":I
    invoke-static {}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getInstance()Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer$MTvAppPlaybackTimer;->getCurrentPlayBackTime()I

    move-result v0

    .line 280
    .local v0, "currenttime":I
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getDurationInSeconds(I)I

    move-result v1

    .line 281
    iput v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    .line 282
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFileEndtime(I)V

    .line 283
    if-lez v0, :cond_2

    .line 284
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFilePlayingtime(I)V

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 288
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 289
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 290
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->bringToFront()V

    .line 292
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    :cond_0
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isMiniModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 317
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 319
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 321
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    const v3, 0x7f020097

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 322
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a00f5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 325
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setMainControlByPlayback(Z)V

    .line 328
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$2;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v3, 0xc9

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getDisplaySize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 339
    return-void

    .line 286
    :cond_2
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFilePlayingtime(I)V

    goto/16 :goto_0
.end method

.method private initilizePopupForHoverEvents()V
    .locals 7

    .prologue
    const/16 v6, 0x3031

    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, -0xa

    .line 356
    const-string v0, "MtvUiFilePlayerVidFrag"

    const-string v1, "initilizePopupForHoverEvents is called....:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getNextFileInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->nextFile:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getPreFileInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->previousFile:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->previousFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 366
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 367
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 368
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->nextFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 375
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 376
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 389
    :cond_1
    return-void
.end method

.method private setInitialMainControl(I)V
    .locals 5
    .param p1, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v0

    .line 244
    .local v0, "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    const/16 v2, 0x72

    if-ne p1, v2, :cond_2

    .line 245
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 253
    :goto_0
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v0, :cond_0

    .line 254
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 255
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    const v3, 0x7f020097

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 258
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v0, :cond_1

    .line 259
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 260
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    const v3, 0x7f02009a

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getFileTotalTime()I

    move-result v1

    .line 266
    .local v1, "totaltime":I
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getDurationInSeconds(I)I

    move-result v1

    .line 267
    iput v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    .line 268
    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFileEndtime(I)V

    .line 269
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFilePlayingtime(I)V

    .line 270
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 271
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 272
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 273
    return-void

    .line 249
    .end local v1    # "totaltime":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setMainControlByPlayback(Z)V
    .locals 13
    .param p1, "bIsInTrickMode"    # Z

    .prologue
    const v12, 0x7f020097

    const v11, 0x7f02009a

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 155
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    .line 156
    .local v4, "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlayerCommand()I

    move-result v5

    .line 158
    .local v5, "playerCommand":I
    const/4 v2, 0x1

    .local v2, "mbPauseEnabled":Z
    const/4 v3, 0x0

    .local v3, "mbResumeEnabled":Z
    const/4 v1, 0x0

    .local v1, "mbIsDim":Z
    const/4 v0, 0x0

    .line 160
    .local v0, "mbIsAnException":Z
    const-string v6, "MtvUiFilePlayerVidFrag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setMainControlByPlayback: playbackState["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] playerCommand["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] bIsInTrickMode["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    if-nez p1, :cond_c

    .line 162
    const/16 v6, 0x5000

    if-ne v6, v5, :cond_4

    .line 163
    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v4, :cond_3

    .line 165
    const/4 v2, 0x1

    .line 187
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 191
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 195
    if-eqz v0, :cond_7

    .line 196
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v10}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 200
    :goto_1
    if-eqz v2, :cond_1

    .line 201
    if-eqz v1, :cond_8

    .line 202
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 203
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 217
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 218
    if-eqz v1, :cond_a

    .line 219
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v10}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 220
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 240
    :cond_2
    :goto_3
    return-void

    .line 167
    :cond_3
    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v4, :cond_0

    .line 168
    const/4 v3, 0x1

    .line 169
    const/4 v0, 0x1

    goto :goto_0

    .line 172
    :cond_4
    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v4, :cond_5

    const/16 v6, 0x5009

    if-ne v6, v5, :cond_5

    .line 173
    const/4 v2, 0x1

    .line 174
    const/4 v1, 0x1

    goto :goto_0

    .line 176
    :cond_5
    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v4, :cond_6

    const/16 v6, 0x500a

    if-ne v6, v5, :cond_6

    .line 177
    const/4 v3, 0x1

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 180
    :cond_6
    sget-object v6, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v6, v4, :cond_0

    const/16 v6, 0x500b

    if-ne v6, v5, :cond_0

    .line 181
    const/4 v3, 0x1

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 198
    :cond_7
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 206
    :cond_8
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 207
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 210
    if-eqz v0, :cond_9

    .line 211
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v10}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 213
    :cond_9
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_2

    .line 223
    :cond_a
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 224
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 227
    if-eqz v0, :cond_b

    .line 228
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v10}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3

    .line 230
    :cond_b
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v9}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3

    .line 235
    :cond_c
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 237
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_2

    .line 238
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v6, v10}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_3
.end method

.method private setTextFileEndtime(I)V
    .locals 8
    .param p1, "totaltime"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 861
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 862
    const/16 v1, 0xe10

    if-ge p1, v1, :cond_1

    .line 863
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTotalTimeTextView:Landroid/widget/TextView;

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, p1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    div-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 870
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTotalTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 872
    :cond_0
    return-void

    .line 867
    :cond_1
    div-int/lit8 v0, p1, 0x3c

    .line 868
    .local v0, "newtime":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTotalTimeTextView:Landroid/widget/TextView;

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, p1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setTextFilePlayingtime(I)V
    .locals 8
    .param p1, "time"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 874
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTimeTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 875
    const/16 v1, 0xe10

    if-ge p1, v1, :cond_2

    iget v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    if-gt p1, v1, :cond_2

    .line 876
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTimeTextView:Landroid/widget/TextView;

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, p1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    div-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 887
    :cond_1
    return-void

    .line 880
    :cond_2
    div-int/lit8 v0, p1, 0x3c

    .line 881
    .local v0, "newtime":I
    iget v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTotalDurationInSecond:I

    if-gt p1, v1, :cond_0

    .line 882
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTimeTextView:Landroid/widget/TextView;

    const-string v2, "%02d:%02d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    div-int/lit16 v4, p1, 0xe10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    rem-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    rem-int/lit8 v4, p1, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateFragmentsBasedOnLockState(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x4

    .line 426
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 428
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v2

    if-nez v2, :cond_2

    .line 429
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 437
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 438
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 439
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 440
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mAppInAppButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mAppInAppButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 443
    :cond_0
    const/16 v1, 0x71

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->onUpdate(ILjava/lang/Object;)V

    .line 444
    return-void

    .end local v0    # "visibility":I
    :cond_1
    move v0, v1

    .line 426
    goto :goto_0

    .line 431
    .restart local v0    # "visibility":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateTrickSeekBar(I)V
    .locals 3
    .param p1, "trickModeSpeed"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 610
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 611
    iget v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->TRICKMODESPEED_NONE:I

    if-ne p1, v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0x11d

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0x11e

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private updateTrickSpeed(I)V
    .locals 2
    .param p1, "trickModeSpeed"    # I

    .prologue
    const/4 v1, 0x0

    .line 623
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 624
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    const-string v1, "2x"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    const-string v1, "10x"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 638
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 640
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    return-void

    .line 641
    :catch_0
    move-exception v1

    .line 642
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " must implement IMtvFragEventListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 699
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    .line 700
    .local v3, "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlayerCommand()I

    move-result v1

    .line 701
    .local v1, "command":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getTrickMode()I

    move-result v4

    .line 703
    .local v4, "trickMode":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isPhoneLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 732
    :sswitch_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isInTrickMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "bIsStatePlaying":Z
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    .line 737
    .local v2, "playbackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    const-string v7, "MtvUiFilePlayerVidFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onClick Btn_AppInApp: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "State: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " Command: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    if-eqz v2, :cond_6

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v7

    if-ne v5, v7, :cond_6

    :cond_2
    const/16 v5, 0x5000

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v7

    if-ne v5, v7, :cond_6

    const/4 v0, 0x1

    .line 741
    :goto_2
    if-eqz v0, :cond_7

    .line 742
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0xec

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 708
    .end local v0    # "bIsStatePlaying":Z
    .end local v2    # "playbackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :sswitch_1
    const-string v5, "MtvUiFilePlayerVidFrag"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick - VideoPlayerBtnPause: command["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    if-eqz v4, :cond_3

    .line 715
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0x11c

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 718
    :cond_3
    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v5, v3, :cond_4

    .line 719
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0x116

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 720
    :cond_4
    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v5, v3, :cond_0

    .line 721
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0x117

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 728
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0xdd

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 737
    .restart local v0    # "bIsStatePlaying":Z
    .restart local v2    # "playbackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " mMtvAppPlaybackContext: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_6
    move v0, v6

    .line 739
    goto :goto_2

    .line 744
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f07020e

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 746
    .end local v0    # "bIsStatePlaying":Z
    .end local v2    # "playbackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v7, 0x7f070308

    invoke-static {v5, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 750
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0x115

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 753
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v6, 0x114

    invoke-interface {v5, v6, v10}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 706
    :sswitch_data_0
    .sparse-switch
        0x7f0a0099 -> :sswitch_0
        0x7f0a00de -> :sswitch_2
        0x7f0a00eb -> :sswitch_2
        0x7f0a00ec -> :sswitch_2
        0x7f0a00f6 -> :sswitch_3
        0x7f0a00f7 -> :sswitch_1
        0x7f0a00f8 -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 656
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 657
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    .line 659
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mContext:Landroid/content/Context;

    .line 395
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isMiniModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    const v0, 0x7f03002c

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 402
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    .line 404
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    .line 405
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 410
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayPauseButton:Landroid/widget/ImageButton;

    .line 411
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    .line 412
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    .line 414
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a0099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mAppInAppButton:Landroid/widget/ImageButton;

    .line 415
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTimeTextView:Landroid/widget/TextView;

    .line 416
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayingTotalTimeTextView:Landroid/widget/TextView;

    .line 417
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mTrickModeText:Landroid/widget/TextView;

    .line 418
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 420
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    return-object v0

    .line 399
    :cond_0
    const v0, 0x7f03002b

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 663
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 664
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mIsPopupMenuShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 651
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 652
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0a00f7

    const/4 v4, 0x1

    .line 813
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlaybackState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    .line 814
    .local v2, "playbackState":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getPlayerCommand()I

    move-result v0

    .line 815
    .local v0, "command":I
    const/4 v1, 0x0

    .line 817
    .local v1, "isTrickModeHandled":Z
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 853
    :goto_0
    if-eqz v1, :cond_0

    move v3, v4

    .line 856
    :cond_0
    :goto_1
    return v3

    .line 821
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeMute()V

    .line 823
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0xdc

    invoke-interface {v3, v5, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    move v3, v4

    .line 824
    goto :goto_1

    .line 828
    :sswitch_1
    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v5, :cond_1

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PAUSED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v2, v5, :cond_3

    const/16 v5, 0x500b

    if-ne v0, v5, :cond_3

    .line 832
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v5, 0x7f02009a

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 833
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 836
    const v3, 0x7f0a00f8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 837
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0x11a

    invoke-interface {v3, v5, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    :goto_2
    move v3, v4

    .line 840
    goto :goto_1

    .line 839
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0x11b

    invoke-interface {v3, v5, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_2

    .line 843
    :cond_3
    const/4 v1, 0x1

    .line 844
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f07029a

    invoke-static {v5, v6, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 848
    :sswitch_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    const v5, 0x7f020097

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    move v3, v4

    .line 849
    goto :goto_1

    .line 817
    :sswitch_data_0
    .sparse-switch
        0x7f0a00de -> :sswitch_0
        0x7f0a00eb -> :sswitch_0
        0x7f0a00ec -> :sswitch_0
        0x7f0a00f6 -> :sswitch_1
        0x7f0a00f7 -> :sswitch_2
        0x7f0a00f8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 668
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPause()V

    .line 669
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 673
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 676
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->initializeUI()V

    .line 679
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 680
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->initilizePopupForHoverEvents()V

    .line 682
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getTrickModeSpeed()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateTrickSpeed(I)V

    .line 684
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->isLocked:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 685
    .local v0, "isEnabled":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateFragmentsBasedOnLockState(Z)V

    .line 686
    return-void

    .line 684
    .end local v0    # "isEnabled":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 690
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStart()V

    .line 691
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 695
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 696
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 12
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    const v10, 0x7f0a00f7

    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 451
    const-string v4, "MtvUiFilePlayerVidFrag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onUpdate: what["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->isLocked:Z

    if-eqz v4, :cond_1

    .line 456
    const/16 v4, 0x70

    if-eq p1, v4, :cond_0

    const/16 v4, 0x78

    if-eq p1, v4, :cond_0

    const/16 v4, 0x7e

    if-eq p1, v4, :cond_0

    const/16 v4, 0x72

    if-eq p1, v4, :cond_0

    const/16 v4, 0x196

    if-eq p1, v4, :cond_0

    const/16 v4, 0xee

    if-ne p1, v4, :cond_3

    .line 461
    :cond_0
    const-string v4, "MtvUiFilePlayerVidFrag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "This Event what = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " will served in the locked state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 606
    :cond_2
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 607
    :goto_1
    return-void

    .line 465
    :cond_3
    const-string v4, "MtvUiFilePlayerVidFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This Event what = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " will not be served in the locked state"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 472
    :sswitch_1
    if-eqz p2, :cond_5

    move-object v4, p2

    .line 474
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v5

    :goto_2
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->isLocked:Z

    move-object v4, p2

    .line 475
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateFragmentsBasedOnLockState(Z)V

    goto :goto_0

    :cond_4
    move v4, v6

    .line 474
    goto :goto_2

    .line 478
    :cond_5
    const-string v4, "MtvUiFilePlayerVidFrag"

    const-string v5, "UPDATE_COMPONENTS_ON_LOCK : Value passed is null ; can\'t update "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    move-object v4, p2

    .line 487
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setMainControlByPlayback(Z)V

    goto :goto_0

    .line 490
    :sswitch_3
    if-eqz p2, :cond_2

    move-object v3, p2

    .line 491
    check-cast v3, Landroid/os/Bundle;

    .line 492
    .local v3, "vidBundle":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 493
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getCurrentFileIndex()I

    move-result v4

    const-string v5, "fileIndex"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 494
    const-string v4, "fileUpdateTime"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 495
    .local v2, "time":I
    if-gez v2, :cond_6

    .line 496
    const/4 v2, 0x0

    .line 497
    :cond_6
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFilePlayingtime(I)V

    .line 498
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    if-eqz v4, :cond_2

    .line 499
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 505
    .end local v2    # "time":I
    .end local v3    # "vidBundle":Landroid/os/Bundle;
    :sswitch_4
    const-string v5, "MtvUiFilePlayerVidFrag"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEEK_PROGRESS time at fragment = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mbIsTouching:Z

    if-nez v4, :cond_2

    move-object v4, p2

    .line 507
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setTextFilePlayingtime(I)V

    .line 508
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    move-object v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 512
    :sswitch_5
    const/16 v4, 0x72

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setInitialMainControl(I)V

    goto/16 :goto_0

    .line 515
    :sswitch_6
    const/16 v4, 0x7e

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->setInitialMainControl(I)V

    goto/16 :goto_0

    .line 518
    :sswitch_7
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPlayerSeekBar:Landroid/widget/SeekBar;

    move-object v4, p2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/16 :goto_0

    .line 522
    :sswitch_8
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    const v5, 0x7f02009a

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 523
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mLayoutView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto/16 :goto_0

    .line 527
    :sswitch_9
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    .line 528
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_7

    .line 529
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 530
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0x11e

    invoke-interface {v4, v5, v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 533
    :cond_7
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 534
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0x11d

    invoke-interface {v4, v5, v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 539
    :sswitch_a
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_2

    .line 540
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    .line 541
    .local v1, "orientation":I
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    .line 542
    iget-boolean v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mbIsTouching:Z

    if-eqz v4, :cond_8

    .line 543
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0x119

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 545
    :cond_8
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 549
    .end local v1    # "orientation":I
    :sswitch_b
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_9

    .line 550
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    :cond_9
    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateTrickSpeed(I)V

    goto/16 :goto_0

    .line 554
    :sswitch_c
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_a

    .line 555
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    :cond_a
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->getTrickModeSpeed()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateTrickSpeed(I)V

    .line 557
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v5, 0x11d

    invoke-interface {v4, v5, v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_d
    move-object v4, p2

    .line 560
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateTrickSpeed(I)V

    goto/16 :goto_0

    .line 563
    :sswitch_e
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mFilePlayer:Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;->isBmlFullView()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, p2

    .line 564
    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->updateTrickSeekBar(I)V

    goto/16 :goto_0

    .line 567
    :sswitch_f
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mProgressBarArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 570
    :sswitch_10
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->initializeUI()V

    goto/16 :goto_0

    .line 575
    :sswitch_11
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v7

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_b

    move v4, v5

    :goto_3
    and-int/2addr v4, v7

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    if-eqz v7, :cond_c

    :goto_4
    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 576
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mNextButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getNextFileInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPrevButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getPreFileInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 575
    goto :goto_3

    :cond_c
    move v5, v6

    goto :goto_4

    .line 584
    :sswitch_12
    const-string v4, "MtvUiFilePlayerVidFrag"

    const-string v5, "Entered MTV_UPDATE_FRAG_CMD_MAIN_POPUP_ENABLE"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    if-eqz p2, :cond_2

    move-object v4, p2

    .line 587
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 588
    .local v0, "enable":Z
    if-eqz v0, :cond_d

    .line 590
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0099

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 594
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayerVidFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0a0099

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x70 -> :sswitch_1
        0x71 -> :sswitch_2
        0x72 -> :sswitch_5
        0x74 -> :sswitch_8
        0x75 -> :sswitch_9
        0x76 -> :sswitch_b
        0x77 -> :sswitch_c
        0x78 -> :sswitch_d
        0x79 -> :sswitch_a
        0x7a -> :sswitch_e
        0x7b -> :sswitch_f
        0x7c -> :sswitch_10
        0x7e -> :sswitch_6
        0xed -> :sswitch_11
        0xee -> :sswitch_12
        0x196 -> :sswitch_4
        0x197 -> :sswitch_3
        0x198 -> :sswitch_7
    .end sparse-switch
.end method
