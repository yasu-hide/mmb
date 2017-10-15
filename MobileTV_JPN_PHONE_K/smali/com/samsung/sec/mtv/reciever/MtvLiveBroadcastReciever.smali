.class public Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
.super Landroid/content/ContextWrapper;
.source "MtvLiveBroadcastReciever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;,
        Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;,
        Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final BASE_LISTENER_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MtvLiveBroadcastReciever"

.field private static broadcastIntentFilters:Landroid/content/IntentFilter;

.field private static broadcastMediaIntentFilters:Landroid/content/IntentFilter;

.field private static mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

.field private static tunerResoruceIntentFilter:Landroid/content/IntentFilter;


# instance fields
.field private mBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field protected volatile mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field private mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mTunerReleaseRequestReciever:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    .line 654
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    .line 656
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 657
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.action.emergencylockenabled"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 661
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 662
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_ALARM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 663
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_SLEEP_TIMER_EXIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 665
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CANCEL_EXIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 666
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_END_DIALOG_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 667
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 668
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 669
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_APP_FINISH_ACTIVITIES_ALONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 670
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 672
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.DTV_ANTENNA_CLOSE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 675
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_SVIEW_FINISH_START_LIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 678
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.sec.mtv.ACTION_MTV_RESERVATION_CLOSE_FROM_NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.motion.PALM_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 680
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.motion.PALM_UP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 681
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 682
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 685
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 686
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 687
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 690
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    .line 692
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 693
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 694
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 699
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->tunerResoruceIntentFilter:Landroid/content/IntentFilter;

    .line 701
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->tunerResoruceIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.action.ACTION_TUNER_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 702
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->tunerResoruceIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.nttdocomo.mmb.android.mmbsv.intent.INTENT_TUNER_RELEASE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    .line 82
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSCoverModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->initializeAndRegisterScoverstateListener(Landroid/content/Context;)V

    .line 86
    :cond_0
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    const-string v0, "MtvLiveBroadcastReciever"

    const-string v1, "MtvLiveBroadcastReciever created..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_1
    new-instance v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;

    .line 89
    new-instance v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mMediaBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;

    .line 90
    new-instance v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;

    invoke-direct {v0, p0, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mTunerReleaseRequestReciever:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;

    sget-object v2, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastIntentFilters:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mMediaBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;

    sget-object v2, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->broadcastMediaIntentFilters:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mTunerReleaseRequestReciever:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;

    sget-object v2, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->tunerResoruceIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method static synthetic access$300(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/android/sdk/cover/ScoverState;)Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .param p1, "x1"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mScoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;Lcom/samsung/sec/mtv/utility/MtvPreferences;)Lcom/samsung/sec/mtv/utility/MtvPreferences;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .param p1, "x1"    # Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)Lcom/samsung/android/sdk/cover/Scover;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    return-object v0
.end method

.method private final declared-synchronized attach(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V
    .locals 1
    .param p1, "l"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized detach(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V
    .locals 2
    .param p1, "l"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 197
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :cond_1
    monitor-exit p0

    return-void

    .line 196
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getCurrentInstance()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;
    .locals 2
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    if-nez v0, :cond_1

    .line 146
    const-string v0, "MtvLiveBroadcastReciever"

    const-string v1, "creating MtvAppAndroidService..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez p0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed Application Context is null..."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_0
    new-instance v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    .line 152
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    goto :goto_0
.end method

.method private initializeAndRegisterScoverstateListener(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    new-instance v1, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v1}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :goto_0
    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 108
    new-instance v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;

    invoke-direct {v1, p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$1;-><init>(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;)V

    iput-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 138
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 140
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "MtvLiveBroadcastReciever"

    const-string v2, "IllegalArgumentException"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 105
    .local v0, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v1, "MtvLiveBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SsdkUnsupportedException type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static unregisterRecievers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    if-eqz v0, :cond_1

    .line 168
    const-string v0, "MtvLiveBroadcastReciever"

    const-string v1, "unregistering all Recievers and reseting singleTon Instance..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    iget-object v1, v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    iget-object v1, v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mMediaBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    iget-object v1, v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mTunerReleaseRequestReciever:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvTunerResourceBroadcastReciever;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    invoke-static {}, Lcom/samsung/sec/mtv/utility/MtvFeatures;->isSCoverModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->unRegisterScoverstateListener()V

    .line 175
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    iget-object v0, v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    iput-object v2, v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvBroadcastReceiver;

    .line 177
    sget-object v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    iput-object v2, v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mMediaBroadcastReceiver:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever$MtvMediaBroadcastReceiver;

    .line 178
    sput-object v2, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mySingletonInstance:Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    const-string v0, "MtvLiveBroadcastReciever"

    const-string v1, "No Valid LiveBroadcastReciever found  ! Probably already Cleaned up"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public finishAllListners(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getArrayFromIterator()[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    move-result-object v0

    .line 632
    .local v0, "arrayOfIteratorList":[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    array-length v3, v0

    if-nez v3, :cond_0

    .line 634
    const-string v3, "MtvLiveBroadcastReciever"

    const-string v4, "arrayOfIteratorList length is Zero!"

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 638
    :cond_0
    array-length v3, v0

    add-int/lit8 v2, v3, -0x1

    .line 640
    .local v2, "lastIndex":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 641
    const-string v3, "finish ServiceListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 643
    aget-object v3, v0, v1

    invoke-interface {v3, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;->onMtvAppFinishNotify(Ljava/lang/Object;)V

    .line 644
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 640
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 648
    :cond_2
    const/4 v0, 0x0

    .line 651
    goto :goto_0
.end method

.method protected final declared-synchronized getArrayFromIterator()[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    .locals 2

    .prologue
    .line 596
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .line 597
    .local v0, "ia":[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 598
    monitor-exit p0

    return-object v0

    .line 596
    .end local v0    # "ia":[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTopListener()Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .line 257
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final hasListener()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAllListener(ILandroid/content/Intent;)V
    .locals 8
    .param p1, "what"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 621
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getArrayFromIterator()[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    move-result-object v1

    .line 622
    .local v1, "arrayOfIteratorList":[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    const-string v5, "MtvLiveBroadcastReciever"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyAllListener..:what: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    move-object v0, v1

    .local v0, "arr$":[Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, v0, v2

    .line 624
    .local v3, "item":Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    if-eqz v3, :cond_0

    .line 625
    invoke-interface {v3, p1, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 623
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v3    # "item":Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;
    :cond_1
    const/4 v1, 0x0

    .line 628
    return-void
.end method

.method public notifyBaseListener(ILandroid/content/Intent;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 605
    :cond_0
    return-void
.end method

.method public notifyTopListener(ILandroid/content/Intent;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 609
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 610
    .local v0, "numOfListeners":I
    const-string v1, "MtvLiveBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyTopListener mListeners "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    if-lez v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;->onMtvAppLiveBroadcastNotify(ILjava/lang/Object;)V

    .line 619
    :goto_0
    return-void

    .line 617
    :cond_0
    const-string v1, "MtvLiveBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Top Listener to notify... notification - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerBaseListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .prologue
    const/4 v3, 0x0

    .line 233
    const-string v0, "MtvLiveBroadcastReciever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerBaseListener listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 239
    return-void
.end method

.method public registerListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V
    .locals 4
    .param p1, "newListener"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .prologue
    .line 215
    const-string v1, "MtvLiveBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener newListener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 221
    .local v0, "lastIndex":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    const-string v1, "MtvLiveBroadcastReciever"

    const-string v2, "removed last duplicate listener... "

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .end local v0    # "lastIndex":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->attach(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 228
    const-string v1, "MtvLiveBroadcastReciever"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListener mListeners.size()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public unRegisterScoverstateListener()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 162
    return-void
.end method

.method public unregisterBaseListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .prologue
    .line 244
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 248
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V
    .locals 3
    .param p1, "l"    # Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->detach(Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastListener;)V

    .line 264
    const-string v0, "MtvLiveBroadcastReciever"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener mListeners.size()= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method
