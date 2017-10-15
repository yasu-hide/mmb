.class public Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiRecordFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final RECORD_DURATION_VISIBILITY:Ljava/lang/String; = "recDurationVisibility"

.field public static final RECORD_MAIN_LAYOUT_VISIBILITY:Ljava/lang/String; = "recMainLayoutVisibility"

.field public static final RECORD_TIME:Ljava/lang/String; = "recordTime"

.field private static final TAG:Ljava/lang/String; = "MtvUiRecordFrag"


# instance fields
.field private RunnableRemoveRecordTimer:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mIsPopupMenuShowing:Z

.field private mLayoutView:Landroid/view/View;

.field private mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mRecDuration:Landroid/widget/TextView;

.field private mRecDurationVisibility:I

.field private mRecMainLayout:Landroid/widget/RelativeLayout;

.field private mRecMainLayoutVisibility:I

.field private mRecScrDisp:Landroid/widget/ImageButton;

.field private mRecordFragHandler:Landroid/os/Handler;

.field private mStopIcon:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 57
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    .line 58
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    .line 59
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    .line 60
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    .line 62
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mIsPopupMenuShowing:Z

    .line 64
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 68
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 72
    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayoutVisibility:I

    .line 73
    iput v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDurationVisibility:I

    .line 548
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$3;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$3;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    .line 555
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$4;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$4;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->RunnableRemoveRecordTimer:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mIsPopupMenuShowing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    return-object v0
.end method

.method private initializeUI()V
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    .line 141
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    .line 154
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    .line 188
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :goto_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    const v1, 0x7f0a00da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    .line 195
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getDisplaySize()I

    move-result v0

    if-nez v0, :cond_5

    .line 205
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    const v1, 0x7f020024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 209
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->RunnableRemoveRecordTimer:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 210
    return-void

    .line 162
    :cond_2
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "initializeUI:mRecMainLayout : null "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 192
    :cond_3
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "mStopIcon : null "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_4
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "mRecScrDisp : null "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecScrDisp:Landroid/widget/ImageButton;

    const v1, 0x7f020025

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3
.end method

.method private isPhoneLocked()Z
    .locals 5

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, "bRetVal":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    if-eqz v2, :cond_0

    .line 582
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;

    .line 583
    .local v1, "mGenericPlayerActivity":Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->isPhoneLocked()Z

    move-result v0

    .line 585
    .end local v1    # "mGenericPlayerActivity":Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;
    :cond_0
    const-string v2, "MtvUiRecordFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPhoneLocked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return v0
.end method

.method private updateRecordComponents(ZZ)V
    .locals 8
    .param p1, "flag"    # Z
    .param p2, "bIsLockUpdate"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 265
    const-string v4, "MtvUiRecordFrag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateRecordComponents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    if-eqz p1, :cond_1

    move v1, v2

    .line 268
    .local v1, "visibility":I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v0

    .line 270
    .local v0, "orientation":I
    if-ne v0, v7, :cond_2

    .line 271
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 284
    :goto_1
    if-nez p2, :cond_4

    .line 286
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    :goto_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayoutVisibility:I

    .line 298
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDurationVisibility:I

    .line 300
    iget v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayoutVisibility:I

    if-nez v2, :cond_0

    if-ne v0, v7, :cond_0

    .line 301
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 302
    :cond_0
    return-void

    .end local v0    # "orientation":I
    .end local v1    # "visibility":I
    :cond_1
    move v1, v3

    .line 266
    goto :goto_0

    .line 274
    .restart local v0    # "orientation":I
    .restart local v1    # "visibility":I
    :cond_2
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 275
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_3

    .line 276
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 281
    :cond_3
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->updateStopIcon()V

    goto :goto_1

    .line 291
    :cond_4
    if-nez p1, :cond_5

    if-ne v0, v7, :cond_5

    .line 292
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 294
    :cond_5
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateRecordComponentsVisibility()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayout:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayoutVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDurationVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayoutVisibility:I

    if-nez v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0xe7

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method

.method private updateStopIcon()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 565
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "updateStopIcon "

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->isPhoneLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 576
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mStopIcon:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 573
    :cond_1
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "updateStopIcon : View is NULL. Check & init again.!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 450
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 452
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    return-void

    .line 453
    :catch_0
    move-exception v1

    .line 454
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
    const/4 v6, 0x0

    const/16 v5, 0xea

    const/16 v4, 0xc9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 498
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "recScreen  onClick"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 528
    :goto_0
    return-void

    .line 504
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0xdd

    invoke-interface {v0, v1, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 507
    :sswitch_1
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "recScreenDisp"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getDisplaySize()I

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 510
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setDisplaySize(I)V

    .line 511
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->onUpdate(ILjava/lang/Object;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 515
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setDisplaySize(I)V

    .line 516
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->onUpdate(ILjava/lang/Object;)V

    goto :goto_0

    .line 520
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v1, 0xe6

    invoke-interface {v0, v1, v6}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 523
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->showPopupMenu()V

    goto :goto_0

    .line 499
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0008 -> :sswitch_3
        0x7f0a00d8 -> :sswitch_2
        0x7f0a00da -> :sswitch_1
        0x7f0a00db -> :sswitch_0
        0x7f0a00dc -> :sswitch_0
        0x7f0a00dd -> :sswitch_0
        0x7f0a00de -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 343
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mContext:Landroid/content/Context;

    .line 344
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 345
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 346
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 347
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->setRetainInstance(Z)V

    .line 349
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 314
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "onCreateView..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->isSViewCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const v0, 0x7f030028

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    .line 319
    :goto_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->initializeUI()V

    .line 329
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->updateRecordComponentsVisibility()V

    .line 333
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    return-object v0

    .line 318
    :cond_0
    const v0, 0x7f030027

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 494
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 495
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 462
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mIsPopupMenuShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 464
    :cond_0
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 465
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 545
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 536
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->volumeMute()V

    .line 538
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v2, 0xdc

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x7f0a00d7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 470
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPause()V

    .line 471
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 476
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 477
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "recMainLayoutVisibility"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecMainLayoutVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    const-string v0, "recDurationVisibility"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDurationVisibility:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 482
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStart()V

    .line 483
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 488
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onStop()V

    .line 489
    return-void
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 13
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 357
    const-string v6, "MtvUiRecordFrag"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onUpdate: what["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sparse-switch p1, :sswitch_data_0

    .line 444
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onUpdate(ILjava/lang/Object;)V

    .line 445
    return-void

    .line 366
    :sswitch_1
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->updateStopIcon()V

    goto :goto_0

    :sswitch_2
    move-object v6, p2

    .line 369
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->updateRecordComponents(ZZ)V

    goto :goto_0

    :sswitch_3
    move-object v6, p2

    .line 372
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {p0, v6, v11}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->updateRecordComponents(ZZ)V

    goto :goto_0

    .line 377
    :sswitch_4
    if-eqz p2, :cond_1

    move-object v6, p2

    .line 378
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 382
    .local v2, "mDispSize":I
    :goto_1
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mLayoutView:Landroid/view/View;

    const v7, 0x7f0a00da

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    .line 384
    .local v5, "scrDispButton":Landroid/widget/ImageButton;
    if-nez v2, :cond_2

    .line 385
    const v6, 0x7f020024

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 380
    .end local v2    # "mDispSize":I
    .end local v5    # "scrDispButton":Landroid/widget/ImageButton;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "mDispSize":I
    goto :goto_1

    .line 387
    .restart local v5    # "scrDispButton":Landroid/widget/ImageButton;
    :cond_2
    const v6, 0x7f020025

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .end local v2    # "mDispSize":I
    .end local v5    # "scrDispButton":Landroid/widget/ImageButton;
    :sswitch_5
    move-object v6, p2

    .line 393
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 394
    .local v3, "mRecTime":I
    const/16 v6, 0xe10

    if-ge v3, v6, :cond_3

    .line 395
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    const-string v8, "%02d:%02d:%02d"

    new-array v9, v10, [Ljava/lang/Object;

    div-int/lit16 v10, v3, 0xe10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    div-int/lit8 v7, v3, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v11

    rem-int/lit8 v7, v3, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_2
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->updateStopIcon()V

    goto :goto_0

    .line 398
    :cond_3
    div-int/lit8 v4, v3, 0x3c

    .line 399
    .local v4, "newtime":I
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    const-string v8, "%02d:%02d:%02d"

    new-array v9, v10, [Ljava/lang/Object;

    div-int/lit16 v10, v3, 0xe10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    rem-int/lit8 v7, v4, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v11

    rem-int/lit8 v7, v3, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .end local v3    # "mRecTime":I
    .end local v4    # "newtime":I
    :sswitch_6
    move-object v6, p2

    .line 405
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 406
    .local v1, "flag":Z
    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x8

    goto :goto_3

    .line 409
    .end local v1    # "flag":Z
    :sswitch_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->showPopupMenu()V

    goto/16 :goto_0

    .line 412
    :sswitch_8
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 413
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->isShown()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 414
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 416
    :cond_5
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    .line 418
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->RunnableRemoveRecordTimer:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 419
    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->RunnableRemoveRecordTimer:Ljava/lang/Runnable;

    move-object v6, p2

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 425
    :sswitch_9
    const/4 v0, -0x1

    .line 426
    .local v0, "delayTime":I
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 427
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecDuration:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    if-eqz p2, :cond_0

    move-object v6, p2

    .line 429
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 430
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->RunnableRemoveRecordTimer:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 431
    if-lez v0, :cond_0

    .line 432
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mRecordFragHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->RunnableRemoveRecordTimer:Ljava/lang/Runnable;

    int-to-long v8, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 437
    .end local v0    # "delayTime":I
    :sswitch_a
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/16 v7, 0x88

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6f -> :sswitch_2
        0x70 -> :sswitch_3
        0x7d -> :sswitch_5
        0x80 -> :sswitch_6
        0x81 -> :sswitch_7
        0x86 -> :sswitch_8
        0x87 -> :sswitch_9
        0x88 -> :sswitch_a
        0xea -> :sswitch_4
        0x145 -> :sswitch_1
    .end sparse-switch
.end method

.method public redraw()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->redraw()V

    .line 90
    return-void
.end method

.method public showPopupMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    const-string v0, "MtvUiRecordFrag"

    const-string v1, "showPopupMenu()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 235
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$1;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$2;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag$2;-><init>(Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 250
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mIsPopupMenuShowing:Z

    if-ne v0, v4, :cond_0

    .line 251
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 255
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    .line 256
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/sec/mtv/ui/liveplayer/MtvUiLivePlayer;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    .line 257
    iput-boolean v4, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mIsPopupMenuShowing:Z

    .line 258
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/common/MtvUiRecordFrag;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 259
    return-void
.end method
