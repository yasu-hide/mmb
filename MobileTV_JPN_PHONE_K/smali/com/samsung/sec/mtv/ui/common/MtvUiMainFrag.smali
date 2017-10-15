.class public Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiMainFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MtvUiMainFrag"

.field private static channelNext:Ljava/lang/String;

.field private static channelPre:Ljava/lang/String;


# instance fields
.field private mChDownButton:Landroid/widget/ImageButton;

.field private mChGuideButton:Landroid/widget/Button;

.field private mChUpButton:Landroid/widget/ImageButton;

.field private mChannelName:Ljava/lang/String;

.field private mChminiModeButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mControlLayout:Landroid/widget/RelativeLayout;

.field private mLayoutView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mProgramChannelDetail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "No Program Name"

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelNext:Ljava/lang/String;

    .line 68
    const-string v0, "No Program Name"

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelPre:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    .line 56
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    .line 58
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChminiModeButton:Landroid/widget/ImageButton;

    .line 59
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    .line 60
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mProgramChannelDetail:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChannelName:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-void
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    .line 82
    .local v1, "orientation":I
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a0095

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    .line 83
    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    const v3, 0x7f06000a

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mControlLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag$1;

    invoke-direct {v3, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 96
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a0098

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    .line 97
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a0096

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    .line 99
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isMiniModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a0099

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChminiModeButton:Landroid/widget/ImageButton;

    .line 101
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChminiModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :cond_1
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    const v3, 0x7f0a0097

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    .line 106
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    if-nez v1, :cond_3

    .line 115
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNumberForDisplay()I

    move-result v0

    .line 116
    .local v0, "displayChNum":I
    if-gez v0, :cond_2

    .line 117
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 125
    .end local v0    # "displayChNum":I
    :goto_0
    return-void

    .line 119
    .restart local v0    # "displayChNum":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    .end local v0    # "displayChNum":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mProgramChannelDetail:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->setChannelDetails(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initilizePopupForHoverEvents()V
    .locals 7

    .prologue
    const/16 v6, 0x3031

    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, -0xa

    .line 129
    const-string v0, "MtvUiMainFrag"

    const-string v1, "initilizePopupForHoverEvents is called....:"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getNextChannelInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelNext:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getPreChannelInfo()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelPre:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 135
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 136
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 137
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelPre:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 142
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 143
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 144
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 145
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    sget-object v1, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelNext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 148
    :cond_1
    return-void
.end method

.method private setChannelDetails(Ljava/lang/String;)V
    .locals 6
    .param p1, "inProgramChannelDetails"    # Ljava/lang/String;

    .prologue
    .line 386
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNumberForDisplay()I

    move-result v0

    .line 387
    .local v0, "displayChNum":I
    if-gez v0, :cond_1

    .line 388
    const-string v2, ""

    .line 391
    .local v2, "sChannelName":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    .line 392
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 395
    .local v1, "prg_name":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, "\n"

    invoke-direct {v3, v1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->setMainFragChannelDetails(Ljava/lang/String;)V

    .line 405
    .end local v1    # "prg_name":Ljava/lang/String;
    .end local v3    # "st":Ljava/util/StringTokenizer;
    :goto_1
    return-void

    .line 390
    .end local v2    # "sChannelName":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "sChannelName":Ljava/lang/String;
    goto :goto_0

    .line 402
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->setMainFragChannelDetails(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setMainFragChannelDetails(Ljava/lang/String;)V
    .locals 3
    .param p1, "inChannelName"    # Ljava/lang/String;

    .prologue
    .line 412
    if-eqz p1, :cond_1

    .line 413
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChannelName:Ljava/lang/String;

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_0
    return-void

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNumberForDisplay()I

    move-result v0

    .line 416
    .local v0, "displayChNum":I
    if-gez v0, :cond_2

    .line 417
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChannelName:Ljava/lang/String;

    goto :goto_0

    .line 419
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChannelName:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateComponentsOnLock(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 152
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 155
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isMiniModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChminiModeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 285
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    return-void

    .line 286
    :catch_0
    move-exception v1

    .line 287
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
    .locals 7
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 378
    :goto_0
    return-void

    .line 334
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xe8

    invoke-interface {v1, v2, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 337
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xe9

    invoke-interface {v1, v2, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 341
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xeb

    invoke-interface {v1, v2, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 363
    :pswitch_3
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 364
    const-string v3, "MtvUiMainFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick Btn_AppInApp: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "State: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " Command: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    if-ne v1, v3, :cond_1

    const/16 v1, 0x5000

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 367
    .local v0, "bIsStatePlaying":Z
    :goto_2
    if-eqz v0, :cond_2

    .line 368
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xec

    invoke-interface {v1, v2, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 364
    .end local v0    # "bIsStatePlaying":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mMtvAppPlaybackContext: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 365
    goto :goto_2

    .line 370
    .restart local v0    # "bIsStatePlaying":Z
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v3, 0x7f07020e

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0096
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 301
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->setRetainInstance(Z)V

    .line 302
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 164
    const-string v1, "MtvUiMainFrag"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mContext:Landroid/content/Context;

    .line 166
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isMiniModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const v1, 0x7f03001c

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    .line 172
    :goto_0
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 173
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->initializeUI()V

    .line 176
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->initilizePopupForHoverEvents()V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 183
    .local v0, "mGenericPlayerActivity":Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->updateComponentsOnLock(Z)V

    .line 186
    .end local v0    # "mGenericPlayerActivity":Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    return-object v1

    .line 170
    :cond_2
    const v1, 0x7f03001b

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mLayoutView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 294
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 295
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPause()V

    .line 308
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 312
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 315
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0xc9

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getDisplaySize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 317
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 322
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStart()V

    .line 323
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 329
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f0a0099

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 197
    const-string v2, "MtvUiMainFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUpdate: what["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    sparse-switch p1, :sswitch_data_0

    .line 277
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 278
    return-void

    .line 201
    :sswitch_1
    instance-of v2, p2, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 202
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->updateComponentsOnLock(Z)V

    goto :goto_0

    .line 207
    :sswitch_2
    if-eqz p2, :cond_1

    move-object v2, p2

    .line 208
    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mProgramChannelDetail:Ljava/lang/String;

    .line 211
    :goto_1
    const-string v2, "MtvUiMainFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate: UPDATE_NOW_PROGRAM : mProgramChannelDetail= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mProgramChannelDetail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNumberForDisplay()I

    move-result v0

    .line 215
    .local v0, "displayChNum":I
    if-gez v0, :cond_2

    .line 216
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    .end local v0    # "displayChNum":I
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mProgramChannelDetail:Ljava/lang/String;

    goto :goto_1

    .line 218
    .restart local v0    # "displayChNum":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChGuideButton:Landroid/widget/Button;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .end local v0    # "displayChNum":I
    :cond_3
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mProgramChannelDetail:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->setChannelDetails(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :sswitch_3
    const-string v2, "MtvUiMainFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MTV_UPDATE_FRAG_CMD_MAIN_CHANNEL_NEXT_PRE_HOVER :channelNext : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelNext:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isHoverEnabled()Z

    move-result v5

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    and-int/2addr v2, v5

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    if-eqz v5, :cond_5

    :goto_3
    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getNextChannelInfo()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelNext:Ljava/lang/String;

    .line 251
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChUpButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelNext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getPreChannelInfo()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelPre:Ljava/lang/String;

    .line 254
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->mChDownButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->channelPre:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    move v2, v4

    .line 249
    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3

    .line 262
    :sswitch_4
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 264
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 265
    .local v1, "enable":Z
    if-eqz v1, :cond_6

    .line 266
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 268
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMainFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 198
    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_2
        0x70 -> :sswitch_1
        0xea -> :sswitch_0
        0xed -> :sswitch_3
        0xee -> :sswitch_4
    .end sparse-switch
.end method

.method public redraw()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->redraw()V

    .line 75
    return-void
.end method
