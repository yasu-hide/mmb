.class public Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
.super Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;
.source "MtvUiChannelGuide.java"

# interfaces
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;
.implements Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;
.implements Lcom/samsung/sec/mtv/ui/common/MtvUiFrag$IMtvFragEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;,
        Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;
    }
.end annotation


# static fields
.field public static final CHANNEL_GUIDE_CHANNEL_CHANGE:I = 0x4

.field public static final CHANNEL_GUIDE_FINISH_ACTIVITY:I = 0x0

.field public static final CHANNEL_GUIDE_FINISH_AND_LAUNCH_CHANNEL_NUM:I = 0x2

.field public static final CHANNEL_GUIDE_LAUNCH_CHANGEAREA_DIALOG:I = 0x1

.field public static final CHANNEL_GUIDE_LAUNCH_NOAREA_DIALOG:I = 0x3

.field private static final CURRENT_TAB_INDEX:Ljava/lang/String; = "currenttabindex"

.field private static final DIALOG_TYPE_NO_AREA_SET:I = 0x0

.field private static INTENT_FILTER:Landroid/content/IntentFilter; = null

.field private static IsLowSignalInOtherTab:Z = false

.field private static IsTabInitDone:Z = false

.field public static final MTV_CTRL_BACK_TO_LIVE_PLAYER:I = 0x0

.field private static final NO_AREA_DIALOG_ON_TOP:Ljava/lang/String; = "noareadialogontop"

.field protected static final TAB_CHANNEL_LIST:Ljava/lang/String; = "channelguidelist"

.field public static final TAB_CHANNEL_LIST_ID:I = 0x0

.field private static final TAB_SCHEDULE:Ljava/lang/String; = "schedule"

.field public static final TAB_SCHEDULE_ID:I = 0x1

.field private static final TAB_TV_FILES:Ljava/lang/String; = "tvfiles"

.field public static final TAB_TV_FILES_ID:I = 0x2

.field protected static final TAB_TV_LINKS:Ljava/lang/String; = "tvlink"

.field public static final TAB_TV_LINKS_ID:I = 0x3

.field private static TAG:Ljava/lang/String; = null

.field public static final VIEW_PROGRAM_DETAILS:Ljava/lang/String; = "view_program_details"

.field private static bIsChannelChanged:Z = false

.field private static isProgramUpdated:Z = false

.field private static mListener:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mNotificationManager:Landroid/app/NotificationManager; = null

.field private static mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager; = null

.field public static noAreaSet:Z = false

.field private static final tvlinkInfoTag:Ljava/lang/String; = "TvLinkInfo"


# instance fields
.field private NoAreaDialogShowing:Z

.field final RunnableChannelDetected:Ljava/lang/Runnable;

.field final RunnableChannelNotDetected:Ljava/lang/Runnable;

.field private RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

.field private RunnableShowNotification:Ljava/lang/Runnable;

.field private RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

.field private RunnableUpdateTVFilesList:Ljava/lang/Runnable;

.field private currentTabId:I

.field private mChannelGuideUiMsgHandler:Landroid/os/Handler;

.field private mDummyBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPopupMenuShowing:Z

.field private mMenuButton:Landroid/widget/ImageButton;

.field private mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

.field private mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

.field private mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field mSelected:[I

.field mSlotId:I

.field private mTabHost:Landroid/widget/TabHost;

.field noAreaSetAlertDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    const-string v0, "MtvUiChannelGuide"

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    .line 103
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    .line 104
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsTabInitDone:Z

    .line 105
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->isProgramUpdated:Z

    .line 111
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    .line 130
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mNotificationManager:Landroid/app/NotificationManager;

    .line 134
    sput-boolean v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->bIsChannelChanged:Z

    .line 136
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->INTENT_FILTER:Landroid/content/IntentFilter;

    .line 138
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mListener:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 110
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSelected:[I

    .line 112
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    .line 115
    iput v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    .line 116
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->NoAreaDialogShowing:Z

    .line 118
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 124
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 126
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 127
    iput-boolean v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIsPopupMenuShowing:Z

    .line 128
    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMenuButton:Landroid/widget/ImageButton;

    .line 141
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$1;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    .line 170
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$2;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableShowNotification:Ljava/lang/Runnable;

    .line 969
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$8;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$8;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableChannelNotDetected:Ljava/lang/Runnable;

    .line 979
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$9;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$9;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableChannelDetected:Ljava/lang/Runnable;

    .line 989
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$10;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$10;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

    .line 1470
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$22;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$22;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    .line 1476
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$23;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateTVFilesList:Ljava/lang/Runnable;

    .line 1882
    new-instance v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$24;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$24;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1898
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->showNotification()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 78
    sput-boolean p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    return p0
.end method

.method static synthetic access$1100()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsTabInitDone:Z

    return v0
.end method

.method static synthetic access$1200()Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mDummyBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateTVFilesList:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIsPopupMenuShowing:Z

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;
    .param p1, "x1"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->createDialog(I)V

    return-void
.end method

.method private createDialog(I)V
    .locals 4
    .param p1, "dialogType"    # I

    .prologue
    .line 181
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDialog :called dialog type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 223
    :goto_0
    return-void

    .line 184
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f020073

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 187
    const v1, 0x7f07021b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 188
    const v1, 0x7f070216

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 189
    const v1, 0x7f070298

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$3;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 204
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    .line 205
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;

    invoke-direct {v2, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$4;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 216
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 217
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;
    .locals 7
    .param p1, "invalidate"    # Z
    .param p2, "appendCHNumber"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1831
    const-string v4, ""

    .line 1832
    .local v4, "title":Ljava/lang/String;
    const-string v1, ""

    .line 1833
    .local v1, "channelName":Ljava/lang/String;
    const-string v3, ""

    .line 1834
    .local v3, "programName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1835
    .local v0, "channelInfo":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/4 v2, 0x0

    .line 1836
    .local v2, "currentProgram":Landroid/broadcast/helper/types/MtvOneSegProgram;
    if-nez p1, :cond_0

    .line 1837
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 1838
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v2

    .line 1842
    :cond_0
    if-eqz v0, :cond_1

    .line 1844
    aget-object v5, v0, v6

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v1

    .line 1851
    :goto_0
    if-eqz v2, :cond_2

    .line 1853
    invoke-virtual {v2}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getProgName()Ljava/lang/String;

    move-result-object v3

    .line 1854
    const/4 v5, 0x1

    sput-boolean v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->isProgramUpdated:Z

    .line 1861
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1862
    return-object v4

    .line 1848
    :cond_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, p2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestChannelNameForDisplay(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1858
    :cond_2
    sput-boolean v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->isProgramUpdated:Z

    .line 1859
    const-string v3, ""

    goto :goto_1
.end method

.method private initPlayer()V
    .locals 8

    .prologue
    const v6, 0x7f0a000c

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 857
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 858
    .local v0, "epgItent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ACTION_DTV_RESERVATION_LIST"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 860
    .local v2, "isEPGIntent":Z
    :goto_0
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mDummyBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 861
    const v3, 0x7f0a0008

    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMenuButton:Landroid/widget/ImageButton;

    .line 862
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMenuButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$7;

    invoke-direct {v5, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$7;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 868
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    .line 869
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 872
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v3, :cond_3

    .line 874
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->LIVETV:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v3

    sget-object v4, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-eq v3, v4, :cond_2

    .line 875
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 876
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 877
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 879
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->openChannel()V

    .line 914
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isEPGIntent":Z
    :cond_1
    move v2, v4

    .line 858
    goto :goto_0

    .line 882
    .restart local v2    # "isEPGIntent":Z
    :cond_2
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 883
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    goto :goto_1

    .line 886
    :cond_3
    if-nez v2, :cond_0

    .line 888
    sget-object v3, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "Current Context is null... issuing create again..."

    invoke-static {v3, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 891
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getLiveTV()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 892
    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iput-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mDummyBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    .line 894
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 895
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 897
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.sec.mtv.ACTION_MTV_REMOTE_SERVICE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 898
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3, v5, v6, v7}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/content/Context;I)Z

    .line 900
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getBml()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgBmlComponent;->enable()V

    .line 901
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    move-result-object v3

    sget-object v5, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;->NONE:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    if-eq v3, v5, :cond_4

    .line 903
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mDummyBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3, v4}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->onResume(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)V

    goto/16 :goto_1

    .line 907
    :cond_4
    new-instance v1, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v5, 0x1020011

    invoke-direct {v1, v3, v7, v5}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;-><init>(Landroid/app/FragmentManager;II)V

    .line 908
    .local v1, "fragHandler":Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;
    invoke-virtual {v1, v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->setEnabled(Z)V

    .line 909
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mDummyBmlSurface:Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v3, v4, v1}, Lcom/samsung/sec/mtv/ui/bml/MtvUiBmlSurfaceView;->create(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;)V

    goto/16 :goto_1
.end method

.method public static prepareTabView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tabTitle"    # Ljava/lang/String;

    .prologue
    .line 447
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030037

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 448
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0a0134

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 449
    .local v0, "tabTextView":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    return-object v1
.end method

.method public static registerChannelChangedListener(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;)V
    .locals 1
    .param p0, "l"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;

    .prologue
    .line 1903
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1904
    return-void
.end method

.method private setActivityProperty()V
    .locals 2

    .prologue
    .line 775
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->requestWindowFeature(I)Z

    .line 782
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setVolumeControlStream(I)V

    .line 784
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 785
    return-void
.end method

.method private setPreferencesForCancelScan()V
    .locals 3

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->getFirstOnAir(Landroid/content/Context;)Lcom/samsung/sec/mtv/provider/MtvChannel;

    move-result-object v0

    .line 1009
    .local v0, "mMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    if-eqz v0, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mPhysicalNum:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestPChannel(I)V

    .line 1011
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mVirtualNum:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 1012
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mServiceID:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 1013
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget v2, v0, Lcom/samsung/sec/mtv/provider/MtvChannel;->mMultiChannelNo:I

    invoke-virtual {v1, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1015
    :cond_0
    return-void
.end method

.method private showNotification()V
    .locals 10

    .prologue
    const v9, 0x7f0200c3

    const/4 v8, 0x0

    .line 1792
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "showNotification..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1795
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x100000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1796
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1798
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.sec.mtv"

    const-string v7, "com.samsung.sec.mtv.ui.liveplayer.MtvUiLivePlayer"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1800
    invoke-static {p0, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1802
    .local v1, "launchIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1804
    .local v2, "mCloseIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030032

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1805
    .local v3, "mRemoteView":Landroid/widget/RemoteViews;
    const v5, 0x7f0a0121

    invoke-virtual {v3, v5, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1806
    const v5, 0x7f0a0123

    const v6, 0x7f070294

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1807
    const v5, 0x7f0a0126

    invoke-direct {p0, v8, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getCurrentChannelProgramTitle(ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1808
    const v5, 0x7f0a0129

    invoke-virtual {v3, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1810
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 1818
    .local v4, "notification":Landroid/app/Notification;
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v5, :cond_0

    .line 1819
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v5, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1824
    :goto_0
    return-void

    .line 1822
    :cond_0
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "mNotificationManager is null"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unregisterChannelChangedListener(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;)V
    .locals 1
    .param p0, "l"    # Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;

    .prologue
    .line 1907
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1908
    return-void
.end method


# virtual methods
.method public addMemInfoFrag()V
    .locals 3

    .prologue
    .line 1633
    new-instance v0, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "MtvUiMemInfoFrag"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/ui/common/MtvUiMemInfoFrag;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method public getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;
    .locals 1

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v0

    .line 1689
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getCurrentProgram()Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 1683
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentProgramDetails([Landroid/broadcast/helper/types/MtvOneSegProgram;)Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 10
    .param p1, "programInfo"    # [Landroid/broadcast/helper/types/MtvOneSegProgram;

    .prologue
    .line 1866
    const/4 v1, 0x0

    .line 1868
    .local v1, "currentProg":Landroid/broadcast/helper/types/MtvOneSegProgram;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getStreamTime()J

    move-result-wide v2

    .line 1870
    .local v2, "currentTime":J
    move-object v0, p1

    .local v0, "arr$":[Landroid/broadcast/helper/types/MtvOneSegProgram;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 1872
    .local v6, "prog":Landroid/broadcast/helper/types/MtvOneSegProgram;
    if-eqz v6, :cond_1

    .line 1873
    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getStartTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-ltz v7, :cond_1

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegProgram;->getEndTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gtz v7, :cond_1

    .line 1875
    move-object v1, v6

    .line 1879
    .end local v6    # "prog":Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_0
    return-object v1

    .line 1870
    .restart local v6    # "prog":Landroid/broadcast/helper/types/MtvOneSegProgram;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;
    .locals 1

    .prologue
    .line 1675
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getProgram()[Landroid/broadcast/helper/types/MtvOneSegProgram;

    move-result-object v0

    .line 1677
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStreamTime()J
    .locals 2

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getTot()J

    move-result-wide v0

    .line 1696
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public notifyChannelChanged()V
    .locals 2

    .prologue
    .line 1911
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1912
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1913
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;

    invoke-interface {v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$onChannelChangedListener;->onChannelChanged()V

    goto :goto_0

    .line 1915
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 820
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MtvUiChannelGuide onActivityResult: requestCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 824
    const-string v2, "setarea"

    invoke-virtual {p3, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 826
    const-string v2, "noAreaSet"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v3, "noAreaSet! -user didnot select Area"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    sput-boolean v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    .line 852
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 853
    return-void

    .line 833
    :cond_1
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v3, "Launching Change Area from SET AREA Class!"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v2, "slotId"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 835
    .local v1, "slotId":I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChangeArea;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 836
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "slotId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    invoke-virtual {p0, v0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 843
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "slotId":I
    :cond_2
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 844
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    if-nez v2, :cond_3

    .line 845
    sget-object v2, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    const-string v5, "channelguidelist"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 847
    :cond_3
    sput-boolean v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    .line 848
    const-string v2, "slotId"

    invoke-virtual {p3, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSlotId:I

    .line 849
    const-string v2, "localId"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSelected:[I

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    .line 1640
    sget-object v2, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;->TYPE_TAG_PROG_INFO:Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;

    invoke-static {v2, p0}, Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler;->removeUnManagedFrag(Lcom/samsung/sec/mtv/ui/common/MtvUiFragHandler$FRAG_TYPE;Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    :goto_0
    return-void

    .line 1643
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "TvLinkInfo"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1644
    .local v0, "Linkfrag":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 1645
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1646
    .local v1, "fTrans":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1647
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 1648
    iget-object v2, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TabWidget;->setEnabled(Z)V

    goto :goto_0

    .line 1651
    .end local v1    # "fTrans":Landroid/app/FragmentTransaction;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "bIsChannelChanged"

    sget-boolean v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->bIsChannelChanged:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setResult(ILandroid/content/Intent;)V

    .line 1652
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate called..Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v6, 0x0

    sput-boolean v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsTabInitDone:Z

    .line 232
    new-instance v6, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 234
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setActivityProperty()V

    .line 235
    const v6, 0x7f030002

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setContentView(I)V

    .line 237
    const v6, 0x7f0a0007

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TabHost;

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    .line 238
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->setup()V

    .line 240
    new-instance v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    const v8, 0x7f0a000a

    invoke-direct {v6, p0, p0, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Landroid/app/Activity;Landroid/widget/TabHost;I)V

    sput-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, "isReservationListOnly":Z
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 251
    .local v3, "reserveNotificationItent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 252
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ACTION_DTV_RESERVATION_LIST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 253
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "schedule"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f0702c9

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 254
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0200cc

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->getCurrentOrientation(Landroid/content/Context;)I

    move-result v2

    .line 257
    .local v2, "orientation":I
    const/4 v6, 0x1

    if-eq v6, v2, :cond_0

    const/4 v6, 0x3

    if-ne v6, v2, :cond_1

    .line 259
    :cond_0
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 260
    .local v4, "titleText":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 261
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xa0

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 264
    .end local v4    # "titleText":Landroid/widget/TextView;
    :cond_1
    const/4 v1, 0x1

    .line 269
    .end local v2    # "orientation":I
    :cond_2
    if-nez v1, :cond_4

    .line 270
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "channelguidelist"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f07021c

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 271
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "schedule"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f0702c9

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragReservationList;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 272
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "tvfiles"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f070300

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVFilesList;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 273
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    const-string v8, "tvlink"

    invoke-virtual {v7, v8}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const v8, 0x7f070302

    invoke-virtual {p0, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v7

    const-class v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragTVLinkList;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 274
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const/4 v6, 0x3

    if-gt v0, v6, :cond_3

    .line 276
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 277
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 278
    const/high16 v6, 0x41900000    # 18.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v5    # "tv":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TabWidget;->setGravity(I)V

    .line 285
    .end local v0    # "index":I
    :cond_4
    const-string v6, "notification"

    invoke-virtual {p0, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    sput-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mNotificationManager:Landroid/app/NotificationManager;

    .line 287
    if-eqz p1, :cond_8

    .line 288
    const-string v6, "currenttabindex"

    const/4 v7, -0x1

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    .line 289
    const-string v6, "noareadialogontop"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->NoAreaDialogShowing:Z

    .line 328
    :cond_5
    :goto_1
    sget-boolean v6, Lcom/samsung/sec/mtv/utility/MtvUtilConfigSetting;->ENABLE_SCREEN_CAPTURE:Z

    if-nez v6, :cond_6

    .line 329
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 331
    :cond_6
    iget v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v7

    if-eq v6, v7, :cond_7

    .line 332
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    iget v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 333
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 334
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v6, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 335
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate END..Time:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v6, 0x1

    sput-boolean v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsTabInitDone:Z

    .line 337
    return-void

    .line 299
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tab"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 301
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tab"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 789
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->bIsChannelChanged:Z

    .line 792
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->unbindDrawables(Landroid/view/View;)V

    .line 795
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 798
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mNotificationManager:Landroid/app/NotificationManager;

    .line 799
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 800
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onDestroy()V

    .line 801
    return-void
.end method

.method public onFragEvent(ILjava/lang/Object;)V
    .locals 13
    .param p1, "event"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1506
    const/4 v4, 0x0

    .line 1508
    .local v4, "selectionBundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1510
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFragEvent: event["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    sparse-switch p1, :sswitch_data_0

    .line 1629
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 1514
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "bIsChannelChanged"

    sget-boolean v8, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->bIsChannelChanged:Z

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v12, v6}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setResult(ILandroid/content/Intent;)V

    .line 1515
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    goto :goto_0

    .line 1518
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1519
    .local v0, "channelIntent":Landroid/content/Intent;
    const-string v6, "channelinput"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1520
    invoke-virtual {p0, v12, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setResult(ILandroid/content/Intent;)V

    .line 1521
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v6, v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestFileIndex(I)V

    .line 1522
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    goto :goto_0

    .line 1525
    .end local v0    # "channelIntent":Landroid/content/Intent;
    :sswitch_2
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1526
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const-string v7, "schedule"

    invoke-virtual {v6, v10, p2, v7}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :sswitch_3
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1531
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "tvfiles"

    invoke-virtual {v6, v10, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1535
    :sswitch_4
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1536
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/4 v7, 0x3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "tvfiles"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :sswitch_5
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1543
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "tvfiles"

    invoke-virtual {v6, p1, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1547
    :sswitch_6
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/samsung/sec/mtv/ui/fileplayer/MtvUiFilePlayer;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1548
    .restart local v2    # "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1549
    .local v3, "mMtvFileList":[Lcom/samsung/sec/mtv/provider/MtvFile;
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v7, "startFilePlayer MTV_UPDATE_FRAG_CMD_DIALOGS_LAUNCH_FILE_PLAYER"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1551
    invoke-static {v9}, Lcom/samsung/sec/mtv/provider/MtvFileManager;->getAvailableTVRecFilesEx(Z)[Lcom/samsung/sec/mtv/provider/MtvFile;

    move-result-object v3

    .line 1552
    const-string v6, "MtvFile"

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getSelectedFileIndex()I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1553
    invoke-virtual {p0, v2, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1554
    const/4 v2, 0x0

    .line 1555
    goto/16 :goto_0

    .line 1557
    .end local v3    # "mMtvFileList":[Lcom/samsung/sec/mtv/provider/MtvFile;
    :sswitch_7
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1558
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "tvfiles"

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1562
    :sswitch_8
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1563
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/4 v7, 0x4

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "tvfiles"

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    move-object v2, p2

    .line 1567
    check-cast v2, Landroid/content/Intent;

    .line 1568
    if-eqz v2, :cond_1

    .line 1569
    invoke-virtual {p0, v2, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1570
    :cond_1
    const/4 v2, 0x0

    .line 1571
    goto/16 :goto_0

    .line 1574
    :sswitch_a
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "selectionBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1575
    .restart local v4    # "selectionBundle":Landroid/os/Bundle;
    const-string v6, "dialogType"

    invoke-virtual {v4, v6, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1576
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1577
    .local v1, "in":I
    const-string v6, "SlotID"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1578
    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v5

    .line 1579
    .local v5, "selectionFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1584
    .end local v1    # "in":I
    .end local v5    # "selectionFragment":Landroid/app/DialogFragment;
    .restart local p2    # "obj":Ljava/lang/Object;
    :sswitch_b
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1585
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/16 v7, 0x9f

    const-string v8, "channelguidelist"

    invoke-virtual {v6, v7, p2, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1589
    :sswitch_c
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1590
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/16 v7, 0xa0

    const-string v8, "channelguidelist"

    invoke-virtual {v6, v7, p2, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1594
    :sswitch_d
    new-instance v4, Landroid/os/Bundle;

    .end local v4    # "selectionBundle":Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1595
    .restart local v4    # "selectionBundle":Landroid/os/Bundle;
    const-string v6, "dialogType"

    invoke-virtual {v4, v6, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1596
    invoke-static {v4}, Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;->newInstance(Landroid/os/Bundle;)Lcom/samsung/sec/mtv/ui/common/MtvUiDialogsFrag;

    move-result-object v5

    .line 1597
    .restart local v5    # "selectionFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const-string v7, "dialog"

    invoke-virtual {v5, v6, v7}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1600
    .end local v5    # "selectionFragment":Landroid/app/DialogFragment;
    :sswitch_e
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v6, :cond_0

    .line 1601
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const-string v8, "schedule"

    invoke-virtual {v6, v11, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1606
    :sswitch_f
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v7, "Low signal - Retrying again!!"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->openChannel()V

    goto/16 :goto_0

    .line 1612
    :sswitch_10
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v7, "Exiting the application "

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    invoke-static {v10}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->setAppExiting(Z)V

    .line 1614
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    goto/16 :goto_0

    .line 1618
    :sswitch_11
    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1619
    :cond_2
    sget-object v6, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v7, "created dialog called 1"

    invoke-static {v6, v7}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    invoke-direct {p0, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->createDialog(I)V

    .line 1623
    :cond_3
    :sswitch_12
    sput-boolean v10, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->bIsChannelChanged:Z

    .line 1624
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/samsung/sec/mtv/provider/MtvProgramManager;->delete(Landroid/content/Context;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 1512
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_d
        0x2 -> :sswitch_1
        0x3 -> :sswitch_11
        0x4 -> :sswitch_12
        0xfb -> :sswitch_3
        0xfc -> :sswitch_7
        0xfd -> :sswitch_2
        0xff -> :sswitch_6
        0x100 -> :sswitch_10
        0x102 -> :sswitch_f
        0x105 -> :sswitch_4
        0x106 -> :sswitch_e
        0x107 -> :sswitch_8
        0x10c -> :sswitch_5
        0x10d -> :sswitch_5
        0x10e -> :sswitch_5
        0x1f4 -> :sswitch_b
        0x1f5 -> :sswitch_9
        0x1f6 -> :sswitch_a
        0x1f7 -> :sswitch_c
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 428
    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 429
    :cond_0
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 437
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp, keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 440
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->showPopupMenu()V

    .line 441
    const/4 v0, 0x1

    .line 443
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onMtvAppFinishNotify(Ljava/lang/Object;)V
    .locals 3
    .param p1, "intent"    # Ljava/lang/Object;

    .prologue
    .line 1919
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1920
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getType()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    move-result-object v1

    sget-object v2, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;->SCANNER:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext$Type;

    if-ne v1, v2, :cond_0

    .line 1921
    invoke-static {}, Lcom/samsung/sec/mtv/app/player/MtvAppPlayerOneSeg;->getInstance()Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    move-result-object v0

    .line 1923
    .local v0, "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    if-eqz v0, :cond_2

    .line 1924
    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v0, v1}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->cancelScanChannels(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1926
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v2, "cancelScanChannel : Cancel Success"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    :goto_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->setPreferencesForCancelScan()V

    .line 1940
    .end local v0    # "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    .line 1941
    return-void

    .line 1930
    .restart local v0    # "mMtvPlayerOneSeg":Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;
    :cond_1
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v2, "cancelScanChannel : Cancel Update/Search failed - false"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1934
    :cond_2
    sget-object v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v2, "cancelScanChannel : Cancel Update/Search failed"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1946
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtvAppLiveBroadcastNotify called: what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    packed-switch p1, :pswitch_data_0

    .line 1967
    invoke-super {p0, p1, p2}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 1971
    :cond_0
    :goto_0
    return-void

    .line 1951
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateTVFilesList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1957
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateTVFilesList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1958
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    if-eqz v0, :cond_0

    .line 1960
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "tvfiles"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1947
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 589
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v1, "onPause..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->unRegisterMediaButtonReceiver()V

    .line 591
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onPause()V

    .line 592
    return-void
.end method

.method public onPlayerNotification(III)V
    .locals 28
    .param p1, "command"    # I
    .param p2, "status"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1019
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ch Guide onPlayerNotification command:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " status:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " extra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "channelguidelist"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v17

    check-cast v17, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;

    .line 1022
    .local v17, "fragment":Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;
    packed-switch p1, :pswitch_data_0

    .line 1467
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 1024
    :pswitch_1
    const/16 v4, 0x6005

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 1026
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "IMtvAppPlayerOneSeg.CMD_CREATE IMtvAppPlayerOneSeg.STAT_COMPLETED..."

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$11;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1045
    :pswitch_2
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 1058
    :pswitch_4
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppPlaybackStateListener;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableShowNotification:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1064
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$12;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1093
    :pswitch_5
    if-eqz v17, :cond_0

    .line 1094
    const/4 v4, 0x1

    const v5, 0x7f07021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0

    .line 1099
    :pswitch_6
    if-eqz v17, :cond_0

    .line 1100
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto :goto_0

    .line 1105
    :pswitch_7
    if-eqz v17, :cond_0

    .line 1106
    const/4 v4, 0x1

    const v5, 0x7f07021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1110
    :pswitch_8
    if-eqz v17, :cond_1

    .line 1111
    const/4 v4, 0x1

    const v5, 0x7f07021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 1112
    :cond_1
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v4

    move/from16 v0, p3

    if-ne v0, v4, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    if-nez v4, :cond_2

    .line 1116
    const/4 v4, 0x0

    sput-boolean v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    .line 1117
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$13;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$13;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1128
    :cond_2
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    goto/16 :goto_0

    .line 1132
    :cond_3
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "channel list tab is not active, don\'t show low signal alert"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1142
    :pswitch_9
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification ...:CMD_CLOSE: Status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    packed-switch p2, :pswitch_data_2

    goto/16 :goto_0

    .line 1145
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v4, :cond_0

    .line 1147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->registerListener(Lcom/samsung/sec/mtv/app/context/IMtvAppProgramAttributeListener;)V

    goto/16 :goto_0

    .line 1155
    :pswitch_b
    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    .line 1158
    :sswitch_1
    if-eqz v17, :cond_0

    .line 1159
    const/4 v4, 0x1

    const v5, 0x7f070268

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1165
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v16

    .line 1166
    .local v16, "audioManager":Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 1167
    invoke-virtual/range {v16 .. v16}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->updateCurrentAudioEffectAndMode()Z

    .line 1168
    const/16 v16, 0x0

    .line 1169
    goto/16 :goto_0

    .line 1172
    .end local v16    # "audioManager":Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    :sswitch_3
    if-eqz v17, :cond_0

    .line 1173
    const/4 v4, 0x1

    const v5, 0x7f070268

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1177
    :sswitch_4
    if-eqz v17, :cond_0

    .line 1178
    const/4 v4, 0x1

    const v5, 0x7f070268

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 1182
    :sswitch_5
    if-eqz v17, :cond_4

    .line 1183
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 1184
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableRemoveWeakSignalDialogue:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1188
    :sswitch_6
    if-eqz v17, :cond_5

    .line 1189
    const/4 v4, 0x1

    const v5, 0x7f07021d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiFragChannelList;->showAnimationControl(ZLjava/lang/String;)V

    .line 1191
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->openChannel()V

    goto/16 :goto_0

    .line 1194
    :sswitch_7
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "onPlayerNotification ...CMD_PLAY:STAT_UNKNOWN:: Something severely screwed -- Happy Debugging !!!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1196
    const-string v4, "\n\n\n       [OneSeg]   F A T A L    E R R O R !\n\n\n OneSeg middleware crashed, cannot continue MTV \n\n  - Use *#9900# to take log after termination - "

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    .line 1200
    .local v22, "message":Landroid/widget/Toast;
    const/16 v4, 0x77

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 1201
    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 1203
    .end local v22    # "message":Landroid/widget/Toast;
    :cond_6
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1212
    :pswitch_c
    sparse-switch p2, :sswitch_data_1

    goto/16 :goto_0

    .line 1214
    :sswitch_8
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "onPlayerNotification :CMD_SCAN : STAT_STARTED"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$14;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$14;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1225
    :sswitch_9
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification :CMD_SCAN : STAT_CHNL_DETECTED extra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/16 v21, 0x0

    .line 1228
    .local v21, "mOneSegChannel":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    const/16 v20, 0x0

    .line 1229
    .local v20, "last_serviceType":I
    const/4 v13, 0x0

    .line 1230
    .local v13, "multiChannel":I
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v15

    .line 1231
    .local v15, "CurrContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    if-eqz v15, :cond_7

    .line 1232
    invoke-virtual {v15}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getAttribute()Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramAttributes;->getChannel()[Landroid/broadcast/helper/types/MtvOneSegChannel;

    move-result-object v21

    .line 1233
    :cond_7
    if-eqz v21, :cond_b

    .line 1234
    const/4 v7, 0x1

    .line 1235
    .local v7, "available":I
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Length of Service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    const/4 v10, -0x1

    .line 1237
    .local v10, "mServiceID1":I
    const/4 v11, -0x1

    .line 1238
    .local v11, "mServiceID2":I
    const/16 v27, -0x1

    .line 1239
    .local v27, "virtualChannel":I
    const/16 v25, -0x1

    .line 1240
    .local v25, "physicalChannel":I
    const/16 v18, 0x0

    .local v18, "i":I
    const/16 v23, 0x0

    .local v23, "onesegCount":I
    :goto_1
    move-object/from16 v0, v21

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_b

    .line 1241
    aget-object v4, v21, v18

    if-eqz v4, :cond_a

    .line 1242
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "For service no ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]  Channel detail Vch ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v21, v18

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] ServiceID["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v21, v18

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] Physical channel ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v21, v18

    invoke-virtual {v6}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    aget-object v4, v21, v18

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v27

    .line 1245
    aget-object v4, v21, v18

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v25

    .line 1246
    const/16 v4, 0x9

    move/from16 v0, v18

    if-ge v0, v4, :cond_8

    aget-object v4, v21, v18

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v4

    mul-int/lit8 v13, v4, 0xa

    .line 1249
    :goto_2
    add-int/lit16 v4, v13, 0x258

    add-int/lit8 v24, v23, 0x1

    .end local v23    # "onesegCount":I
    .local v24, "onesegCount":I
    add-int/lit8 v5, v23, 0x1

    add-int v13, v4, v5

    .line 1250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestVChannelMultiChannel()I

    move-result v19

    .line 1252
    .local v19, "last_multiChannel":I
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multichannel "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    move/from16 v0, v19

    if-ne v0, v13, :cond_9

    const/4 v4, 0x1

    move/from16 v0, v20

    if-ne v0, v4, :cond_9

    .line 1255
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "last_maultiChannel == mOneSegChannel[i].getServID()"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v23, v24

    .line 1240
    .end local v19    # "last_multiChannel":I
    .end local v24    # "onesegCount":I
    .restart local v23    # "onesegCount":I
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1247
    :cond_8
    aget-object v4, v21, v18

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v4

    mul-int/lit8 v13, v4, 0x64

    goto :goto_2

    .line 1259
    .end local v23    # "onesegCount":I
    .restart local v19    # "last_multiChannel":I
    .restart local v24    # "onesegCount":I
    :cond_9
    new-instance v3, Lcom/samsung/sec/mtv/provider/MtvChannel;

    aget-object v4, v21, v18

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getRemoteKeyID()I

    move-result v4

    aget-object v5, v21, v18

    invoke-virtual {v5}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServID()I

    move-result v5

    const/4 v6, 0x0

    aget-object v8, v21, v18

    invoke-virtual {v8}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getServName()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v9

    aget-object v12, v21, v18

    invoke-virtual {v12}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalID()I

    move-result v12

    aget-object v14, v21, v18

    invoke-virtual {v14}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDName()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v3 .. v14}, Lcom/samsung/sec/mtv/provider/MtvChannel;-><init>(IIIILjava/lang/String;IIIIILjava/lang/String;)V

    .line 1261
    .local v3, "serviceDetectedMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->updateOrInsert(Landroid/content/Context;Lcom/samsung/sec/mtv/provider/MtvChannel;)V

    .line 1262
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4, v13}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 1263
    aget-object v4, v21, v18

    invoke-virtual {v4}, Landroid/broadcast/helper/types/MtvOneSegChannel;->getPhysicalIDType()I

    move-result v20

    move/from16 v23, v24

    .line 1267
    .end local v3    # "serviceDetectedMtvChannel":Lcom/samsung/sec/mtv/provider/MtvChannel;
    .end local v19    # "last_multiChannel":I
    .end local v24    # "onesegCount":I
    .restart local v23    # "onesegCount":I
    :goto_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v25

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->deleteVChannelInfo(Landroid/content/Context;III)V

    goto :goto_3

    .line 1265
    :cond_a
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOneSegChannel vis null for i=  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1271
    .end local v7    # "available":I
    .end local v10    # "mServiceID1":I
    .end local v11    # "mServiceID2":I
    .end local v18    # "i":I
    .end local v23    # "onesegCount":I
    .end local v25    # "physicalChannel":I
    .end local v27    # "virtualChannel":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableChannelDetected:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1277
    .end local v13    # "multiChannel":I
    .end local v15    # "CurrContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    .end local v20    # "last_serviceType":I
    .end local v21    # "mOneSegChannel":[Landroid/broadcast/helper/types/MtvOneSegChannel;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableChannelNotDetected:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1281
    :sswitch_b
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification :CMD_SCAN : STAT_COMPLETED extra:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->rearrangeDefaultDBValues(Landroid/content/Context;)V

    .line 1283
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableChannelDetected:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1284
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableChannelNotDetected:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1286
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$15;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1301
    :sswitch_c
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$16;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$16;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1318
    :pswitch_d
    packed-switch p2, :pswitch_data_3

    :pswitch_e
    goto/16 :goto_0

    .line 1327
    :pswitch_f
    invoke-static/range {p0 .. p0}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->rearrangeDefaultDBValues(Landroid/content/Context;)V

    .line 1328
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$17;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1351
    :pswitch_10
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification ...:CMD_STATUS_UPDT Status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_0

    .line 1409
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    const/16 v6, 0x15f

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1410
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableShowNotification:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1355
    :sswitch_e
    new-instance v26, Landroid/content/Intent;

    invoke-direct/range {v26 .. v26}, Landroid/content/Intent;-><init>()V

    .line 1356
    .local v26, "progressIntent":Landroid/content/Intent;
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPlayerNotification: STAT_DEL_FILE -> result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    const-string v4, "deleteTVFileConfirmation"

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1358
    const-string v4, "com.samsung.sec.mtv.ACTION_MTV_TVFILE_DELETED"

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1359
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->sendBroadcast(Landroid/content/Intent;)V

    .line 1360
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$18;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1370
    .end local v26    # "progressIntent":Landroid/content/Intent;
    :sswitch_f
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "STATUS_FAIL_SIGNAL_ERROR"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannel()I

    move-result v4

    move/from16 v0, p3

    if-ne v0, v4, :cond_0

    .line 1372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    if-nez v4, :cond_c

    .line 1374
    const/4 v4, 0x0

    sput-boolean v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    .line 1375
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$19;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$19;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1386
    :cond_c
    const/4 v4, 0x1

    sput-boolean v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    goto/16 :goto_0

    .line 1395
    :sswitch_10
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$20;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$20;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1415
    :sswitch_11
    sget-boolean v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->isProgramUpdated:Z

    if-nez v4, :cond_0

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableShowNotification:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1430
    :pswitch_11
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_0

    .line 1436
    :sswitch_12
    packed-switch p3, :pswitch_data_4

    goto/16 :goto_0

    .line 1438
    :pswitch_12
    sget-object v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v5, "tvlink status update completed : populating the list "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    new-instance v4, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$21;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$21;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;I)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1022
    nop

    :pswitch_data_0
    .packed-switch 0x5001
        :pswitch_1
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_9
    .end packed-switch

    .line 1045
    :pswitch_data_1
    .packed-switch 0x6001
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1143
    :pswitch_data_2
    .packed-switch 0x6005
        :pswitch_a
    .end packed-switch

    .line 1155
    :sswitch_data_0
    .sparse-switch
        0x6001 -> :sswitch_1
        0x6004 -> :sswitch_6
        0x6005 -> :sswitch_2
        0x6006 -> :sswitch_3
        0x6007 -> :sswitch_4
        0x6008 -> :sswitch_5
        0x6011 -> :sswitch_7
    .end sparse-switch

    .line 1212
    :sswitch_data_1
    .sparse-switch
        0x6001 -> :sswitch_8
        0x6004 -> :sswitch_c
        0x6005 -> :sswitch_b
        0x6015 -> :sswitch_9
        0x6016 -> :sswitch_a
    .end sparse-switch

    .line 1318
    :pswitch_data_3
    .packed-switch 0x6001
        :pswitch_0
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 1352
    :sswitch_data_2
    .sparse-switch
        0x600a -> :sswitch_d
        0x600c -> :sswitch_f
        0x6017 -> :sswitch_e
        0x601a -> :sswitch_10
        0x601b -> :sswitch_11
    .end sparse-switch

    .line 1430
    :sswitch_data_3
    .sparse-switch
        0x6001 -> :sswitch_0
        0x6005 -> :sswitch_12
    .end sparse-switch

    .line 1436
    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_12
    .end packed-switch
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/sec/mtv/provider/MtvBMLManager;->getAvailableCProBMInfoAll()[Lcom/samsung/sec/mtv/provider/MtvCProBMInfo;

    move-result-object v0

    array-length v0, v0

    if-gtz v0, :cond_0

    .line 399
    const/4 v0, 0x0

    .line 401
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgramAttributeReset(I)V
    .locals 0
    .param p1, "what"    # I

    .prologue
    .line 962
    return-void
.end method

.method public onProgramAttributeUpdated(I)V
    .locals 3
    .param p1, "what"    # I

    .prologue
    .line 918
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgramAttributeUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    packed-switch p1, :pswitch_data_0

    .line 957
    :goto_0
    return-void

    .line 950
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mChannelGuideUiMsgHandler:Landroid/os/Handler;

    const/16 v2, 0x15f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 951
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableShowNotification:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 952
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->RunnableUpdateProgramChannelInfo:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 920
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/4 v10, 0x0

    .line 455
    invoke-super {p0}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onResume()V

    .line 456
    sput-boolean v10, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->bIsChannelChanged:Z

    .line 458
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    .line 459
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getState()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState;->getOp()I

    move-result v5

    const/16 v6, 0x500f

    if-ne v5, v6, :cond_1

    .line 460
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "intent.stop.app-in-app"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->sendBroadcast(Landroid/content/Intent;)V

    .line 468
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    if-nez v5, :cond_2

    .line 470
    new-instance v5, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 472
    :cond_2
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isAppExiting()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 474
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "isExiting..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    goto :goto_0

    .line 479
    :cond_3
    invoke-static {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAppService;->isMiniModeRunning(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 481
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->finish()V

    goto :goto_0

    .line 488
    :cond_4
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume Start..Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->initPlayer()V

    .line 493
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_areachanged"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 495
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_areachanged"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 496
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "is_areachanged"

    invoke-virtual {v5, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 499
    :cond_5
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "created dialog called 1"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v10}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->createDialog(I)V

    goto/16 :goto_0

    .line 507
    :cond_6
    const/4 v3, 0x0

    .line 508
    .local v3, "prevAvlblArea":Lcom/samsung/sec/mtv/provider/MtvArea;
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v5

    invoke-static {p0, v5}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->find(Landroid/content/Context;I)Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v1

    .line 509
    .local v1, "currentArea":Lcom/samsung/sec/mtv/provider/MtvArea;
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getCount(Landroid/content/Context;)I

    move-result v4

    .line 511
    .local v4, "setAreaCount":I
    if-nez v4, :cond_8

    .line 512
    sput-boolean v12, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    .line 513
    sput-boolean v10, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->IsLowSignalInOtherTab:Z

    .line 518
    :goto_1
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSelected:[I

    if-eqz v5, :cond_9

    .line 520
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "selected another area... will change the slot and scan again..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "Stopping other sound now..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5, v12}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 524
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/16 v6, 0x9f

    iget v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSlotId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "channelguidelist"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 525
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/16 v6, 0x9c

    new-instance v7, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;

    iget v8, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSlotId:I

    iget-object v9, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSelected:[I

    invoke-direct {v7, v8, v9}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$MtvSearchParam;-><init>(I[I)V

    const-string v8, "channelguidelist"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    .line 526
    iput-object v13, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mSelected:[I

    .line 583
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->registerMediaButtonReceiver()V

    .line 584
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onResume END..Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 516
    :cond_8
    sput-boolean v10, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    goto :goto_1

    .line 528
    :cond_9
    iget-boolean v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->NoAreaDialogShowing:Z

    if-eqz v5, :cond_c

    .line 529
    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    if-nez v5, :cond_b

    .line 530
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_b

    .line 531
    :cond_a
    invoke-direct {p0, v10}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->createDialog(I)V

    .line 534
    :cond_b
    iput-boolean v10, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->NoAreaDialogShowing:Z

    goto/16 :goto_0

    .line 538
    :cond_c
    if-eqz v1, :cond_d

    iget v5, v1, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    if-eq v5, v11, :cond_e

    :cond_d
    sget-boolean v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSet:Z

    if-eqz v5, :cond_13

    .line 540
    :cond_e
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "reset current area and came back without selecting any other area..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "will select the next available area in the list now..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {p0}, Lcom/samsung/sec/mtv/provider/MtvAreaManager;->getAllAreas(Landroid/content/Context;)[Lcom/samsung/sec/mtv/provider/MtvArea;

    move-result-object v0

    .line 544
    .local v0, "area":[Lcom/samsung/sec/mtv/provider/MtvArea;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v5, v0

    if-ge v2, v5, :cond_f

    .line 546
    aget-object v5, v0, v2

    iget v5, v5, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    if-eq v5, v11, :cond_10

    .line 547
    aget-object v3, v0, v2

    .line 548
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setCurrentSlot(I)V

    .line 553
    :cond_f
    if-eqz v3, :cond_11

    iget v5, v3, Lcom/samsung/sec/mtv/provider/MtvArea;->mAreaId:I

    if-eq v5, v11, :cond_11

    .line 555
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "found next available area starting Tv..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabManager:Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;

    const/16 v6, 0xa0

    iget-object v7, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v7}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getCurrentSlot()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "channelguidelist"

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$TabManager;->onUpdate(ILjava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 544
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 559
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->isFinishing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 561
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "onResume : No AREA SET - Select Area Prompt"

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-static {p0, v13}, Lcom/samsung/sec/mtv/provider/MtvChannelManager;->deleteDB(Landroid/content/Context;Landroid/net/Uri;)V

    .line 564
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 566
    iget v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    if-nez v5, :cond_0

    .line 567
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v11}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannel(I)V

    .line 568
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestServiceID(I)V

    .line 569
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v5, v10}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setLatestVChannelMultiChannel(I)V

    .line 570
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_12

    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 571
    :cond_12
    invoke-direct {p0, v10}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->createDialog(I)V

    goto/16 :goto_0

    .line 576
    .end local v0    # "area":[Lcom/samsung/sec/mtv/provider/MtvArea;
    .end local v2    # "i":I
    :cond_13
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v5, :cond_7

    .line 578
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "Either launched from LivePlayer or came back from setArea without doing anything... "

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    sget-object v5, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v6, "Stopping other sound now..."

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 581
    iget-object v5, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAudMgr:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-virtual {v5, v12}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    goto/16 :goto_2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 806
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    iput v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    .line 807
    const-string v0, "currenttabindex"

    iget v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 808
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "noareadialogontop"

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->noAreaSetAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 815
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/sec/mtv/ui/common/MtvBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 816
    return-void
.end method

.method public onStateChanged(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;)V
    .locals 0
    .param p1, "oldState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;
    .param p2, "newState"    # Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackState$State;

    .prologue
    .line 967
    return-void
.end method

.method openChannel()V
    .locals 5

    .prologue
    .line 1700
    const/4 v0, 0x0

    .line 1701
    .local v0, "mOpenURI":Landroid/broadcast/helper/MtvURI;
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestPChannelFromVChannel()I

    move-result v1

    .line 1702
    .local v1, "phyChannelNum":I
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getLatestServiceID()I

    move-result v2

    .line 1703
    .local v2, "serviceId":I
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->prepareUri(IIZ)Landroid/broadcast/helper/MtvURI;

    move-result-object v0

    .line 1705
    iget-object v3, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvPlayerOneSeg:Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;

    iget-object v4, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMtvAppPlaybackContext:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    invoke-interface {v3, v4, v0}, Lcom/samsung/sec/mtv/app/player/IMtvAppPlayerOneSeg;->open(Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;Landroid/broadcast/helper/MtvURI;)Z

    .line 1706
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 1
    .param p1, "tabid"    # I

    .prologue
    .line 601
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 602
    iput p1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->currentTabId:I

    .line 604
    :cond_0
    return-void
.end method

.method public showPopupMenu()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    sget-object v0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->TAG:Ljava/lang/String;

    const-string v1, "showPopupMenu()"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mMenuButton:Landroid/widget/ImageButton;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 362
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$5;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$5;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$6;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide$6;-><init>(Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 377
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIsPopupMenuShowing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 382
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIsPopupMenuShowing:Z

    .line 385
    iget-boolean v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mIsPopupMenuShowing:Z

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/samsung/sec/mtv/ui/channelguide/MtvUiChannelGuide;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 390
    :cond_1
    return-void
.end method
