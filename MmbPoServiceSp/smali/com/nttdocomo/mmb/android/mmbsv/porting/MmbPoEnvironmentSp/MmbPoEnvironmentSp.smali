.class public Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;
.super Ljava/lang/Object;
.source "MmbPoEnvironmentSp.java"


# static fields
.field private static final PORTING_RECEIVER:Landroid/content/BroadcastReceiver;

.field private static final SERVICE_RECEIVERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MmbPoEnvironmentSp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->SERVICE_RECEIVERS:Ljava/util/List;

    .line 171
    new-instance v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp$1;

    invoke-direct {v0}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp$1;-><init>()V

    sput-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->PORTING_RECEIVER:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Landroid/content/BroadcastReceiver;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->getReceivers()[Landroid/content/BroadcastReceiver;

    move-result-object v0

    return-object v0
.end method

.method private static debug(Ljava/lang/String;)V
    .locals 2
    .param p0, "aMessage"    # Ljava/lang/String;

    .prologue
    .line 204
    const-string v0, "MmbPoEnvironmentSp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "MmbPoEnvironmentSp"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    return-void
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 4

    .prologue
    .line 65
    const-string v2, "EXTERNAL_STORAGE_DOCOMO"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "externalPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "result":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalStorageDirectory() externalPath -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->debug(Ljava/lang/String;)V

    .line 70
    return-object v1
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 86
    const-string v1, "removed"

    .line 89
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 91
    .local v0, "mountService":Landroid/os/storage/IMountService;
    const-string v3, "/storage/extSdCard"

    invoke-interface {v0, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    .end local v0    # "mountService":Landroid/os/storage/IMountService;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExternalStorageState() ExternalStorageState -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->debug(Ljava/lang/String;)V

    .line 99
    return-object v1

    .line 93
    :catch_0
    move-exception v2

    .line 94
    .local v2, "rex":Ljava/lang/Exception;
    const-string v3, "getExternalStorageState() Failed to get IMountService instance!"

    invoke-static {v3}, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static declared-synchronized getReceivers()[Landroid/content/BroadcastReceiver;
    .locals 3

    .prologue
    .line 165
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->SERVICE_RECEIVERS:Ljava/util/List;

    sget-object v2, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->SERVICE_RECEIVERS:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/BroadcastReceiver;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyMediaIntent(Landroid/content/Intent;)V
    .locals 2
    .param p0, "aIntent"    # Landroid/content/Intent;

    .prologue
    .line 115
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->PORTING_RECEIVER:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public static declared-synchronized registerMediaReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "aReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 136
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->SERVICE_RECEIVERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit v1

    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterMediaReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 2
    .param p0, "aReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 151
    const-class v1, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nttdocomo/mmb/android/mmbsv/porting/MmbPoEnvironmentSp/MmbPoEnvironmentSp;->SERVICE_RECEIVERS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit v1

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
