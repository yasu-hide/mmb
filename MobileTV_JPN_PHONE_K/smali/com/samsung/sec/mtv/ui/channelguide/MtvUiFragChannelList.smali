.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;
.super Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;
.source "MtvUiFragChannelList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field public static final CHANNEL_CURSOR_LOADER:I = 0x1

.field public static final MENU_CHANGE_AREA:I = 0x1

.field public static final MENU_CHANNEL_INPUT:I = 0x4

.field public static final MENU_CHANNEL_UPDATE:I = 0x3

.field public static final MENU_SET_AREA:I = 0x2

.field private static final PROGRESS_BAR_LENGTH_COUNT_MAX:I = 0x64

.field private static final SCAN_IN_PROGRESS:Ljava/lang/String; = "scanprogress"

.field private static final SCAN_TYPE:Ljava/lang/String; = "mScanType"

.field protected static final START_TV_CHANNEL:I = 0xfa

.field private static final TABTV_CHANNEL_LONG_CLICK_DIALOG:I = 0x0

.field private static final TABTV_REMOVE_CONFIRM_DAILOG:I = 0x1

.field private static TAG:Ljava/lang/String; = null

.field private static final UPDATE_TYPE_NOSEARCH:I = 0x0

.field private static final UPDATE_TYPE_SEARCH:I = 0x1

.field private static final UPDATE_TYPE_UPDATE:I = 0x2

.field private static mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

.field private static sSelectedChannel:Lcom/samsung/sec/mtv/provider/MtvChannel;


# instance fields
.field private all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

.field private bScanProgress:Z

.field private isRotating:Z

.field private mCh_guide_schedule:Landroid/widget/Button;

.field private mCh_guide_tvview_btn:Landroid/widget/Button;

.field private mChangeAreaCompleteDialog:Landroid/app/DialogFragment;

.field private mChannelNameText:Landroid/widget/TextView;

.field private mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

.field private mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingImageView:Landroid/widget/ImageView;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mNoSignalAlertDialog:Landroid/app/DialogFragment;

.field private mProgNameText:Landroid/widget/TextView;

.field private mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

.field private mScanProgressDialog:Landroid/app/AlertDialog;

.field private mScanProgressInfo:Landroid/widget/TextView;

.field private mScanProgressTitle:Landroid/widget/TextView;

.field private mScanType:I

.field mSlotID:I

.field mSlotMap:[I

.field mStackLevel:I

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTxtAnimation:Landroid/widget/TextView;

.field private mhidden_surfaceview:Landroid/widget/ImageView;

.field private rotatingAnimation:Landroid/view/animation/Animation;

.field private scroll_position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-string v0, "MtvUiFragChannelList"

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    .line 161
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->sSelectedChannel:Lcom/samsung/sec/mtv/provider/MtvChannel;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mStackLevel:I

    .line 97
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 99
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    .line 100
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mLoadingImageView:Landroid/widget/ImageView;

    .line 101
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->rotatingAnimation:Landroid/view/animation/Animation;

    .line 102
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isRotating:Z

    .line 103
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mTxtAnimation:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mhidden_surfaceview:Landroid/widget/ImageView;

    .line 106
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChannelNameText:Landroid/widget/TextView;

    .line 107
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mProgNameText:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    .line 111
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mNoSignalAlertDialog:Landroid/app/DialogFragment;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotID:I

    .line 117
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotMap:[I

    .line 123
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 124
    iput v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scroll_position:I

    .line 154
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 155
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    .line 156
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressTitle:Landroid/widget/TextView;

    .line 157
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressInfo:Landroid/widget/TextView;

    .line 167
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->bScanProgress:Z

    .line 168
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChangeAreaCompleteDialog:Landroid/app/DialogFragment;

    .line 1768
    return-void
.end method

.method private StartScanProgessBar(Landroid/content/Context;)V
    .locals 11
    .param p1, "ActContext"    # Landroid/content/Context;

    .prologue
    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1598
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1599
    .local v1, "lf":Landroid/view/LayoutInflater;
    const v5, 0x7f030017

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1600
    .local v2, "progressDialog":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1601
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v6, "StartScanProgessBar: called..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    const v5, 0x7f020073

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f07020b

    new-instance v7, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$4;

    invoke-direct {v7, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$4;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$3;

    invoke-direct {v6, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$2;

    invoke-direct {v6, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1626
    const v5, 0x7f0a0079

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressTitle:Landroid/widget/TextView;

    .line 1627
    const v5, 0x7f0a007c

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressInfo:Landroid/widget/TextView;

    .line 1628
    const v5, 0x7f0a007b

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/touchwiz/widget/TwProgressBar;

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    .line 1629
    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    if-ne v5, v9, :cond_1

    .line 1630
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressTitle:Landroid/widget/TextView;

    const v6, 0x7f0702cf

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1635
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    const v6, 0x7f0200bf

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgressDrawable(I)V

    .line 1636
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    const v6, 0x7f0200c0

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setBackgroundDrawable(I)V

    .line 1637
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setMax(I)V

    .line 1638
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getScanProgessPercentage()I

    move-result v3

    .line 1639
    .local v3, "scanPercentage":I
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressInfo:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1640
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 1641
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1642
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 1643
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1644
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 1647
    const/4 v4, 0x0

    .line 1648
    .local v4, "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    .line 1649
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x5005

    if-ne v5, v6, :cond_2

    .line 1650
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1651
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1657
    :goto_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x400

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1658
    return-void

    .line 1632
    .end local v3    # "scanPercentage":I
    .end local v4    # "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_1
    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 1633
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressTitle:Landroid/widget/TextView;

    const v6, 0x7f07030c

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1654
    .restart local v3    # "scanPercentage":I
    .restart local v4    # "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_2
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1655
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private UpdateScanProgessBar()V
    .locals 4

    .prologue
    .line 1661
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v1, :cond_0

    .line 1663
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getScanProgessPercentage()I

    move-result v0

    .line 1664
    .local v0, "scanPercentage":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 1665
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pg*** UpdateScanProgessBar- scanPercentage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressInfo:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1669
    .end local v0    # "scanPercentage":I
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scroll_position:I

    return v0
.end method

.method static synthetic access$1000()Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mLoadingImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mTxtAnimation:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isRotating:Z

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isRotating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->rotatingAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->cancelScanChannel()V

    return-void
.end method

.method static synthetic access$900()Lcom/samsung/sec/mtv/provider/MtvChannel;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->sSelectedChannel:Lcom/samsung/sec/mtv/provider/MtvChannel;

    return-object v0
.end method

.method private cancelScanChannel()V
    .locals 4

    .prologue
    .line 646
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 647
    .local v1, "mPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    .line 649
    .local v0, "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 650
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "cancelScanChannel called"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelScanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 653
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 655
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "cancelScanChannel : Cancel Update/Search failed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_2
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "cancelScanChannel : Cancel Update/Search failed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeArea(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 722
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCurrentSlot(I)V

    .line 723
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 726
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 727
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 729
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 730
    return-void
.end method

.method private changeAreaNStartTV(I)V
    .locals 5
    .param p1, "slotid"    # I

    .prologue
    const/4 v4, 0x0

    .line 683
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCurrentSlot(I)V

    .line 684
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    .line 685
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 686
    .local v0, "channel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 687
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 688
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 689
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 690
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 700
    :goto_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->invalidateChannelInfo()V

    .line 707
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    .line 708
    .local v1, "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 712
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->prepareUri(I)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 719
    :goto_1
    return-void

    .line 694
    .end local v1    # "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    :cond_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 695
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 696
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 697
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    goto :goto_0

    .line 717
    .restart local v1    # "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    :cond_1
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->prepareUri(I)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    goto :goto_1
.end method

.method private getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 1242
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentChannelName()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1257
    const-string v1, ""

    .line 1258
    .local v1, "channelName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1259
    .local v0, "channelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 1260
    const/4 v3, 0x0

    .line 1261
    .local v3, "isChannelNameset":Z
    if-eqz v0, :cond_1

    .line 1262
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    aget-object v4, v0, v7

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getNumberOfPhysicalIDs()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 1265
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getServiceID()I

    move-result v4

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1266
    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v1

    .line 1268
    const/4 v3, 0x1

    .line 1262
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1272
    .end local v2    # "i":I
    :cond_1
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelName - ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "], isChannelNameset-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    aget-object v4, v0, v7

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1275
    aget-object v4, v0, v7

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v1

    .line 1281
    :cond_2
    :goto_1
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelName after-["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]  isChannelNameset-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    return-object v1

    .line 1277
    :cond_3
    if-nez v3, :cond_2

    .line 1279
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNameForDisplay(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 1236
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentProgramName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1291
    const-string v1, ""

    .line 1292
    .local v1, "programName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 1294
    .local v0, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    if-eqz v0, :cond_0

    .line 1296
    invoke-virtual {v0}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v1

    .line 1297
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Program Name -["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    :goto_0
    return-object v1

    .line 1301
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current Program Name is NOT available!-["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getScanProgessPercentage()I
    .locals 7

    .prologue
    .line 1676
    const/4 v0, 0x0

    .line 1677
    .local v0, "channel":I
    const/4 v2, 0x0

    .line 1679
    .local v2, "progPercent":I
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v4, v5, :cond_1

    .line 1681
    :cond_0
    const/4 v3, 0x0

    .line 1682
    .local v3, "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    .line 1683
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v4, v5, :cond_1

    .line 1684
    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1687
    .end local v3    # "tempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_2

    .line 1688
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getLastScannedChannel()I

    move-result v0

    .line 1689
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pg*** mMtvAppPlaybackContext  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_2
    const/16 v1, 0x28

    .line 1693
    .local v1, "channelDiff":I
    const/16 v4, 0xd

    if-lt v0, v4, :cond_3

    const/16 v4, 0x34

    if-gt v0, v4, :cond_3

    if-lez v1, :cond_3

    .line 1694
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

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

    .line 1695
    add-int/lit8 v4, v0, -0xc

    mul-int/lit8 v4, v4, 0x64

    div-int v2, v4, v1

    .line 1697
    :cond_3
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

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

    .line 1698
    return v2
.end method

.method private getServiceID()I
    .locals 1

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentOpenedChannelServiceId()I

    move-result v0

    .line 1248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPlayer()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 232
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 234
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v1, v2, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_2

    .line 239
    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegVideoControl;->enableVideo()Z

    .line 244
    .end local v0    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->registerVideoSurfaceView(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_5

    .line 251
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_3

    .line 253
    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 264
    :goto_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mhidden_surfaceview:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->notifyDataSetChanged()V

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 276
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getCurrentChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showChannelNameProgramName(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :goto_2
    return-void

    .line 241
    .restart local v0    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "initPlayer: getcontrolInterface returned NULL !!"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_3
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_4

    .line 257
    const v1, 0x7f070268

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_4
    const v1, 0x7f07021d

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_1

    .line 280
    :cond_5
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "noAreaSet... HiddenSurfaaceView Visible..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p0, v3, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 282
    const-string v1, ""

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showChannelNameProgramName(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mhidden_surfaceview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v5}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_2
.end method

.method private initView(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 734
    const v0, 0x7f0a00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    .line 735
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    :cond_0
    const v0, 0x7f0a00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mLoadingImageView:Landroid/widget/ImageView;

    .line 740
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->rotatingAnimation:Landroid/view/animation/Animation;

    .line 743
    const v0, 0x7f0a0025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mTxtAnimation:Landroid/widget/TextView;

    .line 744
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    .line 745
    const v0, 0x7f0a00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mhidden_surfaceview:Landroid/widget/ImageView;

    .line 746
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mhidden_surfaceview:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 748
    const v0, 0x7f0a00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChannelNameText:Landroid/widget/TextView;

    .line 749
    const v0, 0x7f0a00b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mProgNameText:Landroid/widget/TextView;

    .line 751
    const v0, 0x7f0a00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_schedule:Landroid/widget/Button;

    .line 752
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_schedule:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_schedule:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_schedule:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 758
    :cond_1
    const v0, 0x7f0a00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_tvview_btn:Landroid/widget/Button;

    .line 759
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_tvview_btn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 761
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_tvview_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 762
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_tvview_btn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 771
    :cond_2
    const v0, 0x7f0a00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    .line 772
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 774
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 775
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 778
    return-void
.end method

.method private invalidateChannelInfo()V
    .locals 2

    .prologue
    .line 839
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChannelNameText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChannelNameText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mProgNameText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mProgNameText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 851
    :cond_1
    return-void
.end method

.method private prepareUri(I)Landroid/broadcast/helper/MtvURI;
    .locals 6
    .param p1, "phyChannelNum"    # I

    .prologue
    .line 550
    const/4 v2, 0x0

    .line 551
    .local v2, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v1, 0x0

    .line 552
    .local v1, "iServiceID":I
    const/4 v0, 0x0

    .line 553
    .local v0, "iMultiChannelNumber":I
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v3, :cond_0

    .line 554
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 555
    :cond_0
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v1

    .line 556
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v3, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->findMultiChannelNoByServiceId(Landroid/content/Context;II)I

    move-result v0

    .line 566
    new-instance v2, Landroid/broadcast/helper/MtvURI;

    .end local v2    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v1, v4}, Landroid/broadcast/helper/MtvURI;-><init>(IIIZ)V

    .line 567
    .restart local v2    # "mOpenURI":Landroid/broadcast/helper/MtvURI;
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v4, "prepareUri Set OneSeg"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 572
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 574
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mtvURI in prepareUri serviceID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->serviceID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and multiChNo : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and physical chnlNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/broadcast/helper/MtvURI;->chnlNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-object v2
.end method

.method private registerVideoSurfaceView(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 855
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    .line 856
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->enable()V

    .line 857
    const/4 v0, 0x0

    .line 858
    .local v0, "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getVideo()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgVideoComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegVideoControl;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_0

    .line 860
    if-eqz p1, :cond_1

    .line 861
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->registerSurface(Landroid/view/SurfaceView;)Z

    .line 866
    .end local v0    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_0
    :goto_0
    return-void

    .line 863
    .restart local v0    # "tempOneSegVideoControl":Landroid/broadcast/IMtvOneSegVideoControl;
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-interface {v0, v1}, Landroid/broadcast/IMtvOneSegVideoControl;->unregisterSurface(Landroid/view/SurfaceView;)V

    goto :goto_0
.end method

.method private scanChannel()V
    .locals 4

    .prologue
    .line 622
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 624
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getScanner()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 625
    .local v1, "mPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    .line 626
    .local v0, "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 627
    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 630
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 631
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    invoke-virtual {v3, v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 632
    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->scanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    .line 634
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "scanChannel :Scan Started ..."

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->StartScanProgessBar(Landroid/content/Context;)V

    .line 643
    :goto_0
    return-void

    .line 639
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "ScanChannel : Update/Search failed "

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private scanChannel(I[I)V
    .locals 10
    .param p1, "slotId"    # I
    .param p2, "localId"    # [I

    .prologue
    const/4 v4, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 579
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v8}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, "areaName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCurrentSlot(I)V

    .line 582
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v2, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 583
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v7, v8, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 586
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 587
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 588
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 589
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 590
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v8}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->deleteDB(Landroid/content/Context;Landroid/net/Uri;)V

    .line 591
    if-eqz p2, :cond_0

    .line 592
    iput v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 593
    sget-object v2, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL:[[[Ljava/lang/String;

    aget v3, p2, v6

    aget-object v2, v2, v3

    aget v3, p2, v7

    aget-object v2, v2, v3

    aget v3, p2, v9

    aget-object v1, v2, v3

    .line 594
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Channel current slotId= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Area Name= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/samsung/sec/mtv/provider/MtvArea;

    sget-object v4, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL_ID:[[[I

    aget v5, p2, v6

    aget-object v4, v4, v5

    aget v5, p2, v7

    aget-object v4, v4, v5

    aget v5, p2, v9

    aget v4, v4, v5

    invoke-direct {v3, v4, v1}, Lcom/samsung/sec/mtv/provider/MtvArea;-><init>(ILjava/lang/String;)V

    invoke-static {v2, p1, v3}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->update(Landroid/content/Context;ILcom/samsung/sec/mtv/provider/MtvArea;)V

    .line 596
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/utility/MtvAreaStationInfo;->AREA_LOCAL_ID:[[[I

    aget v4, p2, v6

    aget-object v3, v3, v4

    aget v4, p2, v7

    aget-object v3, v3, v4

    aget v4, p2, v9

    aget v3, v3, v4

    invoke-static {v2, p1, v3, v8}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->setDefaultAreaNChannel(Landroid/content/Context;IILjava/lang/String;)V

    .line 613
    :goto_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scanChannel()V

    .line 614
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->invalidateChannelInfo()V

    .line 615
    return-void

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v0

    .line 599
    .local v0, "area":Lcom/samsung/sec/mtv/provider/MtvArea;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    if-ltz v2, :cond_1

    .line 601
    iput v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 602
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update Channel current slotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " areaId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " areaName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->setDefaultAreaNChannel(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 607
    :cond_1
    if-eqz v0, :cond_2

    .line 608
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan channel Area is not set ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " areaId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " areaName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 610
    :cond_2
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "Scan channel Area is not set and was returned as NULL"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showChannelNameProgramName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "strChannelName"    # Ljava/lang/String;
    .param p2, "strProgName"    # Ljava/lang/String;

    .prologue
    .line 799
    const/4 v1, 0x0

    .line 803
    .local v1, "channelDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 805
    .local v0, "appPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v0, :cond_2

    .line 810
    move-object v1, p1

    .line 823
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v2

    if-lez v2, :cond_3

    .line 824
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChannelNameText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 825
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChannelNameText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 827
    :cond_0
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In showChannelNameProgramName, strProgName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mProgNameText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    const-string v2, "No program name"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 831
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mProgNameText:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    :cond_1
    :goto_1
    return-void

    .line 817
    :cond_2
    move-object v1, p1

    goto :goto_0

    .line 833
    :cond_3
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->invalidateChannelInfo()V

    goto :goto_1
.end method

.method private startTvAfterScan()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 422
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v2

    .line 425
    .local v2, "mPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 426
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v1

    .line 427
    .local v1, "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 428
    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 429
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 430
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;

    invoke-virtual {v5, v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 435
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v4, v5, :cond_3

    .line 436
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 445
    :goto_0
    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->registerVideoSurfaceView(Z)V

    .line 446
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 450
    .local v0, "mMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_2

    .line 451
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 452
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 453
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 454
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v5, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 455
    iget v4, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->prepareUri(I)Landroid/broadcast/helper/MtvURI;

    move-result-object v3

    .line 456
    .local v3, "mURI":Landroid/broadcast/helper/MtvURI;
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 457
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->notifyDataSetChanged()V

    .line 459
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 460
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTvAfterScan  which URI ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v1, v4, v3}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 465
    .end local v3    # "mURI":Landroid/broadcast/helper/MtvURI;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scrollChannel()V

    .line 471
    .end local v0    # "mMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    :goto_1
    return-void

    .line 437
    :cond_3
    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v4

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v4, v5, :cond_4

    .line 438
    const v4, 0x7f070268

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_4
    const v4, 0x7f07021d

    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 469
    :cond_5
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v5, "Scan Failed"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method changeAreaDialogBuilder(Landroid/content/Context;)V
    .locals 4
    .param p1, "activityContext"    # Landroid/content/Context;

    .prologue
    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 676
    .local v0, "selectionBundle":Landroid/os/Bundle;
    const-string v2, "dialogType"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v1

    .line 678
    .local v1, "selectionFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method public customRestartLoader()V
    .locals 3

    .prologue
    .line 517
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 518
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onAttach(Landroid/app/Activity;)V

    .line 346
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    move-object v2, v0

    sput-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 347
    :catch_0
    move-exception v1

    .line 348
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
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 1558
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1560
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1562
    :sswitch_0
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v2, :cond_0

    .line 1563
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v2

    sget-object v3, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v2, v3, :cond_0

    .line 1564
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelSchedule;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1565
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "view_program_details"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1566
    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1577
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_1
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 1560
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a00b2 -> :sswitch_1
        0x7f0a00b9 -> :sswitch_0
        0x7f0a00ba -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreate(Landroid/os/Bundle;)V

    .line 176
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "onCreate called..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v1, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 178
    if-eqz p1, :cond_0

    .line 179
    const-string v1, "mScanType"

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 180
    const-string v1, "scanprogress"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->bScanProgress:Z

    .line 181
    const-string v1, "mSlotID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotID:I

    .line 182
    const-string v1, "mSlotMap"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotMap:[I

    .line 184
    :cond_0
    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    .line 186
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->customRestartLoader()V

    .line 189
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 190
    .local v0, "currentPlayBackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    iget-boolean v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->bScanProgress:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v1

    const/16 v2, 0x5005

    if-ne v1, v2, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->StartScanProgessBar(Landroid/content/Context;)V

    .line 193
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->setHasOptionsMenu(Z)V

    .line 194
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1967
    const/4 v7, 0x0

    .line 1968
    .local v7, "channel_slot":I
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v0, :cond_0

    .line 1969
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-eqz v0, :cond_1

    .line 1972
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v7

    .line 1977
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ch_slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1979
    .local v4, "selection":Ljava/lang/String;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 360
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 361
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v1, "onCreateOptionsMenu called... Not doing anything as it can be handled in onPreapareOptionsMenu() !!!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 203
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "onCreateView called :"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->customRestartLoader()V

    .line 209
    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->initView(Landroid/view/View;)V

    .line 213
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 326
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 328
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroy()V

    .line 329
    return-void
.end method

.method public onDestroyView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 309
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDestroyView()V

    .line 311
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 313
    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 318
    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 319
    invoke-direct {p0, v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->registerVideoSurfaceView(Z)V

    .line 320
    iput-boolean v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isRotating:Z

    .line 321
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 336
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v1, "onDetach called..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onDetach()V

    .line 338
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 1495
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "onItemClick "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 1497
    .local v0, "item":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 1498
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick ((MtvChannel) item) :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/provider/MtvChannel;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :cond_0
    if-nez v0, :cond_2

    .line 1535
    :cond_1
    :goto_0
    return-void

    .line 1504
    :cond_2
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 1506
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0702f4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1510
    :cond_3
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item.mServiceID.mServiceID   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "physicalNum : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v1

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    if-ne v1, v2, :cond_4

    .line 1515
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1516
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1517
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 1518
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 1522
    :cond_4
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item.mServiceID.mServiceID   :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1524
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1525
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1526
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 1527
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->startTVChannel(I)V

    .line 1528
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1529
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1532
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1533
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1540
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1542
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_0

    move v1, v2

    .line 1553
    .end local v0    # "item":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "item":Ljava/lang/Object;
    :cond_0
    move-object v1, v0

    .line 1545
    check-cast v1, Lcom/samsung/sec/mtv/provider/MtvChannel;

    sput-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->sSelectedChannel:Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 1546
    check-cast v0, Lcom/samsung/sec/mtv/provider/MtvChannel;

    .end local v0    # "item":Ljava/lang/Object;
    iget v1, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    if-ge v1, v3, :cond_1

    .line 1547
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0702f4

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v2

    .line 1548
    goto :goto_0

    .line 1552
    :cond_1
    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->newInstance(I)Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v4, "ChannelListDialogFragment"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelListDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v1, v3

    .line 1553
    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .param p2, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1984
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1986
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 92
    check-cast p2, Landroid/database/Cursor;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1990
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1991
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 418
    :goto_0
    return v4

    .line 401
    :pswitch_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    invoke-interface {v1, v4, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 404
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiSetArea;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 409
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v1

    invoke-direct {p0, v1, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scanChannel(I[I)V

    goto :goto_0

    .line 412
    :pswitch_3
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v2, 0x2

    invoke-interface {v1, v2, v3}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPause()V

    .line 303
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 371
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "onPrepareOptionsMenu called..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    .line 373
    .local v0, "mtempMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 374
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 375
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->INITIALIZED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->ordinal()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 377
    :cond_0
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v2, "onPrepareOptionsMenu : MW not initialized.. returning without creating options ! "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :goto_0
    return-void

    .line 381
    :cond_1
    const/4 v1, 0x1

    const v2, 0x7f070214

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200ae

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 382
    const/4 v1, 0x2

    const v2, 0x7f0702d8

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200b6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 383
    const v1, 0x7f07030b

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200be

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 384
    const/4 v1, 0x4

    const v2, 0x7f070212

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0200af

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 385
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v1, v2, :cond_2

    .line 386
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 387
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepareOptionsMenu enable udpate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onResume()V

    .line 221
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->initPlayer()V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scrollChannel()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1949
    const-string v0, "mScanType"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1950
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1951
    const-string v0, "scanprogress"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1957
    :goto_0
    const-string v0, "mSlotID"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotID:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1958
    const-string v0, "mSlotMap"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotMap:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1960
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1961
    return-void

    .line 1953
    :cond_0
    const-string v0, "scanprogress"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onUpdate(ILjava/lang/Object;)V
    .locals 13
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v12, -0x2

    const/16 v11, 0xa5

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 895
    sparse-switch p1, :sswitch_data_0

    .line 1113
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 898
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->initPlayer()V

    goto :goto_0

    .line 901
    :sswitch_1
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "Got ANNOUNCE_PROGRAM_NAME from below!!"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getCurrentChannelName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getCurrentProgramName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showChannelNameProgramName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 905
    :sswitch_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 906
    .local v4, "lFlag":Ljava/lang/Boolean;
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_1

    move-object v4, p2

    .line 907
    check-cast v4, Ljava/lang/Boolean;

    .line 908
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const v7, 0x7f070268

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0

    .line 912
    .end local v4    # "lFlag":Ljava/lang/Boolean;
    :sswitch_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 913
    .local v0, "cFlag":Ljava/lang/Boolean;
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    move-object v0, p2

    .line 914
    check-cast v0, Ljava/lang/Boolean;

    .line 915
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const v7, 0x7f07021d

    invoke-virtual {p0, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0

    .line 920
    .end local v0    # "cFlag":Ljava/lang/Boolean;
    :sswitch_4
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 921
    .local v3, "iSlotId":Ljava/lang/Integer;
    instance-of v6, p2, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    move-object v3, p2

    .line 923
    check-cast v3, Ljava/lang/Integer;

    .line 924
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->changeAreaNStartTV(I)V

    goto :goto_0

    .line 928
    :cond_3
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "Invalid SlotID passed !"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    .end local v3    # "iSlotId":Ljava/lang/Integer;
    :sswitch_5
    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 936
    .restart local v3    # "iSlotId":Ljava/lang/Integer;
    instance-of v6, p2, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    move-object v3, p2

    .line 938
    check-cast v3, Ljava/lang/Integer;

    .line 939
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->changeArea(I)V

    goto :goto_0

    .line 943
    :cond_4
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "Invalid SlotID passed !"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 949
    .end local v3    # "iSlotId":Ljava/lang/Integer;
    :sswitch_6
    iput v8, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 950
    const/4 v5, 0x0

    .line 951
    .local v5, "mSearchParam":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;
    if-eqz p2, :cond_0

    move-object v5, p2

    .line 952
    check-cast v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;

    .line 953
    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->getSlotId()I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotID:I

    .line 954
    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->getSlotMap()[I

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotMap:[I

    .line 955
    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->getSlotId()I

    move-result v6

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;->getSlotMap()[I

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scanChannel(I[I)V

    goto/16 :goto_0

    .line 961
    .end local v5    # "mSearchParam":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;
    :sswitch_7
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "onUpdate: UPDATE_ANNOUNCE_SCAN_STARTED"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 964
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 965
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 979
    :sswitch_8
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "onUpdate: UPDATE_ANNOUNCE_SCAN_CHECK_RESUME"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 984
    :sswitch_9
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "onUpdate: UPDATE_ANNOUNCE_SCAN_CHNL_PROGRESS bScanCancelled"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    .line 986
    .local v1, "currentPlayBackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v6

    const/16 v7, 0x5006

    if-eq v6, v7, :cond_6

    .line 987
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->StartScanProgessBar(Landroid/content/Context;)V

    .line 988
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    if-eqz v6, :cond_5

    .line 989
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressBar:Lcom/sec/android/touchwiz/widget/TwProgressBar;

    invoke-virtual {v6, v10}, Lcom/sec/android/touchwiz/widget/TwProgressBar;->setProgress(I)V

    .line 990
    :cond_5
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, " onUpdate: :) :) still struggling"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_6
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_7

    .line 994
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 995
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 997
    :cond_7
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->UpdateScanProgessBar()V

    goto/16 :goto_0

    .line 1001
    .end local v1    # "currentPlayBackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    :sswitch_a
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "onUpdate: UPDATE_ANNOUNCE_SCAN_COMPLETED"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    iget v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    if-ne v6, v8, :cond_8

    .line 1031
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isResumed()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1033
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1034
    .local v2, "endBundle":Landroid/os/Bundle;
    const-string v6, "dialogType"

    const/16 v7, 0x8

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1035
    const-string v6, "mSlotID"

    iget v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotID:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    const-string v6, "mSlotMap"

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSlotMap:[I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1039
    invoke-static {v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChangeAreaCompleteDialog:Landroid/app/DialogFragment;

    .line 1040
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mChangeAreaCompleteDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "change_area_complete"

    invoke-virtual {v6, v7, v8}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1044
    .end local v2    # "endBundle":Landroid/os/Bundle;
    :cond_8
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_9

    .line 1045
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1046
    :cond_9
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 1047
    iput v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 1048
    invoke-virtual {p0, v11, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->onUpdate(ILjava/lang/Object;)V

    .line 1049
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->startTvAfterScan()V

    goto/16 :goto_0

    .line 1052
    :sswitch_b
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "onUpdate: UPDATE_ANNOUNCE_SCAN_CANCEL_COMPLETED"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_a

    .line 1054
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1055
    :cond_a
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 1056
    iput v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 1057
    invoke-virtual {p0, v11, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->onUpdate(ILjava/lang/Object;)V

    .line 1058
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->startTvAfterScan()V

    goto/16 :goto_0

    .line 1062
    :sswitch_c
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "onUpdate: UPDATE_ANNOUNCE_SCAN_FAILURE"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_b

    .line 1064
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 1065
    :cond_b
    iput-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanProgressDialog:Landroid/app/AlertDialog;

    .line 1066
    iput v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mScanType:I

    .line 1067
    invoke-virtual {p0, v11, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->onUpdate(ILjava/lang/Object;)V

    .line 1068
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->startTvAfterScan()V

    goto/16 :goto_0

    .line 1073
    :sswitch_d
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_schedule:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1074
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_tvview_btn:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1077
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1078
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v9}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1079
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, v9}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1082
    :sswitch_e
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_schedule:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mCh_guide_tvview_btn:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1086
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1087
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1088
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v6, p0}, Landroid/view/SurfaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 1091
    :sswitch_f
    instance-of v6, p2, Ljava/lang/Integer;

    if-eqz v6, :cond_c

    .line 1093
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->startTVChannel(I)V

    goto/16 :goto_0

    .line 1097
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_c
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v7, "Invalid Channel Number Passed !"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1102
    :sswitch_10
    const/16 v6, 0xaa

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showSignalAlertDialog(I)V

    goto/16 :goto_0

    .line 1106
    :sswitch_11
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->cancelScanChannel()V

    goto/16 :goto_0

    .line 895
    nop

    :sswitch_data_0
    .sparse-switch
        0x97 -> :sswitch_7
        0x98 -> :sswitch_a
        0x99 -> :sswitch_9
        0x9b -> :sswitch_b
        0x9c -> :sswitch_6
        0x9d -> :sswitch_c
        0x9e -> :sswitch_8
        0x9f -> :sswitch_5
        0xa0 -> :sswitch_4
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_3
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_d
        0xa5 -> :sswitch_e
        0xa6 -> :sswitch_0
        0xa9 -> :sswitch_10
        0xab -> :sswitch_11
        0xfa -> :sswitch_f
    .end sparse-switch
.end method

.method public scrollChannel()V
    .locals 8

    .prologue
    .line 475
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v3, :cond_3

    .line 476
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 478
    :cond_0
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v4, "this fragment is not added yet/ or the activity is not resumed yet .. "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 481
    :cond_2
    new-instance v3, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 483
    :cond_3
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannelMultiChannel()I

    move-result v2

    .line 484
    .local v2, "selected_multiChannelNo":I
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannel()I

    move-result v1

    .line 486
    .local v1, "selected_VCh":I
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selected_multiChannelNo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", selected_VCh="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getAllChannels(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    .line 491
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    if-eqz v3, :cond_5

    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 493
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    if-ne v3, v1, :cond_4

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->all_List_channels:[Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    if-ne v3, v2, :cond_4

    .line 495
    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scroll_position:I

    .line 492
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 498
    .end local v0    # "i":I
    :cond_5
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v4, "List is null something screwedup!!!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_6
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "final_scroll_position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->scroll_position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_1

    .line 504
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;

    invoke-direct {v4, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public showAnimationControl(ZLjava/lang/String;)V
    .locals 2
    .param p1, "bflag"    # Z
    .param p2, "animationText"    # Ljava/lang/String;

    .prologue
    .line 781
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v1, "showAnimationControl..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mhidden_surfaceview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    if-eqz p1, :cond_1

    .line 786
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->setAnimationEnable(Z)V

    .line 787
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    invoke-virtual {v0, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->setAnimationText(Ljava/lang/String;)V

    .line 793
    :goto_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->postAnimationToRunInUIThread()V

    .line 795
    :cond_0
    return-void

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->setAnimationEnable(Z)V

    .line 791
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mControlChGuideLoadingAnimationRunnable:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;

    invoke-virtual {v0, p2}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ControlChGuideLoadingAnimationRunnable;->setAnimationText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showSignalAlertDialog(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 877
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "signal_alert_retry_exit"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 879
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 880
    .local v0, "dlgInfoBundle":Landroid/os/Bundle;
    const-string v2, "dialogType"

    const/16 v3, 0xb

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 881
    invoke-static {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mNoSignalAlertDialog:Landroid/app/DialogFragment;

    .line 882
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mNoSignalAlertDialog:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "signal_alert_retry_exit"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    .end local v0    # "dlgInfoBundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v1

    .line 887
    .local v1, "e":Ljava/lang/IllegalStateException;
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v3, "Cannot Show SignalAlertDialog after onSaveInstance"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method startTVChannel(I)V
    .locals 5
    .param p1, "pChannelNo"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1920
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListener:Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;

    const/4 v2, 0x4

    invoke-interface {v1, v2, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;->onFragEvent(ILjava/lang/Object;)V

    .line 1921
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->invalidateChannelInfo()V

    .line 1922
    invoke-static {}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->removeOpenChannelMessages()V

    .line 1926
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->prepareUri(I)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    .line 1927
    .local v0, "mMtvURI":Landroid/broadcast/helper/MtvURI;
    const/16 v1, 0xc8

    invoke-static {v0, v1}, Lcom/samsung/sec/mtv/ui/common/MtvUiGenericPlayer;->postOpenChannel(Landroid/broadcast/helper/MtvURI;I)Z

    .line 1928
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-nez v1, :cond_0

    .line 1929
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1931
    :cond_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->PLAYING:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_1

    .line 1933
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 1944
    :goto_0
    return-void

    .line 1935
    :cond_1
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->OPENED:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-ne v1, v2, :cond_2

    .line 1937
    const v1, 0x7f070268

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0

    .line 1941
    :cond_2
    const v1, 0x7f07021d

    invoke-virtual {p0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public updateChannelGridView()V
    .locals 2

    .prologue
    .line 1592
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->customRestartLoader()V

    .line 1593
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1594
    return-void
.end method

.method public updateMultichannelNo(Z)V
    .locals 3
    .param p1, "isChannelOpened"    # Z

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->isAdded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 524
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    const-string v1, "updateMultichannelNo - fragment not added!"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_1
    :goto_0
    return-void

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    .line 530
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMultichannelNo isChannelOpened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    if-eqz p1, :cond_3

    .line 532
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 533
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->customRestartLoader()V

    .line 534
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 537
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->customRestartLoader()V

    .line 538
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateMultichannelNoService()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->mListAdapter:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList$ChannelAdapter;->notifyDataSetChanged()V

    .line 545
    return-void
.end method
