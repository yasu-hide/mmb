.class public Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
.super Ljava/lang/Object;
.source "MtvUtilAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;,
        Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;
    }
.end annotation


# static fields
.field public static final AUDIO_MANAGER_VOLUME_MUTE:I = 0x0

.field public static final AUDIO_MODE_ALL:I = 0x0

.field public static final AUDIO_MODE_MAIN:I = 0x1

.field public static final AUDIO_MODE_SUB:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MtvUtilAudioManager"

.field public static isFocused:Z

.field private static mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;


# instance fields
.field private mAudioFocusChangeListner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBtA2DP:Landroid/bluetooth/BluetoothA2dp;

.field private mCallStateListener:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

.field private mContext:Landroid/content/Context;

.field private mLastRetainedVolumeLevel:I

.field private mLastRetainedVolumeLevelBT:I

.field private mLastRetainedVolumeLevelHeadset:I

.field private mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

.field private mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

.field private mRouteTypes:I

.field private mRouter:Landroid/media/MediaRouter;

.field private serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mBtA2DP:Landroid/bluetooth/BluetoothA2dp;

    .line 69
    iput v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevel:I

    .line 70
    iput v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelBT:I

    .line 71
    iput v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelHeadset:I

    .line 73
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    .line 74
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 75
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    .line 80
    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mCallStateListener:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

    .line 100
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;-><init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 486
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;-><init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioFocusChangeListner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 85
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 65
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    .line 66
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mBtA2DP:Landroid/bluetooth/BluetoothA2dp;

    .line 69
    iput v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevel:I

    .line 70
    iput v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelBT:I

    .line 71
    iput v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelHeadset:I

    .line 73
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    .line 74
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 75
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    .line 80
    iput-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mCallStateListener:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

    .line 100
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;-><init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 486
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$2;-><init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioFocusChangeListner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 88
    iput-object p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getInstance()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    .line 90
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvPreferences;

    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    .line 91
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 92
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;-><init>(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$1;)V

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mCallStateListener:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

    .line 93
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mCallStateListener:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 94
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 96
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setRouteTypes(I)V

    .line 98
    return-void
.end method

.method static synthetic access$102(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mBtA2DP:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-direct {v0, p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 121
    :cond_0
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    return-object v0
.end method

.method private getLastRetainedVolume()I
    .locals 1

    .prologue
    .line 586
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBTConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelBT:I

    .line 591
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    iget v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelHeadset:I

    goto :goto_0

    .line 591
    :cond_1
    iget v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevel:I

    goto :goto_0
.end method

.method private static getPresetValue(I)I
    .locals 2
    .param p0, "presetPreference"    # I

    .prologue
    .line 460
    const/16 v0, 0xa

    .line 461
    .local v0, "presetValue":I
    if-nez p0, :cond_1

    .line 462
    const/16 v0, 0xa

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 463
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    .line 464
    const/16 v0, 0xb

    goto :goto_0

    .line 465
    :cond_2
    const/4 v1, 0x2

    if-ne p0, v1, :cond_3

    .line 466
    const/16 v0, 0xc

    goto :goto_0

    .line 467
    :cond_3
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 468
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private isMuted()Z
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 613
    const/4 v0, 0x1

    .line 615
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeCallStateListener()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mCallStateListener:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$CallStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 657
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    invoke-direct {v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->removeCallStateListener()V

    .line 129
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvUtilAudioManager:Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;

    .line 131
    return-void
.end method

.method private selectRouteInt(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 279
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    if-nez v4, :cond_0

    .line 280
    const-string v4, "MtvUtilAudioManager"

    const-string v5, "selectRouteInt : mRouter is NULL !!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :goto_0
    return-void

    .line 284
    :cond_0
    const/4 v3, 0x0

    .line 285
    .local v3, "routeInfo":Landroid/media/MediaRouter$RouteInfo;
    if-nez p1, :cond_1

    .line 286
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    .line 302
    :goto_1
    if-eqz v3, :cond_4

    .line 303
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    iget v5, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouteTypes:I

    invoke-virtual {v4, v5, v3}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    .line 289
    .local v0, "N":I
    const-string v4, "MtvUtilAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectRouteInt : N : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_3

    .line 291
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    .line 292
    .local v2, "route":Landroid/media/MediaRouter$RouteInfo;
    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v4

    iget v5, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouteTypes:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    if-eq v2, v4, :cond_2

    .line 294
    move-object v3, v2

    .line 295
    const-string v4, "MtvUtilAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectRouteInt : Route Selected! : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 299
    .end local v2    # "route":Landroid/media/MediaRouter$RouteInfo;
    :cond_3
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getA2dpRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    goto :goto_1

    .line 305
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_4
    const-string v4, "MtvUtilAudioManager"

    const-string v5, "selectRouteInt : routeInfo is NULL!"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Mid(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setLastRetainedVolume(I)V
    .locals 3
    .param p1, "volume"    # I

    .prologue
    .line 599
    const-string v0, "MtvUtilAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastRetainedVolume() : volume= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBTConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iput p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelBT:I

    .line 606
    :goto_0
    return-void

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 603
    iput p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevelHeadset:I

    goto :goto_0

    .line 605
    :cond_1
    iput p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mLastRetainedVolumeLevel:I

    goto :goto_0
.end method

.method private setRouteTypes(I)V
    .locals 0
    .param p1, "types"    # I

    .prologue
    .line 274
    iput p1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mRouteTypes:I

    .line 275
    return-void
.end method


# virtual methods
.method public checkIsCalling()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 527
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 529
    .local v0, "callState":I
    const-string v3, "MtvUtilAudioManager"

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

    .line 530
    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_1

    .line 531
    :cond_0
    const-string v3, "MtvUtilAudioManager"

    const-string v4, "checkIsCalling() - in call "

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public closeBluetoothProxy()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mBtA2DP:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mBtA2DP:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 115
    :cond_0
    return-void
.end method

.method public getCurrentVolume()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getVolumeLevel()I
    .locals 4

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "volumeLevel":I
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 205
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVolumeLevel() : volume= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    return v0
.end method

.method public isBTConnected()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "audioParam;outDevice"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .local v1, "path":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/lit16 v2, v2, 0x380

    if-nez v2, :cond_2

    .line 222
    .local v0, "isBt":Z
    :goto_1
    goto :goto_0

    .line 216
    .end local v0    # "isBt":Z
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isBluetoothA2dpConnected()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeadsetConnected()Z
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "isHeadsetConnected(): connected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const/4 v0, 0x1

    .line 320
    :goto_0
    return v0

    .line 319
    :cond_0
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "isHeadsetConnected(): not - connected"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecordActive()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v0

    return v0
.end method

.method public loseFocus()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioFocusChangeListner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 666
    return-void
.end method

.method public registerMediaButtonReceiver()V
    .locals 4

    .prologue
    .line 622
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "registerMediaButtonReceiver..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 625
    return-void
.end method

.method public setAudioEffect(IZ)I
    .locals 8
    .param p1, "inAudioEffect"    # I
    .param p2, "isUpdatePreference"    # Z

    .prologue
    const/4 v7, 0x0

    .line 414
    const/4 v3, 0x0

    .line 415
    .local v3, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    const-string v4, "MtvUtilAudioManager"

    const-string v5, "setAudioEffect() :: "

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v3

    .line 418
    if-eqz v3, :cond_0

    .line 420
    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v0

    .line 422
    .local v0, "audioControlInterface":Landroid/broadcast/IMtvOneSegAudioControl;
    if-eqz v0, :cond_0

    .line 424
    const-string v4, "MtvUtilAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioControlInterface setSoundEffect"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->getAudioSessionId()I

    move-result v2

    .line 426
    .local v2, "mAudioSessionID":I
    const-string v4, "MtvUtilAudioManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAudioSessionId :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const/4 v4, -0x1

    if-eq v2, v4, :cond_4

    .line 430
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 431
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SC-04E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 432
    const/4 v4, 0x1

    invoke-interface {v0, v4, p1}, Landroid/broadcast/IMtvOneSegAudioControl;->setSoundEffect(II)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :goto_0
    if-eqz p2, :cond_0

    .line 452
    iget-object v4, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v4, p1}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->setAudioEffect(I)V

    .line 455
    .end local v0    # "audioControlInterface":Landroid/broadcast/IMtvOneSegAudioControl;
    .end local v2    # "mAudioSessionID":I
    :cond_0
    return v7

    .line 434
    .restart local v0    # "audioControlInterface":Landroid/broadcast/IMtvOneSegAudioControl;
    .restart local v2    # "mAudioSessionID":I
    :cond_1
    :try_start_1
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->getInstance(I)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    move-result-object v4

    invoke-static {p1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getPresetValue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->setPreset(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v1

    .line 443
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "MtvUtilAudioManager"

    const-string v5, "Sound ALive Effect not supported from framework, IllegalArgumentException"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :try_start_2
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v5, "SC-04E"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 438
    const/4 v4, 0x0

    invoke-interface {v0, v4, p1}, Landroid/broadcast/IMtvOneSegAudioControl;->setSoundEffect(II)Z

    goto :goto_0

    .line 440
    :cond_3
    invoke-static {v2}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->getInstance(I)Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager$MtvAudioEffects;->setPreset(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 448
    :cond_4
    const-string v4, "MtvUtilAudioManager"

    const-string v5, "setAudioEffect() :: Invalid Session ID"

    invoke-static {v4, v5}, Landroid/broadcast/helper/MtvUtilDebug;->Error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioEnable(Z)I
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    .line 330
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->checkIsCalling()Z

    move-result v2

    if-ne v2, v1, :cond_0

    if-ne p1, v1, :cond_0

    .line 331
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "setAudioEnable() request ignored while call"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 p1, 0x0

    .line 333
    const/4 v1, 0x0

    .line 345
    :goto_0
    return v1

    .line 335
    :cond_0
    const/4 v0, 0x0

    .line 336
    .local v0, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 338
    if-eqz p1, :cond_1

    .line 339
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 342
    :goto_1
    const/4 v0, 0x0

    .line 343
    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->disable()V

    goto :goto_1

    .line 345
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAudioMode(I)I
    .locals 6
    .param p1, "inMode"    # I

    .prologue
    .line 389
    const-string v3, "MtvUtilAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inside setAudioMode... playerAudioMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/4 v1, 0x0

    .line 391
    .local v1, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v0

    .line 395
    .local v0, "audioControlInterface":Landroid/broadcast/IMtvOneSegAudioControl;
    if-eqz v0, :cond_0

    .line 397
    const-string v3, "MtvUtilAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioControlInterface setAudioMode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-interface {v0, p1}, Landroid/broadcast/IMtvOneSegAudioControl;->setAudioMode(I)Z

    move-result v2

    .line 400
    .local v2, "retVal":Z
    const-string v3, "MtvUtilAudioManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioControlInterface setAudioMode retVal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    .end local v0    # "audioControlInterface":Landroid/broadcast/IMtvOneSegAudioControl;
    .end local v2    # "retVal":Z
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public setAudioMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    .line 355
    const-string v2, "MtvUtilAudioManager"

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

    .line 356
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->checkIsCalling()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_0

    .line 357
    const-string v2, "MtvUtilAudioManager"

    const-string v3, "setAudioMute() unmute request ignored while call"

    invoke-static {v2, v3}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 p1, 0x1

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 363
    .local v1, "mMtvAppPlaybackContext":Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;
    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvAppPlaybackContextManager:Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContextManager;->getCurrentContext()Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 365
    if-nez p1, :cond_3

    .line 366
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 367
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v0

    .line 368
    .local v0, "intf":Landroid/broadcast/IMtvOneSegAudioControl;
    if-eqz v0, :cond_1

    .line 369
    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->unmuteAudio()Z

    .line 377
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 379
    .end local v0    # "intf":Landroid/broadcast/IMtvOneSegAudioControl;
    :cond_2
    return-void

    .line 372
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->enable()V

    .line 373
    invoke-virtual {v1}, Lcom/samsung/sec/mtv/app/context/MtvAppPlaybackContext;->getComponents()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents;->getAudio()Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/app/context/MtvAppProgramComponents$MtvAppPrgAudioComponent;->getControlInterface()Landroid/broadcast/IMtvOneSegAudioControl;

    move-result-object v0

    .line 374
    .restart local v0    # "intf":Landroid/broadcast/IMtvOneSegAudioControl;
    if-eqz v0, :cond_1

    .line 375
    invoke-interface {v0}, Landroid/broadcast/IMtvOneSegAudioControl;->muteAudio()Z

    goto :goto_0
.end method

.method public setAvStreaming(Z)V
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    .line 568
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAvStreaming ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 571
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 572
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "btAdapter not null"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScmstContentProtection(Z)Z

    .line 579
    :cond_0
    return-void
.end method

.method public setVolumeLevel(I)V
    .locals 4
    .param p1, "volumeLevel"    # I

    .prologue
    const/4 v3, 0x0

    .line 190
    if-gtz p1, :cond_0

    .line 191
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setLastRetainedVolume(I)V

    .line 193
    :cond_0
    const-string v0, "MtvUtilAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVolumeLevel() : volume= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 195
    return-void
.end method

.method public stopOtherSound()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 538
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->checkIsCalling()Z

    move-result v1

    if-nez v1, :cond_2

    .line 539
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioFocusChangeListner:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 542
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " stopOtherSound DCHECKFOCUS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "currentFocusedpackage":Ljava/lang/String;
    const-string v1, "com.samsung.sec.mtv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 547
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " stopOtherSound DCHECKFOCUS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    sput-boolean v4, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    .line 553
    :goto_0
    invoke-virtual {p0, v5}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMute(Z)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBTConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {p0, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 563
    .end local v0    # "currentFocusedpackage":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 550
    .restart local v0    # "currentFocusedpackage":Ljava/lang/String;
    :cond_1
    sput-boolean v5, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    goto :goto_0

    .line 561
    .end local v0    # "currentFocusedpackage":Ljava/lang/String;
    :cond_2
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "stopOtherSound called while on Call... Cannot proceed..."

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public transferToBT()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 237
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "transferToBT"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAvStreaming(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isBluetoothA2dpConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "BT already connected, so routing to BT"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->selectRouteInt(I)V

    .line 248
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    .line 260
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v1, "MtvUtilAudioManager"

    const-string v2, "No BT connected, so trying to connect to BT"

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->High(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "btIntent":Landroid/content/Intent;
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 254
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public transferToPhone()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "transferToPhone() routing to default"

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->selectRouteInt(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->getInstance(Landroid/content/Context;)Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sec/mtv/reciever/MtvLiveBroadcastReciever;->notifyAllListener(ILandroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public unRegisterMediaButtonReceiver()V
    .locals 4

    .prologue
    .line 629
    const-string v0, "MtvUtilAudioManager"

    const-string v1, "unRegisterMediaButtonReceiver..."

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/samsung/sec/mtv/reciever/MtvBroadcastReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 632
    return-void
.end method

.method public updateCurrentAudioEffectAndMode()Z
    .locals 3

    .prologue
    .line 475
    invoke-static {}, Landroid/broadcast/helper/MtvUtilDebug;->isReleaseMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    const-string v0, "MtvUtilAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentAudioEffectAndMode... preferenceValues :AudioEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AudioLanguage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v2}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioLanguage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioEffect()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioEffect(IZ)I

    .line 479
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mMtvPreferences:Lcom/samsung/sec/mtv/utility/MtvPreferences;

    invoke-virtual {v0}, Lcom/samsung/sec/mtv/utility/MtvPreferences;->getAudioLanguage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setAudioMode(I)I

    .line 480
    const/4 v0, 0x1

    return v0
.end method

.method public volumeDown()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 153
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volumeDown() start: lastRetainedVolume ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    if-nez v1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 159
    .local v0, "currentVolumeLevel":I
    if-nez v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 162
    .end local v0    # "currentVolumeLevel":I
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setLastRetainedVolume(I)V

    .line 163
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, -0x1

    invoke-virtual {v1, v5, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 164
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volumeDown() end : volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public volumeMute()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 171
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "MtvUtilAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volumeMute() : unmuted ,mLastRetainedVolumeLevel= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v1

    invoke-virtual {v0, v4, v1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 174
    invoke-direct {p0, v3}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setLastRetainedVolume(I)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setLastRetainedVolume(I)V

    .line 178
    iget-object v0, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 179
    const-string v0, "MtvUtilAudioManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "volumeMute() : muted ,mLastRetainedVolumeLevel= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public volumeUp()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 138
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volumeUp() start: lastRetainedVolume ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-boolean v1, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isFocused:Z

    if-nez v1, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->stopOtherSound()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->isMuted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 144
    .local v0, "currentVolumeLevel":I
    if-nez v0, :cond_1

    .line 145
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getLastRetainedVolume()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v5, v2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 147
    .end local v0    # "currentVolumeLevel":I
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->setLastRetainedVolume(I)V

    .line 148
    iget-object v1, p0, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 149
    const-string v1, "MtvUtilAudioManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "volumeUp() end : volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/sec/mtv/utility/MtvUtilAudioManager;->getVolumeLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/broadcast/helper/MtvUtilDebug;->Low(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method
