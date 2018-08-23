.class public Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
.super Landroid/view/ViewGroup;
.source "MmbBrViewSv.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;,
        Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;
    }
.end annotation


# static fields
.field public static final CAPTION_LANGUAGE1:I = 0x1

.field public static final CAPTION_LANGUAGE2:I = 0x2

.field private static final DEFAULT_ZOOM_SIZE:I = 0x0

.field private static final DELIMITER:Ljava/lang/String; = "#"

.field private static final MMBBR_WAKELOCK_LOCK:Ljava/lang/Object;

.field private static final PARAM_NUM_1:I = 0x1

.field private static final PARAM_NUM_2:I = 0x2

.field private static final PARAM_NUM_3:I = 0x3

.field public static final PAUSE_BACKGROUND_PLAY:I = 0x0

.field public static final PAUSE_NO_RES_RELEASE:I = 0x2

.field public static final PAUSE_RES_RELEASE:I = 0x1

.field public static final PRIMARY_AUDIO:I = 0x0

.field public static final SECONDARY_AUDIO:I = 0x1

.field public static final STEREO_AUDIO:I = 0x2

.field public static final TLS_DISABLED_SSL_DISABLED:I = 0x2

.field public static final TLS_ENABLED_SSL_DISABLED:I = 0x1

.field public static final TLS_ENABLED_SSL_ENABLED:I = 0x0

.field public static final VIDEO_DIMENSION_2D:I = 0x0

.field public static final VIDEO_DIMENSION_3D:I = 0x1


# instance fields
.field private drmRmpiOutCtrlInfo:[B

.field private initialized:Z

.field private isSaveLogStart:Z

.field private loadState:Z

.field private localEventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

.field private mAttrs:Landroid/util/AttributeSet;

.field private mAudioState:I

.field private mBottom:I

.field private mCallbackIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

.field private mContext:Landroid/content/Context;

.field private mDefStyle:I

.field private mEventOccurredIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

.field private mHandler:Landroid/os/Handler;

.field private mLeft:I

.field private mParamNum:I

.field private mRight:I

.field private mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

.field private mSystemNotifyIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

.field private mTop:I

.field private mUri:Ljava/lang/String;

.field private mWakelock:Landroid/os/PowerManager$WakeLock;

.field private mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

.field private pauseFlag:Z

.field private pictState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->MMBBR_WAKELOCK_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    .line 190
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->resetLocalVariable()V

    .line 192
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    .line 193
    const/4 v0, 0x1

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mParamNum:I

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    .line 217
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->resetLocalVariable()V

    .line 219
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAttrs:Landroid/util/AttributeSet;

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mParamNum:I

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;
    .param p2, "aAttrs"    # Landroid/util/AttributeSet;
    .param p3, "aDefStyle"    # I

    .prologue
    .line 240
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    .line 246
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->resetLocalVariable()V

    .line 248
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    .line 249
    iput-object p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAttrs:Landroid/util/AttributeSet;

    .line 250
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mDefStyle:I

    .line 251
    const/4 v0, 0x3

    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mParamNum:I

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->localEventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mBottom:I

    return v0
.end method

.method static synthetic access$1200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->isSaveLogStart:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->isSaveLogStart:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;I)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setPlayingLog(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setAudioMuteByDevice()V

    return-void
.end method

.method static synthetic access$1800(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->clearAudioMuteByDevice(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    return v0
.end method

.method static synthetic access$202(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pauseFlag:Z

    return v0
.end method

.method static synthetic access$302(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pauseFlag:Z

    return p1
.end method

.method static synthetic access$400(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->backgroundPictCtl()V

    return-void
.end method

.method static synthetic access$500(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setWakeLock(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->loadState:Z

    return v0
.end method

.method static synthetic access$602(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->loadState:Z

    return p1
.end method

.method static synthetic access$700(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setFcBrowser()V

    return-void
.end method

.method static synthetic access$802(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->initialized:Z

    return p1
.end method

.method static synthetic access$900(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)I
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;

    .prologue
    .line 71
    iget v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mRight:I

    return v0
.end method

.method private backgroundPictCtl()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 802
    const/4 v6, 0x0

    .line 804
    .local v6, "pendingintent":Landroid/app/PendingIntent;
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    if-ne v0, v1, :cond_0

    .line 805
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 806
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "com.nttdocomo.mmb.android.mmbsv.ACTION_BACKGROUND_FC_BROWSER"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 808
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const/high16 v0, 0x10200000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 811
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v3, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 815
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    const v1, 0x30001

    iget-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->setNotification(IZILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 825
    return-void
.end method

.method private canAudioDeviceMute()Z
    .locals 2

    .prologue
    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "result":Z
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    if-nez v1, :cond_0

    .line 685
    const/4 v0, 0x1

    .line 690
    :cond_0
    return v0
.end method

.method private canConflict()Z
    .locals 9

    .prologue
    const/16 v8, 0x218

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 306
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;

    .line 307
    .local v1, "holder":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;
    invoke-interface {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextHolderSv;->getServiceContext()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    move-result-object v6

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    .line 309
    new-instance v6, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

    invoke-direct {v6, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    iput-object v6, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mCallbackIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

    .line 311
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v6

    iget-object v7, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mCallbackIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

    invoke-virtual {v6, v8, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->registerCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 317
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v8, v5, v7}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->checkConflict(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v3

    .line 320
    .local v3, "ret":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 321
    .local v2, "result":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    move v0, v4

    .line 323
    .local v0, "bret":Z
    :goto_0
    if-nez v0, :cond_0

    .line 324
    const-string v6, "MMBI_SVC"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "[MmbBrViewSv] canConflict error "

    aput-object v8, v7, v5

    aput-object v2, v7, v4

    invoke-static {v6, v7}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_0
    return v0

    .end local v0    # "bret":Z
    :cond_1
    move v0, v5

    .line 321
    goto :goto_0
.end method

.method private chgFunctionOnOff(I)Z
    .locals 2
    .param p1, "aSettingData"    # I

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 379
    .local v0, "ret":Z
    if-nez p1, :cond_1

    .line 380
    const/4 v0, 0x0

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 382
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearAudioMuteByDevice(Landroid/content/Intent;)V
    .locals 8
    .param p1, "aIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 612
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v4, :cond_0

    .line 663
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v1

    .line 621
    .local v1, "audioFlg":I
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->canAudioDeviceMute()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v4, p1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isDisconnectedIntent(Landroid/content/Intent;)Z

    move-result v4

    if-ne v7, v4, :cond_4

    .line 624
    :cond_1
    if-nez v1, :cond_4

    .line 625
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 626
    .local v0, "audio":Landroid/media/AudioManager;
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v6, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 630
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getAudioMute()I

    move-result v2

    .line 634
    .local v2, "mute":I
    if-ne v7, v2, :cond_2

    .line 639
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setAudioMute(I)V

    .line 645
    :cond_2
    const/4 v3, 0x0

    .line 647
    .local v3, "setParam":I
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 648
    const/4 v3, 0x1

    .line 653
    :cond_3
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v4, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setAudioOutDev(I)V

    .line 659
    .end local v0    # "audio":Landroid/media/AudioManager;
    .end local v2    # "mute":I
    .end local v3    # "setParam":I
    :cond_4
    iput v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    goto :goto_0
.end method

.method private getOutCtrlInfo(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 17
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;

    .prologue
    .line 732
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "drmRmpiOutCtrlInfo"

    aput-object v6, v3, v1

    .line 734
    .local v3, "projection":[Ljava/lang/String;
    const-string v1, "content://com.nttdocomo.mmb.android.mmbsv/contents/crid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 737
    .local v2, "uri":Landroid/net/Uri;
    const-string v4, "QueryId = ? AND GetType = ? AND EntityId = ? AND DictionaryMode = ? AND DictionaryChange = ? AND VersionFilter = ? AND crid in (?,?,?,?)"

    .line 740
    .local v4, "selection":Ljava/lang/String;
    const-string v1, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 741
    .local v10, "delimterPos":I
    move-object/from16 v13, p1

    .line 742
    .local v13, "tmpCrid":Ljava/lang/String;
    const/4 v1, -0x1

    if-eq v1, v10, :cond_0

    .line 743
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 747
    :cond_0
    const/4 v1, 0x7

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v6, 0x0

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "5"

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object p2, v5, v1

    const/4 v1, 0x3

    const-string v6, "ja"

    aput-object v6, v5, v1

    const/4 v1, 0x4

    const-string v6, "false"

    aput-object v6, v5, v1

    const/4 v1, 0x5

    const-string v6, "false"

    aput-object v6, v5, v1

    const/4 v1, 0x6

    aput-object v13, v5, v1

    .line 751
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 752
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 759
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 760
    .local v14, "tmpDrmRmpiOutCtrlInfo":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 762
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 763
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    .line 767
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 771
    :cond_1
    :goto_0
    if-nez v14, :cond_3

    .line 772
    const-string v1, "MMBI_SVC"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "[MmbBrViewSv]  DrmRmpiOutCtrlInfo is null"

    aput-object v16, v6, v15

    invoke-static {v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 773
    const/4 v7, 0x0

    .line 785
    :cond_2
    return-object v7

    .line 764
    :catch_0
    move-exception v11

    .line 765
    .local v11, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "MMBI_SVC"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "[MmbBrViewSv] sql error"

    aput-object v16, v6, v15

    invoke-static {v1, v6}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 767
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v11    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 776
    :cond_3
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v7, v1, [B

    .line 778
    .local v7, "byteData":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v1, v7

    if-ge v12, v1, :cond_2

    .line 779
    mul-int/lit8 v1, v12, 0x2

    add-int/lit8 v6, v12, 0x1

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v14, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x10

    invoke-static {v1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v7, v12

    .line 778
    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method

.method private notifyCopyControlInformation()V
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->notifyCopyControlInformationForFc([B)V

    .line 714
    :cond_0
    return-void
.end method

.method private registerEvent()V
    .locals 2

    .prologue
    .line 348
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mEventOccurredIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

    .line 352
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mEventOccurredIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbMwOnEventOccurred;

    invoke-virtual {v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setOnEventOccurredListener(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwOnEventOccurredListener;)V

    .line 358
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;)V

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mSystemNotifyIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    .line 359
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mSystemNotifyIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    invoke-virtual {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->addNotifyListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;)V

    .line 364
    return-void
.end method

.method private resetLocalVariable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 273
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 274
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mCallbackIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

    .line 275
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mUri:Ljava/lang/String;

    .line 276
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->isSaveLogStart:Z

    .line 277
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mLeft:I

    .line 278
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mTop:I

    .line 279
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mRight:I

    .line 280
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mBottom:I

    .line 281
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    .line 282
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->loadState:Z

    .line 283
    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pauseFlag:Z

    .line 288
    return-void
.end method

.method private setAudioMuteByDevice()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 556
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v2, :cond_0

    .line 598
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getAudioDeviceState()I

    move-result v0

    .line 565
    .local v0, "audioFlg":I
    if-nez v0, :cond_2

    .line 566
    const/4 v1, 0x0

    .line 567
    .local v1, "setParam":I
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->isA2dpConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    const/4 v1, 0x1

    .line 573
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setAudioOutDev(I)V

    .line 577
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    goto :goto_0

    .line 584
    .end local v1    # "setParam":I
    :cond_2
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->canAudioDeviceMute()Z

    move-result v2

    if-ne v3, v2, :cond_3

    .line 589
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setAudioMute(I)V

    .line 594
    :cond_3
    iput v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    goto :goto_0
.end method

.method private setFcBrowser()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 402
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getPreference()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;

    move-result-object v3

    .line 404
    .local v3, "preferenceinstance":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;
    const/4 v0, 0x0

    .line 408
    .local v0, "aflag":Z
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getFcCookieDelete()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    .line 409
    .local v1, "clsetval":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;, "Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 411
    .local v4, "setval":I
    if-ne v7, v4, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->clearCookie()V

    .line 413
    invoke-virtual {v3, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->setFcCookieDelete(I)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 417
    :cond_0
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getFcCookieSetting()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 419
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->chgFunctionOnOff(I)Z

    move-result v0

    .line 420
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setCookie(Z)V

    .line 423
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getFcRefererSetting()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    .line 424
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 425
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->chgFunctionOnOff(I)Z

    move-result v0

    .line 429
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v5, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setSendRefererEnabled(Z)V

    .line 435
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getFcJavaScriptSetting()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 437
    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->chgFunctionOnOff(I)Z

    move-result v0

    .line 441
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v5, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setJsEnabled(Z)V

    .line 447
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getCaptionDisplay()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 450
    if-nez v4, :cond_3

    .line 451
    const/4 v0, 0x0

    .line 455
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setVideoCaptionEnable(Z)V

    .line 458
    invoke-virtual {v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbPrPreferenceSv;->getCaptionLanguage()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 460
    const/4 v2, 0x1

    .line 462
    .local v2, "language":I
    if-ne v7, v4, :cond_4

    .line 463
    const/4 v2, 0x1

    .line 467
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setLanguage(I)V

    .line 473
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v5, v6}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setInitialScale(I)V

    .line 479
    invoke-virtual {p0, v6}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setTlsSslSupport(I)V

    .line 484
    return-void

    .line 452
    .end local v2    # "language":I
    :cond_3
    if-ne v7, v4, :cond_1

    .line 453
    const/4 v0, 0x1

    goto :goto_0

    .line 464
    .restart local v2    # "language":I
    :cond_4
    const/4 v5, 0x2

    if-ne v5, v4, :cond_2

    .line 465
    const/4 v2, 0x2

    goto :goto_1
.end method

.method private setPlayingLog(I)V
    .locals 6
    .param p1, "aCategory"    # I

    .prologue
    .line 528
    const/16 v0, 0x65

    if-eq v0, p1, :cond_0

    const/16 v0, 0x66

    if-eq v0, p1, :cond_0

    .line 530
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[MmbBrViewSv] Bad Argument"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 531
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->getSecureClock()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 537
    .local v2, "time":J
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mUri:Ljava/lang/String;

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->saveFcLog(IJLjava/lang/String;Ljava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 542
    return-void
.end method

.method private setWakeLock(Z)V
    .locals 6
    .param p1, "aWakeLockFlag"    # Z

    .prologue
    .line 3010
    sget-object v3, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->MMBBR_WAKELOCK_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 3012
    if-eqz p1, :cond_1

    .line 3013
    :try_start_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 3014
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v4, "WakeLock Partial"

    invoke-virtual {v1, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .line 3016
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3026
    .end local v1    # "pm":Landroid/os/PowerManager;
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3030
    return-void

    .line 3018
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3019
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3020
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mWakelock:Landroid/os/PowerManager$WakeLock;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3023
    :catch_0
    move-exception v0

    .line 3024
    .local v0, "err":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "Exception by PowerManager"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v4}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logWarning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3026
    .end local v0    # "err":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public canGoBack()Z
    .locals 5

    .prologue
    .line 1433
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 1434
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1435
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 1441
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->canGoBack()Z

    move-result v0

    .line 1448
    .local v0, "havehistory":Z
    return v0
.end method

.method public canGoForward()Z
    .locals 5

    .prologue
    .line 1396
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 1397
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1398
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 1404
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->canGoForward()Z

    move-result v0

    .line 1411
    .local v0, "havehistory":Z
    return v0
.end method

.method public clearCache(Z)V
    .locals 4
    .param p1, "aClearRamOnly"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1955
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v2, :cond_0

    .line 1956
    const-string v2, "MMBI_SVC"

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1957
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1963
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->clearCache(Z)V

    .line 1970
    return-void

    :cond_1
    move v0, v1

    .line 1963
    goto :goto_0
.end method

.method public clearCookie()V
    .locals 4

    .prologue
    .line 1787
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1788
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1789
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->clearCookie()V

    .line 1802
    return-void
.end method

.method public deleteResumeInfo()V
    .locals 4

    .prologue
    .line 2115
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 2116
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2117
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 2123
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->deleteResumePageInfo()V

    .line 2130
    return-void
.end method

.method public end()V
    .locals 7

    .prologue
    const/16 v6, 0x218

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1001
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    if-eqz v1, :cond_0

    .line 1002
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->pictState:Z

    .line 1003
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->backgroundPictCtl()V

    .line 1004
    invoke-direct {p0, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setWakeLock(Z)V

    .line 1007
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mSystemNotifyIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    if-eqz v1, :cond_1

    .line 1008
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mSystemNotifyIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbSystemNotify;

    invoke-virtual {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->removeNotifyListener(Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwNotifyListenerSv;)V

    .line 1012
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mCallbackIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

    if-eqz v1, :cond_2

    .line 1015
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    invoke-virtual {v1, v6, v3, v4}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 1018
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mCallbackIf:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv$MmbViewSvCallbackIf;

    invoke-virtual {v1, v6, v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->unregisterCallback(ILcom/nttdocomo/mmb/android/mmbsv/library/MmbCfCallbackSv;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 1023
    :cond_2
    iget-boolean v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->isSaveLogStart:Z

    if-ne v5, v1, :cond_3

    .line 1025
    const/16 v1, 0x66

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setPlayingLog(I)V

    .line 1026
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->isSaveLogStart:Z

    .line 1030
    :cond_3
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-eqz v1, :cond_5

    .line 1035
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getAudioMute()I

    move-result v0

    .line 1039
    .local v0, "mute":I
    if-ne v5, v0, :cond_4

    .line 1043
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setAudioMute(I)V

    .line 1049
    :cond_4
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->removeView(Landroid/view/View;)V

    .line 1054
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->destroy()V

    .line 1058
    iput-boolean v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->initialized:Z

    .line 1059
    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 1062
    .end local v0    # "mute":I
    :cond_5
    iput-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 1067
    return-void
.end method

.method public getCharacterEncoding()Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;
    .locals 6

    .prologue
    .line 1697
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v2, :cond_0

    .line 1698
    const-string v2, "MMBI_SVC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[MmbBrViewSv]MW is null"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1699
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 1706
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getCharacterEncoding()Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    move-result-object v0

    .line 1711
    .local v0, "codetype":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->SHIFT_JIS:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 1714
    .local v1, "rescode":Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_8:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_2

    .line 1715
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_8:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .line 1733
    :cond_1
    :goto_0
    return-object v1

    .line 1716
    :cond_2
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_16:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_3

    .line 1717
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_16:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    goto :goto_0

    .line 1718
    :cond_3
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->US_ASCII:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_4

    .line 1719
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->US_ASCII:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    goto :goto_0

    .line 1720
    :cond_4
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_8859_1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_5

    .line 1721
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_8859_1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    goto :goto_0

    .line 1722
    :cond_5
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->SHIFT_JIS:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_6

    .line 1723
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->SHIFT_JIS:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    goto :goto_0

    .line 1724
    :cond_6
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->EUC_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_7

    .line 1725
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->EUC_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    goto :goto_0

    .line 1726
    :cond_7
    sget-object v2, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_2022_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    if-ne v2, v0, :cond_1

    .line 1727
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_2022_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    goto :goto_0
.end method

.method public getDensity()I
    .locals 5

    .prologue
    .line 3236
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 3237
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3238
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 3246
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getDensity()I

    move-result v0

    .line 3256
    .local v0, "ret":I
    return v0
.end method

.method protected getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    .locals 2

    .prologue
    .line 502
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->getInternalFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v0

    .line 510
    .local v0, "facade":Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;
    return-object v0
.end method

.method public getScale()F
    .locals 5

    .prologue
    .line 1888
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 1889
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 1896
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getScale()F

    move-result v0

    .line 1903
    .local v0, "scale":F
    return v0
.end method

.method public getTlsSslSupport()I
    .locals 5

    .prologue
    .line 2337
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2338
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2339
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2345
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getTlsSslSupport()I

    move-result v0

    .line 2353
    .local v0, "ret":I
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1921
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 1922
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1923
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 1929
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 1936
    .local v0, "uri":Ljava/lang/String;
    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2372
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2373
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2374
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2380
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 2388
    .local v0, "ret":Ljava/lang/String;
    return-object v0
.end method

.method public goBack()V
    .locals 4

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1467
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1468
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1474
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->goBack()V

    .line 1481
    return-void
.end method

.method public goForward()V
    .locals 4

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1499
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1500
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1506
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->goForward()V

    .line 1513
    return-void
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 915
    iput-boolean v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->initialized:Z

    .line 918
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mHandler:Landroid/os/Handler;

    .line 922
    :try_start_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->canConflict()Z

    move-result v1

    if-ne v6, v1, :cond_0

    .line 925
    iget v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mParamNum:I

    packed-switch v1, :pswitch_data_0

    .line 955
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]Unknow param num"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 956
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    const-string v1, "MMBI_SVC"

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]Conflict Internal Exception"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 978
    throw v0

    .line 930
    .end local v0    # "ex":Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException;
    :pswitch_0
    :try_start_1
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    .line 959
    :goto_0
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->registerEvent()V

    .line 961
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->addView(Landroid/view/View;)V

    .line 967
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->initialize()V

    .line 984
    return-void

    .line 939
    :pswitch_1
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAttrs:Landroid/util/AttributeSet;

    invoke-direct {v1, v2, v3}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    goto :goto_0

    .line 949
    :pswitch_2
    new-instance v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAttrs:Landroid/util/AttributeSet;

    iget v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mDefStyle:I

    invoke-direct {v1, v2, v3, v4}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    goto :goto_0

    .line 972
    :cond_0
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]Conflict NG"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 973
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1
    :try_end_1
    .catch Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceInternalException; {:try_start_1 .. :try_end_1} :catch_0

    .line 925
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isFullScreenMode()Z
    .locals 5

    .prologue
    .line 2265
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2266
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2267
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2273
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isFullScreenMode()Z

    move-result v0

    .line 2281
    .local v0, "ret":Z
    return v0
.end method

.method public isPaused()Z
    .locals 5

    .prologue
    .line 2301
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2302
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2303
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2309
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPaused()Z

    move-result v0

    .line 2317
    .local v0, "ret":Z
    return v0
.end method

.method public isPlayingAudio()Z
    .locals 5

    .prologue
    .line 2229
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2230
    const-string v1, "MMBI_SVC"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2231
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2237
    :cond_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->isPlayingAudio()Z

    move-result v0

    .line 2245
    .local v0, "ret":Z
    return v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;ZLcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;)V
    .locals 6
    .param p1, "aUri"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;
    .param p3, "aParam"    # Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;
    .param p4, "aScheduleEnable"    # Z
    .param p5, "aSchedule"    # Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1092
    if-nez p1, :cond_0

    .line 1093
    const-string v2, "MMBI_SVC"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv] Bad Argument"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1094
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1098
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1099
    :cond_1
    const-string v2, "MMBI_SVC"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv] Bad Argument"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1100
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1104
    :cond_2
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v2, :cond_3

    .line 1105
    const-string v2, "MMBI_SVC"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv]MW is null"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1106
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 1109
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getOutCtrlInfo(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 1112
    iput v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    .line 1114
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->initializeUsbConnectState()V

    .line 1116
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setAudioMuteByDevice()V

    .line 1119
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->notifyCopyControlInformation()V

    .line 1122
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mUri:Ljava/lang/String;

    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "sequencelabel":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1128
    .local v1, "trickplay":Z
    if-nez p4, :cond_6

    .line 1130
    if-nez p3, :cond_4

    if-nez p5, :cond_4

    .line 1132
    const/4 v0, 0x0

    .line 1133
    const/4 v1, 0x1

    .line 1171
    :goto_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2, p1, v0, v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadRequest(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->loadState:Z

    .line 1178
    return-void

    .line 1134
    :cond_4
    if-eqz p3, :cond_5

    if-nez p5, :cond_5

    .line 1136
    invoke-virtual {p3}, Lcom/nttdocomo/mmb/android/mmbsv/library/filecast/MmbFcMediaSchemeParamSv;->getParamCntIndex()Ljava/lang/String;

    move-result-object v0

    .line 1137
    const/4 v1, 0x1

    goto :goto_0

    .line 1139
    :cond_5
    const-string v2, "MMBI_SVC"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv] Bad Argument"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1140
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2

    .line 1144
    :cond_6
    if-nez p3, :cond_7

    if-nez p5, :cond_7

    .line 1146
    const/4 v0, 0x0

    .line 1147
    const/4 v1, 0x1

    goto :goto_0

    .line 1148
    :cond_7
    if-nez p3, :cond_9

    if-eqz p5, :cond_9

    iget-object v2, p5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    if-eqz v2, :cond_9

    .line 1152
    iget-object v2, p5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget v2, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbReserveType:I

    and-int/lit8 v2, v2, 0x8

    if-lez v2, :cond_8

    .line 1155
    iget-object v2, p5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 1156
    const/4 v1, 0x0

    goto :goto_0

    .line 1159
    :cond_8
    iget-object v2, p5, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleIntentDataSv;->mmbScheduleData:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;

    iget-object v0, v2, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbCoScheduleDataSv;->mmbCntIndex:Ljava/lang/String;

    .line 1160
    const/4 v1, 0x1

    goto :goto_0

    .line 1163
    :cond_9
    const-string v2, "MMBI_SVC"

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "[MmbBrViewSv] Bad Argument"

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1164
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v2
.end method

.method public loadWithResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "aCrid"    # Ljava/lang/String;
    .param p2, "aEntityId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1264
    if-nez p1, :cond_0

    .line 1265
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv] Bad Argument"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1266
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 1270
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1271
    :cond_1
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv] Bad Argument"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_3

    .line 1277
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv]MW is null"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1278
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1281
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getOutCtrlInfo(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 1284
    iput v3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mAudioState:I

    .line 1286
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mServiceContext:Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;

    invoke-virtual {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwServiceContextSv;->initializeUsbConnectState()V

    .line 1288
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->setAudioMuteByDevice()V

    .line 1291
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->notifyCopyControlInformation()V

    .line 1294
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mUri:Ljava/lang/String;

    .line 1299
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->loadRequestWithResuming(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->loadState:Z

    .line 1306
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "aChanged"    # Z
    .param p2, "aLeft"    # I
    .param p3, "aTop"    # I
    .param p4, "aRight"    # I
    .param p5, "aBottom"    # I

    .prologue
    .line 3052
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 3054
    iget-boolean v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->initialized:Z

    if-nez v0, :cond_1

    .line 3055
    iput p2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mLeft:I

    .line 3056
    iput p3, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mTop:I

    .line 3057
    iput p4, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mRight:I

    .line 3058
    iput p5, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mBottom:I

    .line 3074
    :cond_0
    :goto_0
    return-void

    .line 3064
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p2, p3, p4, p5}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->layout(IIII)V

    goto :goto_0
.end method

.method public pause(I)V
    .locals 5
    .param p1, "aForceMediaRelease"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1538
    const/4 v0, 0x0

    .line 1539
    .local v0, "forceMediaRelease":I
    packed-switch p1, :pswitch_data_0

    .line 1550
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv] Bad Argument"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1551
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 1541
    :pswitch_0
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_BACKGROUND_PLAY:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->getInt()I

    move-result v0

    .line 1555
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 1556
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1557
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 1544
    :pswitch_1
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->getInt()I

    move-result v0

    .line 1545
    goto :goto_0

    .line 1547
    :pswitch_2
    sget-object v1, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->MMBFCBROWMW_PAUSE_NO_RES_RELEASE:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;

    invoke-virtual {v1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView$MmbFcBrowMwPauseType;->getInt()I

    move-result v0

    .line 1548
    goto :goto_0

    .line 1561
    :cond_0
    if-ne v2, p1, :cond_1

    .line 1564
    invoke-virtual {p0}, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->getFacade()Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;

    move-result-object v1

    const/16 v2, 0x218

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwInternalFacadeSv;->clearServiceStatus(IILjava/lang/String;)Lcom/nttdocomo/mmb/android/mmbsv/library/MmbFwResultSv;

    .line 1572
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->pauseView(I)V

    .line 1581
    return-void

    .line 1539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reLoad()V
    .locals 4

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1231
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1232
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->reload()V

    .line 1245
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 1599
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1601
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 1606
    .local v0, "isInteractive":Z
    if-nez v0, :cond_0

    .line 1626
    :goto_0
    return-void

    .line 1611
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v2, :cond_1

    .line 1612
    const-string v2, "MMBI_SVC"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "[MmbBrViewSv]MW is null"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1613
    new-instance v2, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v2}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v2

    .line 1619
    :cond_1
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v2}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->resumeView()V

    goto :goto_0
.end method

.method public setAudioSapMode(I)V
    .locals 5
    .param p1, "aMode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2176
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2177
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2178
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2181
    :cond_0
    const/4 v0, 0x0

    .line 2184
    .local v0, "mdlmode":I
    packed-switch p1, :pswitch_data_0

    .line 2195
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv] Bad Argument"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2196
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 2186
    :pswitch_0
    const/4 v0, 0x0

    .line 2202
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setSapMode(I)V

    .line 2210
    return-void

    .line 2189
    :pswitch_1
    const/4 v0, 0x1

    .line 2190
    goto :goto_0

    .line 2192
    :pswitch_2
    const/4 v0, 0x2

    .line 2193
    goto :goto_0

    .line 2184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setCharacterEncoding(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;)V
    .locals 5
    .param p1, "aEncodingType"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1642
    const/4 v0, 0x0

    .line 1645
    .local v0, "codetype":Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 1646
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 1651
    :cond_0
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_8:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_1

    .line 1652
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_8:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    .line 1673
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->refreshPageWithCharEncoding(Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;)V

    .line 1680
    return-void

    .line 1653
    :cond_1
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->UTF_16:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_2

    .line 1654
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->UTF_16:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1655
    :cond_2
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->US_ASCII:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_3

    .line 1656
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->US_ASCII:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1657
    :cond_3
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_8859_1:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_4

    .line 1658
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_8859_1:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1659
    :cond_4
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->SHIFT_JIS:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_5

    .line 1660
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->SHIFT_JIS:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1661
    :cond_5
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->EUC_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_6

    .line 1662
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->EUC_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1663
    :cond_6
    sget-object v1, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;->ISO_2022_JP:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEncodingSv;

    if-ne v1, p1, :cond_7

    .line 1664
    sget-object v0, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;->ISO_2022_JP:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwViewEncodingType;

    goto :goto_0

    .line 1666
    :cond_7
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv] Bad Argument"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1667
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1
.end method

.method public setCookie(Z)V
    .locals 4
    .param p1, "aFlags"    # Z

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1756
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1757
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1763
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setCookieEnabled(Z)V

    .line 1770
    return-void
.end method

.method public setDensity(I)V
    .locals 4
    .param p1, "aDensity"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 3147
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 3148
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv]MW is null"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3149
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 3153
    :cond_0
    if-gez p1, :cond_1

    .line 3154
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv] Bad Argument"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3155
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 3163
    :cond_1
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setDensity(I)V

    .line 3172
    return-void
.end method

.method public setEventListener(Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;)V
    .locals 0
    .param p1, "aListener"    # Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    .prologue
    .line 2149
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->localEventListener:Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrEventListenerSv;

    .line 2154
    return-void
.end method

.method public setLanguage(I)V
    .locals 5
    .param p1, "aLanguage"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2064
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v1, :cond_0

    .line 2065
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2066
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v1

    .line 2069
    :cond_0
    const/4 v0, 0x0

    .line 2072
    .local v0, "languagetype":I
    packed-switch p1, :pswitch_data_0

    .line 2080
    const-string v1, "MMBI_SVC"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "[MmbBrViewSv] Bad Argument"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2081
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v1}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v1

    .line 2074
    :pswitch_0
    const/4 v0, 0x0

    .line 2087
    :goto_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v1, v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setVideoCaptionLanguage(I)V

    .line 2094
    return-void

    .line 2077
    :pswitch_1
    const/4 v0, 0x1

    .line 2078
    goto :goto_0

    .line 2072
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRefererEnabled(Z)V
    .locals 4
    .param p1, "aFlags"    # Z

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1823
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1824
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1830
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setSendRefererEnabled(Z)V

    .line 1837
    return-void
.end method

.method public setScriptEnabled(Z)V
    .locals 4
    .param p1, "aFlags"    # Z

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1857
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1858
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setJsEnabled(Z)V

    .line 1871
    return-void
.end method

.method public setTlsSslSupport(I)V
    .locals 4
    .param p1, "aSettingMode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1990
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1991
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv]MW is null"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1992
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1996
    :cond_0
    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-ge v0, p1, :cond_2

    .line 1998
    :cond_1
    const-string v0, "MMBI_SVC"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[MmbBrViewSv] Bad Argument"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1999
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceArgumentException;-><init>()V

    throw v0

    .line 2005
    :cond_2
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setTlsSslSupport(I)V

    .line 2012
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 4
    .param p1, "aUserAgent"    # Ljava/lang/String;

    .prologue
    .line 2407
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 2408
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2409
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 2415
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setUserAgent(Ljava/lang/String;)V

    .line 2423
    return-void
.end method

.method public setVideoCaptionEnable(Z)V
    .locals 4
    .param p1, "aFlags"    # Z

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 2032
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2033
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0, p1}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->setVideoCaptionEnable(Z)V

    .line 2046
    return-void
.end method

.method public stopLoad()V
    .locals 4

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1196
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->stopLoading()V

    .line 1208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->drmRmpiOutCtrlInfo:[B

    .line 1213
    return-void
.end method

.method public zoomIn()V
    .locals 4

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1324
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1325
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->zoomIn()V

    .line 1341
    return-void
.end method

.method public zoomOut()V
    .locals 4

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    if-nez v0, :cond_0

    .line 1360
    const-string v0, "MMBI_SVC"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "[MmbBrViewSv]MW is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/common/MmbFwLoggerSv;->logError(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1361
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/library/ServiceStateException;-><init>()V

    throw v0

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/library/view/MmbBrViewSv;->mdlBrowViewObj:Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;

    invoke-virtual {v0}, Lmmb/android/MmbFcBrowMw/MmbFcBrowMwView;->zoomOut()V

    .line 1375
    return-void
.end method
