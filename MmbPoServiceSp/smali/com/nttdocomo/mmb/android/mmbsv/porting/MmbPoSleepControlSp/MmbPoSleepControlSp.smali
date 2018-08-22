.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
.super Ljava/lang/Object;
.source "MmbPoSleepControlSp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MmbPoSleepControlSp"

.field public static final WAKEUP_MONITOR_TIMEOUT_FC_DL:J = 0xea60L

.field public static final WAKEUP_MONITOR_TIMEOUT_ST_REC:J = 0xea60L

.field public static final WAKEUP_TIMEOUT:J = 0x927c0L

.field public static final WAKEUP_TIMEOUT_AFTER_FC_DL:J = 0xea60L

.field public static final WAKEUP_TIMEOUT_AFTER_ST_REC:J = 0xea60L

.field public static final WAKEUP_TIMEOUT_FC_DL:J = 0x1d4c0L

.field public static final WAKEUP_TIMEOUT_ST_REC:J = 0x1d4c0L

.field public static final WIFI_WAKEUP_MONITOR_TIMEOUT:J = 0xea60L

.field public static final WIFI_WAKEUP_TIMEOUT:J = 0x1d4c0L

.field private static mThisInstance:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private final mWifiLockScheduler:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mThisInstance:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "aContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    .line 51
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 54
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 60
    new-instance v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    invoke-direct {v1, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;-><init>(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLockScheduler:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    .line 117
    const-string v1, "MmbPoSleepControlSp#<init>()"

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 119
    if-eqz p1, :cond_0

    .line 121
    iput-object p1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mContext:Landroid/content/Context;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    .line 125
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 127
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "MmbPoSleepControlSp"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 129
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v2, "MmbPoSleepControlSp"

    invoke-virtual {v1, v3, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v1

    iput-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 132
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 135
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .param p0, "x0"    # Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method public static createObject(Landroid/content/Context;)Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;
    .locals 1
    .param p0, "aContext"    # Landroid/content/Context;

    .prologue
    .line 102
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mThisInstance:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 103
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    invoke-direct {v0, p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mThisInstance:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    .line 105
    :cond_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mThisInstance:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 441
    const-string v0, "MmbPoSleepControlSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const-string v0, "MmbPoSleepControlSp"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    return-void
.end method

.method private updateMap()V
    .locals 7

    .prologue
    .line 254
    const-string v4, "MmbPoSleepControlSp#updateMap()"

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 256
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    monitor-enter v5

    .line 257
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 258
    .local v1, "id":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmbPoSleepControlSp#updateMap() id:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager$WakeLock;

    .line 262
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v2, 0x0

    .line 264
    .local v2, "ussing":Z
    if-eqz v3, :cond_1

    .line 265
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    .line 267
    :cond_1
    if-nez v2, :cond_0

    .line 269
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "id":Ljava/lang/Integer;
    .end local v2    # "ussing":Z
    .end local v3    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    return-void
.end method


# virtual methods
.method public releaseDevice(I)V
    .locals 4
    .param p1, "aId"    # I

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbPoSleepControlSp#releaseDevice() aId->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 220
    if-gez p1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 241
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    monitor-enter v2

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    .line 228
    .local v0, "wakeLock":Landroid/os/PowerManager$WakeLock;
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 230
    const-string v1, "MmbPoSleepControlSp#releaseDevice() release."

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 235
    :cond_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-direct {p0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->updateMap()V

    goto :goto_0

    .line 239
    .end local v0    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public wakeupDevice(IJ)V
    .locals 8
    .param p1, "aId"    # I
    .param p2, "aTimeOut"    # J

    .prologue
    .line 174
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmbPoSleepControlSp#wakeupDevice() aId->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 176
    if-gez p1, :cond_1

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not this wakelock id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_2

    .line 181
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal timeout value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_2
    const/4 v3, 0x0

    .line 187
    .local v3, "wakeLock":Landroid/os/PowerManager$WakeLock;
    iget-object v5, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    monitor-enter v5

    .line 189
    :try_start_0
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    .line 190
    if-nez v3, :cond_3

    .line 192
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 194
    .local v2, "pm":Landroid/os/PowerManager;
    const/4 v4, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MmbPoSleepControlSp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 196
    iget-object v4, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_3
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v3, :cond_0

    .line 200
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WakeLock#isHeld()->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, p2, p3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public wakeupDevice(J)V
    .locals 3
    .param p1, "aTimeOut"    # J

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MmbPoSleepControlSp#wakeupDevice() aTimeout->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WakeLock#isHeld()->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 154
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 160
    :cond_0
    return-void
.end method

.method public declared-synchronized wakeupWifi(J)V
    .locals 5
    .param p1, "aTimeOut"    # J

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MmbPoSleepControlSp#wakeupWifi() aTimeOut->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 297
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal timeout value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 303
    .local v0, "wifiEnabled":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 305
    if-nez v0, :cond_1

    .line 306
    const-string v1, "can\'t acquire wifilock."

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    .end local v0    # "wifiEnabled":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 311
    .restart local v0    # "wifiEnabled":Z
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_3

    .line 312
    iget-object v2, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 314
    :try_start_3
    const-string v1, "WifiLock#acquire()"

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 317
    const-string v1, "lock status: mWifiLock(acquire)"

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->mWifiLockScheduler:Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;

    invoke-virtual {v1, p1, p2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp$MmbPoWifiLockReleaseScheduler;->registerSchedule(J)V

    .line 321
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    .line 323
    :cond_3
    const-string v1, "illegal WifiLock state."

    invoke-direct {p0, v1}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoSleepControlSp/MmbPoSleepControlSp;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method
